.class public final Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanCapabilities;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# instance fields
.field public instantCommunicationModeSupportFlag:Z

.field public maxAppInfoLen:I

.field public maxConcurrentClusters:I

.field public maxExtendedServiceSpecificInfoLen:I

.field public maxMatchFilterLen:I

.field public maxNdiInterfaces:I

.field public maxNdpSessions:I

.field public maxPublishes:I

.field public maxQueuedTransmitFollowupMsgs:I

.field public maxServiceNameLen:I

.field public maxServiceSpecificInfoLen:I

.field public maxSubscribeInterfaceAddresses:I

.field public maxSubscribes:I

.field public maxTotalMatchFilterLen:I

.field public supportedCipherSuites:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanCapabilities;->maxConcurrentClusters:I

    .line 6
    .line 7
    iput v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanCapabilities;->maxPublishes:I

    .line 8
    .line 9
    iput v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanCapabilities;->maxSubscribes:I

    .line 10
    .line 11
    iput v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanCapabilities;->maxServiceNameLen:I

    .line 12
    .line 13
    iput v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanCapabilities;->maxMatchFilterLen:I

    .line 14
    .line 15
    iput v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanCapabilities;->maxTotalMatchFilterLen:I

    .line 16
    .line 17
    iput v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanCapabilities;->maxServiceSpecificInfoLen:I

    .line 18
    .line 19
    iput v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanCapabilities;->maxExtendedServiceSpecificInfoLen:I

    .line 20
    .line 21
    iput v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanCapabilities;->maxNdiInterfaces:I

    .line 22
    .line 23
    iput v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanCapabilities;->maxNdpSessions:I

    .line 24
    .line 25
    iput v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanCapabilities;->maxAppInfoLen:I

    .line 26
    .line 27
    iput v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanCapabilities;->maxQueuedTransmitFollowupMsgs:I

    .line 28
    .line 29
    iput v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanCapabilities;->maxSubscribeInterfaceAddresses:I

    .line 30
    .line 31
    iput-boolean v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanCapabilities;->instantCommunicationModeSupportFlag:Z

    .line 32
    .line 33
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
            "Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanCapabilities;",
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
    mul-int/lit8 v3, v2, 0x3c

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
    new-instance v3, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanCapabilities;

    .line 40
    .line 41
    invoke-direct {v3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanCapabilities;-><init>()V

    .line 42
    .line 43
    .line 44
    mul-int/lit8 v5, v1, 0x3c

    .line 45
    .line 46
    int-to-long v5, v5

    .line 47
    invoke-virtual {v3, v4, p0, v5, v6}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanCapabilities;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

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
            "Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanCapabilities;",
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
    mul-int/lit8 v3, v1, 0x3c

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
    check-cast v3, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanCapabilities;

    .line 37
    .line 38
    mul-int/lit8 v5, v4, 0x3c

    .line 39
    .line 40
    int-to-long v5, v5

    .line 41
    invoke-virtual {v3, v2, v5, v6}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanCapabilities;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

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
    const-class v3, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanCapabilities;

    .line 14
    .line 15
    if-eq v2, v3, :cond_2

    .line 16
    .line 17
    return v1

    .line 18
    :cond_2
    check-cast p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanCapabilities;

    .line 19
    .line 20
    iget v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanCapabilities;->maxConcurrentClusters:I

    .line 21
    .line 22
    iget v3, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanCapabilities;->maxConcurrentClusters:I

    .line 23
    .line 24
    if-eq v2, v3, :cond_3

    .line 25
    .line 26
    return v1

    .line 27
    :cond_3
    iget v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanCapabilities;->maxPublishes:I

    .line 28
    .line 29
    iget v3, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanCapabilities;->maxPublishes:I

    .line 30
    .line 31
    if-eq v2, v3, :cond_4

    .line 32
    .line 33
    return v1

    .line 34
    :cond_4
    iget v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanCapabilities;->maxSubscribes:I

    .line 35
    .line 36
    iget v3, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanCapabilities;->maxSubscribes:I

    .line 37
    .line 38
    if-eq v2, v3, :cond_5

    .line 39
    .line 40
    return v1

    .line 41
    :cond_5
    iget v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanCapabilities;->maxServiceNameLen:I

    .line 42
    .line 43
    iget v3, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanCapabilities;->maxServiceNameLen:I

    .line 44
    .line 45
    if-eq v2, v3, :cond_6

    .line 46
    .line 47
    return v1

    .line 48
    :cond_6
    iget v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanCapabilities;->maxMatchFilterLen:I

    .line 49
    .line 50
    iget v3, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanCapabilities;->maxMatchFilterLen:I

    .line 51
    .line 52
    if-eq v2, v3, :cond_7

    .line 53
    .line 54
    return v1

    .line 55
    :cond_7
    iget v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanCapabilities;->maxTotalMatchFilterLen:I

    .line 56
    .line 57
    iget v3, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanCapabilities;->maxTotalMatchFilterLen:I

    .line 58
    .line 59
    if-eq v2, v3, :cond_8

    .line 60
    .line 61
    return v1

    .line 62
    :cond_8
    iget v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanCapabilities;->maxServiceSpecificInfoLen:I

    .line 63
    .line 64
    iget v3, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanCapabilities;->maxServiceSpecificInfoLen:I

    .line 65
    .line 66
    if-eq v2, v3, :cond_9

    .line 67
    .line 68
    return v1

    .line 69
    :cond_9
    iget v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanCapabilities;->maxExtendedServiceSpecificInfoLen:I

    .line 70
    .line 71
    iget v3, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanCapabilities;->maxExtendedServiceSpecificInfoLen:I

    .line 72
    .line 73
    if-eq v2, v3, :cond_a

    .line 74
    .line 75
    return v1

    .line 76
    :cond_a
    iget v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanCapabilities;->maxNdiInterfaces:I

    .line 77
    .line 78
    iget v3, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanCapabilities;->maxNdiInterfaces:I

    .line 79
    .line 80
    if-eq v2, v3, :cond_b

    .line 81
    .line 82
    return v1

    .line 83
    :cond_b
    iget v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanCapabilities;->maxNdpSessions:I

    .line 84
    .line 85
    iget v3, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanCapabilities;->maxNdpSessions:I

    .line 86
    .line 87
    if-eq v2, v3, :cond_c

    .line 88
    .line 89
    return v1

    .line 90
    :cond_c
    iget v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanCapabilities;->maxAppInfoLen:I

    .line 91
    .line 92
    iget v3, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanCapabilities;->maxAppInfoLen:I

    .line 93
    .line 94
    if-eq v2, v3, :cond_d

    .line 95
    .line 96
    return v1

    .line 97
    :cond_d
    iget v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanCapabilities;->maxQueuedTransmitFollowupMsgs:I

    .line 98
    .line 99
    iget v3, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanCapabilities;->maxQueuedTransmitFollowupMsgs:I

    .line 100
    .line 101
    if-eq v2, v3, :cond_e

    .line 102
    .line 103
    return v1

    .line 104
    :cond_e
    iget v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanCapabilities;->maxSubscribeInterfaceAddresses:I

    .line 105
    .line 106
    iget v3, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanCapabilities;->maxSubscribeInterfaceAddresses:I

    .line 107
    .line 108
    if-eq v2, v3, :cond_f

    .line 109
    .line 110
    return v1

    .line 111
    :cond_f
    iget v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanCapabilities;->supportedCipherSuites:I

    .line 112
    .line 113
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 114
    .line 115
    .line 116
    move-result-object v2

    .line 117
    iget v3, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanCapabilities;->supportedCipherSuites:I

    .line 118
    .line 119
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 120
    .line 121
    .line 122
    move-result-object v3

    .line 123
    invoke-static {v2, v3}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 124
    .line 125
    .line 126
    move-result v2

    .line 127
    if-nez v2, :cond_10

    .line 128
    .line 129
    return v1

    .line 130
    :cond_10
    iget-boolean p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanCapabilities;->instantCommunicationModeSupportFlag:Z

    .line 131
    .line 132
    iget-boolean p1, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanCapabilities;->instantCommunicationModeSupportFlag:Z

    .line 133
    .line 134
    if-eq p0, p1, :cond_11

    .line 135
    .line 136
    return v1

    .line 137
    :cond_11
    return v0
.end method

.method public final hashCode()I
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanCapabilities;->maxConcurrentClusters:I

    .line 4
    .line 5
    invoke-static {v1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip$Stub$$ExternalSyntheticOutline0;->m(I)Ljava/lang/Integer;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    iget v1, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanCapabilities;->maxPublishes:I

    .line 10
    .line 11
    invoke-static {v1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip$Stub$$ExternalSyntheticOutline0;->m(I)Ljava/lang/Integer;

    .line 12
    .line 13
    .line 14
    move-result-object v3

    .line 15
    iget v1, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanCapabilities;->maxSubscribes:I

    .line 16
    .line 17
    invoke-static {v1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip$Stub$$ExternalSyntheticOutline0;->m(I)Ljava/lang/Integer;

    .line 18
    .line 19
    .line 20
    move-result-object v4

    .line 21
    iget v1, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanCapabilities;->maxServiceNameLen:I

    .line 22
    .line 23
    invoke-static {v1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip$Stub$$ExternalSyntheticOutline0;->m(I)Ljava/lang/Integer;

    .line 24
    .line 25
    .line 26
    move-result-object v5

    .line 27
    iget v1, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanCapabilities;->maxMatchFilterLen:I

    .line 28
    .line 29
    invoke-static {v1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip$Stub$$ExternalSyntheticOutline0;->m(I)Ljava/lang/Integer;

    .line 30
    .line 31
    .line 32
    move-result-object v6

    .line 33
    iget v1, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanCapabilities;->maxTotalMatchFilterLen:I

    .line 34
    .line 35
    invoke-static {v1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip$Stub$$ExternalSyntheticOutline0;->m(I)Ljava/lang/Integer;

    .line 36
    .line 37
    .line 38
    move-result-object v7

    .line 39
    iget v1, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanCapabilities;->maxServiceSpecificInfoLen:I

    .line 40
    .line 41
    invoke-static {v1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip$Stub$$ExternalSyntheticOutline0;->m(I)Ljava/lang/Integer;

    .line 42
    .line 43
    .line 44
    move-result-object v8

    .line 45
    iget v1, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanCapabilities;->maxExtendedServiceSpecificInfoLen:I

    .line 46
    .line 47
    invoke-static {v1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip$Stub$$ExternalSyntheticOutline0;->m(I)Ljava/lang/Integer;

    .line 48
    .line 49
    .line 50
    move-result-object v9

    .line 51
    iget v1, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanCapabilities;->maxNdiInterfaces:I

    .line 52
    .line 53
    invoke-static {v1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip$Stub$$ExternalSyntheticOutline0;->m(I)Ljava/lang/Integer;

    .line 54
    .line 55
    .line 56
    move-result-object v10

    .line 57
    iget v1, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanCapabilities;->maxNdpSessions:I

    .line 58
    .line 59
    invoke-static {v1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip$Stub$$ExternalSyntheticOutline0;->m(I)Ljava/lang/Integer;

    .line 60
    .line 61
    .line 62
    move-result-object v11

    .line 63
    iget v1, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanCapabilities;->maxAppInfoLen:I

    .line 64
    .line 65
    invoke-static {v1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip$Stub$$ExternalSyntheticOutline0;->m(I)Ljava/lang/Integer;

    .line 66
    .line 67
    .line 68
    move-result-object v12

    .line 69
    iget v1, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanCapabilities;->maxQueuedTransmitFollowupMsgs:I

    .line 70
    .line 71
    invoke-static {v1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip$Stub$$ExternalSyntheticOutline0;->m(I)Ljava/lang/Integer;

    .line 72
    .line 73
    .line 74
    move-result-object v13

    .line 75
    iget v1, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanCapabilities;->maxSubscribeInterfaceAddresses:I

    .line 76
    .line 77
    invoke-static {v1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip$Stub$$ExternalSyntheticOutline0;->m(I)Ljava/lang/Integer;

    .line 78
    .line 79
    .line 80
    move-result-object v14

    .line 81
    iget v1, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanCapabilities;->supportedCipherSuites:I

    .line 82
    .line 83
    invoke-static {v1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip$Stub$$ExternalSyntheticOutline0;->m(I)Ljava/lang/Integer;

    .line 84
    .line 85
    .line 86
    move-result-object v15

    .line 87
    iget-boolean v0, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanCapabilities;->instantCommunicationModeSupportFlag:Z

    .line 88
    .line 89
    invoke-static {v0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanBandSpecificConfig$$ExternalSyntheticOutline0;->m(Z)Ljava/lang/Integer;

    .line 90
    .line 91
    .line 92
    move-result-object v16

    .line 93
    filled-new-array/range {v2 .. v16}, [Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    .line 98
    .line 99
    .line 100
    move-result v0

    .line 101
    return v0
.end method

.method public final readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V
    .locals 2

    .line 1
    invoke-virtual {p2, p3, p4}, Landroid/os/HwBlob;->getInt32(J)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    iput p1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanCapabilities;->maxConcurrentClusters:I

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
    move-result p1

    .line 14
    iput p1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanCapabilities;->maxPublishes:I

    .line 15
    .line 16
    const-wide/16 v0, 0x8

    .line 17
    .line 18
    add-long/2addr v0, p3

    .line 19
    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt32(J)I

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    iput p1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanCapabilities;->maxSubscribes:I

    .line 24
    .line 25
    const-wide/16 v0, 0xc

    .line 26
    .line 27
    add-long/2addr v0, p3

    .line 28
    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt32(J)I

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    iput p1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanCapabilities;->maxServiceNameLen:I

    .line 33
    .line 34
    const-wide/16 v0, 0x10

    .line 35
    .line 36
    add-long/2addr v0, p3

    .line 37
    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt32(J)I

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
    iput p1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanCapabilities;->maxMatchFilterLen:I

    .line 42
    .line 43
    const-wide/16 v0, 0x14

    .line 44
    .line 45
    add-long/2addr v0, p3

    .line 46
    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt32(J)I

    .line 47
    .line 48
    .line 49
    move-result p1

    .line 50
    iput p1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanCapabilities;->maxTotalMatchFilterLen:I

    .line 51
    .line 52
    const-wide/16 v0, 0x18

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
    iput p1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanCapabilities;->maxServiceSpecificInfoLen:I

    .line 60
    .line 61
    const-wide/16 v0, 0x1c

    .line 62
    .line 63
    add-long/2addr v0, p3

    .line 64
    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt32(J)I

    .line 65
    .line 66
    .line 67
    move-result p1

    .line 68
    iput p1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanCapabilities;->maxExtendedServiceSpecificInfoLen:I

    .line 69
    .line 70
    const-wide/16 v0, 0x20

    .line 71
    .line 72
    add-long/2addr v0, p3

    .line 73
    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt32(J)I

    .line 74
    .line 75
    .line 76
    move-result p1

    .line 77
    iput p1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanCapabilities;->maxNdiInterfaces:I

    .line 78
    .line 79
    const-wide/16 v0, 0x24

    .line 80
    .line 81
    add-long/2addr v0, p3

    .line 82
    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt32(J)I

    .line 83
    .line 84
    .line 85
    move-result p1

    .line 86
    iput p1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanCapabilities;->maxNdpSessions:I

    .line 87
    .line 88
    const-wide/16 v0, 0x28

    .line 89
    .line 90
    add-long/2addr v0, p3

    .line 91
    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt32(J)I

    .line 92
    .line 93
    .line 94
    move-result p1

    .line 95
    iput p1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanCapabilities;->maxAppInfoLen:I

    .line 96
    .line 97
    const-wide/16 v0, 0x2c

    .line 98
    .line 99
    add-long/2addr v0, p3

    .line 100
    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt32(J)I

    .line 101
    .line 102
    .line 103
    move-result p1

    .line 104
    iput p1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanCapabilities;->maxQueuedTransmitFollowupMsgs:I

    .line 105
    .line 106
    const-wide/16 v0, 0x30

    .line 107
    .line 108
    add-long/2addr v0, p3

    .line 109
    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt32(J)I

    .line 110
    .line 111
    .line 112
    move-result p1

    .line 113
    iput p1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanCapabilities;->maxSubscribeInterfaceAddresses:I

    .line 114
    .line 115
    const-wide/16 v0, 0x34

    .line 116
    .line 117
    add-long/2addr v0, p3

    .line 118
    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt32(J)I

    .line 119
    .line 120
    .line 121
    move-result p1

    .line 122
    iput p1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanCapabilities;->supportedCipherSuites:I

    .line 123
    .line 124
    const-wide/16 v0, 0x38

    .line 125
    .line 126
    add-long/2addr p3, v0

    .line 127
    invoke-virtual {p2, p3, p4}, Landroid/os/HwBlob;->getBool(J)Z

    .line 128
    .line 129
    .line 130
    move-result p1

    .line 131
    iput-boolean p1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanCapabilities;->instantCommunicationModeSupportFlag:Z

    .line 132
    .line 133
    return-void
.end method

.method public final readFromParcel(Landroid/os/HwParcel;)V
    .locals 3

    .line 1
    const-wide/16 v0, 0x3c

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
    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanCapabilities;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

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
    const-string v1, "{.maxConcurrentClusters = "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanCapabilities;->maxConcurrentClusters:I

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", .maxPublishes = "

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanCapabilities;->maxPublishes:I

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, ", .maxSubscribes = "

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanCapabilities;->maxSubscribes:I

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v1, ", .maxServiceNameLen = "

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    iget v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanCapabilities;->maxServiceNameLen:I

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string v1, ", .maxMatchFilterLen = "

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    iget v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanCapabilities;->maxMatchFilterLen:I

    .line 49
    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    const-string v1, ", .maxTotalMatchFilterLen = "

    .line 54
    .line 55
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    iget v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanCapabilities;->maxTotalMatchFilterLen:I

    .line 59
    .line 60
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    const-string v1, ", .maxServiceSpecificInfoLen = "

    .line 64
    .line 65
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    iget v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanCapabilities;->maxServiceSpecificInfoLen:I

    .line 69
    .line 70
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    const-string v1, ", .maxExtendedServiceSpecificInfoLen = "

    .line 74
    .line 75
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    iget v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanCapabilities;->maxExtendedServiceSpecificInfoLen:I

    .line 79
    .line 80
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    const-string v1, ", .maxNdiInterfaces = "

    .line 84
    .line 85
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    iget v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanCapabilities;->maxNdiInterfaces:I

    .line 89
    .line 90
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    const-string v1, ", .maxNdpSessions = "

    .line 94
    .line 95
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    iget v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanCapabilities;->maxNdpSessions:I

    .line 99
    .line 100
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    const-string v1, ", .maxAppInfoLen = "

    .line 104
    .line 105
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    iget v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanCapabilities;->maxAppInfoLen:I

    .line 109
    .line 110
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    const-string v1, ", .maxQueuedTransmitFollowupMsgs = "

    .line 114
    .line 115
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    iget v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanCapabilities;->maxQueuedTransmitFollowupMsgs:I

    .line 119
    .line 120
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    const-string v1, ", .maxSubscribeInterfaceAddresses = "

    .line 124
    .line 125
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    iget v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanCapabilities;->maxSubscribeInterfaceAddresses:I

    .line 129
    .line 130
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    const-string v1, ", .supportedCipherSuites = "

    .line 134
    .line 135
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    .line 137
    .line 138
    iget v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanCapabilities;->supportedCipherSuites:I

    .line 139
    .line 140
    invoke-static {v1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanCipherSuiteType;->dumpBitfield(I)Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v1

    .line 144
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    .line 146
    .line 147
    const-string v1, ", .instantCommunicationModeSupportFlag = "

    .line 148
    .line 149
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    .line 151
    .line 152
    iget-boolean p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanCapabilities;->instantCommunicationModeSupportFlag:Z

    .line 153
    .line 154
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 155
    .line 156
    .line 157
    const-string p0, "}"

    .line 158
    .line 159
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    .line 161
    .line 162
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object p0

    .line 166
    return-object p0
.end method

.method public final writeEmbeddedToBlob(Landroid/os/HwBlob;J)V
    .locals 3

    .line 1
    iget v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanCapabilities;->maxConcurrentClusters:I

    .line 2
    .line 3
    invoke-virtual {p1, p2, p3, v0}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 4
    .line 5
    .line 6
    const-wide/16 v0, 0x4

    .line 7
    .line 8
    add-long/2addr v0, p2

    .line 9
    iget v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanCapabilities;->maxPublishes:I

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
    iget v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanCapabilities;->maxSubscribes:I

    .line 18
    .line 19
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 20
    .line 21
    .line 22
    const-wide/16 v0, 0xc

    .line 23
    .line 24
    add-long/2addr v0, p2

    .line 25
    iget v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanCapabilities;->maxServiceNameLen:I

    .line 26
    .line 27
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 28
    .line 29
    .line 30
    const-wide/16 v0, 0x10

    .line 31
    .line 32
    add-long/2addr v0, p2

    .line 33
    iget v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanCapabilities;->maxMatchFilterLen:I

    .line 34
    .line 35
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 36
    .line 37
    .line 38
    const-wide/16 v0, 0x14

    .line 39
    .line 40
    add-long/2addr v0, p2

    .line 41
    iget v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanCapabilities;->maxTotalMatchFilterLen:I

    .line 42
    .line 43
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 44
    .line 45
    .line 46
    const-wide/16 v0, 0x18

    .line 47
    .line 48
    add-long/2addr v0, p2

    .line 49
    iget v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanCapabilities;->maxServiceSpecificInfoLen:I

    .line 50
    .line 51
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 52
    .line 53
    .line 54
    const-wide/16 v0, 0x1c

    .line 55
    .line 56
    add-long/2addr v0, p2

    .line 57
    iget v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanCapabilities;->maxExtendedServiceSpecificInfoLen:I

    .line 58
    .line 59
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 60
    .line 61
    .line 62
    const-wide/16 v0, 0x20

    .line 63
    .line 64
    add-long/2addr v0, p2

    .line 65
    iget v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanCapabilities;->maxNdiInterfaces:I

    .line 66
    .line 67
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 68
    .line 69
    .line 70
    const-wide/16 v0, 0x24

    .line 71
    .line 72
    add-long/2addr v0, p2

    .line 73
    iget v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanCapabilities;->maxNdpSessions:I

    .line 74
    .line 75
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 76
    .line 77
    .line 78
    const-wide/16 v0, 0x28

    .line 79
    .line 80
    add-long/2addr v0, p2

    .line 81
    iget v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanCapabilities;->maxAppInfoLen:I

    .line 82
    .line 83
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 84
    .line 85
    .line 86
    const-wide/16 v0, 0x2c

    .line 87
    .line 88
    add-long/2addr v0, p2

    .line 89
    iget v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanCapabilities;->maxQueuedTransmitFollowupMsgs:I

    .line 90
    .line 91
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 92
    .line 93
    .line 94
    const-wide/16 v0, 0x30

    .line 95
    .line 96
    add-long/2addr v0, p2

    .line 97
    iget v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanCapabilities;->maxSubscribeInterfaceAddresses:I

    .line 98
    .line 99
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 100
    .line 101
    .line 102
    const-wide/16 v0, 0x34

    .line 103
    .line 104
    add-long/2addr v0, p2

    .line 105
    iget v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanCapabilities;->supportedCipherSuites:I

    .line 106
    .line 107
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 108
    .line 109
    .line 110
    const-wide/16 v0, 0x38

    .line 111
    .line 112
    add-long/2addr p2, v0

    .line 113
    iget-boolean p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanCapabilities;->instantCommunicationModeSupportFlag:Z

    .line 114
    .line 115
    invoke-virtual {p1, p2, p3, p0}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 116
    .line 117
    .line 118
    return-void
.end method

.method public final writeToParcel(Landroid/os/HwParcel;)V
    .locals 3

    .line 1
    new-instance v0, Landroid/os/HwBlob;

    .line 2
    .line 3
    const/16 v1, 0x3c

    .line 4
    .line 5
    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 6
    .line 7
    .line 8
    const-wide/16 v1, 0x0

    .line 9
    .line 10
    invoke-virtual {p0, v0, v1, v2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanCapabilities;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method
