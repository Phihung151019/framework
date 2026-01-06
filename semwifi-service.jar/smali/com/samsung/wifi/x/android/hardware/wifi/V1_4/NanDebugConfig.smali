.class public final Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/NanDebugConfig;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# instance fields
.field public clusterIdBottomRangeVal:S

.field public clusterIdTopRangeVal:S

.field public discoveryChannelMhzVal:[I

.field public hopCountForceVal:B

.field public intfAddrVal:[B

.field public ouiVal:I

.field public randomFactorForceVal:B

.field public useBeaconsInBandVal:[Z

.field public useSdfInBandVal:[Z

.field public validClusterIdVals:Z

.field public validDiscoveryChannelVal:Z

.field public validHopCountForceVal:Z

.field public validIntfAddrVal:Z

.field public validOuiVal:Z

.field public validRandomFactorForceVal:Z

.field public validUseBeaconsInBandVal:Z

.field public validUseSdfInBandVal:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/NanDebugConfig;->validClusterIdVals:Z

    .line 6
    .line 7
    iput-short v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/NanDebugConfig;->clusterIdBottomRangeVal:S

    .line 8
    .line 9
    iput-short v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/NanDebugConfig;->clusterIdTopRangeVal:S

    .line 10
    .line 11
    iput-boolean v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/NanDebugConfig;->validIntfAddrVal:Z

    .line 12
    .line 13
    const/4 v1, 0x6

    .line 14
    new-array v1, v1, [B

    .line 15
    .line 16
    iput-object v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/NanDebugConfig;->intfAddrVal:[B

    .line 17
    .line 18
    iput-boolean v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/NanDebugConfig;->validOuiVal:Z

    .line 19
    .line 20
    iput v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/NanDebugConfig;->ouiVal:I

    .line 21
    .line 22
    iput-boolean v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/NanDebugConfig;->validRandomFactorForceVal:Z

    .line 23
    .line 24
    iput-byte v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/NanDebugConfig;->randomFactorForceVal:B

    .line 25
    .line 26
    iput-boolean v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/NanDebugConfig;->validHopCountForceVal:Z

    .line 27
    .line 28
    iput-byte v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/NanDebugConfig;->hopCountForceVal:B

    .line 29
    .line 30
    iput-boolean v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/NanDebugConfig;->validDiscoveryChannelVal:Z

    .line 31
    .line 32
    const/4 v1, 0x3

    .line 33
    new-array v2, v1, [I

    .line 34
    .line 35
    iput-object v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/NanDebugConfig;->discoveryChannelMhzVal:[I

    .line 36
    .line 37
    iput-boolean v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/NanDebugConfig;->validUseBeaconsInBandVal:Z

    .line 38
    .line 39
    new-array v2, v1, [Z

    .line 40
    .line 41
    iput-object v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/NanDebugConfig;->useBeaconsInBandVal:[Z

    .line 42
    .line 43
    iput-boolean v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/NanDebugConfig;->validUseSdfInBandVal:Z

    .line 44
    .line 45
    new-array v0, v1, [Z

    .line 46
    .line 47
    iput-object v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/NanDebugConfig;->useSdfInBandVal:[Z

    .line 48
    .line 49
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
            "Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/NanDebugConfig;",
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
    mul-int/lit8 v3, v2, 0x30

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
    new-instance v3, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/NanDebugConfig;

    .line 40
    .line 41
    invoke-direct {v3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/NanDebugConfig;-><init>()V

    .line 42
    .line 43
    .line 44
    mul-int/lit8 v5, v1, 0x30

    .line 45
    .line 46
    int-to-long v5, v5

    .line 47
    invoke-virtual {v3, v4, p0, v5, v6}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/NanDebugConfig;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

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
            "Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/NanDebugConfig;",
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
    mul-int/lit8 v3, v1, 0x30

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
    check-cast v3, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/NanDebugConfig;

    .line 37
    .line 38
    mul-int/lit8 v5, v4, 0x30

    .line 39
    .line 40
    int-to-long v5, v5

    .line 41
    invoke-virtual {v3, v2, v5, v6}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/NanDebugConfig;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

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
    const-class v3, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/NanDebugConfig;

    .line 14
    .line 15
    if-eq v2, v3, :cond_2

    .line 16
    .line 17
    return v1

    .line 18
    :cond_2
    check-cast p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/NanDebugConfig;

    .line 19
    .line 20
    iget-boolean v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/NanDebugConfig;->validClusterIdVals:Z

    .line 21
    .line 22
    iget-boolean v3, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/NanDebugConfig;->validClusterIdVals:Z

    .line 23
    .line 24
    if-eq v2, v3, :cond_3

    .line 25
    .line 26
    return v1

    .line 27
    :cond_3
    iget-short v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/NanDebugConfig;->clusterIdBottomRangeVal:S

    .line 28
    .line 29
    iget-short v3, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/NanDebugConfig;->clusterIdBottomRangeVal:S

    .line 30
    .line 31
    if-eq v2, v3, :cond_4

    .line 32
    .line 33
    return v1

    .line 34
    :cond_4
    iget-short v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/NanDebugConfig;->clusterIdTopRangeVal:S

    .line 35
    .line 36
    iget-short v3, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/NanDebugConfig;->clusterIdTopRangeVal:S

    .line 37
    .line 38
    if-eq v2, v3, :cond_5

    .line 39
    .line 40
    return v1

    .line 41
    :cond_5
    iget-boolean v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/NanDebugConfig;->validIntfAddrVal:Z

    .line 42
    .line 43
    iget-boolean v3, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/NanDebugConfig;->validIntfAddrVal:Z

    .line 44
    .line 45
    if-eq v2, v3, :cond_6

    .line 46
    .line 47
    return v1

    .line 48
    :cond_6
    iget-object v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/NanDebugConfig;->intfAddrVal:[B

    .line 49
    .line 50
    iget-object v3, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/NanDebugConfig;->intfAddrVal:[B

    .line 51
    .line 52
    invoke-static {v2, v3}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    move-result v2

    .line 56
    if-nez v2, :cond_7

    .line 57
    .line 58
    return v1

    .line 59
    :cond_7
    iget-boolean v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/NanDebugConfig;->validOuiVal:Z

    .line 60
    .line 61
    iget-boolean v3, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/NanDebugConfig;->validOuiVal:Z

    .line 62
    .line 63
    if-eq v2, v3, :cond_8

    .line 64
    .line 65
    return v1

    .line 66
    :cond_8
    iget v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/NanDebugConfig;->ouiVal:I

    .line 67
    .line 68
    iget v3, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/NanDebugConfig;->ouiVal:I

    .line 69
    .line 70
    if-eq v2, v3, :cond_9

    .line 71
    .line 72
    return v1

    .line 73
    :cond_9
    iget-boolean v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/NanDebugConfig;->validRandomFactorForceVal:Z

    .line 74
    .line 75
    iget-boolean v3, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/NanDebugConfig;->validRandomFactorForceVal:Z

    .line 76
    .line 77
    if-eq v2, v3, :cond_a

    .line 78
    .line 79
    return v1

    .line 80
    :cond_a
    iget-byte v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/NanDebugConfig;->randomFactorForceVal:B

    .line 81
    .line 82
    iget-byte v3, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/NanDebugConfig;->randomFactorForceVal:B

    .line 83
    .line 84
    if-eq v2, v3, :cond_b

    .line 85
    .line 86
    return v1

    .line 87
    :cond_b
    iget-boolean v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/NanDebugConfig;->validHopCountForceVal:Z

    .line 88
    .line 89
    iget-boolean v3, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/NanDebugConfig;->validHopCountForceVal:Z

    .line 90
    .line 91
    if-eq v2, v3, :cond_c

    .line 92
    .line 93
    return v1

    .line 94
    :cond_c
    iget-byte v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/NanDebugConfig;->hopCountForceVal:B

    .line 95
    .line 96
    iget-byte v3, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/NanDebugConfig;->hopCountForceVal:B

    .line 97
    .line 98
    if-eq v2, v3, :cond_d

    .line 99
    .line 100
    return v1

    .line 101
    :cond_d
    iget-boolean v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/NanDebugConfig;->validDiscoveryChannelVal:Z

    .line 102
    .line 103
    iget-boolean v3, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/NanDebugConfig;->validDiscoveryChannelVal:Z

    .line 104
    .line 105
    if-eq v2, v3, :cond_e

    .line 106
    .line 107
    return v1

    .line 108
    :cond_e
    iget-object v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/NanDebugConfig;->discoveryChannelMhzVal:[I

    .line 109
    .line 110
    iget-object v3, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/NanDebugConfig;->discoveryChannelMhzVal:[I

    .line 111
    .line 112
    invoke-static {v2, v3}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 113
    .line 114
    .line 115
    move-result v2

    .line 116
    if-nez v2, :cond_f

    .line 117
    .line 118
    return v1

    .line 119
    :cond_f
    iget-boolean v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/NanDebugConfig;->validUseBeaconsInBandVal:Z

    .line 120
    .line 121
    iget-boolean v3, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/NanDebugConfig;->validUseBeaconsInBandVal:Z

    .line 122
    .line 123
    if-eq v2, v3, :cond_10

    .line 124
    .line 125
    return v1

    .line 126
    :cond_10
    iget-object v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/NanDebugConfig;->useBeaconsInBandVal:[Z

    .line 127
    .line 128
    iget-object v3, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/NanDebugConfig;->useBeaconsInBandVal:[Z

    .line 129
    .line 130
    invoke-static {v2, v3}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 131
    .line 132
    .line 133
    move-result v2

    .line 134
    if-nez v2, :cond_11

    .line 135
    .line 136
    return v1

    .line 137
    :cond_11
    iget-boolean v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/NanDebugConfig;->validUseSdfInBandVal:Z

    .line 138
    .line 139
    iget-boolean v3, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/NanDebugConfig;->validUseSdfInBandVal:Z

    .line 140
    .line 141
    if-eq v2, v3, :cond_12

    .line 142
    .line 143
    return v1

    .line 144
    :cond_12
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/NanDebugConfig;->useSdfInBandVal:[Z

    .line 145
    .line 146
    iget-object p1, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/NanDebugConfig;->useSdfInBandVal:[Z

    .line 147
    .line 148
    invoke-static {p0, p1}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 149
    .line 150
    .line 151
    move-result p0

    .line 152
    if-nez p0, :cond_13

    .line 153
    .line 154
    return v1

    .line 155
    :cond_13
    return v0
.end method

.method public final hashCode()I
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-boolean v1, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/NanDebugConfig;->validClusterIdVals:Z

    .line 4
    .line 5
    invoke-static {v1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanBandSpecificConfig$$ExternalSyntheticOutline0;->m(Z)Ljava/lang/Integer;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    iget-short v1, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/NanDebugConfig;->clusterIdBottomRangeVal:S

    .line 10
    .line 11
    invoke-static {v1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanBandSpecificConfig$$ExternalSyntheticOutline0;->m(S)Ljava/lang/Integer;

    .line 12
    .line 13
    .line 14
    move-result-object v3

    .line 15
    iget-short v1, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/NanDebugConfig;->clusterIdTopRangeVal:S

    .line 16
    .line 17
    invoke-static {v1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanBandSpecificConfig$$ExternalSyntheticOutline0;->m(S)Ljava/lang/Integer;

    .line 18
    .line 19
    .line 20
    move-result-object v4

    .line 21
    iget-boolean v1, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/NanDebugConfig;->validIntfAddrVal:Z

    .line 22
    .line 23
    invoke-static {v1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanBandSpecificConfig$$ExternalSyntheticOutline0;->m(Z)Ljava/lang/Integer;

    .line 24
    .line 25
    .line 26
    move-result-object v5

    .line 27
    iget-object v1, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/NanDebugConfig;->intfAddrVal:[B

    .line 28
    .line 29
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 34
    .line 35
    .line 36
    move-result-object v6

    .line 37
    iget-boolean v1, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/NanDebugConfig;->validOuiVal:Z

    .line 38
    .line 39
    invoke-static {v1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanBandSpecificConfig$$ExternalSyntheticOutline0;->m(Z)Ljava/lang/Integer;

    .line 40
    .line 41
    .line 42
    move-result-object v7

    .line 43
    iget v1, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/NanDebugConfig;->ouiVal:I

    .line 44
    .line 45
    invoke-static {v1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip$Stub$$ExternalSyntheticOutline0;->m(I)Ljava/lang/Integer;

    .line 46
    .line 47
    .line 48
    move-result-object v8

    .line 49
    iget-boolean v1, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/NanDebugConfig;->validRandomFactorForceVal:Z

    .line 50
    .line 51
    invoke-static {v1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanBandSpecificConfig$$ExternalSyntheticOutline0;->m(Z)Ljava/lang/Integer;

    .line 52
    .line 53
    .line 54
    move-result-object v9

    .line 55
    iget-byte v1, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/NanDebugConfig;->randomFactorForceVal:B

    .line 56
    .line 57
    invoke-static {v1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanBandSpecificConfig$$ExternalSyntheticOutline0;->m(B)Ljava/lang/Integer;

    .line 58
    .line 59
    .line 60
    move-result-object v10

    .line 61
    iget-boolean v1, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/NanDebugConfig;->validHopCountForceVal:Z

    .line 62
    .line 63
    invoke-static {v1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanBandSpecificConfig$$ExternalSyntheticOutline0;->m(Z)Ljava/lang/Integer;

    .line 64
    .line 65
    .line 66
    move-result-object v11

    .line 67
    iget-byte v1, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/NanDebugConfig;->hopCountForceVal:B

    .line 68
    .line 69
    invoke-static {v1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanBandSpecificConfig$$ExternalSyntheticOutline0;->m(B)Ljava/lang/Integer;

    .line 70
    .line 71
    .line 72
    move-result-object v12

    .line 73
    iget-boolean v1, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/NanDebugConfig;->validDiscoveryChannelVal:Z

    .line 74
    .line 75
    invoke-static {v1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanBandSpecificConfig$$ExternalSyntheticOutline0;->m(Z)Ljava/lang/Integer;

    .line 76
    .line 77
    .line 78
    move-result-object v13

    .line 79
    iget-object v1, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/NanDebugConfig;->discoveryChannelMhzVal:[I

    .line 80
    .line 81
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    .line 82
    .line 83
    .line 84
    move-result v1

    .line 85
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 86
    .line 87
    .line 88
    move-result-object v14

    .line 89
    iget-boolean v1, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/NanDebugConfig;->validUseBeaconsInBandVal:Z

    .line 90
    .line 91
    invoke-static {v1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanBandSpecificConfig$$ExternalSyntheticOutline0;->m(Z)Ljava/lang/Integer;

    .line 92
    .line 93
    .line 94
    move-result-object v15

    .line 95
    iget-object v1, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/NanDebugConfig;->useBeaconsInBandVal:[Z

    .line 96
    .line 97
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    .line 98
    .line 99
    .line 100
    move-result v1

    .line 101
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 102
    .line 103
    .line 104
    move-result-object v16

    .line 105
    iget-boolean v1, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/NanDebugConfig;->validUseSdfInBandVal:Z

    .line 106
    .line 107
    invoke-static {v1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanBandSpecificConfig$$ExternalSyntheticOutline0;->m(Z)Ljava/lang/Integer;

    .line 108
    .line 109
    .line 110
    move-result-object v17

    .line 111
    iget-object v0, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/NanDebugConfig;->useSdfInBandVal:[Z

    .line 112
    .line 113
    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    .line 114
    .line 115
    .line 116
    move-result v0

    .line 117
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 118
    .line 119
    .line 120
    move-result-object v18

    .line 121
    filled-new-array/range {v2 .. v18}, [Ljava/lang/Object;

    .line 122
    .line 123
    .line 124
    move-result-object v0

    .line 125
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    .line 126
    .line 127
    .line 128
    move-result v0

    .line 129
    return v0
.end method

.method public final readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V
    .locals 3

    .line 1
    invoke-virtual {p2, p3, p4}, Landroid/os/HwBlob;->getBool(J)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    iput-boolean p1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/NanDebugConfig;->validClusterIdVals:Z

    .line 6
    .line 7
    const-wide/16 v0, 0x2

    .line 8
    .line 9
    add-long/2addr v0, p3

    .line 10
    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt16(J)S

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    iput-short p1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/NanDebugConfig;->clusterIdBottomRangeVal:S

    .line 15
    .line 16
    const-wide/16 v0, 0x4

    .line 17
    .line 18
    add-long/2addr v0, p3

    .line 19
    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt16(J)S

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    iput-short p1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/NanDebugConfig;->clusterIdTopRangeVal:S

    .line 24
    .line 25
    const-wide/16 v0, 0x6

    .line 26
    .line 27
    add-long/2addr v0, p3

    .line 28
    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getBool(J)Z

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    iput-boolean p1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/NanDebugConfig;->validIntfAddrVal:Z

    .line 33
    .line 34
    const-wide/16 v0, 0x7

    .line 35
    .line 36
    add-long/2addr v0, p3

    .line 37
    iget-object p1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/NanDebugConfig;->intfAddrVal:[B

    .line 38
    .line 39
    const/4 v2, 0x6

    .line 40
    invoke-virtual {p2, v0, v1, p1, v2}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 41
    .line 42
    .line 43
    const-wide/16 v0, 0xd

    .line 44
    .line 45
    add-long/2addr v0, p3

    .line 46
    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getBool(J)Z

    .line 47
    .line 48
    .line 49
    move-result p1

    .line 50
    iput-boolean p1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/NanDebugConfig;->validOuiVal:Z

    .line 51
    .line 52
    const-wide/16 v0, 0x10

    .line 53
    .line 54
    add-long/2addr v0, p3

    .line 55
    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt32(J)I

    .line 56
    .line 57
    .line 58
    move-result p1

    .line 59
    iput p1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/NanDebugConfig;->ouiVal:I

    .line 60
    .line 61
    const-wide/16 v0, 0x14

    .line 62
    .line 63
    add-long/2addr v0, p3

    .line 64
    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getBool(J)Z

    .line 65
    .line 66
    .line 67
    move-result p1

    .line 68
    iput-boolean p1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/NanDebugConfig;->validRandomFactorForceVal:Z

    .line 69
    .line 70
    const-wide/16 v0, 0x15

    .line 71
    .line 72
    add-long/2addr v0, p3

    .line 73
    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt8(J)B

    .line 74
    .line 75
    .line 76
    move-result p1

    .line 77
    iput-byte p1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/NanDebugConfig;->randomFactorForceVal:B

    .line 78
    .line 79
    const-wide/16 v0, 0x16

    .line 80
    .line 81
    add-long/2addr v0, p3

    .line 82
    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getBool(J)Z

    .line 83
    .line 84
    .line 85
    move-result p1

    .line 86
    iput-boolean p1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/NanDebugConfig;->validHopCountForceVal:Z

    .line 87
    .line 88
    const-wide/16 v0, 0x17

    .line 89
    .line 90
    add-long/2addr v0, p3

    .line 91
    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt8(J)B

    .line 92
    .line 93
    .line 94
    move-result p1

    .line 95
    iput-byte p1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/NanDebugConfig;->hopCountForceVal:B

    .line 96
    .line 97
    const-wide/16 v0, 0x18

    .line 98
    .line 99
    add-long/2addr v0, p3

    .line 100
    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getBool(J)Z

    .line 101
    .line 102
    .line 103
    move-result p1

    .line 104
    iput-boolean p1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/NanDebugConfig;->validDiscoveryChannelVal:Z

    .line 105
    .line 106
    const-wide/16 v0, 0x1c

    .line 107
    .line 108
    add-long/2addr v0, p3

    .line 109
    iget-object p1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/NanDebugConfig;->discoveryChannelMhzVal:[I

    .line 110
    .line 111
    const/4 v2, 0x3

    .line 112
    invoke-virtual {p2, v0, v1, p1, v2}, Landroid/os/HwBlob;->copyToInt32Array(J[II)V

    .line 113
    .line 114
    .line 115
    const-wide/16 v0, 0x28

    .line 116
    .line 117
    add-long/2addr v0, p3

    .line 118
    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getBool(J)Z

    .line 119
    .line 120
    .line 121
    move-result p1

    .line 122
    iput-boolean p1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/NanDebugConfig;->validUseBeaconsInBandVal:Z

    .line 123
    .line 124
    const-wide/16 v0, 0x29

    .line 125
    .line 126
    add-long/2addr v0, p3

    .line 127
    iget-object p1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/NanDebugConfig;->useBeaconsInBandVal:[Z

    .line 128
    .line 129
    invoke-virtual {p2, v0, v1, p1, v2}, Landroid/os/HwBlob;->copyToBoolArray(J[ZI)V

    .line 130
    .line 131
    .line 132
    const-wide/16 v0, 0x2c

    .line 133
    .line 134
    add-long/2addr v0, p3

    .line 135
    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getBool(J)Z

    .line 136
    .line 137
    .line 138
    move-result p1

    .line 139
    iput-boolean p1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/NanDebugConfig;->validUseSdfInBandVal:Z

    .line 140
    .line 141
    const-wide/16 v0, 0x2d

    .line 142
    .line 143
    add-long/2addr p3, v0

    .line 144
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/NanDebugConfig;->useSdfInBandVal:[Z

    .line 145
    .line 146
    invoke-virtual {p2, p3, p4, p0, v2}, Landroid/os/HwBlob;->copyToBoolArray(J[ZI)V

    .line 147
    .line 148
    .line 149
    return-void
.end method

.method public final readFromParcel(Landroid/os/HwParcel;)V
    .locals 3

    .line 1
    const-wide/16 v0, 0x30

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
    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/NanDebugConfig;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

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
    const-string v1, "{.validClusterIdVals = "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-boolean v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/NanDebugConfig;->validClusterIdVals:Z

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", .clusterIdBottomRangeVal = "

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-short v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/NanDebugConfig;->clusterIdBottomRangeVal:S

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, ", .clusterIdTopRangeVal = "

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget-short v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/NanDebugConfig;->clusterIdTopRangeVal:S

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v1, ", .validIntfAddrVal = "

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    iget-boolean v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/NanDebugConfig;->validIntfAddrVal:Z

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string v1, ", .intfAddrVal = "

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    iget-object v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/NanDebugConfig;->intfAddrVal:[B

    .line 49
    .line 50
    const-string v2, ", .validOuiVal = "

    .line 51
    .line 52
    invoke-static {v1, v0, v2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDataPathConfirmInd$$ExternalSyntheticOutline0;->m([BLjava/lang/StringBuilder;Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    iget-boolean v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/NanDebugConfig;->validOuiVal:Z

    .line 56
    .line 57
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    const-string v1, ", .ouiVal = "

    .line 61
    .line 62
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    iget v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/NanDebugConfig;->ouiVal:I

    .line 66
    .line 67
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    const-string v1, ", .validRandomFactorForceVal = "

    .line 71
    .line 72
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    iget-boolean v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/NanDebugConfig;->validRandomFactorForceVal:Z

    .line 76
    .line 77
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    const-string v1, ", .randomFactorForceVal = "

    .line 81
    .line 82
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    iget-byte v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/NanDebugConfig;->randomFactorForceVal:B

    .line 86
    .line 87
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    const-string v1, ", .validHopCountForceVal = "

    .line 91
    .line 92
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    iget-boolean v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/NanDebugConfig;->validHopCountForceVal:Z

    .line 96
    .line 97
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    const-string v1, ", .hopCountForceVal = "

    .line 101
    .line 102
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    iget-byte v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/NanDebugConfig;->hopCountForceVal:B

    .line 106
    .line 107
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    const-string v1, ", .validDiscoveryChannelVal = "

    .line 111
    .line 112
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    iget-boolean v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/NanDebugConfig;->validDiscoveryChannelVal:Z

    .line 116
    .line 117
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    const-string v1, ", .discoveryChannelMhzVal = "

    .line 121
    .line 122
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    iget-object v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/NanDebugConfig;->discoveryChannelMhzVal:[I

    .line 126
    .line 127
    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v1

    .line 131
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    const-string v1, ", .validUseBeaconsInBandVal = "

    .line 135
    .line 136
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    .line 138
    .line 139
    iget-boolean v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/NanDebugConfig;->validUseBeaconsInBandVal:Z

    .line 140
    .line 141
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 142
    .line 143
    .line 144
    const-string v1, ", .useBeaconsInBandVal = "

    .line 145
    .line 146
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    .line 148
    .line 149
    iget-object v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/NanDebugConfig;->useBeaconsInBandVal:[Z

    .line 150
    .line 151
    invoke-static {v1}, Ljava/util/Arrays;->toString([Z)Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object v1

    .line 155
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    .line 157
    .line 158
    const-string v1, ", .validUseSdfInBandVal = "

    .line 159
    .line 160
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    .line 162
    .line 163
    iget-boolean v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/NanDebugConfig;->validUseSdfInBandVal:Z

    .line 164
    .line 165
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 166
    .line 167
    .line 168
    const-string v1, ", .useSdfInBandVal = "

    .line 169
    .line 170
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    .line 172
    .line 173
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/NanDebugConfig;->useSdfInBandVal:[Z

    .line 174
    .line 175
    invoke-static {p0}, Ljava/util/Arrays;->toString([Z)Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object p0

    .line 179
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    .line 181
    .line 182
    const-string p0, "}"

    .line 183
    .line 184
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    .line 186
    .line 187
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 188
    .line 189
    .line 190
    move-result-object p0

    .line 191
    return-object p0
.end method

.method public final writeEmbeddedToBlob(Landroid/os/HwBlob;J)V
    .locals 6

    .line 1
    iget-boolean v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/NanDebugConfig;->validClusterIdVals:Z

    .line 2
    .line 3
    invoke-virtual {p1, p2, p3, v0}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 4
    .line 5
    .line 6
    const-wide/16 v0, 0x2

    .line 7
    .line 8
    add-long/2addr v0, p2

    .line 9
    iget-short v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/NanDebugConfig;->clusterIdBottomRangeVal:S

    .line 10
    .line 11
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt16(JS)V

    .line 12
    .line 13
    .line 14
    const-wide/16 v0, 0x4

    .line 15
    .line 16
    add-long/2addr v0, p2

    .line 17
    iget-short v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/NanDebugConfig;->clusterIdTopRangeVal:S

    .line 18
    .line 19
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt16(JS)V

    .line 20
    .line 21
    .line 22
    const-wide/16 v0, 0x6

    .line 23
    .line 24
    add-long/2addr v0, p2

    .line 25
    iget-boolean v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/NanDebugConfig;->validIntfAddrVal:Z

    .line 26
    .line 27
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 28
    .line 29
    .line 30
    const-wide/16 v0, 0x7

    .line 31
    .line 32
    add-long/2addr v0, p2

    .line 33
    iget-object v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/NanDebugConfig;->intfAddrVal:[B

    .line 34
    .line 35
    const-string v3, "Array element is not of the expected length"

    .line 36
    .line 37
    if-eqz v2, :cond_3

    .line 38
    .line 39
    array-length v4, v2

    .line 40
    const/4 v5, 0x6

    .line 41
    if-ne v4, v5, :cond_3

    .line 42
    .line 43
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 44
    .line 45
    .line 46
    const-wide/16 v0, 0xd

    .line 47
    .line 48
    add-long/2addr v0, p2

    .line 49
    iget-boolean v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/NanDebugConfig;->validOuiVal:Z

    .line 50
    .line 51
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 52
    .line 53
    .line 54
    const-wide/16 v0, 0x10

    .line 55
    .line 56
    add-long/2addr v0, p2

    .line 57
    iget v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/NanDebugConfig;->ouiVal:I

    .line 58
    .line 59
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 60
    .line 61
    .line 62
    const-wide/16 v0, 0x14

    .line 63
    .line 64
    add-long/2addr v0, p2

    .line 65
    iget-boolean v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/NanDebugConfig;->validRandomFactorForceVal:Z

    .line 66
    .line 67
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 68
    .line 69
    .line 70
    const-wide/16 v0, 0x15

    .line 71
    .line 72
    add-long/2addr v0, p2

    .line 73
    iget-byte v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/NanDebugConfig;->randomFactorForceVal:B

    .line 74
    .line 75
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt8(JB)V

    .line 76
    .line 77
    .line 78
    const-wide/16 v0, 0x16

    .line 79
    .line 80
    add-long/2addr v0, p2

    .line 81
    iget-boolean v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/NanDebugConfig;->validHopCountForceVal:Z

    .line 82
    .line 83
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 84
    .line 85
    .line 86
    const-wide/16 v0, 0x17

    .line 87
    .line 88
    add-long/2addr v0, p2

    .line 89
    iget-byte v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/NanDebugConfig;->hopCountForceVal:B

    .line 90
    .line 91
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt8(JB)V

    .line 92
    .line 93
    .line 94
    const-wide/16 v0, 0x18

    .line 95
    .line 96
    add-long/2addr v0, p2

    .line 97
    iget-boolean v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/NanDebugConfig;->validDiscoveryChannelVal:Z

    .line 98
    .line 99
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 100
    .line 101
    .line 102
    const-wide/16 v0, 0x1c

    .line 103
    .line 104
    add-long/2addr v0, p2

    .line 105
    iget-object v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/NanDebugConfig;->discoveryChannelMhzVal:[I

    .line 106
    .line 107
    if-eqz v2, :cond_2

    .line 108
    .line 109
    array-length v4, v2

    .line 110
    const/4 v5, 0x3

    .line 111
    if-ne v4, v5, :cond_2

    .line 112
    .line 113
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32Array(J[I)V

    .line 114
    .line 115
    .line 116
    const-wide/16 v0, 0x28

    .line 117
    .line 118
    add-long/2addr v0, p2

    .line 119
    iget-boolean v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/NanDebugConfig;->validUseBeaconsInBandVal:Z

    .line 120
    .line 121
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 122
    .line 123
    .line 124
    const-wide/16 v0, 0x29

    .line 125
    .line 126
    add-long/2addr v0, p2

    .line 127
    iget-object v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/NanDebugConfig;->useBeaconsInBandVal:[Z

    .line 128
    .line 129
    if-eqz v2, :cond_1

    .line 130
    .line 131
    array-length v4, v2

    .line 132
    if-ne v4, v5, :cond_1

    .line 133
    .line 134
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putBoolArray(J[Z)V

    .line 135
    .line 136
    .line 137
    const-wide/16 v0, 0x2c

    .line 138
    .line 139
    add-long/2addr v0, p2

    .line 140
    iget-boolean v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/NanDebugConfig;->validUseSdfInBandVal:Z

    .line 141
    .line 142
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 143
    .line 144
    .line 145
    const-wide/16 v0, 0x2d

    .line 146
    .line 147
    add-long/2addr p2, v0

    .line 148
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/NanDebugConfig;->useSdfInBandVal:[Z

    .line 149
    .line 150
    if-eqz p0, :cond_0

    .line 151
    .line 152
    array-length v0, p0

    .line 153
    if-ne v0, v5, :cond_0

    .line 154
    .line 155
    invoke-virtual {p1, p2, p3, p0}, Landroid/os/HwBlob;->putBoolArray(J[Z)V

    .line 156
    .line 157
    .line 158
    return-void

    .line 159
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 160
    .line 161
    invoke-direct {p0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 162
    .line 163
    .line 164
    throw p0

    .line 165
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 166
    .line 167
    invoke-direct {p0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 168
    .line 169
    .line 170
    throw p0

    .line 171
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 172
    .line 173
    invoke-direct {p0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 174
    .line 175
    .line 176
    throw p0

    .line 177
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 178
    .line 179
    invoke-direct {p0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 180
    .line 181
    .line 182
    throw p0
.end method

.method public final writeToParcel(Landroid/os/HwParcel;)V
    .locals 3

    .line 1
    new-instance v0, Landroid/os/HwBlob;

    .line 2
    .line 3
    const/16 v1, 0x30

    .line 4
    .line 5
    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 6
    .line 7
    .line 8
    const-wide/16 v1, 0x0

    .line 9
    .line 10
    invoke-virtual {p0, v0, v1, v2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/NanDebugConfig;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method
