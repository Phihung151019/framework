.class public final Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/StaLinkLayerRadioStats;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# instance fields
.field public V1_0:Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaLinkLayerRadioStats;

.field public channelStats:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/WifiChannelStats;",
            ">;"
        }
    .end annotation
.end field

.field public onTimeInMsForBgScan:I

.field public onTimeInMsForHs20Scan:I

.field public onTimeInMsForNanScan:I

.field public onTimeInMsForPnoScan:I

.field public onTimeInMsForRoamScan:I

.field public radioId:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaLinkLayerRadioStats;

    .line 5
    .line 6
    invoke-direct {v0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaLinkLayerRadioStats;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/StaLinkLayerRadioStats;->V1_0:Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaLinkLayerRadioStats;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/StaLinkLayerRadioStats;->onTimeInMsForNanScan:I

    .line 13
    .line 14
    iput v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/StaLinkLayerRadioStats;->onTimeInMsForBgScan:I

    .line 15
    .line 16
    iput v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/StaLinkLayerRadioStats;->onTimeInMsForRoamScan:I

    .line 17
    .line 18
    iput v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/StaLinkLayerRadioStats;->onTimeInMsForPnoScan:I

    .line 19
    .line 20
    iput v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/StaLinkLayerRadioStats;->onTimeInMsForHs20Scan:I

    .line 21
    .line 22
    new-instance v1, Ljava/util/ArrayList;

    .line 23
    .line 24
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 25
    .line 26
    .line 27
    iput-object v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/StaLinkLayerRadioStats;->channelStats:Ljava/util/ArrayList;

    .line 28
    .line 29
    iput v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/StaLinkLayerRadioStats;->radioId:I

    .line 30
    .line 31
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
            "Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/StaLinkLayerRadioStats;",
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
    mul-int/lit8 v3, v2, 0x50

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
    new-instance v3, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/StaLinkLayerRadioStats;

    .line 40
    .line 41
    invoke-direct {v3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/StaLinkLayerRadioStats;-><init>()V

    .line 42
    .line 43
    .line 44
    mul-int/lit8 v5, v1, 0x50

    .line 45
    .line 46
    int-to-long v5, v5

    .line 47
    invoke-virtual {v3, v4, p0, v5, v6}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/StaLinkLayerRadioStats;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

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
            "Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/StaLinkLayerRadioStats;",
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
    mul-int/lit8 v3, v1, 0x50

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
    check-cast v3, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/StaLinkLayerRadioStats;

    .line 37
    .line 38
    mul-int/lit8 v5, v4, 0x50

    .line 39
    .line 40
    int-to-long v5, v5

    .line 41
    invoke-virtual {v3, v2, v5, v6}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/StaLinkLayerRadioStats;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

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
    .locals 4

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
    const-class v3, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/StaLinkLayerRadioStats;

    .line 14
    .line 15
    if-eq v2, v3, :cond_2

    .line 16
    .line 17
    return v1

    .line 18
    :cond_2
    check-cast p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/StaLinkLayerRadioStats;

    .line 19
    .line 20
    iget-object v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/StaLinkLayerRadioStats;->V1_0:Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaLinkLayerRadioStats;

    .line 21
    .line 22
    iget-object v3, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/StaLinkLayerRadioStats;->V1_0:Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaLinkLayerRadioStats;

    .line 23
    .line 24
    invoke-static {v2, v3}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    if-nez v2, :cond_3

    .line 29
    .line 30
    return v1

    .line 31
    :cond_3
    iget v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/StaLinkLayerRadioStats;->onTimeInMsForNanScan:I

    .line 32
    .line 33
    iget v3, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/StaLinkLayerRadioStats;->onTimeInMsForNanScan:I

    .line 34
    .line 35
    if-eq v2, v3, :cond_4

    .line 36
    .line 37
    return v1

    .line 38
    :cond_4
    iget v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/StaLinkLayerRadioStats;->onTimeInMsForBgScan:I

    .line 39
    .line 40
    iget v3, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/StaLinkLayerRadioStats;->onTimeInMsForBgScan:I

    .line 41
    .line 42
    if-eq v2, v3, :cond_5

    .line 43
    .line 44
    return v1

    .line 45
    :cond_5
    iget v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/StaLinkLayerRadioStats;->onTimeInMsForRoamScan:I

    .line 46
    .line 47
    iget v3, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/StaLinkLayerRadioStats;->onTimeInMsForRoamScan:I

    .line 48
    .line 49
    if-eq v2, v3, :cond_6

    .line 50
    .line 51
    return v1

    .line 52
    :cond_6
    iget v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/StaLinkLayerRadioStats;->onTimeInMsForPnoScan:I

    .line 53
    .line 54
    iget v3, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/StaLinkLayerRadioStats;->onTimeInMsForPnoScan:I

    .line 55
    .line 56
    if-eq v2, v3, :cond_7

    .line 57
    .line 58
    return v1

    .line 59
    :cond_7
    iget v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/StaLinkLayerRadioStats;->onTimeInMsForHs20Scan:I

    .line 60
    .line 61
    iget v3, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/StaLinkLayerRadioStats;->onTimeInMsForHs20Scan:I

    .line 62
    .line 63
    if-eq v2, v3, :cond_8

    .line 64
    .line 65
    return v1

    .line 66
    :cond_8
    iget-object v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/StaLinkLayerRadioStats;->channelStats:Ljava/util/ArrayList;

    .line 67
    .line 68
    iget-object v3, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/StaLinkLayerRadioStats;->channelStats:Ljava/util/ArrayList;

    .line 69
    .line 70
    invoke-static {v2, v3}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 71
    .line 72
    .line 73
    move-result v2

    .line 74
    if-nez v2, :cond_9

    .line 75
    .line 76
    return v1

    .line 77
    :cond_9
    iget p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/StaLinkLayerRadioStats;->radioId:I

    .line 78
    .line 79
    iget p1, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/StaLinkLayerRadioStats;->radioId:I

    .line 80
    .line 81
    if-eq p0, p1, :cond_a

    .line 82
    .line 83
    return v1

    .line 84
    :cond_a
    return v0
.end method

.method public final hashCode()I
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/StaLinkLayerRadioStats;->V1_0:Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaLinkLayerRadioStats;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    iget v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/StaLinkLayerRadioStats;->onTimeInMsForNanScan:I

    .line 12
    .line 13
    invoke-static {v0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip$Stub$$ExternalSyntheticOutline0;->m(I)Ljava/lang/Integer;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    iget v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/StaLinkLayerRadioStats;->onTimeInMsForBgScan:I

    .line 18
    .line 19
    invoke-static {v0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip$Stub$$ExternalSyntheticOutline0;->m(I)Ljava/lang/Integer;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    iget v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/StaLinkLayerRadioStats;->onTimeInMsForRoamScan:I

    .line 24
    .line 25
    invoke-static {v0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip$Stub$$ExternalSyntheticOutline0;->m(I)Ljava/lang/Integer;

    .line 26
    .line 27
    .line 28
    move-result-object v4

    .line 29
    iget v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/StaLinkLayerRadioStats;->onTimeInMsForPnoScan:I

    .line 30
    .line 31
    invoke-static {v0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip$Stub$$ExternalSyntheticOutline0;->m(I)Ljava/lang/Integer;

    .line 32
    .line 33
    .line 34
    move-result-object v5

    .line 35
    iget v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/StaLinkLayerRadioStats;->onTimeInMsForHs20Scan:I

    .line 36
    .line 37
    invoke-static {v0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip$Stub$$ExternalSyntheticOutline0;->m(I)Ljava/lang/Integer;

    .line 38
    .line 39
    .line 40
    move-result-object v6

    .line 41
    iget-object v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/StaLinkLayerRadioStats;->channelStats:Ljava/util/ArrayList;

    .line 42
    .line 43
    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 48
    .line 49
    .line 50
    move-result-object v7

    .line 51
    iget p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/StaLinkLayerRadioStats;->radioId:I

    .line 52
    .line 53
    invoke-static {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip$Stub$$ExternalSyntheticOutline0;->m(I)Ljava/lang/Integer;

    .line 54
    .line 55
    .line 56
    move-result-object v8

    .line 57
    filled-new-array/range {v1 .. v8}, [Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object p0

    .line 61
    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    .line 62
    .line 63
    .line 64
    move-result p0

    .line 65
    return p0
.end method

.method public final readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/StaLinkLayerRadioStats;->V1_0:Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaLinkLayerRadioStats;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaLinkLayerRadioStats;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 4
    .line 5
    .line 6
    const-wide/16 v0, 0x20

    .line 7
    .line 8
    add-long/2addr v0, p3

    .line 9
    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt32(J)I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    iput v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/StaLinkLayerRadioStats;->onTimeInMsForNanScan:I

    .line 14
    .line 15
    const-wide/16 v0, 0x24

    .line 16
    .line 17
    add-long/2addr v0, p3

    .line 18
    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt32(J)I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    iput v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/StaLinkLayerRadioStats;->onTimeInMsForBgScan:I

    .line 23
    .line 24
    const-wide/16 v0, 0x28

    .line 25
    .line 26
    add-long/2addr v0, p3

    .line 27
    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt32(J)I

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    iput v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/StaLinkLayerRadioStats;->onTimeInMsForRoamScan:I

    .line 32
    .line 33
    const-wide/16 v0, 0x2c

    .line 34
    .line 35
    add-long/2addr v0, p3

    .line 36
    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt32(J)I

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    iput v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/StaLinkLayerRadioStats;->onTimeInMsForPnoScan:I

    .line 41
    .line 42
    const-wide/16 v0, 0x30

    .line 43
    .line 44
    add-long/2addr v0, p3

    .line 45
    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt32(J)I

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    iput v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/StaLinkLayerRadioStats;->onTimeInMsForHs20Scan:I

    .line 50
    .line 51
    const-wide/16 v0, 0x38

    .line 52
    .line 53
    add-long v7, p3, v0

    .line 54
    .line 55
    const-wide/16 v0, 0x40

    .line 56
    .line 57
    add-long/2addr v0, p3

    .line 58
    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt32(J)I

    .line 59
    .line 60
    .line 61
    move-result v0

    .line 62
    mul-int/lit8 v1, v0, 0x18

    .line 63
    .line 64
    int-to-long v3, v1

    .line 65
    invoke-virtual {p2}, Landroid/os/HwBlob;->handle()J

    .line 66
    .line 67
    .line 68
    move-result-wide v5

    .line 69
    const/4 v9, 0x1

    .line 70
    move-object v2, p1

    .line 71
    invoke-virtual/range {v2 .. v9}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    iget-object v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/StaLinkLayerRadioStats;->channelStats:Ljava/util/ArrayList;

    .line 76
    .line 77
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 78
    .line 79
    .line 80
    const/4 v1, 0x0

    .line 81
    :goto_0
    if-ge v1, v0, :cond_0

    .line 82
    .line 83
    new-instance v3, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/WifiChannelStats;

    .line 84
    .line 85
    invoke-direct {v3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/WifiChannelStats;-><init>()V

    .line 86
    .line 87
    .line 88
    mul-int/lit8 v4, v1, 0x18

    .line 89
    .line 90
    int-to-long v4, v4

    .line 91
    invoke-virtual {v3, v2, p1, v4, v5}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/WifiChannelStats;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 92
    .line 93
    .line 94
    iget-object v4, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/StaLinkLayerRadioStats;->channelStats:Ljava/util/ArrayList;

    .line 95
    .line 96
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 97
    .line 98
    .line 99
    add-int/lit8 v1, v1, 0x1

    .line 100
    .line 101
    goto :goto_0

    .line 102
    :cond_0
    const-wide/16 v0, 0x48

    .line 103
    .line 104
    add-long/2addr p3, v0

    .line 105
    invoke-virtual {p2, p3, p4}, Landroid/os/HwBlob;->getInt32(J)I

    .line 106
    .line 107
    .line 108
    move-result p1

    .line 109
    iput p1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/StaLinkLayerRadioStats;->radioId:I

    .line 110
    .line 111
    return-void
.end method

.method public final readFromParcel(Landroid/os/HwParcel;)V
    .locals 3

    .line 1
    const-wide/16 v0, 0x50

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
    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/StaLinkLayerRadioStats;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "{.V1_0 = "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/StaLinkLayerRadioStats;->V1_0:Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaLinkLayerRadioStats;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", .onTimeInMsForNanScan = "

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/StaLinkLayerRadioStats;->onTimeInMsForNanScan:I

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, ", .onTimeInMsForBgScan = "

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/StaLinkLayerRadioStats;->onTimeInMsForBgScan:I

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v1, ", .onTimeInMsForRoamScan = "

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    iget v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/StaLinkLayerRadioStats;->onTimeInMsForRoamScan:I

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string v1, ", .onTimeInMsForPnoScan = "

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    iget v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/StaLinkLayerRadioStats;->onTimeInMsForPnoScan:I

    .line 49
    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    const-string v1, ", .onTimeInMsForHs20Scan = "

    .line 54
    .line 55
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    iget v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/StaLinkLayerRadioStats;->onTimeInMsForHs20Scan:I

    .line 59
    .line 60
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    const-string v1, ", .channelStats = "

    .line 64
    .line 65
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    iget-object v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/StaLinkLayerRadioStats;->channelStats:Ljava/util/ArrayList;

    .line 69
    .line 70
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    const-string v1, ", .radioId = "

    .line 74
    .line 75
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    iget p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/StaLinkLayerRadioStats;->radioId:I

    .line 79
    .line 80
    const-string v1, "}"

    .line 81
    .line 82
    invoke-static {v1, p0, v0}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/StringBuilder;)Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object p0

    .line 86
    return-object p0
.end method

.method public final writeEmbeddedToBlob(Landroid/os/HwBlob;J)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/StaLinkLayerRadioStats;->V1_0:Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaLinkLayerRadioStats;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaLinkLayerRadioStats;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 4
    .line 5
    .line 6
    const-wide/16 v0, 0x20

    .line 7
    .line 8
    add-long/2addr v0, p2

    .line 9
    iget v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/StaLinkLayerRadioStats;->onTimeInMsForNanScan:I

    .line 10
    .line 11
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 12
    .line 13
    .line 14
    const-wide/16 v0, 0x24

    .line 15
    .line 16
    add-long/2addr v0, p2

    .line 17
    iget v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/StaLinkLayerRadioStats;->onTimeInMsForBgScan:I

    .line 18
    .line 19
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 20
    .line 21
    .line 22
    const-wide/16 v0, 0x28

    .line 23
    .line 24
    add-long/2addr v0, p2

    .line 25
    iget v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/StaLinkLayerRadioStats;->onTimeInMsForRoamScan:I

    .line 26
    .line 27
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 28
    .line 29
    .line 30
    const-wide/16 v0, 0x2c

    .line 31
    .line 32
    add-long/2addr v0, p2

    .line 33
    iget v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/StaLinkLayerRadioStats;->onTimeInMsForPnoScan:I

    .line 34
    .line 35
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 36
    .line 37
    .line 38
    const-wide/16 v0, 0x30

    .line 39
    .line 40
    add-long/2addr v0, p2

    .line 41
    iget v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/StaLinkLayerRadioStats;->onTimeInMsForHs20Scan:I

    .line 42
    .line 43
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 44
    .line 45
    .line 46
    iget-object v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/StaLinkLayerRadioStats;->channelStats:Ljava/util/ArrayList;

    .line 47
    .line 48
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    const-wide/16 v1, 0x38

    .line 53
    .line 54
    add-long/2addr v1, p2

    .line 55
    const-wide/16 v3, 0x40

    .line 56
    .line 57
    add-long/2addr v3, p2

    .line 58
    invoke-virtual {p1, v3, v4, v0}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 59
    .line 60
    .line 61
    const-wide/16 v3, 0x44

    .line 62
    .line 63
    add-long/2addr v3, p2

    .line 64
    const/4 v5, 0x0

    .line 65
    invoke-virtual {p1, v3, v4, v5}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 66
    .line 67
    .line 68
    new-instance v3, Landroid/os/HwBlob;

    .line 69
    .line 70
    mul-int/lit8 v4, v0, 0x18

    .line 71
    .line 72
    invoke-direct {v3, v4}, Landroid/os/HwBlob;-><init>(I)V

    .line 73
    .line 74
    .line 75
    :goto_0
    if-ge v5, v0, :cond_0

    .line 76
    .line 77
    iget-object v4, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/StaLinkLayerRadioStats;->channelStats:Ljava/util/ArrayList;

    .line 78
    .line 79
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object v4

    .line 83
    check-cast v4, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/WifiChannelStats;

    .line 84
    .line 85
    mul-int/lit8 v6, v5, 0x18

    .line 86
    .line 87
    int-to-long v6, v6

    .line 88
    invoke-virtual {v4, v3, v6, v7}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/WifiChannelStats;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 89
    .line 90
    .line 91
    add-int/lit8 v5, v5, 0x1

    .line 92
    .line 93
    goto :goto_0

    .line 94
    :cond_0
    invoke-virtual {p1, v1, v2, v3}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 95
    .line 96
    .line 97
    const-wide/16 v0, 0x48

    .line 98
    .line 99
    add-long/2addr p2, v0

    .line 100
    iget p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/StaLinkLayerRadioStats;->radioId:I

    .line 101
    .line 102
    invoke-virtual {p1, p2, p3, p0}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 103
    .line 104
    .line 105
    return-void
.end method

.method public final writeToParcel(Landroid/os/HwParcel;)V
    .locals 3

    .line 1
    new-instance v0, Landroid/os/HwBlob;

    .line 2
    .line 3
    const/16 v1, 0x50

    .line 4
    .line 5
    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 6
    .line 7
    .line 8
    const-wide/16 v1, 0x0

    .line 9
    .line 10
    invoke-virtual {p0, v0, v1, v2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/StaLinkLayerRadioStats;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method
