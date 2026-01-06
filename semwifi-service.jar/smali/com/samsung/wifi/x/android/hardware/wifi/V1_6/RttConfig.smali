.class public final Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/RttConfig;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# instance fields
.field public addr:[B

.field public burstDuration:I

.field public burstPeriod:I

.field public bw:I

.field public channel:Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/WifiChannelInfo;

.field public mustRequestLci:Z

.field public mustRequestLcr:Z

.field public numBurst:I

.field public numFramesPerBurst:I

.field public numRetriesPerFtmr:I

.field public numRetriesPerRttFrame:I

.field public peer:I

.field public preamble:I

.field public type:I


# direct methods
.method public constructor <init>()V
    .locals 2

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
    iput-object v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/RttConfig;->addr:[B

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    iput v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/RttConfig;->type:I

    .line 11
    .line 12
    iput v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/RttConfig;->peer:I

    .line 13
    .line 14
    new-instance v1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/WifiChannelInfo;

    .line 15
    .line 16
    invoke-direct {v1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/WifiChannelInfo;-><init>()V

    .line 17
    .line 18
    .line 19
    iput-object v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/RttConfig;->channel:Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/WifiChannelInfo;

    .line 20
    .line 21
    iput v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/RttConfig;->burstPeriod:I

    .line 22
    .line 23
    iput v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/RttConfig;->numBurst:I

    .line 24
    .line 25
    iput v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/RttConfig;->numFramesPerBurst:I

    .line 26
    .line 27
    iput v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/RttConfig;->numRetriesPerRttFrame:I

    .line 28
    .line 29
    iput v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/RttConfig;->numRetriesPerFtmr:I

    .line 30
    .line 31
    iput-boolean v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/RttConfig;->mustRequestLci:Z

    .line 32
    .line 33
    iput-boolean v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/RttConfig;->mustRequestLcr:Z

    .line 34
    .line 35
    iput v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/RttConfig;->burstDuration:I

    .line 36
    .line 37
    iput v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/RttConfig;->preamble:I

    .line 38
    .line 39
    iput v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/RttConfig;->bw:I

    .line 40
    .line 41
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
            "Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/RttConfig;",
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
    mul-int/lit8 v3, v2, 0x44

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
    new-instance v3, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/RttConfig;

    .line 40
    .line 41
    invoke-direct {v3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/RttConfig;-><init>()V

    .line 42
    .line 43
    .line 44
    mul-int/lit8 v5, v1, 0x44

    .line 45
    .line 46
    int-to-long v5, v5

    .line 47
    invoke-virtual {v3, v4, p0, v5, v6}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/RttConfig;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

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
            "Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/RttConfig;",
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
    mul-int/lit8 v3, v1, 0x44

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
    check-cast v3, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/RttConfig;

    .line 37
    .line 38
    mul-int/lit8 v5, v4, 0x44

    .line 39
    .line 40
    int-to-long v5, v5

    .line 41
    invoke-virtual {v3, v2, v5, v6}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/RttConfig;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

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
    const-class v3, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/RttConfig;

    .line 14
    .line 15
    if-eq v2, v3, :cond_2

    .line 16
    .line 17
    return v1

    .line 18
    :cond_2
    check-cast p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/RttConfig;

    .line 19
    .line 20
    iget-object v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/RttConfig;->addr:[B

    .line 21
    .line 22
    iget-object v3, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/RttConfig;->addr:[B

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
    iget v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/RttConfig;->type:I

    .line 32
    .line 33
    iget v3, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/RttConfig;->type:I

    .line 34
    .line 35
    if-eq v2, v3, :cond_4

    .line 36
    .line 37
    return v1

    .line 38
    :cond_4
    iget v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/RttConfig;->peer:I

    .line 39
    .line 40
    iget v3, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/RttConfig;->peer:I

    .line 41
    .line 42
    if-eq v2, v3, :cond_5

    .line 43
    .line 44
    return v1

    .line 45
    :cond_5
    iget-object v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/RttConfig;->channel:Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/WifiChannelInfo;

    .line 46
    .line 47
    iget-object v3, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/RttConfig;->channel:Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/WifiChannelInfo;

    .line 48
    .line 49
    invoke-static {v2, v3}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    move-result v2

    .line 53
    if-nez v2, :cond_6

    .line 54
    .line 55
    return v1

    .line 56
    :cond_6
    iget v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/RttConfig;->burstPeriod:I

    .line 57
    .line 58
    iget v3, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/RttConfig;->burstPeriod:I

    .line 59
    .line 60
    if-eq v2, v3, :cond_7

    .line 61
    .line 62
    return v1

    .line 63
    :cond_7
    iget v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/RttConfig;->numBurst:I

    .line 64
    .line 65
    iget v3, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/RttConfig;->numBurst:I

    .line 66
    .line 67
    if-eq v2, v3, :cond_8

    .line 68
    .line 69
    return v1

    .line 70
    :cond_8
    iget v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/RttConfig;->numFramesPerBurst:I

    .line 71
    .line 72
    iget v3, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/RttConfig;->numFramesPerBurst:I

    .line 73
    .line 74
    if-eq v2, v3, :cond_9

    .line 75
    .line 76
    return v1

    .line 77
    :cond_9
    iget v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/RttConfig;->numRetriesPerRttFrame:I

    .line 78
    .line 79
    iget v3, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/RttConfig;->numRetriesPerRttFrame:I

    .line 80
    .line 81
    if-eq v2, v3, :cond_a

    .line 82
    .line 83
    return v1

    .line 84
    :cond_a
    iget v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/RttConfig;->numRetriesPerFtmr:I

    .line 85
    .line 86
    iget v3, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/RttConfig;->numRetriesPerFtmr:I

    .line 87
    .line 88
    if-eq v2, v3, :cond_b

    .line 89
    .line 90
    return v1

    .line 91
    :cond_b
    iget-boolean v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/RttConfig;->mustRequestLci:Z

    .line 92
    .line 93
    iget-boolean v3, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/RttConfig;->mustRequestLci:Z

    .line 94
    .line 95
    if-eq v2, v3, :cond_c

    .line 96
    .line 97
    return v1

    .line 98
    :cond_c
    iget-boolean v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/RttConfig;->mustRequestLcr:Z

    .line 99
    .line 100
    iget-boolean v3, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/RttConfig;->mustRequestLcr:Z

    .line 101
    .line 102
    if-eq v2, v3, :cond_d

    .line 103
    .line 104
    return v1

    .line 105
    :cond_d
    iget v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/RttConfig;->burstDuration:I

    .line 106
    .line 107
    iget v3, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/RttConfig;->burstDuration:I

    .line 108
    .line 109
    if-eq v2, v3, :cond_e

    .line 110
    .line 111
    return v1

    .line 112
    :cond_e
    iget v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/RttConfig;->preamble:I

    .line 113
    .line 114
    iget v3, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/RttConfig;->preamble:I

    .line 115
    .line 116
    if-eq v2, v3, :cond_f

    .line 117
    .line 118
    return v1

    .line 119
    :cond_f
    iget p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/RttConfig;->bw:I

    .line 120
    .line 121
    iget p1, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/RttConfig;->bw:I

    .line 122
    .line 123
    if-eq p0, p1, :cond_10

    .line 124
    .line 125
    return v1

    .line 126
    :cond_10
    return v0
.end method

.method public final hashCode()I
    .locals 15

    .line 1
    iget-object v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/RttConfig;->addr:[B

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
    iget v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/RttConfig;->type:I

    .line 12
    .line 13
    invoke-static {v0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip$Stub$$ExternalSyntheticOutline0;->m(I)Ljava/lang/Integer;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    iget v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/RttConfig;->peer:I

    .line 18
    .line 19
    invoke-static {v0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip$Stub$$ExternalSyntheticOutline0;->m(I)Ljava/lang/Integer;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    iget-object v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/RttConfig;->channel:Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/WifiChannelInfo;

    .line 24
    .line 25
    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 30
    .line 31
    .line 32
    move-result-object v4

    .line 33
    iget v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/RttConfig;->burstPeriod:I

    .line 34
    .line 35
    invoke-static {v0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip$Stub$$ExternalSyntheticOutline0;->m(I)Ljava/lang/Integer;

    .line 36
    .line 37
    .line 38
    move-result-object v5

    .line 39
    iget v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/RttConfig;->numBurst:I

    .line 40
    .line 41
    invoke-static {v0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip$Stub$$ExternalSyntheticOutline0;->m(I)Ljava/lang/Integer;

    .line 42
    .line 43
    .line 44
    move-result-object v6

    .line 45
    iget v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/RttConfig;->numFramesPerBurst:I

    .line 46
    .line 47
    invoke-static {v0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip$Stub$$ExternalSyntheticOutline0;->m(I)Ljava/lang/Integer;

    .line 48
    .line 49
    .line 50
    move-result-object v7

    .line 51
    iget v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/RttConfig;->numRetriesPerRttFrame:I

    .line 52
    .line 53
    invoke-static {v0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip$Stub$$ExternalSyntheticOutline0;->m(I)Ljava/lang/Integer;

    .line 54
    .line 55
    .line 56
    move-result-object v8

    .line 57
    iget v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/RttConfig;->numRetriesPerFtmr:I

    .line 58
    .line 59
    invoke-static {v0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip$Stub$$ExternalSyntheticOutline0;->m(I)Ljava/lang/Integer;

    .line 60
    .line 61
    .line 62
    move-result-object v9

    .line 63
    iget-boolean v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/RttConfig;->mustRequestLci:Z

    .line 64
    .line 65
    invoke-static {v0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanBandSpecificConfig$$ExternalSyntheticOutline0;->m(Z)Ljava/lang/Integer;

    .line 66
    .line 67
    .line 68
    move-result-object v10

    .line 69
    iget-boolean v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/RttConfig;->mustRequestLcr:Z

    .line 70
    .line 71
    invoke-static {v0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanBandSpecificConfig$$ExternalSyntheticOutline0;->m(Z)Ljava/lang/Integer;

    .line 72
    .line 73
    .line 74
    move-result-object v11

    .line 75
    iget v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/RttConfig;->burstDuration:I

    .line 76
    .line 77
    invoke-static {v0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip$Stub$$ExternalSyntheticOutline0;->m(I)Ljava/lang/Integer;

    .line 78
    .line 79
    .line 80
    move-result-object v12

    .line 81
    iget v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/RttConfig;->preamble:I

    .line 82
    .line 83
    invoke-static {v0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip$Stub$$ExternalSyntheticOutline0;->m(I)Ljava/lang/Integer;

    .line 84
    .line 85
    .line 86
    move-result-object v13

    .line 87
    iget p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/RttConfig;->bw:I

    .line 88
    .line 89
    invoke-static {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip$Stub$$ExternalSyntheticOutline0;->m(I)Ljava/lang/Integer;

    .line 90
    .line 91
    .line 92
    move-result-object v14

    .line 93
    filled-new-array/range {v1 .. v14}, [Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    move-result-object p0

    .line 97
    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    .line 98
    .line 99
    .line 100
    move-result p0

    .line 101
    return p0
.end method

.method public final readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/RttConfig;->addr:[B

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
    add-long/2addr v0, p3

    .line 10
    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt32(J)I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    iput v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/RttConfig;->type:I

    .line 15
    .line 16
    const-wide/16 v0, 0xc

    .line 17
    .line 18
    add-long/2addr v0, p3

    .line 19
    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt32(J)I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    iput v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/RttConfig;->peer:I

    .line 24
    .line 25
    iget-object v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/RttConfig;->channel:Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/WifiChannelInfo;

    .line 26
    .line 27
    const-wide/16 v1, 0x10

    .line 28
    .line 29
    add-long/2addr v1, p3

    .line 30
    invoke-virtual {v0, p1, p2, v1, v2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/WifiChannelInfo;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 31
    .line 32
    .line 33
    const-wide/16 v0, 0x20

    .line 34
    .line 35
    add-long/2addr v0, p3

    .line 36
    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt32(J)I

    .line 37
    .line 38
    .line 39
    move-result p1

    .line 40
    iput p1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/RttConfig;->burstPeriod:I

    .line 41
    .line 42
    const-wide/16 v0, 0x24

    .line 43
    .line 44
    add-long/2addr v0, p3

    .line 45
    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt32(J)I

    .line 46
    .line 47
    .line 48
    move-result p1

    .line 49
    iput p1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/RttConfig;->numBurst:I

    .line 50
    .line 51
    const-wide/16 v0, 0x28

    .line 52
    .line 53
    add-long/2addr v0, p3

    .line 54
    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt32(J)I

    .line 55
    .line 56
    .line 57
    move-result p1

    .line 58
    iput p1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/RttConfig;->numFramesPerBurst:I

    .line 59
    .line 60
    const-wide/16 v0, 0x2c

    .line 61
    .line 62
    add-long/2addr v0, p3

    .line 63
    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt32(J)I

    .line 64
    .line 65
    .line 66
    move-result p1

    .line 67
    iput p1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/RttConfig;->numRetriesPerRttFrame:I

    .line 68
    .line 69
    const-wide/16 v0, 0x30

    .line 70
    .line 71
    add-long/2addr v0, p3

    .line 72
    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt32(J)I

    .line 73
    .line 74
    .line 75
    move-result p1

    .line 76
    iput p1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/RttConfig;->numRetriesPerFtmr:I

    .line 77
    .line 78
    const-wide/16 v0, 0x34

    .line 79
    .line 80
    add-long/2addr v0, p3

    .line 81
    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getBool(J)Z

    .line 82
    .line 83
    .line 84
    move-result p1

    .line 85
    iput-boolean p1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/RttConfig;->mustRequestLci:Z

    .line 86
    .line 87
    const-wide/16 v0, 0x35

    .line 88
    .line 89
    add-long/2addr v0, p3

    .line 90
    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getBool(J)Z

    .line 91
    .line 92
    .line 93
    move-result p1

    .line 94
    iput-boolean p1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/RttConfig;->mustRequestLcr:Z

    .line 95
    .line 96
    const-wide/16 v0, 0x38

    .line 97
    .line 98
    add-long/2addr v0, p3

    .line 99
    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt32(J)I

    .line 100
    .line 101
    .line 102
    move-result p1

    .line 103
    iput p1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/RttConfig;->burstDuration:I

    .line 104
    .line 105
    const-wide/16 v0, 0x3c

    .line 106
    .line 107
    add-long/2addr v0, p3

    .line 108
    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt32(J)I

    .line 109
    .line 110
    .line 111
    move-result p1

    .line 112
    iput p1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/RttConfig;->preamble:I

    .line 113
    .line 114
    const-wide/16 v0, 0x40

    .line 115
    .line 116
    add-long/2addr p3, v0

    .line 117
    invoke-virtual {p2, p3, p4}, Landroid/os/HwBlob;->getInt32(J)I

    .line 118
    .line 119
    .line 120
    move-result p1

    .line 121
    iput p1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/RttConfig;->bw:I

    .line 122
    .line 123
    return-void
.end method

.method public final readFromParcel(Landroid/os/HwParcel;)V
    .locals 3

    .line 1
    const-wide/16 v0, 0x44

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
    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/RttConfig;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

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
    const-string v1, "{.addr = "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/RttConfig;->addr:[B

    .line 9
    .line 10
    const-string v2, ", .type = "

    .line 11
    .line 12
    invoke-static {v1, v0, v2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDataPathConfirmInd$$ExternalSyntheticOutline0;->m([BLjava/lang/StringBuilder;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    iget v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/RttConfig;->type:I

    .line 16
    .line 17
    invoke-static {v1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/RttType;->toString(I)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    const-string v1, ", .peer = "

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    iget v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/RttConfig;->peer:I

    .line 30
    .line 31
    invoke-static {v1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/RttPeerType;->toString(I)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    const-string v1, ", .channel = "

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    iget-object v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/RttConfig;->channel:Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/WifiChannelInfo;

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    const-string v1, ", .burstPeriod = "

    .line 49
    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    iget v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/RttConfig;->burstPeriod:I

    .line 54
    .line 55
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    const-string v1, ", .numBurst = "

    .line 59
    .line 60
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    iget v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/RttConfig;->numBurst:I

    .line 64
    .line 65
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    const-string v1, ", .numFramesPerBurst = "

    .line 69
    .line 70
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    iget v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/RttConfig;->numFramesPerBurst:I

    .line 74
    .line 75
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    const-string v1, ", .numRetriesPerRttFrame = "

    .line 79
    .line 80
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    iget v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/RttConfig;->numRetriesPerRttFrame:I

    .line 84
    .line 85
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    const-string v1, ", .numRetriesPerFtmr = "

    .line 89
    .line 90
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    iget v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/RttConfig;->numRetriesPerFtmr:I

    .line 94
    .line 95
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    const-string v1, ", .mustRequestLci = "

    .line 99
    .line 100
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    iget-boolean v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/RttConfig;->mustRequestLci:Z

    .line 104
    .line 105
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    const-string v1, ", .mustRequestLcr = "

    .line 109
    .line 110
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    iget-boolean v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/RttConfig;->mustRequestLcr:Z

    .line 114
    .line 115
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    const-string v1, ", .burstDuration = "

    .line 119
    .line 120
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    iget v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/RttConfig;->burstDuration:I

    .line 124
    .line 125
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    const-string v1, ", .preamble = "

    .line 129
    .line 130
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    iget v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/RttConfig;->preamble:I

    .line 134
    .line 135
    invoke-static {v1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/RttPreamble;->toString(I)Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v1

    .line 139
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    .line 141
    .line 142
    const-string v1, ", .bw = "

    .line 143
    .line 144
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    .line 146
    .line 147
    iget p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/RttConfig;->bw:I

    .line 148
    .line 149
    invoke-static {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/RttBw;->toString(I)Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object p0

    .line 153
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    .line 155
    .line 156
    const-string p0, "}"

    .line 157
    .line 158
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    .line 160
    .line 161
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object p0

    .line 165
    return-object p0
.end method

.method public final writeEmbeddedToBlob(Landroid/os/HwBlob;J)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/RttConfig;->addr:[B

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    array-length v1, v0

    .line 6
    const/4 v2, 0x6

    .line 7
    if-ne v1, v2, :cond_0

    .line 8
    .line 9
    invoke-virtual {p1, p2, p3, v0}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 10
    .line 11
    .line 12
    const-wide/16 v0, 0x8

    .line 13
    .line 14
    add-long/2addr v0, p2

    .line 15
    iget v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/RttConfig;->type:I

    .line 16
    .line 17
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 18
    .line 19
    .line 20
    const-wide/16 v0, 0xc

    .line 21
    .line 22
    add-long/2addr v0, p2

    .line 23
    iget v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/RttConfig;->peer:I

    .line 24
    .line 25
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 26
    .line 27
    .line 28
    iget-object v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/RttConfig;->channel:Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/WifiChannelInfo;

    .line 29
    .line 30
    const-wide/16 v1, 0x10

    .line 31
    .line 32
    add-long/2addr v1, p2

    .line 33
    invoke-virtual {v0, p1, v1, v2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/WifiChannelInfo;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 34
    .line 35
    .line 36
    const-wide/16 v0, 0x20

    .line 37
    .line 38
    add-long/2addr v0, p2

    .line 39
    iget v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/RttConfig;->burstPeriod:I

    .line 40
    .line 41
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 42
    .line 43
    .line 44
    const-wide/16 v0, 0x24

    .line 45
    .line 46
    add-long/2addr v0, p2

    .line 47
    iget v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/RttConfig;->numBurst:I

    .line 48
    .line 49
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 50
    .line 51
    .line 52
    const-wide/16 v0, 0x28

    .line 53
    .line 54
    add-long/2addr v0, p2

    .line 55
    iget v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/RttConfig;->numFramesPerBurst:I

    .line 56
    .line 57
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 58
    .line 59
    .line 60
    const-wide/16 v0, 0x2c

    .line 61
    .line 62
    add-long/2addr v0, p2

    .line 63
    iget v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/RttConfig;->numRetriesPerRttFrame:I

    .line 64
    .line 65
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 66
    .line 67
    .line 68
    const-wide/16 v0, 0x30

    .line 69
    .line 70
    add-long/2addr v0, p2

    .line 71
    iget v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/RttConfig;->numRetriesPerFtmr:I

    .line 72
    .line 73
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 74
    .line 75
    .line 76
    const-wide/16 v0, 0x34

    .line 77
    .line 78
    add-long/2addr v0, p2

    .line 79
    iget-boolean v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/RttConfig;->mustRequestLci:Z

    .line 80
    .line 81
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 82
    .line 83
    .line 84
    const-wide/16 v0, 0x35

    .line 85
    .line 86
    add-long/2addr v0, p2

    .line 87
    iget-boolean v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/RttConfig;->mustRequestLcr:Z

    .line 88
    .line 89
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 90
    .line 91
    .line 92
    const-wide/16 v0, 0x38

    .line 93
    .line 94
    add-long/2addr v0, p2

    .line 95
    iget v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/RttConfig;->burstDuration:I

    .line 96
    .line 97
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 98
    .line 99
    .line 100
    const-wide/16 v0, 0x3c

    .line 101
    .line 102
    add-long/2addr v0, p2

    .line 103
    iget v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/RttConfig;->preamble:I

    .line 104
    .line 105
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 106
    .line 107
    .line 108
    const-wide/16 v0, 0x40

    .line 109
    .line 110
    add-long/2addr p2, v0

    .line 111
    iget p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/RttConfig;->bw:I

    .line 112
    .line 113
    invoke-virtual {p1, p2, p3, p0}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 114
    .line 115
    .line 116
    return-void

    .line 117
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 118
    .line 119
    const-string p1, "Array element is not of the expected length"

    .line 120
    .line 121
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    throw p0
.end method

.method public final writeToParcel(Landroid/os/HwParcel;)V
    .locals 3

    .line 1
    new-instance v0, Landroid/os/HwBlob;

    .line 2
    .line 3
    const/16 v1, 0x44

    .line 4
    .line 5
    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 6
    .line 7
    .line 8
    const-wide/16 v1, 0x0

    .line 9
    .line 10
    invoke-virtual {p0, v0, v1, v2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/RttConfig;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method
