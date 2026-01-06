.class public Lcom/samsung/android/server/wifi/aware/SemWifiNanIfaceCallbackHidlImpl;
.super Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiNanIfaceEventCallback$Stub;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# static fields
.field private static final TAG:Ljava/lang/String; = "SemWifiNanIfaceCallbackHidlImpl"


# instance fields
.field private mSemWifiNanIface:Lcom/samsung/android/server/wifi/aware/SemWifiNanIfaceHidlImpl;


# direct methods
.method public constructor <init>(Lcom/samsung/android/server/wifi/aware/SemWifiNanIfaceHidlImpl;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiNanIfaceEventCallback$Stub;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/samsung/android/server/wifi/aware/SemWifiNanIfaceCallbackHidlImpl;->mSemWifiNanIface:Lcom/samsung/android/server/wifi/aware/SemWifiNanIfaceHidlImpl;

    .line 5
    .line 6
    return-void
.end method

.method private checkFrameworkCallback()Z
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/aware/SemWifiNanIfaceCallbackHidlImpl;->mSemWifiNanIface:Lcom/samsung/android/server/wifi/aware/SemWifiNanIfaceHidlImpl;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    const-string v1, "SemWifiNanIfaceCallbackHidlImpl"

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
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/aware/SemWifiNanIfaceHidlImpl;->getFrameworkCallback()Lcom/samsung/android/server/wifi/aware/SemWifiNanIface$Callback;

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

.method private convertArrayListToNativeByteArray(Ljava/util/ArrayList;)[B
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;)[B"
        }
    .end annotation

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    new-array p0, p0, [B

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-ge v0, v1, :cond_1

    .line 17
    .line 18
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    check-cast v1, Ljava/lang/Byte;

    .line 23
    .line 24
    invoke-virtual {v1}, Ljava/lang/Byte;->byteValue()B

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    aput-byte v1, p0, v0

    .line 29
    .line 30
    add-int/lit8 v0, v0, 0x1

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_1
    return-object p0
.end method

.method private convertHalChannelInfo_1_2(Ljava/util/List;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/NanDataPathChannelInfo;",
            ">;)",
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
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-eqz v1, :cond_1

    .line 19
    .line 20
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    check-cast v1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/NanDataPathChannelInfo;

    .line 25
    .line 26
    new-instance v2, Landroid/net/wifi/aware/WifiAwareChannelInfo;

    .line 27
    .line 28
    iget v3, v1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/NanDataPathChannelInfo;->channelFreq:I

    .line 29
    .line 30
    iget v4, v1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/NanDataPathChannelInfo;->channelBandwidth:I

    .line 31
    .line 32
    invoke-direct {p0, v4}, Lcom/samsung/android/server/wifi/aware/SemWifiNanIfaceCallbackHidlImpl;->getChannelBandwidthFromHal(I)I

    .line 33
    .line 34
    .line 35
    move-result v4

    .line 36
    iget v1, v1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/NanDataPathChannelInfo;->numSpatialStreams:I

    .line 37
    .line 38
    invoke-direct {v2, v3, v4, v1}, Landroid/net/wifi/aware/WifiAwareChannelInfo;-><init>(III)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_1
    return-object v0
.end method

.method private convertHalChannelInfo_1_6(Ljava/util/List;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanDataPathChannelInfo;",
            ">;)",
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
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-eqz v1, :cond_1

    .line 19
    .line 20
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    check-cast v1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanDataPathChannelInfo;

    .line 25
    .line 26
    new-instance v2, Landroid/net/wifi/aware/WifiAwareChannelInfo;

    .line 27
    .line 28
    iget v3, v1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanDataPathChannelInfo;->channelFreq:I

    .line 29
    .line 30
    iget v4, v1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanDataPathChannelInfo;->channelBandwidth:I

    .line 31
    .line 32
    invoke-direct {p0, v4}, Lcom/samsung/android/server/wifi/aware/SemWifiNanIfaceCallbackHidlImpl;->getChannelBandwidthFromHal(I)I

    .line 33
    .line 34
    .line 35
    move-result v4

    .line 36
    iget v1, v1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanDataPathChannelInfo;->numSpatialStreams:I

    .line 37
    .line 38
    invoke-direct {v2, v3, v4, v1}, Landroid/net/wifi/aware/WifiAwareChannelInfo;-><init>(III)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
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

.method private static statusString(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiNanStatus;)Ljava/lang/String;
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
    iget v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiNanStatus;->status:I

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
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiNanStatus;->description:Ljava/lang/String;

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
.method public eventClusterEvent(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanClusterEventInd;)V
    .locals 0

    .line 1
    return-void
.end method

.method public eventDataPathConfirm(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDataPathConfirmInd;)V
    .locals 8

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/aware/SemWifiNanIfaceCallbackHidlImpl;->checkFrameworkCallback()Z

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
    const-string v1, "onDataPathConfirm: ndpInstanceId="

    .line 11
    .line 12
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    iget v1, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDataPathConfirmInd;->ndpInstanceId:I

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
    iget-object v1, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDataPathConfirmInd;->peerNdiMacAddr:[B

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
    iget-boolean v1, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDataPathConfirmInd;->dataPathSetupSuccess:Z

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
    iget-object v1, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDataPathConfirmInd;->status:Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiNanStatus;

    .line 54
    .line 55
    iget v1, v1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiNanStatus;->status:I

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
    iget-object v1, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDataPathConfirmInd;->appInfo:Ljava/util/ArrayList;

    .line 66
    .line 67
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 68
    .line 69
    .line 70
    move-result v1

    .line 71
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    const-string v1, "SemWifiNanIfaceCallbackHidlImpl"

    .line 79
    .line 80
    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    .line 82
    .line 83
    iget-object v0, p0, Lcom/samsung/android/server/wifi/aware/SemWifiNanIfaceCallbackHidlImpl;->mSemWifiNanIface:Lcom/samsung/android/server/wifi/aware/SemWifiNanIfaceHidlImpl;

    .line 84
    .line 85
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/aware/SemWifiNanIfaceHidlImpl;->getFrameworkCallback()Lcom/samsung/android/server/wifi/aware/SemWifiNanIface$Callback;

    .line 86
    .line 87
    .line 88
    move-result-object v1

    .line 89
    iget-object v0, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDataPathConfirmInd;->status:Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiNanStatus;

    .line 90
    .line 91
    iget v0, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiNanStatus;->status:I

    .line 92
    .line 93
    invoke-static {v0}, Lcom/samsung/android/server/wifi/aware/SemWifiNanIface$NanStatusCode;->fromHidl(I)I

    .line 94
    .line 95
    .line 96
    move-result v2

    .line 97
    iget v3, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDataPathConfirmInd;->ndpInstanceId:I

    .line 98
    .line 99
    iget-boolean v4, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDataPathConfirmInd;->dataPathSetupSuccess:Z

    .line 100
    .line 101
    iget-object v5, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDataPathConfirmInd;->peerNdiMacAddr:[B

    .line 102
    .line 103
    iget-object p1, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDataPathConfirmInd;->appInfo:Ljava/util/ArrayList;

    .line 104
    .line 105
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/aware/SemWifiNanIfaceCallbackHidlImpl;->convertArrayListToNativeByteArray(Ljava/util/ArrayList;)[B

    .line 106
    .line 107
    .line 108
    move-result-object v6

    .line 109
    const/4 v7, 0x0

    .line 110
    invoke-interface/range {v1 .. v7}, Lcom/samsung/android/server/wifi/aware/SemWifiNanIface$Callback;->eventDataPathConfirm(IIZ[B[BLjava/util/List;)V

    .line 111
    .line 112
    .line 113
    return-void
.end method

.method public eventDataPathConfirm_1_2(Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/NanDataPathConfirmInd;)V
    .locals 8

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/aware/SemWifiNanIfaceCallbackHidlImpl;->checkFrameworkCallback()Z

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
    const-string v1, "eventDataPathConfirm_1_2: ndpInstanceId="

    .line 11
    .line 12
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    iget-object v1, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/NanDataPathConfirmInd;->V1_0:Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDataPathConfirmInd;

    .line 16
    .line 17
    iget v1, v1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDataPathConfirmInd;->ndpInstanceId:I

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    const-string v1, ", peerNdiMacAddr="

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    iget-object v1, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/NanDataPathConfirmInd;->V1_0:Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDataPathConfirmInd;

    .line 28
    .line 29
    iget-object v1, v1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDataPathConfirmInd;->peerNdiMacAddr:[B

    .line 30
    .line 31
    invoke-static {v1}, Landroid/net/wifi/util/HexEncoding;->encode([B)[C

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-static {v1}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    const-string v1, ", dataPathSetupSuccess="

    .line 43
    .line 44
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    iget-object v1, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/NanDataPathConfirmInd;->V1_0:Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDataPathConfirmInd;

    .line 48
    .line 49
    iget-boolean v1, v1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDataPathConfirmInd;->dataPathSetupSuccess:Z

    .line 50
    .line 51
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    const-string v1, ", reason="

    .line 55
    .line 56
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    iget-object v1, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/NanDataPathConfirmInd;->V1_0:Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDataPathConfirmInd;

    .line 60
    .line 61
    iget-object v1, v1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDataPathConfirmInd;->status:Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiNanStatus;

    .line 62
    .line 63
    iget v1, v1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiNanStatus;->status:I

    .line 64
    .line 65
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    const-string v1, ", appInfo.size()="

    .line 69
    .line 70
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    iget-object v1, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/NanDataPathConfirmInd;->V1_0:Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDataPathConfirmInd;

    .line 74
    .line 75
    iget-object v1, v1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDataPathConfirmInd;->appInfo:Ljava/util/ArrayList;

    .line 76
    .line 77
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 78
    .line 79
    .line 80
    move-result v1

    .line 81
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    const-string v1, ", channelInfo"

    .line 85
    .line 86
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    iget-object v1, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/NanDataPathConfirmInd;->channelInfo:Ljava/util/ArrayList;

    .line 90
    .line 91
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    const-string v1, "SemWifiNanIfaceCallbackHidlImpl"

    .line 99
    .line 100
    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    .line 102
    .line 103
    iget-object v0, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/NanDataPathConfirmInd;->channelInfo:Ljava/util/ArrayList;

    .line 104
    .line 105
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/aware/SemWifiNanIfaceCallbackHidlImpl;->convertHalChannelInfo_1_2(Ljava/util/List;)Ljava/util/List;

    .line 106
    .line 107
    .line 108
    move-result-object v7

    .line 109
    iget-object v0, p0, Lcom/samsung/android/server/wifi/aware/SemWifiNanIfaceCallbackHidlImpl;->mSemWifiNanIface:Lcom/samsung/android/server/wifi/aware/SemWifiNanIfaceHidlImpl;

    .line 110
    .line 111
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/aware/SemWifiNanIfaceHidlImpl;->getFrameworkCallback()Lcom/samsung/android/server/wifi/aware/SemWifiNanIface$Callback;

    .line 112
    .line 113
    .line 114
    move-result-object v1

    .line 115
    iget-object v0, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/NanDataPathConfirmInd;->V1_0:Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDataPathConfirmInd;

    .line 116
    .line 117
    iget-object v0, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDataPathConfirmInd;->status:Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiNanStatus;

    .line 118
    .line 119
    iget v0, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiNanStatus;->status:I

    .line 120
    .line 121
    invoke-static {v0}, Lcom/samsung/android/server/wifi/aware/SemWifiNanIface$NanStatusCode;->fromHidl(I)I

    .line 122
    .line 123
    .line 124
    move-result v2

    .line 125
    iget-object p1, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/NanDataPathConfirmInd;->V1_0:Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDataPathConfirmInd;

    .line 126
    .line 127
    iget v3, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDataPathConfirmInd;->ndpInstanceId:I

    .line 128
    .line 129
    iget-boolean v4, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDataPathConfirmInd;->dataPathSetupSuccess:Z

    .line 130
    .line 131
    iget-object v5, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDataPathConfirmInd;->peerNdiMacAddr:[B

    .line 132
    .line 133
    iget-object p1, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDataPathConfirmInd;->appInfo:Ljava/util/ArrayList;

    .line 134
    .line 135
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/aware/SemWifiNanIfaceCallbackHidlImpl;->convertArrayListToNativeByteArray(Ljava/util/ArrayList;)[B

    .line 136
    .line 137
    .line 138
    move-result-object v6

    .line 139
    invoke-interface/range {v1 .. v7}, Lcom/samsung/android/server/wifi/aware/SemWifiNanIface$Callback;->eventDataPathConfirm(IIZ[B[BLjava/util/List;)V

    .line 140
    .line 141
    .line 142
    return-void
.end method

.method public eventDataPathConfirm_1_6(Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanDataPathConfirmInd;)V
    .locals 8

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/aware/SemWifiNanIfaceCallbackHidlImpl;->checkFrameworkCallback()Z

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
    const-string v1, "eventDataPathConfirm_1_6: ndpInstanceId="

    .line 11
    .line 12
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    iget-object v1, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanDataPathConfirmInd;->V1_0:Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDataPathConfirmInd;

    .line 16
    .line 17
    iget v1, v1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDataPathConfirmInd;->ndpInstanceId:I

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    const-string v1, ", peerNdiMacAddr="

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    iget-object v1, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanDataPathConfirmInd;->V1_0:Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDataPathConfirmInd;

    .line 28
    .line 29
    iget-object v1, v1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDataPathConfirmInd;->peerNdiMacAddr:[B

    .line 30
    .line 31
    invoke-static {v1}, Landroid/net/wifi/util/HexEncoding;->encode([B)[C

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-static {v1}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    const-string v1, ", dataPathSetupSuccess="

    .line 43
    .line 44
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    iget-object v1, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanDataPathConfirmInd;->V1_0:Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDataPathConfirmInd;

    .line 48
    .line 49
    iget-boolean v1, v1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDataPathConfirmInd;->dataPathSetupSuccess:Z

    .line 50
    .line 51
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    const-string v1, ", reason="

    .line 55
    .line 56
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    iget-object v1, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanDataPathConfirmInd;->V1_0:Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDataPathConfirmInd;

    .line 60
    .line 61
    iget-object v1, v1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDataPathConfirmInd;->status:Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiNanStatus;

    .line 62
    .line 63
    iget v1, v1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiNanStatus;->status:I

    .line 64
    .line 65
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    const-string v1, ", appInfo.size()="

    .line 69
    .line 70
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    iget-object v1, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanDataPathConfirmInd;->V1_0:Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDataPathConfirmInd;

    .line 74
    .line 75
    iget-object v1, v1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDataPathConfirmInd;->appInfo:Ljava/util/ArrayList;

    .line 76
    .line 77
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 78
    .line 79
    .line 80
    move-result v1

    .line 81
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    const-string v1, ", channelInfo"

    .line 85
    .line 86
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    iget-object v1, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanDataPathConfirmInd;->channelInfo:Ljava/util/ArrayList;

    .line 90
    .line 91
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    const-string v1, "SemWifiNanIfaceCallbackHidlImpl"

    .line 99
    .line 100
    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    .line 102
    .line 103
    iget-object v0, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanDataPathConfirmInd;->channelInfo:Ljava/util/ArrayList;

    .line 104
    .line 105
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/aware/SemWifiNanIfaceCallbackHidlImpl;->convertHalChannelInfo_1_6(Ljava/util/List;)Ljava/util/List;

    .line 106
    .line 107
    .line 108
    move-result-object v7

    .line 109
    iget-object v0, p0, Lcom/samsung/android/server/wifi/aware/SemWifiNanIfaceCallbackHidlImpl;->mSemWifiNanIface:Lcom/samsung/android/server/wifi/aware/SemWifiNanIfaceHidlImpl;

    .line 110
    .line 111
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/aware/SemWifiNanIfaceHidlImpl;->getFrameworkCallback()Lcom/samsung/android/server/wifi/aware/SemWifiNanIface$Callback;

    .line 112
    .line 113
    .line 114
    move-result-object v1

    .line 115
    iget-object v0, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanDataPathConfirmInd;->V1_0:Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDataPathConfirmInd;

    .line 116
    .line 117
    iget-object v0, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDataPathConfirmInd;->status:Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiNanStatus;

    .line 118
    .line 119
    iget v0, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiNanStatus;->status:I

    .line 120
    .line 121
    invoke-static {v0}, Lcom/samsung/android/server/wifi/aware/SemWifiNanIface$NanStatusCode;->fromHidl(I)I

    .line 122
    .line 123
    .line 124
    move-result v2

    .line 125
    iget-object p1, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanDataPathConfirmInd;->V1_0:Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDataPathConfirmInd;

    .line 126
    .line 127
    iget v3, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDataPathConfirmInd;->ndpInstanceId:I

    .line 128
    .line 129
    iget-boolean v4, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDataPathConfirmInd;->dataPathSetupSuccess:Z

    .line 130
    .line 131
    iget-object v5, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDataPathConfirmInd;->peerNdiMacAddr:[B

    .line 132
    .line 133
    iget-object p1, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDataPathConfirmInd;->appInfo:Ljava/util/ArrayList;

    .line 134
    .line 135
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/aware/SemWifiNanIfaceCallbackHidlImpl;->convertArrayListToNativeByteArray(Ljava/util/ArrayList;)[B

    .line 136
    .line 137
    .line 138
    move-result-object v6

    .line 139
    invoke-interface/range {v1 .. v7}, Lcom/samsung/android/server/wifi/aware/SemWifiNanIface$Callback;->eventDataPathConfirm(IIZ[B[BLjava/util/List;)V

    .line 140
    .line 141
    .line 142
    return-void
.end method

.method public eventDataPathRequest(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDataPathRequestInd;)V
    .locals 0

    .line 1
    return-void
.end method

.method public eventDataPathScheduleUpdate(Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/NanDataPathScheduleUpdateInd;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/aware/SemWifiNanIfaceCallbackHidlImpl;->checkFrameworkCallback()Z

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
    iget-object v1, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/NanDataPathScheduleUpdateInd;->peerDiscoveryAddress:[B

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
    iget-object v1, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/NanDataPathScheduleUpdateInd;->ndpInstanceIds:Ljava/util/ArrayList;

    .line 30
    .line 31
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    const-string v1, ", channelInfo="

    .line 35
    .line 36
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    iget-object v1, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/NanDataPathScheduleUpdateInd;->channelInfo:Ljava/util/ArrayList;

    .line 40
    .line 41
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    const-string v1, "SemWifiNanIfaceCallbackHidlImpl"

    .line 49
    .line 50
    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    .line 52
    .line 53
    iget-object v0, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/NanDataPathScheduleUpdateInd;->channelInfo:Ljava/util/ArrayList;

    .line 54
    .line 55
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/aware/SemWifiNanIfaceCallbackHidlImpl;->convertHalChannelInfo_1_2(Ljava/util/List;)Ljava/util/List;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    iget-object p0, p0, Lcom/samsung/android/server/wifi/aware/SemWifiNanIfaceCallbackHidlImpl;->mSemWifiNanIface:Lcom/samsung/android/server/wifi/aware/SemWifiNanIfaceHidlImpl;

    .line 60
    .line 61
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/aware/SemWifiNanIfaceHidlImpl;->getFrameworkCallback()Lcom/samsung/android/server/wifi/aware/SemWifiNanIface$Callback;

    .line 62
    .line 63
    .line 64
    move-result-object p0

    .line 65
    iget-object v1, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/NanDataPathScheduleUpdateInd;->peerDiscoveryAddress:[B

    .line 66
    .line 67
    iget-object p1, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/NanDataPathScheduleUpdateInd;->ndpInstanceIds:Ljava/util/ArrayList;

    .line 68
    .line 69
    invoke-interface {p0, v1, p1, v0}, Lcom/samsung/android/server/wifi/aware/SemWifiNanIface$Callback;->eventDataPathScheduleUpdate([BLjava/util/ArrayList;Ljava/util/List;)V

    .line 70
    .line 71
    .line 72
    return-void
.end method

.method public eventDataPathScheduleUpdate_1_6(Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanDataPathScheduleUpdateInd;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/aware/SemWifiNanIfaceCallbackHidlImpl;->checkFrameworkCallback()Z

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
    const-string v1, "eventDataPathScheduleUpdate_1_6: peerMac="

    .line 11
    .line 12
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    iget-object v1, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanDataPathScheduleUpdateInd;->peerDiscoveryAddress:[B

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
    iget-object v1, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanDataPathScheduleUpdateInd;->ndpInstanceIds:Ljava/util/ArrayList;

    .line 30
    .line 31
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    const-string v1, ", channelInfo="

    .line 35
    .line 36
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    iget-object v1, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanDataPathScheduleUpdateInd;->channelInfo:Ljava/util/ArrayList;

    .line 40
    .line 41
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    const-string v1, "SemWifiNanIfaceCallbackHidlImpl"

    .line 49
    .line 50
    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    .line 52
    .line 53
    iget-object v0, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanDataPathScheduleUpdateInd;->channelInfo:Ljava/util/ArrayList;

    .line 54
    .line 55
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/aware/SemWifiNanIfaceCallbackHidlImpl;->convertHalChannelInfo_1_6(Ljava/util/List;)Ljava/util/List;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    iget-object p0, p0, Lcom/samsung/android/server/wifi/aware/SemWifiNanIfaceCallbackHidlImpl;->mSemWifiNanIface:Lcom/samsung/android/server/wifi/aware/SemWifiNanIfaceHidlImpl;

    .line 60
    .line 61
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/aware/SemWifiNanIfaceHidlImpl;->getFrameworkCallback()Lcom/samsung/android/server/wifi/aware/SemWifiNanIface$Callback;

    .line 62
    .line 63
    .line 64
    move-result-object p0

    .line 65
    iget-object v1, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanDataPathScheduleUpdateInd;->peerDiscoveryAddress:[B

    .line 66
    .line 67
    iget-object p1, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanDataPathScheduleUpdateInd;->ndpInstanceIds:Ljava/util/ArrayList;

    .line 68
    .line 69
    invoke-interface {p0, v1, p1, v0}, Lcom/samsung/android/server/wifi/aware/SemWifiNanIface$Callback;->eventDataPathScheduleUpdate([BLjava/util/ArrayList;Ljava/util/List;)V

    .line 70
    .line 71
    .line 72
    return-void
.end method

.method public eventDataPathTerminated(I)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/aware/SemWifiNanIfaceCallbackHidlImpl;->checkFrameworkCallback()Z

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
    const-string v1, "SemWifiNanIfaceCallbackHidlImpl"

    .line 15
    .line 16
    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    .line 18
    .line 19
    iget-object p0, p0, Lcom/samsung/android/server/wifi/aware/SemWifiNanIfaceCallbackHidlImpl;->mSemWifiNanIface:Lcom/samsung/android/server/wifi/aware/SemWifiNanIfaceHidlImpl;

    .line 20
    .line 21
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/aware/SemWifiNanIfaceHidlImpl;->getFrameworkCallback()Lcom/samsung/android/server/wifi/aware/SemWifiNanIface$Callback;

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

.method public eventDisabled(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiNanStatus;)V
    .locals 0

    .line 1
    return-void
.end method

.method public eventFollowupReceived(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanFollowupReceivedInd;)V
    .locals 0

    .line 1
    return-void
.end method

.method public eventMatch(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanMatchInd;)V
    .locals 0

    .line 1
    return-void
.end method

.method public eventMatchExpired(BI)V
    .locals 0

    .line 1
    return-void
.end method

.method public eventMatch_1_6(Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanMatchInd;)V
    .locals 0

    .line 1
    return-void
.end method

.method public eventPublishTerminated(BLcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiNanStatus;)V
    .locals 0

    .line 1
    return-void
.end method

.method public eventSubscribeTerminated(BLcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiNanStatus;)V
    .locals 0

    .line 1
    return-void
.end method

.method public eventTransmitFollowup(SLcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiNanStatus;)V
    .locals 0

    .line 1
    return-void
.end method

.method public notifyCapabilitiesResponse(SLcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiNanStatus;Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanCapabilities;)V
    .locals 0

    .line 1
    return-void
.end method

.method public notifyCapabilitiesResponse_1_5(SLcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiNanStatus;Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/NanCapabilities;)V
    .locals 0

    .line 1
    return-void
.end method

.method public notifyCapabilitiesResponse_1_6(SLcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiNanStatus;Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanCapabilities;)V
    .locals 0

    .line 1
    return-void
.end method

.method public notifyConfigResponse(SLcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiNanStatus;)V
    .locals 0

    .line 1
    return-void
.end method

.method public notifyCreateDataInterfaceResponse(SLcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiNanStatus;)V
    .locals 0

    .line 1
    return-void
.end method

.method public notifyDeleteDataInterfaceResponse(SLcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiNanStatus;)V
    .locals 0

    .line 1
    return-void
.end method

.method public notifyDisableResponse(SLcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiNanStatus;)V
    .locals 0

    .line 1
    return-void
.end method

.method public notifyEnableResponse(SLcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiNanStatus;)V
    .locals 0

    .line 1
    return-void
.end method

.method public notifyInitiateDataPathResponse(SLcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiNanStatus;I)V
    .locals 0

    .line 1
    return-void
.end method

.method public notifyRespondToDataPathIndicationResponse(SLcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiNanStatus;)V
    .locals 0

    .line 1
    return-void
.end method

.method public notifyStartPublishResponse(SLcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiNanStatus;B)V
    .locals 0

    .line 1
    return-void
.end method

.method public notifyStartSubscribeResponse(SLcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiNanStatus;B)V
    .locals 0

    .line 1
    return-void
.end method

.method public notifyStopPublishResponse(SLcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiNanStatus;)V
    .locals 0

    .line 1
    return-void
.end method

.method public notifyStopSubscribeResponse(SLcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiNanStatus;)V
    .locals 0

    .line 1
    return-void
.end method

.method public notifyTerminateDataPathResponse(SLcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiNanStatus;)V
    .locals 0

    .line 1
    return-void
.end method

.method public notifyTransmitFollowupResponse(SLcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiNanStatus;)V
    .locals 0

    .line 1
    return-void
.end method
