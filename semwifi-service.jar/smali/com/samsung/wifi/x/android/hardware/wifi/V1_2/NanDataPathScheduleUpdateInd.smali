.class public final Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/NanDataPathScheduleUpdateInd;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# instance fields
.field public channelInfo:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/NanDataPathChannelInfo;",
            ">;"
        }
    .end annotation
.end field

.field public ndpInstanceIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public peerDiscoveryAddress:[B


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x6

    .line 5
    new-array v0, v0, [B

    .line 6
    .line 7
    iput-object v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/NanDataPathScheduleUpdateInd;->peerDiscoveryAddress:[B

    .line 8
    .line 9
    new-instance v0, Ljava/util/ArrayList;

    .line 10
    .line 11
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/NanDataPathScheduleUpdateInd;->channelInfo:Ljava/util/ArrayList;

    .line 15
    .line 16
    new-instance v0, Ljava/util/ArrayList;

    .line 17
    .line 18
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 19
    .line 20
    .line 21
    iput-object v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/NanDataPathScheduleUpdateInd;->ndpInstanceIds:Ljava/util/ArrayList;

    .line 22
    .line 23
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
            "Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/NanDataPathScheduleUpdateInd;",
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
    mul-int/lit8 v3, v2, 0x28

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
    new-instance v3, Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/NanDataPathScheduleUpdateInd;

    .line 40
    .line 41
    invoke-direct {v3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/NanDataPathScheduleUpdateInd;-><init>()V

    .line 42
    .line 43
    .line 44
    mul-int/lit8 v5, v1, 0x28

    .line 45
    .line 46
    int-to-long v5, v5

    .line 47
    invoke-virtual {v3, v4, p0, v5, v6}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/NanDataPathScheduleUpdateInd;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

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
            "Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/NanDataPathScheduleUpdateInd;",
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
    mul-int/lit8 v3, v1, 0x28

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
    check-cast v3, Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/NanDataPathScheduleUpdateInd;

    .line 37
    .line 38
    mul-int/lit8 v5, v4, 0x28

    .line 39
    .line 40
    int-to-long v5, v5

    .line 41
    invoke-virtual {v3, v2, v5, v6}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/NanDataPathScheduleUpdateInd;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

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
    const-class v3, Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/NanDataPathScheduleUpdateInd;

    .line 14
    .line 15
    if-eq v2, v3, :cond_2

    .line 16
    .line 17
    return v1

    .line 18
    :cond_2
    check-cast p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/NanDataPathScheduleUpdateInd;

    .line 19
    .line 20
    iget-object v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/NanDataPathScheduleUpdateInd;->peerDiscoveryAddress:[B

    .line 21
    .line 22
    iget-object v3, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/NanDataPathScheduleUpdateInd;->peerDiscoveryAddress:[B

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
    iget-object v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/NanDataPathScheduleUpdateInd;->channelInfo:Ljava/util/ArrayList;

    .line 32
    .line 33
    iget-object v3, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/NanDataPathScheduleUpdateInd;->channelInfo:Ljava/util/ArrayList;

    .line 34
    .line 35
    invoke-static {v2, v3}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    if-nez v2, :cond_4

    .line 40
    .line 41
    return v1

    .line 42
    :cond_4
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/NanDataPathScheduleUpdateInd;->ndpInstanceIds:Ljava/util/ArrayList;

    .line 43
    .line 44
    iget-object p1, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/NanDataPathScheduleUpdateInd;->ndpInstanceIds:Ljava/util/ArrayList;

    .line 45
    .line 46
    invoke-static {p0, p1}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    move-result p0

    .line 50
    if-nez p0, :cond_5

    .line 51
    .line 52
    return v1

    .line 53
    :cond_5
    return v0
.end method

.method public final hashCode()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/NanDataPathScheduleUpdateInd;->peerDiscoveryAddress:[B

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
    move-result-object v0

    .line 11
    iget-object v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/NanDataPathScheduleUpdateInd;->channelInfo:Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/NanDataPathScheduleUpdateInd;->ndpInstanceIds:Ljava/util/ArrayList;

    .line 22
    .line 23
    invoke-static {p0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    .line 24
    .line 25
    .line 26
    move-result p0

    .line 27
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    filled-new-array {v0, v1, p0}, [Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    .line 36
    .line 37
    .line 38
    move-result p0

    .line 39
    return p0
.end method

.method public final readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/NanDataPathScheduleUpdateInd;->peerDiscoveryAddress:[B

    .line 2
    .line 3
    const/4 v1, 0x6

    .line 4
    invoke-virtual {p2, p3, p4, v0, v1}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 5
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
    mul-int/lit8 v1, v0, 0xc

    .line 19
    .line 20
    int-to-long v3, v1

    .line 21
    invoke-virtual {p2}, Landroid/os/HwBlob;->handle()J

    .line 22
    .line 23
    .line 24
    move-result-wide v5

    .line 25
    const/4 v9, 0x1

    .line 26
    move-object v2, p1

    .line 27
    invoke-virtual/range {v2 .. v9}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    move-object v1, v2

    .line 32
    iget-object v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/NanDataPathScheduleUpdateInd;->channelInfo:Ljava/util/ArrayList;

    .line 33
    .line 34
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 35
    .line 36
    .line 37
    const/4 v9, 0x0

    .line 38
    move v2, v9

    .line 39
    :goto_0
    if-ge v2, v0, :cond_0

    .line 40
    .line 41
    new-instance v3, Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/NanDataPathChannelInfo;

    .line 42
    .line 43
    invoke-direct {v3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/NanDataPathChannelInfo;-><init>()V

    .line 44
    .line 45
    .line 46
    mul-int/lit8 v4, v2, 0xc

    .line 47
    .line 48
    int-to-long v4, v4

    .line 49
    invoke-virtual {v3, v1, p1, v4, v5}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/NanDataPathChannelInfo;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 50
    .line 51
    .line 52
    iget-object v4, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/NanDataPathScheduleUpdateInd;->channelInfo:Ljava/util/ArrayList;

    .line 53
    .line 54
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    add-int/lit8 v2, v2, 0x1

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_0
    const-wide/16 v2, 0x18

    .line 61
    .line 62
    add-long v6, p3, v2

    .line 63
    .line 64
    const-wide/16 v2, 0x20

    .line 65
    .line 66
    add-long/2addr p3, v2

    .line 67
    invoke-virtual {p2, p3, p4}, Landroid/os/HwBlob;->getInt32(J)I

    .line 68
    .line 69
    .line 70
    move-result p1

    .line 71
    mul-int/lit8 p3, p1, 0x4

    .line 72
    .line 73
    int-to-long v2, p3

    .line 74
    invoke-virtual {p2}, Landroid/os/HwBlob;->handle()J

    .line 75
    .line 76
    .line 77
    move-result-wide v4

    .line 78
    const/4 v8, 0x1

    .line 79
    invoke-virtual/range {v1 .. v8}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    .line 80
    .line 81
    .line 82
    move-result-object p2

    .line 83
    iget-object p3, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/NanDataPathScheduleUpdateInd;->ndpInstanceIds:Ljava/util/ArrayList;

    .line 84
    .line 85
    invoke-virtual {p3}, Ljava/util/ArrayList;->clear()V

    .line 86
    .line 87
    .line 88
    :goto_1
    if-ge v9, p1, :cond_1

    .line 89
    .line 90
    mul-int/lit8 p3, v9, 0x4

    .line 91
    .line 92
    int-to-long p3, p3

    .line 93
    invoke-virtual {p2, p3, p4}, Landroid/os/HwBlob;->getInt32(J)I

    .line 94
    .line 95
    .line 96
    move-result p3

    .line 97
    iget-object p4, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/NanDataPathScheduleUpdateInd;->ndpInstanceIds:Ljava/util/ArrayList;

    .line 98
    .line 99
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 100
    .line 101
    .line 102
    move-result-object p3

    .line 103
    invoke-virtual {p4, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 104
    .line 105
    .line 106
    add-int/lit8 v9, v9, 0x1

    .line 107
    .line 108
    goto :goto_1

    .line 109
    :cond_1
    return-void
.end method

.method public final readFromParcel(Landroid/os/HwParcel;)V
    .locals 3

    .line 1
    const-wide/16 v0, 0x28

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
    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/NanDataPathScheduleUpdateInd;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

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
    const-string v1, "{.peerDiscoveryAddress = "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/NanDataPathScheduleUpdateInd;->peerDiscoveryAddress:[B

    .line 9
    .line 10
    const-string v2, ", .channelInfo = "

    .line 11
    .line 12
    invoke-static {v1, v0, v2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDataPathConfirmInd$$ExternalSyntheticOutline0;->m([BLjava/lang/StringBuilder;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    iget-object v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/NanDataPathScheduleUpdateInd;->channelInfo:Ljava/util/ArrayList;

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    const-string v1, ", .ndpInstanceIds = "

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/NanDataPathScheduleUpdateInd;->ndpInstanceIds:Ljava/util/ArrayList;

    .line 26
    .line 27
    const-string v1, "}"

    .line 28
    .line 29
    invoke-static {v0, p0, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip$Stub$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/util/ArrayList;Ljava/lang/String;)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    return-object p0
.end method

.method public final writeEmbeddedToBlob(Landroid/os/HwBlob;J)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/NanDataPathScheduleUpdateInd;->peerDiscoveryAddress:[B

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    array-length v1, v0

    .line 6
    const/4 v2, 0x6

    .line 7
    if-ne v1, v2, :cond_2

    .line 8
    .line 9
    invoke-virtual {p1, p2, p3, v0}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/NanDataPathScheduleUpdateInd;->channelInfo:Ljava/util/ArrayList;

    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    const-wide/16 v1, 0x8

    .line 19
    .line 20
    add-long/2addr v1, p2

    .line 21
    const-wide/16 v3, 0x10

    .line 22
    .line 23
    add-long/2addr v3, p2

    .line 24
    invoke-virtual {p1, v3, v4, v0}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 25
    .line 26
    .line 27
    const-wide/16 v3, 0x14

    .line 28
    .line 29
    add-long/2addr v3, p2

    .line 30
    const/4 v5, 0x0

    .line 31
    invoke-virtual {p1, v3, v4, v5}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 32
    .line 33
    .line 34
    new-instance v3, Landroid/os/HwBlob;

    .line 35
    .line 36
    mul-int/lit8 v4, v0, 0xc

    .line 37
    .line 38
    invoke-direct {v3, v4}, Landroid/os/HwBlob;-><init>(I)V

    .line 39
    .line 40
    .line 41
    move v4, v5

    .line 42
    :goto_0
    if-ge v4, v0, :cond_0

    .line 43
    .line 44
    iget-object v6, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/NanDataPathScheduleUpdateInd;->channelInfo:Ljava/util/ArrayList;

    .line 45
    .line 46
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v6

    .line 50
    check-cast v6, Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/NanDataPathChannelInfo;

    .line 51
    .line 52
    mul-int/lit8 v7, v4, 0xc

    .line 53
    .line 54
    int-to-long v7, v7

    .line 55
    invoke-virtual {v6, v3, v7, v8}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/NanDataPathChannelInfo;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 56
    .line 57
    .line 58
    add-int/lit8 v4, v4, 0x1

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_0
    invoke-virtual {p1, v1, v2, v3}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 62
    .line 63
    .line 64
    iget-object v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/NanDataPathScheduleUpdateInd;->ndpInstanceIds:Ljava/util/ArrayList;

    .line 65
    .line 66
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 67
    .line 68
    .line 69
    move-result v0

    .line 70
    const-wide/16 v1, 0x18

    .line 71
    .line 72
    add-long/2addr v1, p2

    .line 73
    const-wide/16 v3, 0x20

    .line 74
    .line 75
    add-long/2addr v3, p2

    .line 76
    invoke-virtual {p1, v3, v4, v0}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 77
    .line 78
    .line 79
    const-wide/16 v3, 0x24

    .line 80
    .line 81
    add-long/2addr p2, v3

    .line 82
    invoke-virtual {p1, p2, p3, v5}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 83
    .line 84
    .line 85
    new-instance p2, Landroid/os/HwBlob;

    .line 86
    .line 87
    mul-int/lit8 p3, v0, 0x4

    .line 88
    .line 89
    invoke-direct {p2, p3}, Landroid/os/HwBlob;-><init>(I)V

    .line 90
    .line 91
    .line 92
    :goto_1
    if-ge v5, v0, :cond_1

    .line 93
    .line 94
    mul-int/lit8 p3, v5, 0x4

    .line 95
    .line 96
    int-to-long v3, p3

    .line 97
    iget-object p3, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/NanDataPathScheduleUpdateInd;->ndpInstanceIds:Ljava/util/ArrayList;

    .line 98
    .line 99
    invoke-virtual {p3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    move-result-object p3

    .line 103
    check-cast p3, Ljava/lang/Integer;

    .line 104
    .line 105
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    .line 106
    .line 107
    .line 108
    move-result p3

    .line 109
    invoke-virtual {p2, v3, v4, p3}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 110
    .line 111
    .line 112
    add-int/lit8 v5, v5, 0x1

    .line 113
    .line 114
    goto :goto_1

    .line 115
    :cond_1
    invoke-virtual {p1, v1, v2, p2}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 116
    .line 117
    .line 118
    return-void

    .line 119
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 120
    .line 121
    const-string p1, "Array element is not of the expected length"

    .line 122
    .line 123
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    throw p0
.end method

.method public final writeToParcel(Landroid/os/HwParcel;)V
    .locals 3

    .line 1
    new-instance v0, Landroid/os/HwBlob;

    .line 2
    .line 3
    const/16 v1, 0x28

    .line 4
    .line 5
    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 6
    .line 7
    .line 8
    const-wide/16 v1, 0x0

    .line 9
    .line 10
    invoke-virtual {p0, v0, v1, v2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/NanDataPathScheduleUpdateInd;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method
