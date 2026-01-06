.class public Lcom/samsung/android/server/wifi/aware/SemWifiAwareNativeCallback;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"

# interfaces
.implements Lcom/samsung/android/server/wifi/aware/SemWifiNanIface$Callback;


# static fields
.field private static final CB_EV_CLUSTER:I = 0x0

.field private static final CB_EV_DATA_PATH_CONFIRM:I = 0x9

.field private static final CB_EV_DATA_PATH_REQUEST:I = 0x8

.field private static final CB_EV_DATA_PATH_SCHED_UPDATE:I = 0xb

.field private static final CB_EV_DATA_PATH_TERMINATED:I = 0xa

.field private static final CB_EV_DISABLED:I = 0x1

.field private static final CB_EV_FOLLOWUP_RECEIVED:I = 0x6

.field private static final CB_EV_MATCH:I = 0x4

.field private static final CB_EV_MATCH_EXPIRED:I = 0x5

.field private static final CB_EV_PUBLISH_TERMINATED:I = 0x2

.field private static final CB_EV_SUBSCRIBE_TERMINATED:I = 0x3

.field private static final CB_EV_TRANSMIT_FOLLOWUP:I = 0x7

.field private static final TAG:Ljava/lang/String; = "WifiAwareNativeCallback"


# instance fields
.field private final mCallbackCounter:Landroid/util/SparseIntArray;

.field private final mChannelInfoPerNdp:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/List<",
            "Landroid/net/wifi/aware/WifiAwareChannelInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mSemWifiAwareStateManager:Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager;

.field private mVerboseLoggingEnabled:Z


