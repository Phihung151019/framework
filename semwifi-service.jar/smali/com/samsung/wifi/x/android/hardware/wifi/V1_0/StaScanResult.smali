.class public final Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaScanResult;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# instance fields
.field public beaconPeriodInMs:S

.field public bssid:[B

.field public capability:S

.field public frequency:I

.field public informationElements:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiInformationElement;",
            ">;"
        }
    .end annotation
.end field

.field public rssi:I

.field public ssid:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation
.end field

.field public timeStampInUs:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-wide/16 v0, 0x0

    .line 5
    .line 6
    iput-wide v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaScanResult;->timeStampInUs:J

    .line 7
    .line 8
    new-instance v0, Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaScanResult;->ssid:Ljava/util/ArrayList;

    .line 14
    .line 15
    const/4 v0, 0x6

    .line 16
    new-array v0, v0, [B

    .line 17
    .line 18
    iput-object v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaScanResult;->bssid:[B

    .line 19
    .line 20
    const/4 v0, 0x0

    .line 21
    iput v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaScanResult;->rssi:I

    .line 22
    .line 23
    iput v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaScanResult;->frequency:I

    .line 24
    .line 25
    iput-short v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaScanResult;->beaconPeriodInMs:S

    .line 26
    .line 27
    iput-short v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaScanResult;->capability:S

    .line 28
    .line 29
    new-instance v0, Ljava/util/ArrayList;

    .line 30
    .line 31
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 32
    .line 33
    .line 34
    iput-object v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaScanResult;->informationElements:Ljava/util/ArrayList;

    .line 35
    .line 36
    return-void
.end method

.method public static final readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/HwParcel;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaScanResult;",
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
    const-wide/16 v1, 0x10

    .line 7
    .line 8
    invoke-virtual {p0, v1, v2}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    const-wide/16 v2, 0x8

    .line 13
    .line 14
    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    mul-int/lit8 v3, v2, 0x40

    .line 19
    .line 20
    int-to-long v5, v3

    .line 21
    invoke-virtual {v1}, Landroid/os/HwBlob;->handle()J

    .line 22
    .line 23
    .line 24
    move-result-wide v7

    .line 25
    const-wide/16 v9, 0x0

    .line 26
    .line 27
    const/4 v11, 0x1

    .line 28
    move-object v4, p0

    .line 29
    invoke-virtual/range {v4 .. v11}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 34
    .line 35
    .line 36
    const/4 v1, 0x0

    .line 37
    :goto_0
    if-ge v1, v2, :cond_0

    .line 38
    .line 39
    new-instance v3, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaScanResult;

    .line 40
    .line 41
    invoke-direct {v3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaScanResult;-><init>()V

    .line 42
    .line 43
    .line 44
    mul-int/lit8 v5, v1, 0x40

    .line 45
    .line 46
    int-to-long v5, v5

    .line 47
    invoke-virtual {v3, v4, p0, v5, v6}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaScanResult;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    add-int/lit8 v1, v1, 0x1

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_0
    return-object v0
.end method

.method public static final writeVectorToParcel(Landroid/os/HwParcel;Ljava/util/ArrayList;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/HwParcel;",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaScanResult;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Landroid/os/HwBlob;

    .line 2
    .line 3
    const/16 v1, 0x10

    .line 4
    .line 5
    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    const-wide/16 v2, 0x8

    .line 13
    .line 14
    invoke-virtual {v0, v2, v3, v1}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 15
    .line 16
    .line 17
    const-wide/16 v2, 0xc

    .line 18
    .line 19
    const/4 v4, 0x0

    .line 20
    invoke-virtual {v0, v2, v3, v4}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 21
    .line 22
    .line 23
    new-instance v2, Landroid/os/HwBlob;

    .line 24
    .line 25
    mul-int/lit8 v3, v1, 0x40

    .line 26
    .line 27
    invoke-direct {v2, v3}, Landroid/os/HwBlob;-><init>(I)V

    .line 28
    .line 29
    .line 30
    :goto_0
    if-ge v4, v1, :cond_0

    .line 31
    .line 32
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    check-cast v3, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaScanResult;

    .line 37
    .line 38
    mul-int/lit8 v5, v4, 0x40

    .line 39
    .line 40
    int-to-long v5, v5

    .line 41
    invoke-virtual {v3, v2, v5, v6}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaScanResult;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 42
    .line 43
    .line 44
    add-int/lit8 v4, v4, 0x1

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_0
    const-wide/16 v3, 0x0

    .line 48
    .line 49
    invoke-virtual {v0, v3, v4, v2}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p0, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 53
    .line 54
    .line 55
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 6

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    const/4 v1, 0x0

    .line 6
    if-nez p1, :cond_1

    .line 7
    .line 8
    return v1

    .line 9
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    const-class v3, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaScanResult;

    .line 14
    .line 15
    if-eq v2, v3, :cond_2

    .line 16
    .line 17
    return v1

    .line 18
    :cond_2
    check-cast p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaScanResult;

    .line 19
    .line 20
    iget-wide v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaScanResult;->timeStampInUs:J

    .line 21
    .line 22
    iget-wide v4, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaScanResult;->timeStampInUs:J

    .line 23
    .line 24
    cmp-long v2, v2, v4

    .line 25
    .line 26
    if-eqz v2, :cond_3

    .line 27
    .line 28
    return v1

    .line 29
    :cond_3
    iget-object v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaScanResult;->ssid:Ljava/util/ArrayList;

    .line 30
    .line 31
    iget-object v3, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaScanResult;->ssid:Ljava/util/ArrayList;

    .line 32
    .line 33
    invoke-static {v2, v3}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    if-nez v2, :cond_4

    .line 38
    .line 39
    return v1

    .line 40
    :cond_4
    iget-object v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaScanResult;->bssid:[B

    .line 41
    .line 42
    iget-object v3, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaScanResult;->bssid:[B

    .line 43
    .line 44
    invoke-static {v2, v3}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    move-result v2

    .line 48
    if-nez v2, :cond_5

    .line 49
    .line 50
    return v1

    .line 51
    :cond_5
    iget v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaScanResult;->rssi:I

    .line 52
    .line 53
    iget v3, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaScanResult;->rssi:I

    .line 54
    .line 55
    if-eq v2, v3, :cond_6

    .line 56
    .line 57
    return v1

    .line 58
    :cond_6
    iget v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaScanResult;->frequency:I

    .line 59
    .line 60
    iget v3, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaScanResult;->frequency:I

    .line 61
    .line 62
    if-eq v2, v3, :cond_7

    .line 63
    .line 64
    return v1

    .line 65
    :cond_7
    iget-short v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaScanResult;->beaconPeriodInMs:S

    .line 66
    .line 67
    iget-short v3, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaScanResult;->beaconPeriodInMs:S

    .line 68
    .line 69
    if-eq v2, v3, :cond_8

    .line 70
    .line 71
    return v1

    .line 72
    :cond_8
    iget-short v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaScanResult;->capability:S

    .line 73
    .line 74
    iget-short v3, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaScanResult;->capability:S

    .line 75
    .line 76
    if-eq v2, v3, :cond_9

    .line 77
    .line 78
    return v1

    .line 79
    :cond_9
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaScanResult;->informationElements:Ljava/util/ArrayList;

    .line 80
    .line 81
    iget-object p1, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaScanResult;->informationElements:Ljava/util/ArrayList;

    .line 82
    .line 83
    invoke-static {p0, p1}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 84
    .line 85
    .line 86
    move-result p0

    .line 87
    if-nez p0, :cond_a

    .line 88
    .line 89
    return v1

    .line 90
    :cond_a
    return v0
.end method

.method public final hashCode()I
    .locals 10

    .line 1
    iget-wide v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaScanResult;->timeStampInUs:J

    .line 2
    .line 3
    invoke-static {v0, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/RttLciInformation$$ExternalSyntheticOutline0;->m(J)Ljava/lang/Integer;

    .line 4
    .line 5
    .line 6
    move-result-object v2

    .line 7
    iget-object v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaScanResult;->ssid:Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    iget-object v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaScanResult;->bssid:[B

    .line 18
    .line 19
    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 24
    .line 25
    .line 26
    move-result-object v4

    .line 27
    iget v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaScanResult;->rssi:I

    .line 28
    .line 29
    invoke-static {v0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip$Stub$$ExternalSyntheticOutline0;->m(I)Ljava/lang/Integer;

    .line 30
    .line 31
    .line 32
    move-result-object v5

    .line 33
    iget v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaScanResult;->frequency:I

    .line 34
    .line 35
    invoke-static {v0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip$Stub$$ExternalSyntheticOutline0;->m(I)Ljava/lang/Integer;

    .line 36
    .line 37
    .line 38
    move-result-object v6

    .line 39
    iget-short v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaScanResult;->beaconPeriodInMs:S

    .line 40
    .line 41
    invoke-static {v0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanBandSpecificConfig$$ExternalSyntheticOutline0;->m(S)Ljava/lang/Integer;

    .line 42
    .line 43
    .line 44
    move-result-object v7

    .line 45
    iget-short v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaScanResult;->capability:S

    .line 46
    .line 47
    invoke-static {v0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanBandSpecificConfig$$ExternalSyntheticOutline0;->m(S)Ljava/lang/Integer;

    .line 48
    .line 49
    .line 50
    move-result-object v8

    .line 51
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaScanResult;->informationElements:Ljava/util/ArrayList;

    .line 52
    .line 53
    invoke-static {p0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    .line 54
    .line 55
    .line 56
    move-result p0

    .line 57
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 58
    .line 59
    .line 60
    move-result-object v9

    .line 61
    filled-new-array/range {v2 .. v9}, [Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object p0

    .line 65
    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    .line 66
    .line 67
    .line 68
    move-result p0

    .line 69
    return p0
.end method

.method public final readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V
    .locals 10

    .line 1
    invoke-virtual {p2, p3, p4}, Landroid/os/HwBlob;->getInt64(J)J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    iput-wide v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaScanResult;->timeStampInUs:J

    .line 6
    .line 7
    const-wide/16 v0, 0x8

    .line 8
    .line 9
    add-long v7, p3, v0

    .line 10
    .line 11
    const-wide/16 v0, 0x10

    .line 12
    .line 13
    add-long/2addr v0, p3

    .line 14
    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt32(J)I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    int-to-long v3, v0

    .line 19
    invoke-virtual {p2}, Landroid/os/HwBlob;->handle()J

    .line 20
    .line 21
    .line 22
    move-result-wide v5

    .line 23
    const/4 v9, 0x1

    .line 24
    move-object v2, p1

    .line 25
    invoke-virtual/range {v2 .. v9}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    move-object v1, v2

    .line 30
    iget-object v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaScanResult;->ssid:Ljava/util/ArrayList;

    .line 31
    .line 32
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 33
    .line 34
    .line 35
    const/4 v9, 0x0

    .line 36
    move v2, v9

    .line 37
    :goto_0
    if-ge v2, v0, :cond_0

    .line 38
    .line 39
    int-to-long v3, v2

    .line 40
    invoke-virtual {p1, v3, v4}, Landroid/os/HwBlob;->getInt8(J)B

    .line 41
    .line 42
    .line 43
    move-result v3

    .line 44
    iget-object v4, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaScanResult;->ssid:Ljava/util/ArrayList;

    .line 45
    .line 46
    const/4 v5, 0x1

    .line 47
    invoke-static {v3, v4, v2, v5}, Lcom/samsung/android/server/wifi/halclient/BssInfo$$ExternalSyntheticOutline0;->m(BLjava/util/ArrayList;II)I

    .line 48
    .line 49
    .line 50
    move-result v2

    .line 51
    goto :goto_0

    .line 52
    :cond_0
    const-wide/16 v2, 0x18

    .line 53
    .line 54
    add-long/2addr v2, p3

    .line 55
    iget-object p1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaScanResult;->bssid:[B

    .line 56
    .line 57
    const/4 v0, 0x6

    .line 58
    invoke-virtual {p2, v2, v3, p1, v0}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 59
    .line 60
    .line 61
    const-wide/16 v2, 0x20

    .line 62
    .line 63
    add-long/2addr v2, p3

    .line 64
    invoke-virtual {p2, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    .line 65
    .line 66
    .line 67
    move-result p1

    .line 68
    iput p1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaScanResult;->rssi:I

    .line 69
    .line 70
    const-wide/16 v2, 0x24

    .line 71
    .line 72
    add-long/2addr v2, p3

    .line 73
    invoke-virtual {p2, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    .line 74
    .line 75
    .line 76
    move-result p1

    .line 77
    iput p1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaScanResult;->frequency:I

    .line 78
    .line 79
    const-wide/16 v2, 0x28

    .line 80
    .line 81
    add-long/2addr v2, p3

    .line 82
    invoke-virtual {p2, v2, v3}, Landroid/os/HwBlob;->getInt16(J)S

    .line 83
    .line 84
    .line 85
    move-result p1

    .line 86
    iput-short p1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaScanResult;->beaconPeriodInMs:S

    .line 87
    .line 88
    const-wide/16 v2, 0x2a

    .line 89
    .line 90
    add-long/2addr v2, p3

    .line 91
    invoke-virtual {p2, v2, v3}, Landroid/os/HwBlob;->getInt16(J)S

    .line 92
    .line 93
    .line 94
    move-result p1

    .line 95
    iput-short p1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaScanResult;->capability:S

    .line 96
    .line 97
    const-wide/16 v2, 0x30

    .line 98
    .line 99
    add-long v6, p3, v2

    .line 100
    .line 101
    const-wide/16 v2, 0x38

    .line 102
    .line 103
    add-long/2addr p3, v2

    .line 104
    invoke-virtual {p2, p3, p4}, Landroid/os/HwBlob;->getInt32(J)I

    .line 105
    .line 106
    .line 107
    move-result p1

    .line 108
    mul-int/lit8 p3, p1, 0x18

    .line 109
    .line 110
    int-to-long v2, p3

    .line 111
    invoke-virtual {p2}, Landroid/os/HwBlob;->handle()J

    .line 112
    .line 113
    .line 114
    move-result-wide v4

    .line 115
    const/4 v8, 0x1

    .line 116
    invoke-virtual/range {v1 .. v8}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    .line 117
    .line 118
    .line 119
    move-result-object p2

    .line 120
    iget-object p3, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaScanResult;->informationElements:Ljava/util/ArrayList;

    .line 121
    .line 122
    invoke-virtual {p3}, Ljava/util/ArrayList;->clear()V

    .line 123
    .line 124
    .line 125
    :goto_1
    if-ge v9, p1, :cond_1

    .line 126
    .line 127
    new-instance p3, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiInformationElement;

    .line 128
    .line 129
    invoke-direct {p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiInformationElement;-><init>()V

    .line 130
    .line 131
    .line 132
    mul-int/lit8 p4, v9, 0x18

    .line 133
    .line 134
    int-to-long v2, p4

    .line 135
    invoke-virtual {p3, v1, p2, v2, v3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiInformationElement;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 136
    .line 137
    .line 138
    iget-object p4, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaScanResult;->informationElements:Ljava/util/ArrayList;

    .line 139
    .line 140
    invoke-virtual {p4, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 141
    .line 142
    .line 143
    add-int/lit8 v9, v9, 0x1

    .line 144
    .line 145
    goto :goto_1

    .line 146
    :cond_1
    return-void
.end method

.method public final readFromParcel(Landroid/os/HwParcel;)V
    .locals 3

    .line 1
    const-wide/16 v0, 0x40

    .line 2
    .line 3
    invoke-virtual {p1, v0, v1}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-wide/16 v1, 0x0

    .line 8
    .line 9
    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaScanResult;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "{.timeStampInUs = "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-wide v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaScanResult;->timeStampInUs:J

    .line 9
    .line 10
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", .ssid = "

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaScanResult;->ssid:Ljava/util/ArrayList;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, ", .bssid = "

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget-object v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaScanResult;->bssid:[B

    .line 29
    .line 30
    const-string v2, ", .rssi = "

    .line 31
    .line 32
    invoke-static {v1, v0, v2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDataPathConfirmInd$$ExternalSyntheticOutline0;->m([BLjava/lang/StringBuilder;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    iget v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaScanResult;->rssi:I

    .line 36
    .line 37
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    const-string v1, ", .frequency = "

    .line 41
    .line 42
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    iget v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaScanResult;->frequency:I

    .line 46
    .line 47
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    const-string v1, ", .beaconPeriodInMs = "

    .line 51
    .line 52
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    iget-short v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaScanResult;->beaconPeriodInMs:S

    .line 56
    .line 57
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    const-string v1, ", .capability = "

    .line 61
    .line 62
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    iget-short v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaScanResult;->capability:S

    .line 66
    .line 67
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    const-string v1, ", .informationElements = "

    .line 71
    .line 72
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaScanResult;->informationElements:Ljava/util/ArrayList;

    .line 76
    .line 77
    const-string v1, "}"

    .line 78
    .line 79
    invoke-static {v0, p0, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip$Stub$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/util/ArrayList;Ljava/lang/String;)Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object p0

    .line 83
    return-object p0
.end method

.method public final writeEmbeddedToBlob(Landroid/os/HwBlob;J)V
    .locals 12

    .line 1
    iget-wide v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaScanResult;->timeStampInUs:J

    .line 2
    .line 3
    invoke-virtual {p1, p2, p3, v0, v1}, Landroid/os/HwBlob;->putInt64(JJ)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaScanResult;->ssid:Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    const-wide/16 v1, 0x8

    .line 13
    .line 14
    add-long/2addr v1, p2

    .line 15
    const-wide/16 v3, 0x10

    .line 16
    .line 17
    add-long/2addr v3, p2

    .line 18
    invoke-virtual {p1, v3, v4, v0}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 19
    .line 20
    .line 21
    const-wide/16 v3, 0x14

    .line 22
    .line 23
    add-long/2addr v3, p2

    .line 24
    const/4 v5, 0x0

    .line 25
    invoke-static {p1, v3, v4, v5, v0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDataPathConfirmInd$$ExternalSyntheticOutline0;->m(Landroid/os/HwBlob;JZI)Landroid/os/HwBlob;

    .line 26
    .line 27
    .line 28
    move-result-object v7

    .line 29
    move v10, v5

    .line 30
    :goto_0
    if-ge v10, v0, :cond_0

    .line 31
    .line 32
    int-to-long v8, v10

    .line 33
    iget-object v3, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaScanResult;->ssid:Ljava/util/ArrayList;

    .line 34
    .line 35
    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v3

    .line 39
    move-object v6, v3

    .line 40
    check-cast v6, Ljava/lang/Byte;

    .line 41
    .line 42
    const/4 v11, 0x1

    .line 43
    invoke-static/range {v6 .. v11}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDataPathConfirmInd$$ExternalSyntheticOutline0;->m(Ljava/lang/Byte;Landroid/os/HwBlob;JII)I

    .line 44
    .line 45
    .line 46
    move-result v10

    .line 47
    goto :goto_0

    .line 48
    :cond_0
    invoke-virtual {p1, v1, v2, v7}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 49
    .line 50
    .line 51
    const-wide/16 v0, 0x18

    .line 52
    .line 53
    add-long/2addr v0, p2

    .line 54
    iget-object v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaScanResult;->bssid:[B

    .line 55
    .line 56
    if-eqz v2, :cond_2

    .line 57
    .line 58
    array-length v3, v2

    .line 59
    const/4 v4, 0x6

    .line 60
    if-ne v3, v4, :cond_2

    .line 61
    .line 62
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 63
    .line 64
    .line 65
    const-wide/16 v0, 0x20

    .line 66
    .line 67
    add-long/2addr v0, p2

    .line 68
    iget v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaScanResult;->rssi:I

    .line 69
    .line 70
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 71
    .line 72
    .line 73
    const-wide/16 v0, 0x24

    .line 74
    .line 75
    add-long/2addr v0, p2

    .line 76
    iget v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaScanResult;->frequency:I

    .line 77
    .line 78
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 79
    .line 80
    .line 81
    const-wide/16 v0, 0x28

    .line 82
    .line 83
    add-long/2addr v0, p2

    .line 84
    iget-short v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaScanResult;->beaconPeriodInMs:S

    .line 85
    .line 86
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt16(JS)V

    .line 87
    .line 88
    .line 89
    const-wide/16 v0, 0x2a

    .line 90
    .line 91
    add-long/2addr v0, p2

    .line 92
    iget-short v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaScanResult;->capability:S

    .line 93
    .line 94
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt16(JS)V

    .line 95
    .line 96
    .line 97
    iget-object v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaScanResult;->informationElements:Ljava/util/ArrayList;

    .line 98
    .line 99
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 100
    .line 101
    .line 102
    move-result v0

    .line 103
    const-wide/16 v1, 0x30

    .line 104
    .line 105
    add-long/2addr v1, p2

    .line 106
    const-wide/16 v3, 0x38

    .line 107
    .line 108
    add-long/2addr v3, p2

    .line 109
    invoke-virtual {p1, v3, v4, v0}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 110
    .line 111
    .line 112
    const-wide/16 v3, 0x3c

    .line 113
    .line 114
    add-long/2addr p2, v3

    .line 115
    invoke-virtual {p1, p2, p3, v5}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 116
    .line 117
    .line 118
    new-instance p2, Landroid/os/HwBlob;

    .line 119
    .line 120
    mul-int/lit8 p3, v0, 0x18

    .line 121
    .line 122
    invoke-direct {p2, p3}, Landroid/os/HwBlob;-><init>(I)V

    .line 123
    .line 124
    .line 125
    :goto_1
    if-ge v5, v0, :cond_1

    .line 126
    .line 127
    iget-object p3, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaScanResult;->informationElements:Ljava/util/ArrayList;

    .line 128
    .line 129
    invoke-virtual {p3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 130
    .line 131
    .line 132
    move-result-object p3

    .line 133
    check-cast p3, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiInformationElement;

    .line 134
    .line 135
    mul-int/lit8 v3, v5, 0x18

    .line 136
    .line 137
    int-to-long v3, v3

    .line 138
    invoke-virtual {p3, p2, v3, v4}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiInformationElement;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 139
    .line 140
    .line 141
    add-int/lit8 v5, v5, 0x1

    .line 142
    .line 143
    goto :goto_1

    .line 144
    :cond_1
    invoke-virtual {p1, v1, v2, p2}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 145
    .line 146
    .line 147
    return-void

    .line 148
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 149
    .line 150
    const-string p1, "Array element is not of the expected length"

    .line 151
    .line 152
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 153
    .line 154
    .line 155
    throw p0
.end method

.method public final writeToParcel(Landroid/os/HwParcel;)V
    .locals 3

    .line 1
    new-instance v0, Landroid/os/HwBlob;

    .line 2
    .line 3
    const/16 v1, 0x40

    .line 4
    .line 5
    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 6
    .line 7
    .line 8
    const-wide/16 v1, 0x0

    .line 9
    .line 10
    invoke-virtual {p0, v0, v1, v2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaScanResult;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method
