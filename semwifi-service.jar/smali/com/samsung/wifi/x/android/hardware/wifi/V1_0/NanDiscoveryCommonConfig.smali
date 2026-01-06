.class public final Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDiscoveryCommonConfig;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# instance fields
.field public configRangingIndications:I

.field public disableDiscoveryTerminationIndication:Z

.field public disableFollowupReceivedIndication:Z

.field public disableMatchExpirationIndication:Z

.field public discoveryCount:B

.field public discoveryMatchIndicator:I

.field public discoveryWindowPeriod:S

.field public distanceEgressCm:S

.field public distanceIngressCm:S

.field public extendedServiceSpecificInfo:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation
.end field

.field public rangingIntervalMsec:I

.field public rangingRequired:Z

.field public rxMatchFilter:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation
.end field

.field public securityConfig:Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDataPathSecurityConfig;

.field public serviceName:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation
.end field

.field public serviceSpecificInfo:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation
.end field

.field public sessionId:B

.field public ttlSec:S

.field public txMatchFilter:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation
.end field

.field public useRssiThreshold:Z


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
    iput-byte v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->sessionId:B

    .line 6
    .line 7
    iput-short v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->ttlSec:S

    .line 8
    .line 9
    iput-short v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->discoveryWindowPeriod:S

    .line 10
    .line 11
    iput-byte v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->discoveryCount:B

    .line 12
    .line 13
    new-instance v1, Ljava/util/ArrayList;

    .line 14
    .line 15
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 16
    .line 17
    .line 18
    iput-object v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->serviceName:Ljava/util/ArrayList;

    .line 19
    .line 20
    iput v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->discoveryMatchIndicator:I

    .line 21
    .line 22
    new-instance v1, Ljava/util/ArrayList;

    .line 23
    .line 24
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 25
    .line 26
    .line 27
    iput-object v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->serviceSpecificInfo:Ljava/util/ArrayList;

    .line 28
    .line 29
    new-instance v1, Ljava/util/ArrayList;

    .line 30
    .line 31
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 32
    .line 33
    .line 34
    iput-object v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->extendedServiceSpecificInfo:Ljava/util/ArrayList;

    .line 35
    .line 36
    new-instance v1, Ljava/util/ArrayList;

    .line 37
    .line 38
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 39
    .line 40
    .line 41
    iput-object v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->rxMatchFilter:Ljava/util/ArrayList;

    .line 42
    .line 43
    new-instance v1, Ljava/util/ArrayList;

    .line 44
    .line 45
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 46
    .line 47
    .line 48
    iput-object v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->txMatchFilter:Ljava/util/ArrayList;

    .line 49
    .line 50
    iput-boolean v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->useRssiThreshold:Z

    .line 51
    .line 52
    iput-boolean v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->disableDiscoveryTerminationIndication:Z

    .line 53
    .line 54
    iput-boolean v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->disableMatchExpirationIndication:Z

    .line 55
    .line 56
    iput-boolean v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->disableFollowupReceivedIndication:Z

    .line 57
    .line 58
    new-instance v1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDataPathSecurityConfig;

    .line 59
    .line 60
    invoke-direct {v1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDataPathSecurityConfig;-><init>()V

    .line 61
    .line 62
    .line 63
    iput-object v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->securityConfig:Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDataPathSecurityConfig;

    .line 64
    .line 65
    iput-boolean v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->rangingRequired:Z

    .line 66
    .line 67
    iput v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->rangingIntervalMsec:I

    .line 68
    .line 69
    iput-short v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->distanceIngressCm:S

    .line 70
    .line 71
    iput-short v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->distanceEgressCm:S

    .line 72
    .line 73
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
            "Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDiscoveryCommonConfig;",
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
    mul-int/lit16 v3, v2, 0xb0

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
    new-instance v3, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDiscoveryCommonConfig;

    .line 40
    .line 41
    invoke-direct {v3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDiscoveryCommonConfig;-><init>()V

    .line 42
    .line 43
    .line 44
    mul-int/lit16 v5, v1, 0xb0

    .line 45
    .line 46
    int-to-long v5, v5

    .line 47
    invoke-virtual {v3, v4, p0, v5, v6}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

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
            "Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDiscoveryCommonConfig;",
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
    mul-int/lit16 v3, v1, 0xb0

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
    check-cast v3, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDiscoveryCommonConfig;

    .line 37
    .line 38
    mul-int/lit16 v5, v4, 0xb0

    .line 39
    .line 40
    int-to-long v5, v5

    .line 41
    invoke-virtual {v3, v2, v5, v6}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

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
    const-class v3, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDiscoveryCommonConfig;

    .line 14
    .line 15
    if-eq v2, v3, :cond_2

    .line 16
    .line 17
    return v1

    .line 18
    :cond_2
    check-cast p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDiscoveryCommonConfig;

    .line 19
    .line 20
    iget-byte v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->sessionId:B

    .line 21
    .line 22
    iget-byte v3, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->sessionId:B

    .line 23
    .line 24
    if-eq v2, v3, :cond_3

    .line 25
    .line 26
    return v1

    .line 27
    :cond_3
    iget-short v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->ttlSec:S

    .line 28
    .line 29
    iget-short v3, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->ttlSec:S

    .line 30
    .line 31
    if-eq v2, v3, :cond_4

    .line 32
    .line 33
    return v1

    .line 34
    :cond_4
    iget-short v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->discoveryWindowPeriod:S

    .line 35
    .line 36
    iget-short v3, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->discoveryWindowPeriod:S

    .line 37
    .line 38
    if-eq v2, v3, :cond_5

    .line 39
    .line 40
    return v1

    .line 41
    :cond_5
    iget-byte v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->discoveryCount:B

    .line 42
    .line 43
    iget-byte v3, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->discoveryCount:B

    .line 44
    .line 45
    if-eq v2, v3, :cond_6

    .line 46
    .line 47
    return v1

    .line 48
    :cond_6
    iget-object v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->serviceName:Ljava/util/ArrayList;

    .line 49
    .line 50
    iget-object v3, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->serviceName:Ljava/util/ArrayList;

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
    iget v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->discoveryMatchIndicator:I

    .line 60
    .line 61
    iget v3, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->discoveryMatchIndicator:I

    .line 62
    .line 63
    if-eq v2, v3, :cond_8

    .line 64
    .line 65
    return v1

    .line 66
    :cond_8
    iget-object v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->serviceSpecificInfo:Ljava/util/ArrayList;

    .line 67
    .line 68
    iget-object v3, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->serviceSpecificInfo:Ljava/util/ArrayList;

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
    iget-object v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->extendedServiceSpecificInfo:Ljava/util/ArrayList;

    .line 78
    .line 79
    iget-object v3, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->extendedServiceSpecificInfo:Ljava/util/ArrayList;

    .line 80
    .line 81
    invoke-static {v2, v3}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 82
    .line 83
    .line 84
    move-result v2

    .line 85
    if-nez v2, :cond_a

    .line 86
    .line 87
    return v1

    .line 88
    :cond_a
    iget-object v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->rxMatchFilter:Ljava/util/ArrayList;

    .line 89
    .line 90
    iget-object v3, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->rxMatchFilter:Ljava/util/ArrayList;

    .line 91
    .line 92
    invoke-static {v2, v3}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 93
    .line 94
    .line 95
    move-result v2

    .line 96
    if-nez v2, :cond_b

    .line 97
    .line 98
    return v1

    .line 99
    :cond_b
    iget-object v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->txMatchFilter:Ljava/util/ArrayList;

    .line 100
    .line 101
    iget-object v3, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->txMatchFilter:Ljava/util/ArrayList;

    .line 102
    .line 103
    invoke-static {v2, v3}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 104
    .line 105
    .line 106
    move-result v2

    .line 107
    if-nez v2, :cond_c

    .line 108
    .line 109
    return v1

    .line 110
    :cond_c
    iget-boolean v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->useRssiThreshold:Z

    .line 111
    .line 112
    iget-boolean v3, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->useRssiThreshold:Z

    .line 113
    .line 114
    if-eq v2, v3, :cond_d

    .line 115
    .line 116
    return v1

    .line 117
    :cond_d
    iget-boolean v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->disableDiscoveryTerminationIndication:Z

    .line 118
    .line 119
    iget-boolean v3, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->disableDiscoveryTerminationIndication:Z

    .line 120
    .line 121
    if-eq v2, v3, :cond_e

    .line 122
    .line 123
    return v1

    .line 124
    :cond_e
    iget-boolean v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->disableMatchExpirationIndication:Z

    .line 125
    .line 126
    iget-boolean v3, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->disableMatchExpirationIndication:Z

    .line 127
    .line 128
    if-eq v2, v3, :cond_f

    .line 129
    .line 130
    return v1

    .line 131
    :cond_f
    iget-boolean v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->disableFollowupReceivedIndication:Z

    .line 132
    .line 133
    iget-boolean v3, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->disableFollowupReceivedIndication:Z

    .line 134
    .line 135
    if-eq v2, v3, :cond_10

    .line 136
    .line 137
    return v1

    .line 138
    :cond_10
    iget-object v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->securityConfig:Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDataPathSecurityConfig;

    .line 139
    .line 140
    iget-object v3, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->securityConfig:Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDataPathSecurityConfig;

    .line 141
    .line 142
    invoke-static {v2, v3}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 143
    .line 144
    .line 145
    move-result v2

    .line 146
    if-nez v2, :cond_11

    .line 147
    .line 148
    return v1

    .line 149
    :cond_11
    iget-boolean v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->rangingRequired:Z

    .line 150
    .line 151
    iget-boolean v3, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->rangingRequired:Z

    .line 152
    .line 153
    if-eq v2, v3, :cond_12

    .line 154
    .line 155
    return v1

    .line 156
    :cond_12
    iget v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->rangingIntervalMsec:I

    .line 157
    .line 158
    iget v3, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->rangingIntervalMsec:I

    .line 159
    .line 160
    if-eq v2, v3, :cond_13

    .line 161
    .line 162
    return v1

    .line 163
    :cond_13
    iget v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->configRangingIndications:I

    .line 164
    .line 165
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 166
    .line 167
    .line 168
    move-result-object v2

    .line 169
    iget v3, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->configRangingIndications:I

    .line 170
    .line 171
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 172
    .line 173
    .line 174
    move-result-object v3

    .line 175
    invoke-static {v2, v3}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 176
    .line 177
    .line 178
    move-result v2

    .line 179
    if-nez v2, :cond_14

    .line 180
    .line 181
    return v1

    .line 182
    :cond_14
    iget-short v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->distanceIngressCm:S

    .line 183
    .line 184
    iget-short v3, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->distanceIngressCm:S

    .line 185
    .line 186
    if-eq v2, v3, :cond_15

    .line 187
    .line 188
    return v1

    .line 189
    :cond_15
    iget-short p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->distanceEgressCm:S

    .line 190
    .line 191
    iget-short p1, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->distanceEgressCm:S

    .line 192
    .line 193
    if-eq p0, p1, :cond_16

    .line 194
    .line 195
    return v1

    .line 196
    :cond_16
    return v0
.end method

.method public final hashCode()I
    .locals 22

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-byte v1, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->sessionId:B

    .line 4
    .line 5
    invoke-static {v1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanBandSpecificConfig$$ExternalSyntheticOutline0;->m(B)Ljava/lang/Integer;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    iget-short v1, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->ttlSec:S

    .line 10
    .line 11
    invoke-static {v1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanBandSpecificConfig$$ExternalSyntheticOutline0;->m(S)Ljava/lang/Integer;

    .line 12
    .line 13
    .line 14
    move-result-object v3

    .line 15
    iget-short v1, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->discoveryWindowPeriod:S

    .line 16
    .line 17
    invoke-static {v1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanBandSpecificConfig$$ExternalSyntheticOutline0;->m(S)Ljava/lang/Integer;

    .line 18
    .line 19
    .line 20
    move-result-object v4

    .line 21
    iget-byte v1, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->discoveryCount:B

    .line 22
    .line 23
    invoke-static {v1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanBandSpecificConfig$$ExternalSyntheticOutline0;->m(B)Ljava/lang/Integer;

    .line 24
    .line 25
    .line 26
    move-result-object v5

    .line 27
    iget-object v1, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->serviceName:Ljava/util/ArrayList;

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
    iget v1, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->discoveryMatchIndicator:I

    .line 38
    .line 39
    invoke-static {v1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip$Stub$$ExternalSyntheticOutline0;->m(I)Ljava/lang/Integer;

    .line 40
    .line 41
    .line 42
    move-result-object v7

    .line 43
    iget-object v1, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->serviceSpecificInfo:Ljava/util/ArrayList;

    .line 44
    .line 45
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    .line 46
    .line 47
    .line 48
    move-result v1

    .line 49
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 50
    .line 51
    .line 52
    move-result-object v8

    .line 53
    iget-object v1, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->extendedServiceSpecificInfo:Ljava/util/ArrayList;

    .line 54
    .line 55
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    .line 56
    .line 57
    .line 58
    move-result v1

    .line 59
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 60
    .line 61
    .line 62
    move-result-object v9

    .line 63
    iget-object v1, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->rxMatchFilter:Ljava/util/ArrayList;

    .line 64
    .line 65
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    .line 66
    .line 67
    .line 68
    move-result v1

    .line 69
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 70
    .line 71
    .line 72
    move-result-object v10

    .line 73
    iget-object v1, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->txMatchFilter:Ljava/util/ArrayList;

    .line 74
    .line 75
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    .line 76
    .line 77
    .line 78
    move-result v1

    .line 79
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 80
    .line 81
    .line 82
    move-result-object v11

    .line 83
    iget-boolean v1, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->useRssiThreshold:Z

    .line 84
    .line 85
    invoke-static {v1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanBandSpecificConfig$$ExternalSyntheticOutline0;->m(Z)Ljava/lang/Integer;

    .line 86
    .line 87
    .line 88
    move-result-object v12

    .line 89
    iget-boolean v1, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->disableDiscoveryTerminationIndication:Z

    .line 90
    .line 91
    invoke-static {v1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanBandSpecificConfig$$ExternalSyntheticOutline0;->m(Z)Ljava/lang/Integer;

    .line 92
    .line 93
    .line 94
    move-result-object v13

    .line 95
    iget-boolean v1, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->disableMatchExpirationIndication:Z

    .line 96
    .line 97
    invoke-static {v1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanBandSpecificConfig$$ExternalSyntheticOutline0;->m(Z)Ljava/lang/Integer;

    .line 98
    .line 99
    .line 100
    move-result-object v14

    .line 101
    iget-boolean v1, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->disableFollowupReceivedIndication:Z

    .line 102
    .line 103
    invoke-static {v1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanBandSpecificConfig$$ExternalSyntheticOutline0;->m(Z)Ljava/lang/Integer;

    .line 104
    .line 105
    .line 106
    move-result-object v15

    .line 107
    iget-object v1, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->securityConfig:Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDataPathSecurityConfig;

    .line 108
    .line 109
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    .line 110
    .line 111
    .line 112
    move-result v1

    .line 113
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 114
    .line 115
    .line 116
    move-result-object v16

    .line 117
    iget-boolean v1, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->rangingRequired:Z

    .line 118
    .line 119
    invoke-static {v1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanBandSpecificConfig$$ExternalSyntheticOutline0;->m(Z)Ljava/lang/Integer;

    .line 120
    .line 121
    .line 122
    move-result-object v17

    .line 123
    iget v1, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->rangingIntervalMsec:I

    .line 124
    .line 125
    invoke-static {v1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip$Stub$$ExternalSyntheticOutline0;->m(I)Ljava/lang/Integer;

    .line 126
    .line 127
    .line 128
    move-result-object v18

    .line 129
    iget v1, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->configRangingIndications:I

    .line 130
    .line 131
    invoke-static {v1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip$Stub$$ExternalSyntheticOutline0;->m(I)Ljava/lang/Integer;

    .line 132
    .line 133
    .line 134
    move-result-object v19

    .line 135
    iget-short v1, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->distanceIngressCm:S

    .line 136
    .line 137
    invoke-static {v1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanBandSpecificConfig$$ExternalSyntheticOutline0;->m(S)Ljava/lang/Integer;

    .line 138
    .line 139
    .line 140
    move-result-object v20

    .line 141
    iget-short v0, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->distanceEgressCm:S

    .line 142
    .line 143
    invoke-static {v0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanBandSpecificConfig$$ExternalSyntheticOutline0;->m(S)Ljava/lang/Integer;

    .line 144
    .line 145
    .line 146
    move-result-object v21

    .line 147
    filled-new-array/range {v2 .. v21}, [Ljava/lang/Object;

    .line 148
    .line 149
    .line 150
    move-result-object v0

    .line 151
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    .line 152
    .line 153
    .line 154
    move-result v0

    .line 155
    return v0
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
    iput-byte v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->sessionId:B

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
    move-result v0

    .line 14
    iput-short v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->ttlSec:S

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
    move-result v0

    .line 23
    iput-short v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->discoveryWindowPeriod:S

    .line 24
    .line 25
    const-wide/16 v0, 0x6

    .line 26
    .line 27
    add-long/2addr v0, p3

    .line 28
    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt8(J)B

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    iput-byte v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->discoveryCount:B

    .line 33
    .line 34
    const-wide/16 v0, 0x8

    .line 35
    .line 36
    add-long v7, p3, v0

    .line 37
    .line 38
    const-wide/16 v0, 0x10

    .line 39
    .line 40
    add-long/2addr v0, p3

    .line 41
    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt32(J)I

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    int-to-long v3, v0

    .line 46
    invoke-virtual {p2}, Landroid/os/HwBlob;->handle()J

    .line 47
    .line 48
    .line 49
    move-result-wide v5

    .line 50
    const/4 v9, 0x1

    .line 51
    move-object v2, p1

    .line 52
    invoke-virtual/range {v2 .. v9}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    move-object v1, v2

    .line 57
    iget-object v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->serviceName:Ljava/util/ArrayList;

    .line 58
    .line 59
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 60
    .line 61
    .line 62
    const/4 v9, 0x0

    .line 63
    move v2, v9

    .line 64
    :goto_0
    if-ge v2, v0, :cond_0

    .line 65
    .line 66
    int-to-long v3, v2

    .line 67
    invoke-virtual {p1, v3, v4}, Landroid/os/HwBlob;->getInt8(J)B

    .line 68
    .line 69
    .line 70
    move-result v3

    .line 71
    iget-object v4, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->serviceName:Ljava/util/ArrayList;

    .line 72
    .line 73
    const/4 v5, 0x1

    .line 74
    invoke-static {v3, v4, v2, v5}, Lcom/samsung/android/server/wifi/halclient/BssInfo$$ExternalSyntheticOutline0;->m(BLjava/util/ArrayList;II)I

    .line 75
    .line 76
    .line 77
    move-result v2

    .line 78
    goto :goto_0

    .line 79
    :cond_0
    const-wide/16 v2, 0x18

    .line 80
    .line 81
    add-long/2addr v2, p3

    .line 82
    invoke-virtual {p2, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    .line 83
    .line 84
    .line 85
    move-result p1

    .line 86
    iput p1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->discoveryMatchIndicator:I

    .line 87
    .line 88
    const-wide/16 v2, 0x20

    .line 89
    .line 90
    add-long v6, p3, v2

    .line 91
    .line 92
    const-wide/16 v2, 0x28

    .line 93
    .line 94
    add-long/2addr v2, p3

    .line 95
    invoke-virtual {p2, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    .line 96
    .line 97
    .line 98
    move-result p1

    .line 99
    int-to-long v2, p1

    .line 100
    invoke-virtual {p2}, Landroid/os/HwBlob;->handle()J

    .line 101
    .line 102
    .line 103
    move-result-wide v4

    .line 104
    const/4 v8, 0x1

    .line 105
    invoke-virtual/range {v1 .. v8}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    iget-object v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->serviceSpecificInfo:Ljava/util/ArrayList;

    .line 110
    .line 111
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 112
    .line 113
    .line 114
    move v2, v9

    .line 115
    :goto_1
    if-ge v2, p1, :cond_1

    .line 116
    .line 117
    int-to-long v3, v2

    .line 118
    invoke-virtual {v0, v3, v4}, Landroid/os/HwBlob;->getInt8(J)B

    .line 119
    .line 120
    .line 121
    move-result v3

    .line 122
    iget-object v4, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->serviceSpecificInfo:Ljava/util/ArrayList;

    .line 123
    .line 124
    const/4 v5, 0x1

    .line 125
    invoke-static {v3, v4, v2, v5}, Lcom/samsung/android/server/wifi/halclient/BssInfo$$ExternalSyntheticOutline0;->m(BLjava/util/ArrayList;II)I

    .line 126
    .line 127
    .line 128
    move-result v2

    .line 129
    goto :goto_1

    .line 130
    :cond_1
    const-wide/16 v2, 0x30

    .line 131
    .line 132
    add-long v6, p3, v2

    .line 133
    .line 134
    const-wide/16 v2, 0x38

    .line 135
    .line 136
    add-long/2addr v2, p3

    .line 137
    invoke-virtual {p2, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    .line 138
    .line 139
    .line 140
    move-result p1

    .line 141
    int-to-long v2, p1

    .line 142
    invoke-virtual {p2}, Landroid/os/HwBlob;->handle()J

    .line 143
    .line 144
    .line 145
    move-result-wide v4

    .line 146
    const/4 v8, 0x1

    .line 147
    invoke-virtual/range {v1 .. v8}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    .line 148
    .line 149
    .line 150
    move-result-object v0

    .line 151
    iget-object v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->extendedServiceSpecificInfo:Ljava/util/ArrayList;

    .line 152
    .line 153
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 154
    .line 155
    .line 156
    move v2, v9

    .line 157
    :goto_2
    if-ge v2, p1, :cond_2

    .line 158
    .line 159
    int-to-long v3, v2

    .line 160
    invoke-virtual {v0, v3, v4}, Landroid/os/HwBlob;->getInt8(J)B

    .line 161
    .line 162
    .line 163
    move-result v3

    .line 164
    iget-object v4, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->extendedServiceSpecificInfo:Ljava/util/ArrayList;

    .line 165
    .line 166
    const/4 v5, 0x1

    .line 167
    invoke-static {v3, v4, v2, v5}, Lcom/samsung/android/server/wifi/halclient/BssInfo$$ExternalSyntheticOutline0;->m(BLjava/util/ArrayList;II)I

    .line 168
    .line 169
    .line 170
    move-result v2

    .line 171
    goto :goto_2

    .line 172
    :cond_2
    const-wide/16 v2, 0x40

    .line 173
    .line 174
    add-long v6, p3, v2

    .line 175
    .line 176
    const-wide/16 v2, 0x48

    .line 177
    .line 178
    add-long/2addr v2, p3

    .line 179
    invoke-virtual {p2, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    .line 180
    .line 181
    .line 182
    move-result p1

    .line 183
    int-to-long v2, p1

    .line 184
    invoke-virtual {p2}, Landroid/os/HwBlob;->handle()J

    .line 185
    .line 186
    .line 187
    move-result-wide v4

    .line 188
    const/4 v8, 0x1

    .line 189
    invoke-virtual/range {v1 .. v8}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    .line 190
    .line 191
    .line 192
    move-result-object v0

    .line 193
    iget-object v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->rxMatchFilter:Ljava/util/ArrayList;

    .line 194
    .line 195
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 196
    .line 197
    .line 198
    move v2, v9

    .line 199
    :goto_3
    if-ge v2, p1, :cond_3

    .line 200
    .line 201
    int-to-long v3, v2

    .line 202
    invoke-virtual {v0, v3, v4}, Landroid/os/HwBlob;->getInt8(J)B

    .line 203
    .line 204
    .line 205
    move-result v3

    .line 206
    iget-object v4, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->rxMatchFilter:Ljava/util/ArrayList;

    .line 207
    .line 208
    const/4 v5, 0x1

    .line 209
    invoke-static {v3, v4, v2, v5}, Lcom/samsung/android/server/wifi/halclient/BssInfo$$ExternalSyntheticOutline0;->m(BLjava/util/ArrayList;II)I

    .line 210
    .line 211
    .line 212
    move-result v2

    .line 213
    goto :goto_3

    .line 214
    :cond_3
    const-wide/16 v2, 0x50

    .line 215
    .line 216
    add-long v6, p3, v2

    .line 217
    .line 218
    const-wide/16 v2, 0x58

    .line 219
    .line 220
    add-long/2addr v2, p3

    .line 221
    invoke-virtual {p2, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    .line 222
    .line 223
    .line 224
    move-result p1

    .line 225
    int-to-long v2, p1

    .line 226
    invoke-virtual {p2}, Landroid/os/HwBlob;->handle()J

    .line 227
    .line 228
    .line 229
    move-result-wide v4

    .line 230
    const/4 v8, 0x1

    .line 231
    invoke-virtual/range {v1 .. v8}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    .line 232
    .line 233
    .line 234
    move-result-object v0

    .line 235
    iget-object v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->txMatchFilter:Ljava/util/ArrayList;

    .line 236
    .line 237
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 238
    .line 239
    .line 240
    :goto_4
    if-ge v9, p1, :cond_4

    .line 241
    .line 242
    int-to-long v2, v9

    .line 243
    invoke-virtual {v0, v2, v3}, Landroid/os/HwBlob;->getInt8(J)B

    .line 244
    .line 245
    .line 246
    move-result v2

    .line 247
    iget-object v3, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->txMatchFilter:Ljava/util/ArrayList;

    .line 248
    .line 249
    const/4 v4, 0x1

    .line 250
    invoke-static {v2, v3, v9, v4}, Lcom/samsung/android/server/wifi/halclient/BssInfo$$ExternalSyntheticOutline0;->m(BLjava/util/ArrayList;II)I

    .line 251
    .line 252
    .line 253
    move-result v9

    .line 254
    goto :goto_4

    .line 255
    :cond_4
    const-wide/16 v2, 0x60

    .line 256
    .line 257
    add-long/2addr v2, p3

    .line 258
    invoke-virtual {p2, v2, v3}, Landroid/os/HwBlob;->getBool(J)Z

    .line 259
    .line 260
    .line 261
    move-result p1

    .line 262
    iput-boolean p1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->useRssiThreshold:Z

    .line 263
    .line 264
    const-wide/16 v2, 0x61

    .line 265
    .line 266
    add-long/2addr v2, p3

    .line 267
    invoke-virtual {p2, v2, v3}, Landroid/os/HwBlob;->getBool(J)Z

    .line 268
    .line 269
    .line 270
    move-result p1

    .line 271
    iput-boolean p1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->disableDiscoveryTerminationIndication:Z

    .line 272
    .line 273
    const-wide/16 v2, 0x62

    .line 274
    .line 275
    add-long/2addr v2, p3

    .line 276
    invoke-virtual {p2, v2, v3}, Landroid/os/HwBlob;->getBool(J)Z

    .line 277
    .line 278
    .line 279
    move-result p1

    .line 280
    iput-boolean p1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->disableMatchExpirationIndication:Z

    .line 281
    .line 282
    const-wide/16 v2, 0x63

    .line 283
    .line 284
    add-long/2addr v2, p3

    .line 285
    invoke-virtual {p2, v2, v3}, Landroid/os/HwBlob;->getBool(J)Z

    .line 286
    .line 287
    .line 288
    move-result p1

    .line 289
    iput-boolean p1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->disableFollowupReceivedIndication:Z

    .line 290
    .line 291
    iget-object p1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->securityConfig:Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDataPathSecurityConfig;

    .line 292
    .line 293
    const-wide/16 v2, 0x68

    .line 294
    .line 295
    add-long/2addr v2, p3

    .line 296
    invoke-virtual {p1, v1, p2, v2, v3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDataPathSecurityConfig;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 297
    .line 298
    .line 299
    const-wide/16 v0, 0xa0

    .line 300
    .line 301
    add-long/2addr v0, p3

    .line 302
    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getBool(J)Z

    .line 303
    .line 304
    .line 305
    move-result p1

    .line 306
    iput-boolean p1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->rangingRequired:Z

    .line 307
    .line 308
    const-wide/16 v0, 0xa4

    .line 309
    .line 310
    add-long/2addr v0, p3

    .line 311
    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt32(J)I

    .line 312
    .line 313
    .line 314
    move-result p1

    .line 315
    iput p1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->rangingIntervalMsec:I

    .line 316
    .line 317
    const-wide/16 v0, 0xa8

    .line 318
    .line 319
    add-long/2addr v0, p3

    .line 320
    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt32(J)I

    .line 321
    .line 322
    .line 323
    move-result p1

    .line 324
    iput p1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->configRangingIndications:I

    .line 325
    .line 326
    const-wide/16 v0, 0xac

    .line 327
    .line 328
    add-long/2addr v0, p3

    .line 329
    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt16(J)S

    .line 330
    .line 331
    .line 332
    move-result p1

    .line 333
    iput-short p1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->distanceIngressCm:S

    .line 334
    .line 335
    const-wide/16 v0, 0xae

    .line 336
    .line 337
    add-long/2addr p3, v0

    .line 338
    invoke-virtual {p2, p3, p4}, Landroid/os/HwBlob;->getInt16(J)S

    .line 339
    .line 340
    .line 341
    move-result p1

    .line 342
    iput-short p1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->distanceEgressCm:S

    .line 343
    .line 344
    return-void
.end method

.method public final readFromParcel(Landroid/os/HwParcel;)V
    .locals 3

    .line 1
    const-wide/16 v0, 0xb0

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
    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

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
    const-string v1, "{.sessionId = "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-byte v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->sessionId:B

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", .ttlSec = "

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-short v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->ttlSec:S

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, ", .discoveryWindowPeriod = "

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget-short v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->discoveryWindowPeriod:S

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v1, ", .discoveryCount = "

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    iget-byte v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->discoveryCount:B

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string v1, ", .serviceName = "

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    iget-object v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->serviceName:Ljava/util/ArrayList;

    .line 49
    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    const-string v1, ", .discoveryMatchIndicator = "

    .line 54
    .line 55
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    iget v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->discoveryMatchIndicator:I

    .line 59
    .line 60
    invoke-static {v1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanMatchAlg;->toString(I)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    const-string v1, ", .serviceSpecificInfo = "

    .line 68
    .line 69
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    iget-object v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->serviceSpecificInfo:Ljava/util/ArrayList;

    .line 73
    .line 74
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    const-string v1, ", .extendedServiceSpecificInfo = "

    .line 78
    .line 79
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    iget-object v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->extendedServiceSpecificInfo:Ljava/util/ArrayList;

    .line 83
    .line 84
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    const-string v1, ", .rxMatchFilter = "

    .line 88
    .line 89
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    iget-object v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->rxMatchFilter:Ljava/util/ArrayList;

    .line 93
    .line 94
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    const-string v1, ", .txMatchFilter = "

    .line 98
    .line 99
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    iget-object v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->txMatchFilter:Ljava/util/ArrayList;

    .line 103
    .line 104
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    const-string v1, ", .useRssiThreshold = "

    .line 108
    .line 109
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    iget-boolean v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->useRssiThreshold:Z

    .line 113
    .line 114
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    const-string v1, ", .disableDiscoveryTerminationIndication = "

    .line 118
    .line 119
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    iget-boolean v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->disableDiscoveryTerminationIndication:Z

    .line 123
    .line 124
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    const-string v1, ", .disableMatchExpirationIndication = "

    .line 128
    .line 129
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    iget-boolean v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->disableMatchExpirationIndication:Z

    .line 133
    .line 134
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    const-string v1, ", .disableFollowupReceivedIndication = "

    .line 138
    .line 139
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    .line 141
    .line 142
    iget-boolean v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->disableFollowupReceivedIndication:Z

    .line 143
    .line 144
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 145
    .line 146
    .line 147
    const-string v1, ", .securityConfig = "

    .line 148
    .line 149
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    .line 151
    .line 152
    iget-object v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->securityConfig:Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDataPathSecurityConfig;

    .line 153
    .line 154
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 155
    .line 156
    .line 157
    const-string v1, ", .rangingRequired = "

    .line 158
    .line 159
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    .line 161
    .line 162
    iget-boolean v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->rangingRequired:Z

    .line 163
    .line 164
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 165
    .line 166
    .line 167
    const-string v1, ", .rangingIntervalMsec = "

    .line 168
    .line 169
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    .line 171
    .line 172
    iget v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->rangingIntervalMsec:I

    .line 173
    .line 174
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 175
    .line 176
    .line 177
    const-string v1, ", .configRangingIndications = "

    .line 178
    .line 179
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    .line 181
    .line 182
    iget v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->configRangingIndications:I

    .line 183
    .line 184
    invoke-static {v1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanRangingIndication;->dumpBitfield(I)Ljava/lang/String;

    .line 185
    .line 186
    .line 187
    move-result-object v1

    .line 188
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    .line 190
    .line 191
    const-string v1, ", .distanceIngressCm = "

    .line 192
    .line 193
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    .line 195
    .line 196
    iget-short v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->distanceIngressCm:S

    .line 197
    .line 198
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 199
    .line 200
    .line 201
    const-string v1, ", .distanceEgressCm = "

    .line 202
    .line 203
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    .line 205
    .line 206
    iget-short p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->distanceEgressCm:S

    .line 207
    .line 208
    const-string v1, "}"

    .line 209
    .line 210
    invoke-static {v1, p0, v0}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/StringBuilder;)Ljava/lang/String;

    .line 211
    .line 212
    .line 213
    move-result-object p0

    .line 214
    return-object p0
.end method

.method public final writeEmbeddedToBlob(Landroid/os/HwBlob;J)V
    .locals 12

    .line 1
    iget-byte v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->sessionId:B

    .line 2
    .line 3
    invoke-virtual {p1, p2, p3, v0}, Landroid/os/HwBlob;->putInt8(JB)V

    .line 4
    .line 5
    .line 6
    const-wide/16 v0, 0x2

    .line 7
    .line 8
    add-long/2addr v0, p2

    .line 9
    iget-short v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->ttlSec:S

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
    iget-short v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->discoveryWindowPeriod:S

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
    iget-byte v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->discoveryCount:B

    .line 26
    .line 27
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt8(JB)V

    .line 28
    .line 29
    .line 30
    iget-object v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->serviceName:Ljava/util/ArrayList;

    .line 31
    .line 32
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    const-wide/16 v1, 0x8

    .line 37
    .line 38
    add-long/2addr v1, p2

    .line 39
    const-wide/16 v3, 0x10

    .line 40
    .line 41
    add-long/2addr v3, p2

    .line 42
    invoke-virtual {p1, v3, v4, v0}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 43
    .line 44
    .line 45
    const-wide/16 v3, 0x14

    .line 46
    .line 47
    add-long/2addr v3, p2

    .line 48
    const/4 v5, 0x0

    .line 49
    invoke-static {p1, v3, v4, v5, v0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDataPathConfirmInd$$ExternalSyntheticOutline0;->m(Landroid/os/HwBlob;JZI)Landroid/os/HwBlob;

    .line 50
    .line 51
    .line 52
    move-result-object v7

    .line 53
    move v10, v5

    .line 54
    :goto_0
    if-ge v10, v0, :cond_0

    .line 55
    .line 56
    int-to-long v8, v10

    .line 57
    iget-object v3, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->serviceName:Ljava/util/ArrayList;

    .line 58
    .line 59
    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v3

    .line 63
    move-object v6, v3

    .line 64
    check-cast v6, Ljava/lang/Byte;

    .line 65
    .line 66
    const/4 v11, 0x1

    .line 67
    invoke-static/range {v6 .. v11}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDataPathConfirmInd$$ExternalSyntheticOutline0;->m(Ljava/lang/Byte;Landroid/os/HwBlob;JII)I

    .line 68
    .line 69
    .line 70
    move-result v10

    .line 71
    goto :goto_0

    .line 72
    :cond_0
    invoke-virtual {p1, v1, v2, v7}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 73
    .line 74
    .line 75
    const-wide/16 v0, 0x18

    .line 76
    .line 77
    add-long/2addr v0, p2

    .line 78
    iget v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->discoveryMatchIndicator:I

    .line 79
    .line 80
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 81
    .line 82
    .line 83
    iget-object v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->serviceSpecificInfo:Ljava/util/ArrayList;

    .line 84
    .line 85
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 86
    .line 87
    .line 88
    move-result v0

    .line 89
    const-wide/16 v1, 0x20

    .line 90
    .line 91
    add-long/2addr v1, p2

    .line 92
    const-wide/16 v3, 0x28

    .line 93
    .line 94
    add-long/2addr v3, p2

    .line 95
    invoke-virtual {p1, v3, v4, v0}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 96
    .line 97
    .line 98
    const-wide/16 v3, 0x2c

    .line 99
    .line 100
    add-long/2addr v3, p2

    .line 101
    invoke-static {p1, v3, v4, v5, v0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDataPathConfirmInd$$ExternalSyntheticOutline0;->m(Landroid/os/HwBlob;JZI)Landroid/os/HwBlob;

    .line 102
    .line 103
    .line 104
    move-result-object v7

    .line 105
    move v10, v5

    .line 106
    :goto_1
    if-ge v10, v0, :cond_1

    .line 107
    .line 108
    int-to-long v8, v10

    .line 109
    iget-object v3, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->serviceSpecificInfo:Ljava/util/ArrayList;

    .line 110
    .line 111
    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    move-result-object v3

    .line 115
    move-object v6, v3

    .line 116
    check-cast v6, Ljava/lang/Byte;

    .line 117
    .line 118
    const/4 v11, 0x1

    .line 119
    invoke-static/range {v6 .. v11}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDataPathConfirmInd$$ExternalSyntheticOutline0;->m(Ljava/lang/Byte;Landroid/os/HwBlob;JII)I

    .line 120
    .line 121
    .line 122
    move-result v10

    .line 123
    goto :goto_1

    .line 124
    :cond_1
    invoke-virtual {p1, v1, v2, v7}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 125
    .line 126
    .line 127
    iget-object v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->extendedServiceSpecificInfo:Ljava/util/ArrayList;

    .line 128
    .line 129
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 130
    .line 131
    .line 132
    move-result v0

    .line 133
    const-wide/16 v1, 0x30

    .line 134
    .line 135
    add-long/2addr v1, p2

    .line 136
    const-wide/16 v3, 0x38

    .line 137
    .line 138
    add-long/2addr v3, p2

    .line 139
    invoke-virtual {p1, v3, v4, v0}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 140
    .line 141
    .line 142
    const-wide/16 v3, 0x3c

    .line 143
    .line 144
    add-long/2addr v3, p2

    .line 145
    invoke-static {p1, v3, v4, v5, v0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDataPathConfirmInd$$ExternalSyntheticOutline0;->m(Landroid/os/HwBlob;JZI)Landroid/os/HwBlob;

    .line 146
    .line 147
    .line 148
    move-result-object v7

    .line 149
    move v10, v5

    .line 150
    :goto_2
    if-ge v10, v0, :cond_2

    .line 151
    .line 152
    int-to-long v8, v10

    .line 153
    iget-object v3, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->extendedServiceSpecificInfo:Ljava/util/ArrayList;

    .line 154
    .line 155
    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 156
    .line 157
    .line 158
    move-result-object v3

    .line 159
    move-object v6, v3

    .line 160
    check-cast v6, Ljava/lang/Byte;

    .line 161
    .line 162
    const/4 v11, 0x1

    .line 163
    invoke-static/range {v6 .. v11}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDataPathConfirmInd$$ExternalSyntheticOutline0;->m(Ljava/lang/Byte;Landroid/os/HwBlob;JII)I

    .line 164
    .line 165
    .line 166
    move-result v10

    .line 167
    goto :goto_2

    .line 168
    :cond_2
    invoke-virtual {p1, v1, v2, v7}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 169
    .line 170
    .line 171
    iget-object v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->rxMatchFilter:Ljava/util/ArrayList;

    .line 172
    .line 173
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 174
    .line 175
    .line 176
    move-result v0

    .line 177
    const-wide/16 v1, 0x40

    .line 178
    .line 179
    add-long/2addr v1, p2

    .line 180
    const-wide/16 v3, 0x48

    .line 181
    .line 182
    add-long/2addr v3, p2

    .line 183
    invoke-virtual {p1, v3, v4, v0}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 184
    .line 185
    .line 186
    const-wide/16 v3, 0x4c

    .line 187
    .line 188
    add-long/2addr v3, p2

    .line 189
    invoke-static {p1, v3, v4, v5, v0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDataPathConfirmInd$$ExternalSyntheticOutline0;->m(Landroid/os/HwBlob;JZI)Landroid/os/HwBlob;

    .line 190
    .line 191
    .line 192
    move-result-object v7

    .line 193
    move v10, v5

    .line 194
    :goto_3
    if-ge v10, v0, :cond_3

    .line 195
    .line 196
    int-to-long v8, v10

    .line 197
    iget-object v3, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->rxMatchFilter:Ljava/util/ArrayList;

    .line 198
    .line 199
    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 200
    .line 201
    .line 202
    move-result-object v3

    .line 203
    move-object v6, v3

    .line 204
    check-cast v6, Ljava/lang/Byte;

    .line 205
    .line 206
    const/4 v11, 0x1

    .line 207
    invoke-static/range {v6 .. v11}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDataPathConfirmInd$$ExternalSyntheticOutline0;->m(Ljava/lang/Byte;Landroid/os/HwBlob;JII)I

    .line 208
    .line 209
    .line 210
    move-result v10

    .line 211
    goto :goto_3

    .line 212
    :cond_3
    invoke-virtual {p1, v1, v2, v7}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 213
    .line 214
    .line 215
    iget-object v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->txMatchFilter:Ljava/util/ArrayList;

    .line 216
    .line 217
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 218
    .line 219
    .line 220
    move-result v0

    .line 221
    const-wide/16 v1, 0x50

    .line 222
    .line 223
    add-long/2addr v1, p2

    .line 224
    const-wide/16 v3, 0x58

    .line 225
    .line 226
    add-long/2addr v3, p2

    .line 227
    invoke-virtual {p1, v3, v4, v0}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 228
    .line 229
    .line 230
    const-wide/16 v3, 0x5c

    .line 231
    .line 232
    add-long/2addr v3, p2

    .line 233
    invoke-static {p1, v3, v4, v5, v0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDataPathConfirmInd$$ExternalSyntheticOutline0;->m(Landroid/os/HwBlob;JZI)Landroid/os/HwBlob;

    .line 234
    .line 235
    .line 236
    move-result-object v7

    .line 237
    move v10, v5

    .line 238
    :goto_4
    if-ge v10, v0, :cond_4

    .line 239
    .line 240
    int-to-long v8, v10

    .line 241
    iget-object v3, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->txMatchFilter:Ljava/util/ArrayList;

    .line 242
    .line 243
    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 244
    .line 245
    .line 246
    move-result-object v3

    .line 247
    move-object v6, v3

    .line 248
    check-cast v6, Ljava/lang/Byte;

    .line 249
    .line 250
    const/4 v11, 0x1

    .line 251
    invoke-static/range {v6 .. v11}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDataPathConfirmInd$$ExternalSyntheticOutline0;->m(Ljava/lang/Byte;Landroid/os/HwBlob;JII)I

    .line 252
    .line 253
    .line 254
    move-result v10

    .line 255
    goto :goto_4

    .line 256
    :cond_4
    invoke-virtual {p1, v1, v2, v7}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 257
    .line 258
    .line 259
    const-wide/16 v0, 0x60

    .line 260
    .line 261
    add-long/2addr v0, p2

    .line 262
    iget-boolean v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->useRssiThreshold:Z

    .line 263
    .line 264
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 265
    .line 266
    .line 267
    const-wide/16 v0, 0x61

    .line 268
    .line 269
    add-long/2addr v0, p2

    .line 270
    iget-boolean v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->disableDiscoveryTerminationIndication:Z

    .line 271
    .line 272
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 273
    .line 274
    .line 275
    const-wide/16 v0, 0x62

    .line 276
    .line 277
    add-long/2addr v0, p2

    .line 278
    iget-boolean v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->disableMatchExpirationIndication:Z

    .line 279
    .line 280
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 281
    .line 282
    .line 283
    const-wide/16 v0, 0x63

    .line 284
    .line 285
    add-long/2addr v0, p2

    .line 286
    iget-boolean v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->disableFollowupReceivedIndication:Z

    .line 287
    .line 288
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 289
    .line 290
    .line 291
    iget-object v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->securityConfig:Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDataPathSecurityConfig;

    .line 292
    .line 293
    const-wide/16 v1, 0x68

    .line 294
    .line 295
    add-long/2addr v1, p2

    .line 296
    invoke-virtual {v0, p1, v1, v2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDataPathSecurityConfig;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 297
    .line 298
    .line 299
    const-wide/16 v0, 0xa0

    .line 300
    .line 301
    add-long/2addr v0, p2

    .line 302
    iget-boolean v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->rangingRequired:Z

    .line 303
    .line 304
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 305
    .line 306
    .line 307
    const-wide/16 v0, 0xa4

    .line 308
    .line 309
    add-long/2addr v0, p2

    .line 310
    iget v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->rangingIntervalMsec:I

    .line 311
    .line 312
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 313
    .line 314
    .line 315
    const-wide/16 v0, 0xa8

    .line 316
    .line 317
    add-long/2addr v0, p2

    .line 318
    iget v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->configRangingIndications:I

    .line 319
    .line 320
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 321
    .line 322
    .line 323
    const-wide/16 v0, 0xac

    .line 324
    .line 325
    add-long/2addr v0, p2

    .line 326
    iget-short v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->distanceIngressCm:S

    .line 327
    .line 328
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt16(JS)V

    .line 329
    .line 330
    .line 331
    const-wide/16 v0, 0xae

    .line 332
    .line 333
    add-long/2addr p2, v0

    .line 334
    iget-short p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->distanceEgressCm:S

    .line 335
    .line 336
    invoke-virtual {p1, p2, p3, p0}, Landroid/os/HwBlob;->putInt16(JS)V

    .line 337
    .line 338
    .line 339
    return-void
.end method

.method public final writeToParcel(Landroid/os/HwParcel;)V
    .locals 3

    .line 1
    new-instance v0, Landroid/os/HwBlob;

    .line 2
    .line 3
    const/16 v1, 0xb0

    .line 4
    .line 5
    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 6
    .line 7
    .line 8
    const-wide/16 v1, 0x0

    .line 9
    .line 10
    invoke-virtual {p0, v0, v1, v2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method