# direct methods
.method public constructor <init>(Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/aware/SemWifiAwareNativeCallback;->mVerboseLoggingEnabled:Z

    .line 6
    .line 7
    new-instance v0, Landroid/util/SparseIntArray;

    .line 8
    .line 9
    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Lcom/samsung/android/server/wifi/aware/SemWifiAwareNativeCallback;->mCallbackCounter:Landroid/util/SparseIntArray;

    .line 13
    .line 14
    new-instance v0, Landroid/util/SparseArray;

    .line 15
    .line 16
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 17
    .line 18
    .line 19
    iput-object v0, p0, Lcom/samsung/android/server/wifi/aware/SemWifiAwareNativeCallback;->mChannelInfoPerNdp:Landroid/util/SparseArray;

    .line 20
    .line 21
    iput-object p1, p0, Lcom/samsung/android/server/wifi/aware/SemWifiAwareNativeCallback;->mSemWifiAwareStateManager:Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager;

    .line 22
    .line 23
    return-void
.end method

.method private convertChannelInfoToJsonString()Ljava/lang/String;
    .locals 8

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/server/wifi/aware/SemWifiAwareNativeCallback;->mChannelInfoPerNdp:Landroid/util/SparseArray;

    .line 8
    .line 9
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    if-ge v1, v2, :cond_1

    .line 14
    .line 15
    new-instance v2, Lorg/json/JSONArray;

    .line 16
    .line 17
    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 18
    .line 19
    .line 20
    iget-object v3, p0, Lcom/samsung/android/server/wifi/aware/SemWifiAwareNativeCallback;->mChannelInfoPerNdp:Landroid/util/SparseArray;

    .line 21
    .line 22
    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    check-cast v3, Ljava/util/List;

    .line 27
    .line 28
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 33
    .line 34
    .line 35
    move-result v4

    .line 36
    if-eqz v4, :cond_0

    .line 37
    .line 38
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v4

    .line 42
    check-cast v4, Landroid/net/wifi/aware/WifiAwareChannelInfo;

    .line 43
    .line 44
    new-instance v5, Lorg/json/JSONObject;

    .line 45
    .line 46
    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 47
    .line 48
    .line 49
    const-string v6, "channelFreq"

    .line 50
    .line 51
    invoke-virtual {v4}, Landroid/net/wifi/aware/WifiAwareChannelInfo;->getChannelFrequencyMhz()I

    .line 52
    .line 53
    .line 54
    move-result v7

    .line 55
    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 56
    .line 57
    .line 58
    const-string v6, "channelBandwidth"

    .line 59
    .line 60
    invoke-virtual {v4}, Landroid/net/wifi/aware/WifiAwareChannelInfo;->getChannelBandwidth()I

    .line 61
    .line 62
    .line 63
    move-result v7

    .line 64
    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 65
    .line 66
    .line 67
    const-string v6, "numSpatialStreams"

    .line 68
    .line 69
    invoke-virtual {v4}, Landroid/net/wifi/aware/WifiAwareChannelInfo;->getSpatialStreamCount()I

    .line 70
    .line 71
    .line 72
    move-result v4

    .line 73
    invoke-virtual {v5, v6, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v2, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 77
    .line 78
    .line 79
    goto :goto_1

    .line 80
    :catch_0
    move-exception p0

    .line 81
    goto :goto_2

    .line 82
    :cond_0
    iget-object v3, p0, Lcom/samsung/android/server/wifi/aware/SemWifiAwareNativeCallback;->mChannelInfoPerNdp:Landroid/util/SparseArray;

    .line 83
    .line 84
    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->keyAt(I)I

    .line 85
    .line 86
    .line 87
    move-result v3

    .line 88
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v3

    .line 92
    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    .line 94
    .line 95
    add-int/lit8 v1, v1, 0x1

    .line 96
    .line 97
    goto :goto_0

    .line 98
    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    .line 99
    .line 100
    const-string v2, "onCommand: get_channel_info e="

    .line 101
    .line 102
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object p0

    .line 112
    const-string v1, "WifiAwareNativeCallback"

    .line 113
    .line 114
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    .line 116
    .line 117
    :cond_1
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object p0

    .line 121
    return-object p0
.end method

.method private incrementCbCount(I)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/aware/SemWifiAwareNativeCallback;->mCallbackCounter:Landroid/util/SparseIntArray;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Landroid/util/SparseIntArray;->get(I)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    add-int/lit8 v0, v0, 0x1

    .line 8
    .line 9
    invoke-virtual {p0, p1, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    .line 1
    const-string p1, "SemWifiAwareNativeCallback:"

    .line 2
    .line 3
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance p1, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    const-string p3, "  mCallbackCounter: "

    .line 9
    .line 10
    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    iget-object p3, p0, Lcom/samsung/android/server/wifi/aware/SemWifiAwareNativeCallback;->mCallbackCounter:Landroid/util/SparseIntArray;

    .line 14
    .line 15
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    new-instance p1, Ljava/lang/StringBuilder;

    .line 26
    .line 27
    const-string p3, "  mChannelInfoPerNdp: "

    .line 28
    .line 29
    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    iget-object p0, p0, Lcom/samsung/android/server/wifi/aware/SemWifiAwareNativeCallback;->mChannelInfoPerNdp:Landroid/util/SparseArray;

    .line 33
    .line 34
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    return-void
.end method

.method public enableVerboseLogging(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/aware/SemWifiAwareNativeCallback;->mVerboseLoggingEnabled:Z

    .line 2
    .line 3
    return-void
.end method

.method public eventDataPathConfirm(IIZ[B[BLjava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIZ[B[B",
            "Ljava/util/List<",
            "Landroid/net/wifi/aware/WifiAwareChannelInfo;",
            ">;)V"
        }
    .end annotation

    .line 1
    const/16 v0, 0x9

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/aware/SemWifiAwareNativeCallback;->incrementCbCount(I)V

    .line 4
    .line 5
    .line 6
    if-eqz p6, :cond_0

    .line 7
    .line 8
    iget-object v0, p0, Lcom/samsung/android/server/wifi/aware/SemWifiAwareNativeCallback;->mChannelInfoPerNdp:Landroid/util/SparseArray;

    .line 9
    .line 10
    invoke-virtual {v0, p2, p6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/aware/SemWifiAwareNativeCallback;->mSemWifiAwareStateManager:Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager;

    .line 14
    .line 15
    move-object v1, p4

    .line 16
    move p4, p1

    .line 17
    move p1, p2

    .line 18
    move-object p2, v1

    .line 19
    invoke-virtual/range {p0 .. p6}, Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager;->onDataPathConfirmNotification(I[BZI[BLjava/util/List;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public eventDataPathScheduleUpdate([BLjava/util/ArrayList;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List<",
            "Landroid/net/wifi/aware/WifiAwareChannelInfo;",
            ">;)V"
        }
    .end annotation

    .line 1
    const/16 v0, 0xb

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/aware/SemWifiAwareNativeCallback;->incrementCbCount(I)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const/4 v1, 0x0

    .line 11
    :goto_0
    if-ge v1, v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    add-int/lit8 v1, v1, 0x1

    .line 18
    .line 19
    check-cast v2, Ljava/lang/Integer;

    .line 20
    .line 21
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    iget-object v3, p0, Lcom/samsung/android/server/wifi/aware/SemWifiAwareNativeCallback;->mChannelInfoPerNdp:Landroid/util/SparseArray;

    .line 26
    .line 27
    invoke-virtual {v3, v2, p3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/aware/SemWifiAwareNativeCallback;->mSemWifiAwareStateManager:Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager;

    .line 32
    .line 33
    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager;->onDataPathScheduleUpdateNotification([BLjava/util/ArrayList;Ljava/util/List;)V

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method public eventDataPathTerminated(I)V
    .locals 1

    .line 1
    const/16 v0, 0xa

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/aware/SemWifiAwareNativeCallback;->incrementCbCount(I)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/samsung/android/server/wifi/aware/SemWifiAwareNativeCallback;->mChannelInfoPerNdp:Landroid/util/SparseArray;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 9
    .line 10
    .line 11
    iget-object p0, p0, Lcom/samsung/android/server/wifi/aware/SemWifiAwareNativeCallback;->mSemWifiAwareStateManager:Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager;

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager;->onDataPathEndNotification(I)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method resetChannelInfo()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/aware/SemWifiAwareNativeCallback;->mChannelInfoPerNdp:Landroid/util/SparseArray;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/util/SparseArray;->clear()V

    .line 4
    .line 5
    .line 6
    return-void
.end method
