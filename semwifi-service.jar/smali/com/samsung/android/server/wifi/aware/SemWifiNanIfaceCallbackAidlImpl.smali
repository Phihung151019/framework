.class public Lcom/samsung/android/server/wifi/aware/SemWifiNanIfaceCallbackAidlImpl;
.super Lcom/samsung/wifi/x/android/hardware/wifi/IWifiNanIfaceEventCallback$Stub;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# static fields
.field private static final TAG:Ljava/lang/String; = "SemWifiNanIfaceCallbackAidlImpl"


# instance fields
.field private final mSemWifiNanIface:Lcom/samsung/android/server/wifi/aware/SemWifiNanIfaceAidlImpl;


# direct methods
.method public constructor <init>(Lcom/samsung/android/server/wifi/aware/SemWifiNanIfaceAidlImpl;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/IWifiNanIfaceEventCallback$Stub;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/samsung/android/server/wifi/aware/SemWifiNanIfaceCallbackAidlImpl;->mSemWifiNanIface:Lcom/samsung/android/server/wifi/aware/SemWifiNanIfaceAidlImpl;

    .line 5
    .line 6
    return-void
.end method

.method private checkFrameworkCallback()Z
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/aware/SemWifiNanIfaceCallbackAidlImpl;->mSemWifiNanIface:Lcom/samsung/android/server/wifi/aware/SemWifiNanIfaceAidlImpl;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    const-string v1, "SemWifiNanIfaceCallbackAidlImpl"

    .line 5
    .line 6
    if-nez p0, :cond_0

    .line 7
    .line 8
    const-string p0, "mWifiNanIface is null"

    .line 9
    .line 10
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    .line 12
    .line 13
    return v0

    .line 14
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/aware/SemWifiNanIfaceAidlImpl;->getFrameworkCallback()Lcom/samsung/android/server/wifi/aware/SemWifiNanIface$Callback;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    if-nez p0, :cond_1

    .line 19
    .line 20
    const-string p0, "Framework callback is null"

    .line 21
    .line 22
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    .line 24
    .line 25
    return v0

    .line 26
    :cond_1
    const/4 p0, 0x1

    .line 27
    return p0
.end method

.method private convertHalChannelInfo([Lcom/samsung/wifi/x/android/hardware/wifi/NanDataPathChannelInfo;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/samsung/wifi/x/android/hardware/wifi/NanDataPathChannelInfo;",
            ")",
            "Ljava/util/List<",
            "Landroid/net/wifi/aware/WifiAwareChannelInfo;",
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
    if-nez p1, :cond_0

    .line 7
    .line 8
    const/4 p0, 0x0

    .line 9
    return-object p0

    .line 10
    :cond_0
    array-length v1, p1

    .line 11
    const/4 v2, 0x0

    .line 12
    :goto_0
    if-ge v2, v1, :cond_1

    .line 13
    .line 14
    aget-object v3, p1, v2

    .line 15
    .line 16
    new-instance v4, Landroid/net/wifi/aware/WifiAwareChannelInfo;

    .line 17
    .line 18
    iget v5, v3, Lcom/samsung/wifi/x/android/hardware/wifi/NanDataPathChannelInfo;->channelFreq:I

    .line 19
    .line 20
    iget v6, v3, Lcom/samsung/wifi/x/android/hardware/wifi/NanDataPathChannelInfo;->channelBandwidth:I

    .line 21
    .line 22
    invoke-direct {p0, v6}, Lcom/samsung/android/server/wifi/aware/SemWifiNanIfaceCallbackAidlImpl;->getChannelBandwidthFromHal(I)I

    .line 23
    .line 24
    .line 25
    move-result v6

    .line 26
    iget v3, v3, Lcom/samsung/wifi/x/android/hardware/wifi/NanDataPathChannelInfo;->numSpatialStreams:I

    .line 27
    .line 28
    invoke-direct {v4, v5, v6, v3}, Landroid/net/wifi/aware/WifiAwareChannelInfo;-><init>(III)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    add-int/lit8 v2, v2, 0x1

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_1
    return-object v0
.end method

.method private getChannelBandwidthFromHal(I)I
    .locals 0

    .line 1
    const/4 p0, 0x1

    .line 2
    if-eq p1, p0, :cond_1

    .line 3
    .line 4
    const/4 p0, 0x2

    .line 5
    if-eq p1, p0, :cond_1

    .line 6
    .line 7
    const/4 p0, 0x3

    .line 8
    if-eq p1, p0, :cond_1

    .line 9
    .line 10
    const/4 p0, 0x4

    .line 11
    if-eq p1, p0, :cond_1

    .line 12
    .line 13
    const/4 p0, 0x7

    .line 14
    if-eq p1, p0, :cond_0

    .line 15
    .line 16
    const/4 p0, 0x0

    .line 17
    return p0

    .line 18
    :cond_0
    const/4 p0, 0x5

    .line 19
    :cond_1
    return p0
.end method

.method private static statusString(Lcom/samsung/wifi/x/android/hardware/wifi/NanStatus;)Ljava/lang/String;
    .locals 2

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    const-string p0, "status=null"

    .line 4
    .line 5
    return-object p0

    .line 6
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 9
    .line 10
    .line 11
    iget v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/NanStatus;->status:I

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string v1, " ("

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/NanStatus;->description:Ljava/lang/String;

    .line 22
    .line 23
    const-string v1, ")"

    .line 24
    .line 25
    invoke-static {v0, p0, v1}, Lcom/samsung/android/mcf/continuity/common/DLog$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    return-object p0
.end method


# virtual methods
.method public eventBootstrappingConfirm(Lcom/samsung/wifi/x/android/hardware/wifi/NanBootstrappingConfirmInd;)V
    .locals 0

    .line 1
    return-void
.end method

.method public eventBootstrappingRequest(Lcom/samsung/wifi/x/android/hardware/wifi/NanBootstrappingRequestInd;)V
    .locals 0

    .line 1
    return-void
.end method

.method public eventClusterEvent(Lcom/samsung/wifi/x/android/hardware/wifi/NanClusterEventInd;)V
    .locals 0

    .line 1
    return-void
.end method

.method public eventDataPathConfirm(Lcom/samsung/wifi/x/android/hardware/wifi/NanDataPathConfirmInd;)V
    .locals 8

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/aware/SemWifiNanIfaceCallbackAidlImpl;->checkFrameworkCallback()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    const-string v1, "eventDataPathConfirm: ndpInstanceId="

    .line 11
    .line 12
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    iget v1, p1, Lcom/samsung/wifi/x/android/hardware/wifi/NanDataPathConfirmInd;->ndpInstanceId:I

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    const-string v1, ", peerNdiMacAddr="

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    iget-object v1, p1, Lcom/samsung/wifi/x/android/hardware/wifi/NanDataPathConfirmInd;->peerNdiMacAddr:[B

    .line 26
    .line 27
    invoke-static {v1}, Landroid/net/wifi/util/HexEncoding;->encode([B)[C

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-static {v1}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    const-string v1, ", dataPathSetupSuccess="

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    iget-boolean v1, p1, Lcom/samsung/wifi/x/android/hardware/wifi/NanDataPathConfirmInd;->dataPathSetupSuccess:Z

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    const-string v1, ", reason="

    .line 49
    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    iget-object v1, p1, Lcom/samsung/wifi/x/android/hardware/wifi/NanDataPathConfirmInd;->status:Lcom/samsung/wifi/x/android/hardware/wifi/NanStatus;

    .line 54
    .line 55
    iget v1, v1, Lcom/samsung/wifi/x/android/hardware/wifi/NanStatus;->status:I

    .line 56
    .line 57
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    const-string v1, ", appInfo.size()="

    .line 61
    .line 62
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    iget-object v1, p1, Lcom/samsung/wifi/x/android/hardware/wifi/NanDataPathConfirmInd;->appInfo:[B

    .line 66
    .line 67
    array-length v1, v1

    .line 68
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    const-string v1, ", channelInfo"

    .line 72
    .line 73
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    iget-object v1, p1, Lcom/samsung/wifi/x/android/hardware/wifi/NanDataPathConfirmInd;->channelInfo:[Lcom/samsung/wifi/x/android/hardware/wifi/NanDataPathChannelInfo;

    .line 77
    .line 78
    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v1

    .line 82
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    const-string v1, "SemWifiNanIfaceCallbackAidlImpl"

    .line 90
    .line 91
    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    .line 93
    .line 94
    iget-object v0, p1, Lcom/samsung/wifi/x/android/hardware/wifi/NanDataPathConfirmInd;->channelInfo:[Lcom/samsung/wifi/x/android/hardware/wifi/NanDataPathChannelInfo;

    .line 95
    .line 96
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/aware/SemWifiNanIfaceCallbackAidlImpl;->convertHalChannelInfo([Lcom/samsung/wifi/x/android/hardware/wifi/NanDataPathChannelInfo;)Ljava/util/List;

    .line 97
    .line 98
    .line 99
    move-result-object v7

    .line 100
    iget-object p0, p0, Lcom/samsung/android/server/wifi/aware/SemWifiNanIfaceCallbackAidlImpl;->mSemWifiNanIface:Lcom/samsung/android/server/wifi/aware/SemWifiNanIfaceAidlImpl;

    .line 101
    .line 102
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/aware/SemWifiNanIfaceAidlImpl;->getFrameworkCallback()Lcom/samsung/android/server/wifi/aware/SemWifiNanIface$Callback;

    .line 103
    .line 104
    .line 105
    move-result-object v1

    .line 106
    iget-object p0, p1, Lcom/samsung/wifi/x/android/hardware/wifi/NanDataPathConfirmInd;->status:Lcom/samsung/wifi/x/android/hardware/wifi/NanStatus;

    .line 107
    .line 108
    iget p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/NanStatus;->status:I

    .line 109
    .line 110
    invoke-static {p0}, Lcom/samsung/android/server/wifi/aware/SemWifiNanIface$NanStatusCode;->fromAidl(I)I

    .line 111
    .line 112
    .line 113
    move-result v2

    .line 114
    iget v3, p1, Lcom/samsung/wifi/x/android/hardware/wifi/NanDataPathConfirmInd;->ndpInstanceId:I

    .line 115
    .line 116
    iget-boolean v4, p1, Lcom/samsung/wifi/x/android/hardware/wifi/NanDataPathConfirmInd;->dataPathSetupSuccess:Z

    .line 117
    .line 118
    iget-object v5, p1, Lcom/samsung/wifi/x/android/hardware/wifi/NanDataPathConfirmInd;->peerNdiMacAddr:[B

    .line 119
    .line 120
    iget-object v6, p1, Lcom/samsung/wifi/x/android/hardware/wifi/NanDataPathConfirmInd;->appInfo:[B

    .line 121
    .line 122
    invoke-interface/range {v1 .. v7}, Lcom/samsung/android/server/wifi/aware/SemWifiNanIface$Callback;->eventDataPathConfirm(IIZ[B[BLjava/util/List;)V

    .line 123
    .line 124
    .line 125
    return-void
.end method

.method public eventDataPathRequest(Lcom/samsung/wifi/x/android/hardware/wifi/NanDataPathRequestInd;)V
    .locals 0

    .line 1
    return-void
.end method

.method public eventDataPathScheduleUpdate(Lcom/samsung/wifi/x/android/hardware/wifi/NanDataPathScheduleUpdateInd;)V
    .locals 6

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/aware/SemWifiNanIfaceCallbackAidlImpl;->checkFrameworkCallback()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    const-string v1, "eventDataPathScheduleUpdate: peerMac="

    .line 11
    .line 12
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    iget-object v1, p1, Lcom/samsung/wifi/x/android/hardware/wifi/NanDataPathScheduleUpdateInd;->peerDiscoveryAddress:[B

    .line 16
    .line 17
    invoke-static {v1}, Landroid/net/MacAddress;->fromBytes([B)Landroid/net/MacAddress;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    const-string v1, ", ndpIds="

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    iget-object v1, p1, Lcom/samsung/wifi/x/android/hardware/wifi/NanDataPathScheduleUpdateInd;->ndpInstanceIds:[I

    .line 30
    .line 31
    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    const-string v1, ", channelInfo="

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    iget-object v1, p1, Lcom/samsung/wifi/x/android/hardware/wifi/NanDataPathScheduleUpdateInd;->channelInfo:[Lcom/samsung/wifi/x/android/hardware/wifi/NanDataPathChannelInfo;

    .line 44
    .line 45
    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    const-string v1, "SemWifiNanIfaceCallbackAidlImpl"

    .line 57
    .line 58
    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    .line 60
    .line 61
    iget-object v0, p1, Lcom/samsung/wifi/x/android/hardware/wifi/NanDataPathScheduleUpdateInd;->channelInfo:[Lcom/samsung/wifi/x/android/hardware/wifi/NanDataPathChannelInfo;

    .line 62
    .line 63
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/aware/SemWifiNanIfaceCallbackAidlImpl;->convertHalChannelInfo([Lcom/samsung/wifi/x/android/hardware/wifi/NanDataPathChannelInfo;)Ljava/util/List;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    new-instance v1, Ljava/util/ArrayList;

    .line 68
    .line 69
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 70
    .line 71
    .line 72
    iget-object v2, p1, Lcom/samsung/wifi/x/android/hardware/wifi/NanDataPathScheduleUpdateInd;->ndpInstanceIds:[I

    .line 73
    .line 74
    array-length v3, v2

    .line 75
    const/4 v4, 0x0

    .line 76
    :goto_0
    if-ge v4, v3, :cond_1

    .line 77
    .line 78
    aget v5, v2, v4

    .line 79
    .line 80
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 81
    .line 82
    .line 83
    move-result-object v5

    .line 84
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 85
    .line 86
    .line 87
    add-int/lit8 v4, v4, 0x1

    .line 88
    .line 89
    goto :goto_0

    .line 90
    :cond_1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/aware/SemWifiNanIfaceCallbackAidlImpl;->mSemWifiNanIface:Lcom/samsung/android/server/wifi/aware/SemWifiNanIfaceAidlImpl;

    .line 91
    .line 92
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/aware/SemWifiNanIfaceAidlImpl;->getFrameworkCallback()Lcom/samsung/android/server/wifi/aware/SemWifiNanIface$Callback;

    .line 93
    .line 94
    .line 95
    move-result-object p0

    .line 96
    iget-object p1, p1, Lcom/samsung/wifi/x/android/hardware/wifi/NanDataPathScheduleUpdateInd;->peerDiscoveryAddress:[B

    .line 97
    .line 98
    invoke-interface {p0, p1, v1, v0}, Lcom/samsung/android/server/wifi/aware/SemWifiNanIface$Callback;->eventDataPathScheduleUpdate([BLjava/util/ArrayList;Ljava/util/List;)V

    .line 99
    .line 100
    .line 101
    return-void
.end method

.method public eventDataPathTerminated(I)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/aware/SemWifiNanIfaceCallbackAidlImpl;->checkFrameworkCallback()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    const-string v0, "eventDataPathTerminated: ndpInstanceId="

    .line 9
    .line 10
    invoke-static {p1, v0}, Lcom/samsung/android/mcf/continuity/common/VersionUtil$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    const-string v1, "SemWifiNanIfaceCallbackAidlImpl"

    .line 15
    .line 16
    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    .line 18
    .line 19
    iget-object p0, p0, Lcom/samsung/android/server/wifi/aware/SemWifiNanIfaceCallbackAidlImpl;->mSemWifiNanIface:Lcom/samsung/android/server/wifi/aware/SemWifiNanIfaceAidlImpl;

    .line 20
    .line 21
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/aware/SemWifiNanIfaceAidlImpl;->getFrameworkCallback()Lcom/samsung/android/server/wifi/aware/SemWifiNanIface$Callback;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    invoke-interface {p0, p1}, Lcom/samsung/android/server/wifi/aware/SemWifiNanIface$Callback;->eventDataPathTerminated(I)V

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method public eventDisabled(Lcom/samsung/wifi/x/android/hardware/wifi/NanStatus;)V
    .locals 0

    .line 1
    return-void
.end method

.method public eventFollowupReceived(Lcom/samsung/wifi/x/android/hardware/wifi/NanFollowupReceivedInd;)V
    .locals 0

    .line 1
    return-void
.end method

.method public eventMatch(Lcom/samsung/wifi/x/android/hardware/wifi/NanMatchInd;)V
    .locals 0

    .line 1
    return-void
.end method

.method public eventMatchExpired(BI)V
    .locals 0

    .line 1
    return-void
.end method

.method public eventPairingConfirm(Lcom/samsung/wifi/x/android/hardware/wifi/NanPairingConfirmInd;)V
    .locals 0

    .line 1
    return-void
.end method

.method public eventPairingRequest(Lcom/samsung/wifi/x/android/hardware/wifi/NanPairingRequestInd;)V
    .locals 0

    .line 1
    return-void
.end method

.method public eventPublishTerminated(BLcom/samsung/wifi/x/android/hardware/wifi/NanStatus;)V
    .locals 0

    .line 1
    return-void
.end method

.method public eventSubscribeTerminated(BLcom/samsung/wifi/x/android/hardware/wifi/NanStatus;)V
    .locals 0

    .line 1
    return-void
.end method

.method public eventSuspensionModeChanged(Lcom/samsung/wifi/x/android/hardware/wifi/NanSuspensionModeChangeInd;)V
    .locals 0

    .line 1
    return-void
.end method

.method public eventTransmitFollowup(CLcom/samsung/wifi/x/android/hardware/wifi/NanStatus;)V
    .locals 0

    .line 1
    return-void
.end method

.method public getInterfaceHash()Ljava/lang/String;
    .locals 0

    .line 1
    const-string p0, "aa2d34a8d196759e8f89109768ebe16039e47518"

    .line 2
    .line 3
    return-object p0
.end method

.method public getInterfaceVersion()I
    .locals 0

    .line 1
    const/4 p0, 0x1

    .line 2
    return p0
.end method

.method public notifyCapabilitiesResponse(CLcom/samsung/wifi/x/android/hardware/wifi/NanStatus;Lcom/samsung/wifi/x/android/hardware/wifi/NanCapabilities;)V
    .locals 0

    .line 1
    return-void
.end method

.method public notifyConfigResponse(CLcom/samsung/wifi/x/android/hardware/wifi/NanStatus;)V
    .locals 0

    .line 1
    return-void
.end method

.method public notifyCreateDataInterfaceResponse(CLcom/samsung/wifi/x/android/hardware/wifi/NanStatus;)V
    .locals 0

    .line 1
    return-void
.end method

.method public notifyDeleteDataInterfaceResponse(CLcom/samsung/wifi/x/android/hardware/wifi/NanStatus;)V
    .locals 0

    .line 1
    return-void
.end method

.method public notifyDisableResponse(CLcom/samsung/wifi/x/android/hardware/wifi/NanStatus;)V
    .locals 0

    .line 1
    return-void
.end method

.method public notifyEnableResponse(CLcom/samsung/wifi/x/android/hardware/wifi/NanStatus;)V
    .locals 0

    .line 1
    return-void
.end method

.method public notifyInitiateBootstrappingResponse(CLcom/samsung/wifi/x/android/hardware/wifi/NanStatus;I)V
    .locals 0

    .line 1
    return-void
.end method

.method public notifyInitiateDataPathResponse(CLcom/samsung/wifi/x/android/hardware/wifi/NanStatus;I)V
    .locals 0

    .line 1
    return-void
.end method

.method public notifyInitiatePairingResponse(CLcom/samsung/wifi/x/android/hardware/wifi/NanStatus;I)V
    .locals 0

    .line 1
    return-void
.end method

.method public notifyRespondToBootstrappingIndicationResponse(CLcom/samsung/wifi/x/android/hardware/wifi/NanStatus;)V
    .locals 0

    .line 1
    return-void
.end method

.method public notifyRespondToDataPathIndicationResponse(CLcom/samsung/wifi/x/android/hardware/wifi/NanStatus;)V
    .locals 0

    .line 1
    return-void
.end method

.method public notifyRespondToPairingIndicationResponse(CLcom/samsung/wifi/x/android/hardware/wifi/NanStatus;)V
    .locals 0

    .line 1
    return-void
.end method

.method public notifyResumeResponse(CLcom/samsung/wifi/x/android/hardware/wifi/NanStatus;)V
    .locals 0

    .line 1
    return-void
.end method

.method public notifyStartPublishResponse(CLcom/samsung/wifi/x/android/hardware/wifi/NanStatus;B)V
    .locals 0

    .line 1
    return-void
.end method

.method public notifyStartSubscribeResponse(CLcom/samsung/wifi/x/android/hardware/wifi/NanStatus;B)V
    .locals 0

    .line 1
    return-void
.end method

.method public notifyStopPublishResponse(CLcom/samsung/wifi/x/android/hardware/wifi/NanStatus;)V
    .locals 0

    .line 1
    return-void
.end method

.method public notifyStopSubscribeResponse(CLcom/samsung/wifi/x/android/hardware/wifi/NanStatus;)V
    .locals 0

    .line 1
    return-void
.end method

.method public notifySuspendResponse(CLcom/samsung/wifi/x/android/hardware/wifi/NanStatus;)V
    .locals 0

    .line 1
    return-void
.end method

.method public notifyTerminateDataPathResponse(CLcom/samsung/wifi/x/android/hardware/wifi/NanStatus;)V
    .locals 0

    .line 1
    return-void
.end method

.method public notifyTerminatePairingResponse(CLcom/samsung/wifi/x/android/hardware/wifi/NanStatus;)V
    .locals 0

    .line 1
    return-void
.end method

.method public notifyTransmitFollowupResponse(CLcom/samsung/wifi/x/android/hardware/wifi/NanStatus;)V
    .locals 0

    .line 1
    return-void
.end method
