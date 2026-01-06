.class public final Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanMatchInd;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# instance fields
.field public addr:[B

.field public discoverySessionId:B

.field public extendedServiceSpecificInfo:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation
.end field

.field public matchFilter:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation
.end field

.field public matchOccuredInBeaconFlag:Z

.field public outOfResourceFlag:Z

.field public peerCipherType:I

.field public peerId:I

.field public peerRequiresRanging:Z

.field public peerRequiresSecurityEnabledInNdp:Z

.field public rangingIndicationType:I

.field public rangingMeasurementInCm:I

.field public rssiValue:B

.field public serviceSpecificInfo:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-byte v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanMatchInd;->discoverySessionId:B

    .line 6
    .line 7
    iput v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanMatchInd;->peerId:I

    .line 8
    .line 9
    const/4 v1, 0x6

    .line 10
    new-array v1, v1, [B

    .line 11
    .line 12
    iput-object v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanMatchInd;->addr:[B

    .line 13
    .line 14
    new-instance v1, Ljava/util/ArrayList;

    .line 15
    .line 16
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 17
    .line 18
    .line 19
    iput-object v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanMatchInd;->serviceSpecificInfo:Ljava/util/ArrayList;

    .line 20
    .line 21
    new-instance v1, Ljava/util/ArrayList;

    .line 22
    .line 23
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 24
    .line 25
    .line 26
    iput-object v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanMatchInd;->extendedServiceSpecificInfo:Ljava/util/ArrayList;

    .line 27
    .line 28
    new-instance v1, Ljava/util/ArrayList;

    .line 29
    .line 30
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 31
    .line 32
    .line 33
    iput-object v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanMatchInd;->matchFilter:Ljava/util/ArrayList;

    .line 34
    .line 35
    iput-boolean v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanMatchInd;->matchOccuredInBeaconFlag:Z

    .line 36
    .line 37
    iput-boolean v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanMatchInd;->outOfResourceFlag:Z

    .line 38
    .line 39
    iput-byte v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanMatchInd;->rssiValue:B

    .line 40
    .line 41
    iput v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanMatchInd;->peerCipherType:I

    .line 42
    .line 43
    iput-boolean v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanMatchInd;->peerRequiresSecurityEnabledInNdp:Z

    .line 44
    .line 45
    iput-boolean v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanMatchInd;->peerRequiresRanging:Z

    .line 46
    .line 47
    iput v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanMatchInd;->rangingMeasurementInCm:I

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
            "Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanMatchInd;",
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
    mul-int/lit8 v3, v2, 0x58

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
    new-instance v3, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanMatchInd;

    .line 40
    .line 41
    invoke-direct {v3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanMatchInd;-><init>()V

    .line 42
    .line 43
    .line 44
    mul-int/lit8 v5, v1, 0x58

    .line 45
    .line 46
    int-to-long v5, v5

    .line 47
    invoke-virtual {v3, v4, p0, v5, v6}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanMatchInd;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

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
            "Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanMatchInd;",
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
    mul-int/lit8 v3, v1, 0x58

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
    check-cast v3, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanMatchInd;

    .line 37
    .line 38
    mul-int/lit8 v5, v4, 0x58

    .line 39
    .line 40
    int-to-long v5, v5

    .line 41
    invoke-virtual {v3, v2, v5, v6}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanMatchInd;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

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
    const-class v3, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanMatchInd;

    .line 14
    .line 15
    if-eq v2, v3, :cond_2

    .line 16
    .line 17
    return v1

    .line 18
    :cond_2
    check-cast p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanMatchInd;

    .line 19
    .line 20
    iget-byte v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanMatchInd;->discoverySessionId:B

    .line 21
    .line 22
    iget-byte v3, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanMatchInd;->discoverySessionId:B

    .line 23
    .line 24
    if-eq v2, v3, :cond_3

    .line 25
    .line 26
    return v1

    .line 27
    :cond_3
    iget v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanMatchInd;->peerId:I

    .line 28
    .line 29
    iget v3, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanMatchInd;->peerId:I

    .line 30
    .line 31
    if-eq v2, v3, :cond_4

    .line 32
    .line 33
    return v1

    .line 34
    :cond_4
    iget-object v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanMatchInd;->addr:[B

    .line 35
    .line 36
    iget-object v3, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanMatchInd;->addr:[B

    .line 37
    .line 38
    invoke-static {v2, v3}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    if-nez v2, :cond_5

    .line 43
    .line 44
    return v1

    .line 45
    :cond_5
    iget-object v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanMatchInd;->serviceSpecificInfo:Ljava/util/ArrayList;

    .line 46
    .line 47
    iget-object v3, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanMatchInd;->serviceSpecificInfo:Ljava/util/ArrayList;

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
    iget-object v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanMatchInd;->extendedServiceSpecificInfo:Ljava/util/ArrayList;

    .line 57
    .line 58
    iget-object v3, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanMatchInd;->extendedServiceSpecificInfo:Ljava/util/ArrayList;

    .line 59
    .line 60
    invoke-static {v2, v3}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 61
    .line 62
    .line 63
    move-result v2

    .line 64
    if-nez v2, :cond_7

    .line 65
    .line 66
    return v1

    .line 67
    :cond_7
    iget-object v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanMatchInd;->matchFilter:Ljava/util/ArrayList;

    .line 68
    .line 69
    iget-object v3, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanMatchInd;->matchFilter:Ljava/util/ArrayList;

    .line 70
    .line 71
    invoke-static {v2, v3}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    move-result v2

    .line 75
    if-nez v2, :cond_8

    .line 76
    .line 77
    return v1

    .line 78
    :cond_8
    iget-boolean v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanMatchInd;->matchOccuredInBeaconFlag:Z

    .line 79
    .line 80
    iget-boolean v3, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanMatchInd;->matchOccuredInBeaconFlag:Z

    .line 81
    .line 82
    if-eq v2, v3, :cond_9

    .line 83
    .line 84
    return v1

    .line 85
    :cond_9
    iget-boolean v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanMatchInd;->outOfResourceFlag:Z

    .line 86
    .line 87
    iget-boolean v3, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanMatchInd;->outOfResourceFlag:Z

    .line 88
    .line 89
    if-eq v2, v3, :cond_a

    .line 90
    .line 91
    return v1

    .line 92
    :cond_a
    iget-byte v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanMatchInd;->rssiValue:B

    .line 93
    .line 94
    iget-byte v3, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanMatchInd;->rssiValue:B

    .line 95
    .line 96
    if-eq v2, v3, :cond_b

    .line 97
    .line 98
    return v1

    .line 99
    :cond_b
    iget v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanMatchInd;->peerCipherType:I

    .line 100
    .line 101
    iget v3, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanMatchInd;->peerCipherType:I

    .line 102
    .line 103
    if-eq v2, v3, :cond_c

    .line 104
    .line 105
    return v1

    .line 106
    :cond_c
    iget-boolean v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanMatchInd;->peerRequiresSecurityEnabledInNdp:Z

    .line 107
    .line 108
    iget-boolean v3, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanMatchInd;->peerRequiresSecurityEnabledInNdp:Z

    .line 109
    .line 110
    if-eq v2, v3, :cond_d

    .line 111
    .line 112
    return v1

    .line 113
    :cond_d
    iget-boolean v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanMatchInd;->peerRequiresRanging:Z

    .line 114
    .line 115
    iget-boolean v3, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanMatchInd;->peerRequiresRanging:Z

    .line 116
    .line 117
    if-eq v2, v3, :cond_e

    .line 118
    .line 119
    return v1

    .line 120
    :cond_e
    iget v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanMatchInd;->rangingMeasurementInCm:I

    .line 121
    .line 122
    iget v3, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanMatchInd;->rangingMeasurementInCm:I

    .line 123
    .line 124
    if-eq v2, v3, :cond_f

    .line 125
    .line 126
    return v1

    .line 127
    :cond_f
    iget p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanMatchInd;->rangingIndicationType:I

    .line 128
    .line 129
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 130
    .line 131
    .line 132
    move-result-object p0

    .line 133
    iget p1, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanMatchInd;->rangingIndicationType:I

    .line 134
    .line 135
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 136
    .line 137
    .line 138
    move-result-object p1

    .line 139
    invoke-static {p0, p1}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 140
    .line 141
    .line 142
    move-result p0

    .line 143
    if-nez p0, :cond_10

    .line 144
    .line 145
    return v1

    .line 146
    :cond_10
    return v0
.end method

.method public final hashCode()I
    .locals 15

    .line 1
    iget-byte v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanMatchInd;->discoverySessionId:B

    .line 2
    .line 3
    invoke-static {v0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanBandSpecificConfig$$ExternalSyntheticOutline0;->m(B)Ljava/lang/Integer;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    iget v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanMatchInd;->peerId:I

    .line 8
    .line 9
    invoke-static {v0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip$Stub$$ExternalSyntheticOutline0;->m(I)Ljava/lang/Integer;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    iget-object v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanMatchInd;->addr:[B

    .line 14
    .line 15
    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    iget-object v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanMatchInd;->serviceSpecificInfo:Ljava/util/ArrayList;

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
    iget-object v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanMatchInd;->extendedServiceSpecificInfo:Ljava/util/ArrayList;

    .line 34
    .line 35
    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 40
    .line 41
    .line 42
    move-result-object v5

    .line 43
    iget-object v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanMatchInd;->matchFilter:Ljava/util/ArrayList;

    .line 44
    .line 45
    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 50
    .line 51
    .line 52
    move-result-object v6

    .line 53
    iget-boolean v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanMatchInd;->matchOccuredInBeaconFlag:Z

    .line 54
    .line 55
    invoke-static {v0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanBandSpecificConfig$$ExternalSyntheticOutline0;->m(Z)Ljava/lang/Integer;

    .line 56
    .line 57
    .line 58
    move-result-object v7

    .line 59
    iget-boolean v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanMatchInd;->outOfResourceFlag:Z

    .line 60
    .line 61
    invoke-static {v0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanBandSpecificConfig$$ExternalSyntheticOutline0;->m(Z)Ljava/lang/Integer;

    .line 62
    .line 63
    .line 64
    move-result-object v8

    .line 65
    iget-byte v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanMatchInd;->rssiValue:B

    .line 66
    .line 67
    invoke-static {v0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanBandSpecificConfig$$ExternalSyntheticOutline0;->m(B)Ljava/lang/Integer;

    .line 68
    .line 69
    .line 70
    move-result-object v9

    .line 71
    iget v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanMatchInd;->peerCipherType:I

    .line 72
    .line 73
    invoke-static {v0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip$Stub$$ExternalSyntheticOutline0;->m(I)Ljava/lang/Integer;

    .line 74
    .line 75
    .line 76
    move-result-object v10

    .line 77
    iget-boolean v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanMatchInd;->peerRequiresSecurityEnabledInNdp:Z

    .line 78
    .line 79
    invoke-static {v0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanBandSpecificConfig$$ExternalSyntheticOutline0;->m(Z)Ljava/lang/Integer;

    .line 80
    .line 81
    .line 82
    move-result-object v11

    .line 83
    iget-boolean v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanMatchInd;->peerRequiresRanging:Z

    .line 84
    .line 85
    invoke-static {v0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanBandSpecificConfig$$ExternalSyntheticOutline0;->m(Z)Ljava/lang/Integer;

    .line 86
    .line 87
    .line 88
    move-result-object v12

    .line 89
    iget v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanMatchInd;->rangingMeasurementInCm:I

    .line 90
    .line 91
    invoke-static {v0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip$Stub$$ExternalSyntheticOutline0;->m(I)Ljava/lang/Integer;

    .line 92
    .line 93
    .line 94
    move-result-object v13

    .line 95
    iget p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanMatchInd;->rangingIndicationType:I

    .line 96
    .line 97
    invoke-static {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip$Stub$$ExternalSyntheticOutline0;->m(I)Ljava/lang/Integer;

    .line 98
    .line 99
    .line 100
    move-result-object v14

    .line 101
    filled-new-array/range {v1 .. v14}, [Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    move-result-object p0

    .line 105
    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    .line 106
    .line 107
    .line 108
    move-result p0

    .line 109
    return p0
.end method

.method public final readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V
    .locals 10

    .line 1
    invoke-virtual {p2, p3, p4}, Landroid/os/HwBlob;->getInt8(J)B

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iput-byte v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanMatchInd;->discoverySessionId:B

    .line 6
    .line 7
    const-wide/16 v0, 0x4

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
    iput v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanMatchInd;->peerId:I

    .line 15
    .line 16
    const-wide/16 v0, 0x8

    .line 17
    .line 18
    add-long/2addr v0, p3

    .line 19
    iget-object v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanMatchInd;->addr:[B

    .line 20
    .line 21
    const/4 v3, 0x6

    .line 22
    invoke-virtual {p2, v0, v1, v2, v3}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 23
    .line 24
    .line 25
    const-wide/16 v0, 0x10

    .line 26
    .line 27
    add-long v7, p3, v0

    .line 28
    .line 29
    const-wide/16 v0, 0x18

    .line 30
    .line 31
    add-long/2addr v0, p3

    .line 32
    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt32(J)I

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    int-to-long v3, v0

    .line 37
    invoke-virtual {p2}, Landroid/os/HwBlob;->handle()J

    .line 38
    .line 39
    .line 40
    move-result-wide v5

    .line 41
    const/4 v9, 0x1

    .line 42
    move-object v2, p1

    .line 43
    invoke-virtual/range {v2 .. v9}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    move-object v1, v2

    .line 48
    iget-object v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanMatchInd;->serviceSpecificInfo:Ljava/util/ArrayList;

    .line 49
    .line 50
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 51
    .line 52
    .line 53
    const/4 v9, 0x0

    .line 54
    move v2, v9

    .line 55
    :goto_0
    if-ge v2, v0, :cond_0

    .line 56
    .line 57
    int-to-long v3, v2

    .line 58
    invoke-virtual {p1, v3, v4}, Landroid/os/HwBlob;->getInt8(J)B

    .line 59
    .line 60
    .line 61
    move-result v3

    .line 62
    iget-object v4, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanMatchInd;->serviceSpecificInfo:Ljava/util/ArrayList;

    .line 63
    .line 64
    const/4 v5, 0x1

    .line 65
    invoke-static {v3, v4, v2, v5}, Lcom/samsung/android/server/wifi/halclient/BssInfo$$ExternalSyntheticOutline0;->m(BLjava/util/ArrayList;II)I

    .line 66
    .line 67
    .line 68
    move-result v2

    .line 69
    goto :goto_0

    .line 70
    :cond_0
    const-wide/16 v2, 0x20

    .line 71
    .line 72
    add-long v6, p3, v2

    .line 73
    .line 74
    const-wide/16 v2, 0x28

    .line 75
    .line 76
    add-long/2addr v2, p3

    .line 77
    invoke-virtual {p2, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    .line 78
    .line 79
    .line 80
    move-result p1

    .line 81
    int-to-long v2, p1

    .line 82
    invoke-virtual {p2}, Landroid/os/HwBlob;->handle()J

    .line 83
    .line 84
    .line 85
    move-result-wide v4

    .line 86
    const/4 v8, 0x1

    .line 87
    invoke-virtual/range {v1 .. v8}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    iget-object v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanMatchInd;->extendedServiceSpecificInfo:Ljava/util/ArrayList;

    .line 92
    .line 93
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 94
    .line 95
    .line 96
    move v2, v9

    .line 97
    :goto_1
    if-ge v2, p1, :cond_1

    .line 98
    .line 99
    int-to-long v3, v2

    .line 100
    invoke-virtual {v0, v3, v4}, Landroid/os/HwBlob;->getInt8(J)B

    .line 101
    .line 102
    .line 103
    move-result v3

    .line 104
    iget-object v4, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanMatchInd;->extendedServiceSpecificInfo:Ljava/util/ArrayList;

    .line 105
    .line 106
    const/4 v5, 0x1

    .line 107
    invoke-static {v3, v4, v2, v5}, Lcom/samsung/android/server/wifi/halclient/BssInfo$$ExternalSyntheticOutline0;->m(BLjava/util/ArrayList;II)I

    .line 108
    .line 109
    .line 110
    move-result v2

    .line 111
    goto :goto_1

    .line 112
    :cond_1
    const-wide/16 v2, 0x30

    .line 113
    .line 114
    add-long v6, p3, v2

    .line 115
    .line 116
    const-wide/16 v2, 0x38

    .line 117
    .line 118
    add-long/2addr v2, p3

    .line 119
    invoke-virtual {p2, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    .line 120
    .line 121
    .line 122
    move-result p1

    .line 123
    int-to-long v2, p1

    .line 124
    invoke-virtual {p2}, Landroid/os/HwBlob;->handle()J

    .line 125
    .line 126
    .line 127
    move-result-wide v4

    .line 128
    const/4 v8, 0x1

    .line 129
    invoke-virtual/range {v1 .. v8}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    .line 130
    .line 131
    .line 132
    move-result-object v0

    .line 133
    iget-object v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanMatchInd;->matchFilter:Ljava/util/ArrayList;

    .line 134
    .line 135
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 136
    .line 137
    .line 138
    :goto_2
    if-ge v9, p1, :cond_2

    .line 139
    .line 140
    int-to-long v1, v9

    .line 141
    invoke-virtual {v0, v1, v2}, Landroid/os/HwBlob;->getInt8(J)B

    .line 142
    .line 143
    .line 144
    move-result v1

    .line 145
    iget-object v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanMatchInd;->matchFilter:Ljava/util/ArrayList;

    .line 146
    .line 147
    const/4 v3, 0x1

    .line 148
    invoke-static {v1, v2, v9, v3}, Lcom/samsung/android/server/wifi/halclient/BssInfo$$ExternalSyntheticOutline0;->m(BLjava/util/ArrayList;II)I

    .line 149
    .line 150
    .line 151
    move-result v9

    .line 152
    goto :goto_2

    .line 153
    :cond_2
    const-wide/16 v0, 0x40

    .line 154
    .line 155
    add-long/2addr v0, p3

    .line 156
    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getBool(J)Z

    .line 157
    .line 158
    .line 159
    move-result p1

    .line 160
    iput-boolean p1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanMatchInd;->matchOccuredInBeaconFlag:Z

    .line 161
    .line 162
    const-wide/16 v0, 0x41

    .line 163
    .line 164
    add-long/2addr v0, p3

    .line 165
    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getBool(J)Z

    .line 166
    .line 167
    .line 168
    move-result p1

    .line 169
    iput-boolean p1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanMatchInd;->outOfResourceFlag:Z

    .line 170
    .line 171
    const-wide/16 v0, 0x42

    .line 172
    .line 173
    add-long/2addr v0, p3

    .line 174
    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt8(J)B

    .line 175
    .line 176
    .line 177
    move-result p1

    .line 178
    iput-byte p1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanMatchInd;->rssiValue:B

    .line 179
    .line 180
    const-wide/16 v0, 0x44

    .line 181
    .line 182
    add-long/2addr v0, p3

    .line 183
    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt32(J)I

    .line 184
    .line 185
    .line 186
    move-result p1

    .line 187
    iput p1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanMatchInd;->peerCipherType:I

    .line 188
    .line 189
    const-wide/16 v0, 0x48

    .line 190
    .line 191
    add-long/2addr v0, p3

    .line 192
    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getBool(J)Z

    .line 193
    .line 194
    .line 195
    move-result p1

    .line 196
    iput-boolean p1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanMatchInd;->peerRequiresSecurityEnabledInNdp:Z

    .line 197
    .line 198
    const-wide/16 v0, 0x49

    .line 199
    .line 200
    add-long/2addr v0, p3

    .line 201
    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getBool(J)Z

    .line 202
    .line 203
    .line 204
    move-result p1

    .line 205
    iput-boolean p1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanMatchInd;->peerRequiresRanging:Z

    .line 206
    .line 207
    const-wide/16 v0, 0x4c

    .line 208
    .line 209
    add-long/2addr v0, p3

    .line 210
    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt32(J)I

    .line 211
    .line 212
    .line 213
    move-result p1

    .line 214
    iput p1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanMatchInd;->rangingMeasurementInCm:I

    .line 215
    .line 216
    const-wide/16 v0, 0x50

    .line 217
    .line 218
    add-long/2addr p3, v0

    .line 219
    invoke-virtual {p2, p3, p4}, Landroid/os/HwBlob;->getInt32(J)I

    .line 220
    .line 221
    .line 222
    move-result p1

    .line 223
    iput p1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanMatchInd;->rangingIndicationType:I

    .line 224
    .line 225
    return-void
.end method

.method public final readFromParcel(Landroid/os/HwParcel;)V
    .locals 3

    .line 1
    const-wide/16 v0, 0x58

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
    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanMatchInd;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

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
    const-string v1, "{.discoverySessionId = "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-byte v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanMatchInd;->discoverySessionId:B

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", .peerId = "

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanMatchInd;->peerId:I

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, ", .addr = "

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget-object v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanMatchInd;->addr:[B

    .line 29
    .line 30
    const-string v2, ", .serviceSpecificInfo = "

    .line 31
    .line 32
    invoke-static {v1, v0, v2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDataPathConfirmInd$$ExternalSyntheticOutline0;->m([BLjava/lang/StringBuilder;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    iget-object v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanMatchInd;->serviceSpecificInfo:Ljava/util/ArrayList;

    .line 36
    .line 37
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    const-string v1, ", .extendedServiceSpecificInfo = "

    .line 41
    .line 42
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    iget-object v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanMatchInd;->extendedServiceSpecificInfo:Ljava/util/ArrayList;

    .line 46
    .line 47
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    const-string v1, ", .matchFilter = "

    .line 51
    .line 52
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    iget-object v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanMatchInd;->matchFilter:Ljava/util/ArrayList;

    .line 56
    .line 57
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    const-string v1, ", .matchOccuredInBeaconFlag = "

    .line 61
    .line 62
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    iget-boolean v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanMatchInd;->matchOccuredInBeaconFlag:Z

    .line 66
    .line 67
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    const-string v1, ", .outOfResourceFlag = "

    .line 71
    .line 72
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    iget-boolean v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanMatchInd;->outOfResourceFlag:Z

    .line 76
    .line 77
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    const-string v1, ", .rssiValue = "

    .line 81
    .line 82
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    iget-byte v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanMatchInd;->rssiValue:B

    .line 86
    .line 87
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    const-string v1, ", .peerCipherType = "

    .line 91
    .line 92
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    iget v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanMatchInd;->peerCipherType:I

    .line 96
    .line 97
    invoke-static {v1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanCipherSuiteType;->toString(I)Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v1

    .line 101
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    const-string v1, ", .peerRequiresSecurityEnabledInNdp = "

    .line 105
    .line 106
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    iget-boolean v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanMatchInd;->peerRequiresSecurityEnabledInNdp:Z

    .line 110
    .line 111
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    const-string v1, ", .peerRequiresRanging = "

    .line 115
    .line 116
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    iget-boolean v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanMatchInd;->peerRequiresRanging:Z

    .line 120
    .line 121
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    const-string v1, ", .rangingMeasurementInCm = "

    .line 125
    .line 126
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    iget v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanMatchInd;->rangingMeasurementInCm:I

    .line 130
    .line 131
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    const-string v1, ", .rangingIndicationType = "

    .line 135
    .line 136
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    .line 138
    .line 139
    iget p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanMatchInd;->rangingIndicationType:I

    .line 140
    .line 141
    invoke-static {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanRangingIndication;->dumpBitfield(I)Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object p0

    .line 145
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    .line 147
    .line 148
    const-string p0, "}"

    .line 149
    .line 150
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    .line 153
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object p0

    .line 157
    return-object p0
.end method

.method public final writeEmbeddedToBlob(Landroid/os/HwBlob;J)V
    .locals 12

    .line 1
    iget-byte v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanMatchInd;->discoverySessionId:B

    .line 2
    .line 3
    invoke-virtual {p1, p2, p3, v0}, Landroid/os/HwBlob;->putInt8(JB)V

    .line 4
    .line 5
    .line 6
    const-wide/16 v0, 0x4

    .line 7
    .line 8
    add-long/2addr v0, p2

    .line 9
    iget v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanMatchInd;->peerId:I

    .line 10
    .line 11
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 12
    .line 13
    .line 14
    const-wide/16 v0, 0x8

    .line 15
    .line 16
    add-long/2addr v0, p2

    .line 17
    iget-object v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanMatchInd;->addr:[B

    .line 18
    .line 19
    if-eqz v2, :cond_3

    .line 20
    .line 21
    array-length v3, v2

    .line 22
    const/4 v4, 0x6

    .line 23
    if-ne v3, v4, :cond_3

    .line 24
    .line 25
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 26
    .line 27
    .line 28
    iget-object v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanMatchInd;->serviceSpecificInfo:Ljava/util/ArrayList;

    .line 29
    .line 30
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    const-wide/16 v1, 0x10

    .line 35
    .line 36
    add-long/2addr v1, p2

    .line 37
    const-wide/16 v3, 0x18

    .line 38
    .line 39
    add-long/2addr v3, p2

    .line 40
    invoke-virtual {p1, v3, v4, v0}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 41
    .line 42
    .line 43
    const-wide/16 v3, 0x1c

    .line 44
    .line 45
    add-long/2addr v3, p2

    .line 46
    const/4 v5, 0x0

    .line 47
    invoke-static {p1, v3, v4, v5, v0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDataPathConfirmInd$$ExternalSyntheticOutline0;->m(Landroid/os/HwBlob;JZI)Landroid/os/HwBlob;

    .line 48
    .line 49
    .line 50
    move-result-object v7

    .line 51
    move v10, v5

    .line 52
    :goto_0
    if-ge v10, v0, :cond_0

    .line 53
    .line 54
    int-to-long v8, v10

    .line 55
    iget-object v3, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanMatchInd;->serviceSpecificInfo:Ljava/util/ArrayList;

    .line 56
    .line 57
    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v3

    .line 61
    move-object v6, v3

    .line 62
    check-cast v6, Ljava/lang/Byte;

    .line 63
    .line 64
    const/4 v11, 0x1

    .line 65
    invoke-static/range {v6 .. v11}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDataPathConfirmInd$$ExternalSyntheticOutline0;->m(Ljava/lang/Byte;Landroid/os/HwBlob;JII)I

    .line 66
    .line 67
    .line 68
    move-result v10

    .line 69
    goto :goto_0

    .line 70
    :cond_0
    invoke-virtual {p1, v1, v2, v7}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 71
    .line 72
    .line 73
    iget-object v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanMatchInd;->extendedServiceSpecificInfo:Ljava/util/ArrayList;

    .line 74
    .line 75
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 76
    .line 77
    .line 78
    move-result v0

    .line 79
    const-wide/16 v1, 0x20

    .line 80
    .line 81
    add-long/2addr v1, p2

    .line 82
    const-wide/16 v3, 0x28

    .line 83
    .line 84
    add-long/2addr v3, p2

    .line 85
    invoke-virtual {p1, v3, v4, v0}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 86
    .line 87
    .line 88
    const-wide/16 v3, 0x2c

    .line 89
    .line 90
    add-long/2addr v3, p2

    .line 91
    invoke-static {p1, v3, v4, v5, v0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDataPathConfirmInd$$ExternalSyntheticOutline0;->m(Landroid/os/HwBlob;JZI)Landroid/os/HwBlob;

    .line 92
    .line 93
    .line 94
    move-result-object v7

    .line 95
    move v10, v5

    .line 96
    :goto_1
    if-ge v10, v0, :cond_1

    .line 97
    .line 98
    int-to-long v8, v10

    .line 99
    iget-object v3, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanMatchInd;->extendedServiceSpecificInfo:Ljava/util/ArrayList;

    .line 100
    .line 101
    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    move-result-object v3

    .line 105
    move-object v6, v3

    .line 106
    check-cast v6, Ljava/lang/Byte;

    .line 107
    .line 108
    const/4 v11, 0x1

    .line 109
    invoke-static/range {v6 .. v11}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDataPathConfirmInd$$ExternalSyntheticOutline0;->m(Ljava/lang/Byte;Landroid/os/HwBlob;JII)I

    .line 110
    .line 111
    .line 112
    move-result v10

    .line 113
    goto :goto_1

    .line 114
    :cond_1
    invoke-virtual {p1, v1, v2, v7}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 115
    .line 116
    .line 117
    iget-object v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanMatchInd;->matchFilter:Ljava/util/ArrayList;

    .line 118
    .line 119
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 120
    .line 121
    .line 122
    move-result v0

    .line 123
    const-wide/16 v1, 0x30

    .line 124
    .line 125
    add-long/2addr v1, p2

    .line 126
    const-wide/16 v3, 0x38

    .line 127
    .line 128
    add-long/2addr v3, p2

    .line 129
    invoke-virtual {p1, v3, v4, v0}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 130
    .line 131
    .line 132
    const-wide/16 v3, 0x3c

    .line 133
    .line 134
    add-long/2addr v3, p2

    .line 135
    invoke-static {p1, v3, v4, v5, v0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDataPathConfirmInd$$ExternalSyntheticOutline0;->m(Landroid/os/HwBlob;JZI)Landroid/os/HwBlob;

    .line 136
    .line 137
    .line 138
    move-result-object v7

    .line 139
    move v10, v5

    .line 140
    :goto_2
    if-ge v10, v0, :cond_2

    .line 141
    .line 142
    int-to-long v8, v10

    .line 143
    iget-object v3, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanMatchInd;->matchFilter:Ljava/util/ArrayList;

    .line 144
    .line 145
    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 146
    .line 147
    .line 148
    move-result-object v3

    .line 149
    move-object v6, v3

    .line 150
    check-cast v6, Ljava/lang/Byte;

    .line 151
    .line 152
    const/4 v11, 0x1

    .line 153
    invoke-static/range {v6 .. v11}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDataPathConfirmInd$$ExternalSyntheticOutline0;->m(Ljava/lang/Byte;Landroid/os/HwBlob;JII)I

    .line 154
    .line 155
    .line 156
    move-result v10

    .line 157
    goto :goto_2

    .line 158
    :cond_2
    invoke-virtual {p1, v1, v2, v7}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 159
    .line 160
    .line 161
    const-wide/16 v0, 0x40

    .line 162
    .line 163
    add-long/2addr v0, p2

    .line 164
    iget-boolean v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanMatchInd;->matchOccuredInBeaconFlag:Z

    .line 165
    .line 166
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 167
    .line 168
    .line 169
    const-wide/16 v0, 0x41

    .line 170
    .line 171
    add-long/2addr v0, p2

    .line 172
    iget-boolean v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanMatchInd;->outOfResourceFlag:Z

    .line 173
    .line 174
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 175
    .line 176
    .line 177
    const-wide/16 v0, 0x42

    .line 178
    .line 179
    add-long/2addr v0, p2

    .line 180
    iget-byte v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanMatchInd;->rssiValue:B

    .line 181
    .line 182
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt8(JB)V

    .line 183
    .line 184
    .line 185
    const-wide/16 v0, 0x44

    .line 186
    .line 187
    add-long/2addr v0, p2

    .line 188
    iget v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanMatchInd;->peerCipherType:I

    .line 189
    .line 190
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 191
    .line 192
    .line 193
    const-wide/16 v0, 0x48

    .line 194
    .line 195
    add-long/2addr v0, p2

    .line 196
    iget-boolean v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanMatchInd;->peerRequiresSecurityEnabledInNdp:Z

    .line 197
    .line 198
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 199
    .line 200
    .line 201
    const-wide/16 v0, 0x49

    .line 202
    .line 203
    add-long/2addr v0, p2

    .line 204
    iget-boolean v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanMatchInd;->peerRequiresRanging:Z

    .line 205
    .line 206
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 207
    .line 208
    .line 209
    const-wide/16 v0, 0x4c

    .line 210
    .line 211
    add-long/2addr v0, p2

    .line 212
    iget v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanMatchInd;->rangingMeasurementInCm:I

    .line 213
    .line 214
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 215
    .line 216
    .line 217
    const-wide/16 v0, 0x50

    .line 218
    .line 219
    add-long/2addr p2, v0

    .line 220
    iget p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanMatchInd;->rangingIndicationType:I

    .line 221
    .line 222
    invoke-virtual {p1, p2, p3, p0}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 223
    .line 224
    .line 225
    return-void

    .line 226
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 227
    .line 228
    const-string p1, "Array element is not of the expected length"

    .line 229
    .line 230
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 231
    .line 232
    .line 233
    throw p0
.end method

.method public final writeToParcel(Landroid/os/HwParcel;)V
    .locals 3

    .line 1
    new-instance v0, Landroid/os/HwBlob;

    .line 2
    .line 3
    const/16 v1, 0x58

    .line 4
    .line 5
    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 6
    .line 7
    .line 8
    const-wide/16 v1, 0x0

    .line 9
    .line 10
    invoke-virtual {p0, v0, v1, v2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanMatchInd;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method
