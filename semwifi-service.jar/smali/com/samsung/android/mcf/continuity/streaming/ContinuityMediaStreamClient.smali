.class final Lcom/samsung/android/mcf/continuity/streaming/ContinuityMediaStreamClient;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# static fields
.field private static final STREAM_CONFIG_SUPPORTED_ARRAY:[I


# instance fields
.field private final mConfigAccepted:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mContinuityStreamingCommandManager:Lcom/samsung/android/mcf/continuity/impl/common/ContinuityRtpStreamingCommandManagerImpl;

.field private final mScheduledFutureMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final mStreamingArray:[Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const/16 v0, 0x9

    .line 2
    .line 3
    new-array v0, v0, [I

    .line 4
    .line 5
    fill-array-data v0, :array_0

    .line 6
    .line 7
    .line 8
    sput-object v0, Lcom/samsung/android/mcf/continuity/streaming/ContinuityMediaStreamClient;->STREAM_CONFIG_SUPPORTED_ARRAY:[I

    .line 9
    .line 10
    return-void

    .line 11
    :array_0
    .array-data 4
        0x1
        0x2
        0x3
        0x5
        0x8
        0x9
        0xa
        0xb
        0xc
    .end array-data
.end method

.method constructor <init>(Lcom/samsung/android/mcf/continuity/impl/common/ContinuityRtpStreamingCommandManagerImpl;)V
    .locals 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/HashMap;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 7
    .line 8
    .line 9
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 10
    .line 11
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object v0, p0, Lcom/samsung/android/mcf/continuity/streaming/ContinuityMediaStreamClient;->mScheduledFutureMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 15
    .line 16
    iput-object p1, p0, Lcom/samsung/android/mcf/continuity/streaming/ContinuityMediaStreamClient;->mContinuityStreamingCommandManager:Lcom/samsung/android/mcf/continuity/impl/common/ContinuityRtpStreamingCommandManagerImpl;

    .line 17
    .line 18
    new-instance p1, Ljava/util/ArrayList;

    .line 19
    .line 20
    const/16 v0, 0x9

    .line 21
    .line 22
    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 23
    .line 24
    .line 25
    iput-object p1, p0, Lcom/samsung/android/mcf/continuity/streaming/ContinuityMediaStreamClient;->mConfigAccepted:Ljava/util/ArrayList;

    .line 26
    .line 27
    const/16 p1, 0xd

    .line 28
    .line 29
    new-array p1, p1, [Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 30
    .line 31
    iput-object p1, p0, Lcom/samsung/android/mcf/continuity/streaming/ContinuityMediaStreamClient;->mStreamingArray:[Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 32
    .line 33
    sget-object p1, Lcom/samsung/android/mcf/continuity/streaming/ContinuityMediaStreamClient;->STREAM_CONFIG_SUPPORTED_ARRAY:[I

    .line 34
    .line 35
    const/4 v1, 0x0

    .line 36
    move v2, v1

    .line 37
    :goto_0
    if-ge v2, v0, :cond_0

    .line 38
    .line 39
    aget v3, p1, v2

    .line 40
    .line 41
    iget-object v4, p0, Lcom/samsung/android/mcf/continuity/streaming/ContinuityMediaStreamClient;->mStreamingArray:[Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 42
    .line 43
    new-instance v5, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 44
    .line 45
    invoke-direct {v5, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 46
    .line 47
    .line 48
    aput-object v5, v4, v3

    .line 49
    .line 50
    add-int/lit8 v2, v2, 0x1

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_0
    return-void
.end method


# virtual methods
.method final handleMessageReceived(Ljava/lang/String;Lorg/json/JSONObject;I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "in. Type - "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const-string v1, "ContinuityMediaStreamClient"

    .line 16
    .line 17
    const-string v2, "handleMessageReceived"

    .line 18
    .line 19
    invoke-static {v1, v2, v0}, Lcom/samsung/android/mcf/continuity/common/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    const-string v0, "registerMessageListener"

    .line 23
    .line 24
    const/4 v3, 0x1

    .line 25
    if-eq p3, v3, :cond_5

    .line 26
    .line 27
    const/4 v4, 0x3

    .line 28
    if-eq p3, v4, :cond_4

    .line 29
    .line 30
    const/4 v0, 0x5

    .line 31
    if-eq p3, v0, :cond_2

    .line 32
    .line 33
    const/4 p2, 0x6

    .line 34
    if-eq p3, p2, :cond_0

    .line 35
    .line 36
    const-string p0, "Not handled"

    .line 37
    .line 38
    invoke-static {v1, v2, p0}, Lcom/samsung/android/mcf/continuity/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    return-void

    .line 42
    :cond_0
    const-string p2, "in"

    .line 43
    .line 44
    const-string p3, "messageTypeClientInfoReq"

    .line 45
    .line 46
    invoke-static {v1, p3, p2}, Lcom/samsung/android/mcf/continuity/common/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    invoke-static {}, Lcom/samsung/android/mcf/continuity/streaming/ContinuityStreamingJSONHelper;->createJSONObjectClientInfo()Lorg/json/JSONObject;

    .line 50
    .line 51
    .line 52
    move-result-object p2

    .line 53
    if-nez p2, :cond_1

    .line 54
    .line 55
    const-string p0, "JSON Object null"

    .line 56
    .line 57
    invoke-static {v1, p3, p0}, Lcom/samsung/android/mcf/continuity/common/DLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    return-void

    .line 61
    :cond_1
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object p2

    .line 65
    sget-object p3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 66
    .line 67
    invoke-virtual {p2, p3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 68
    .line 69
    .line 70
    move-result-object p2

    .line 71
    new-instance p3, Lcom/samsung/android/mcf/continuity/streaming/ContinuityMediaStreamClient$2;

    .line 72
    .line 73
    invoke-direct {p3}, Lcom/samsung/android/mcf/continuity/api/ContinuitySessionMessageManager$SendMessageCallback;-><init>()V

    .line 74
    .line 75
    .line 76
    iget-object p0, p0, Lcom/samsung/android/mcf/continuity/streaming/ContinuityMediaStreamClient;->mContinuityStreamingCommandManager:Lcom/samsung/android/mcf/continuity/impl/common/ContinuityRtpStreamingCommandManagerImpl;

    .line 77
    .line 78
    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/mcf/continuity/impl/common/ContinuityRtpStreamingCommandManagerImpl;->sendCommand(Ljava/lang/String;[BLcom/samsung/android/mcf/continuity/api/ContinuitySessionMessageManager$SendMessageCallback;)V

    .line 79
    .line 80
    .line 81
    return-void

    .line 82
    :cond_2
    iget-object p3, p0, Lcom/samsung/android/mcf/continuity/streaming/ContinuityMediaStreamClient;->mScheduledFutureMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 83
    .line 84
    invoke-virtual {p3, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    .line 85
    .line 86
    .line 87
    move-result p3

    .line 88
    if-eqz p3, :cond_3

    .line 89
    .line 90
    iget-object p3, p0, Lcom/samsung/android/mcf/continuity/streaming/ContinuityMediaStreamClient;->mScheduledFutureMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 91
    .line 92
    invoke-virtual {p3, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object p3

    .line 96
    check-cast p3, Ljava/util/concurrent/ScheduledFuture;

    .line 97
    .line 98
    if-eqz p3, :cond_3

    .line 99
    .line 100
    invoke-interface {p3, v3}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 101
    .line 102
    .line 103
    :try_start_0
    const-string p3, "PORT"

    .line 104
    .line 105
    invoke-virtual {p2, p3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 106
    .line 107
    .line 108
    goto :goto_0

    .line 109
    :catch_0
    move-exception p3

    .line 110
    invoke-virtual {p3}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object p3

    .line 114
    const-string v0, "ContinuityStreamingJSONHelper"

    .line 115
    .line 116
    const-string v2, "getRtspServerPort"

    .line 117
    .line 118
    invoke-static {v0, v2, p3}, Lcom/samsung/android/mcf/continuity/common/DLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    :goto_0
    invoke-static {p2}, Lcom/samsung/android/mcf/continuity/streaming/ContinuityStreamingJSONHelper;->getMediaStreamCapability(Lorg/json/JSONObject;)V

    .line 122
    .line 123
    .line 124
    const-string p2, "messageTypeServerInfoResponse"

    .line 125
    .line 126
    const-string p3, "server ip failed to fetch"

    .line 127
    .line 128
    invoke-static {v1, p2, p3}, Lcom/samsung/android/mcf/continuity/common/DLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    new-instance p2, Lcom/samsung/android/mcf/continuity/streaming/ContinuityMediaStreamClient$$ExternalSyntheticLambda0;

    .line 132
    .line 133
    invoke-direct {p2, p0, p1}, Lcom/samsung/android/mcf/continuity/streaming/ContinuityMediaStreamClient$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/mcf/continuity/streaming/ContinuityMediaStreamClient;Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    invoke-static {p2}, Lcom/samsung/android/mcf/continuity/common/ExecutorUtil;->executeOnCallback(Ljava/lang/Runnable;)V

    .line 137
    .line 138
    .line 139
    :cond_3
    return-void

    .line 140
    :cond_4
    const-string p0, "SC"

    .line 141
    .line 142
    invoke-virtual {p2, p0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    .line 143
    .line 144
    .line 145
    move-result p0

    .line 146
    new-instance p1, Ljava/lang/StringBuilder;

    .line 147
    .line 148
    const-string p2, "status code not matched "

    .line 149
    .line 150
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 151
    .line 152
    .line 153
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 154
    .line 155
    .line 156
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object p0

    .line 160
    invoke-static {v1, v0, p0}, Lcom/samsung/android/mcf/continuity/common/DLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    .line 162
    .line 163
    return-void

    .line 164
    :cond_5
    invoke-static {p2}, Lcom/samsung/android/mcf/continuity/streaming/ContinuityStreamingJSONHelper;->getStreamInfoObject(Lorg/json/JSONObject;)V

    .line 165
    .line 166
    .line 167
    const-string p0, "Listener client not sent properly for callback"

    .line 168
    .line 169
    invoke-static {v1, v0, p0}, Lcom/samsung/android/mcf/continuity/common/DLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    .line 171
    .line 172
    return-void
.end method

.method public final stopStreamingClient()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mcf/continuity/streaming/ContinuityMediaStreamClient;->mConfigAccepted:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 4
    .line 5
    .line 6
    const-string v0, "in"

    .line 7
    .line 8
    const-string v1, "ContinuityMediaStreamClient"

    .line 9
    .line 10
    const-string v2, "resetStreamArray"

    .line 11
    .line 12
    invoke-static {v1, v2, v0}, Lcom/samsung/android/mcf/continuity/common/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    sget-object v0, Lcom/samsung/android/mcf/continuity/streaming/ContinuityMediaStreamClient;->STREAM_CONFIG_SUPPORTED_ARRAY:[I

    .line 16
    .line 17
    const/4 v1, 0x0

    .line 18
    move v2, v1

    .line 19
    :goto_0
    const/16 v3, 0x9

    .line 20
    .line 21
    if-ge v2, v3, :cond_0

    .line 22
    .line 23
    aget v3, v0, v2

    .line 24
    .line 25
    iget-object v4, p0, Lcom/samsung/android/mcf/continuity/streaming/ContinuityMediaStreamClient;->mStreamingArray:[Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 26
    .line 27
    aget-object v3, v4, v3

    .line 28
    .line 29
    invoke-virtual {v3, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 30
    .line 31
    .line 32
    add-int/lit8 v2, v2, 0x1

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/mcf/continuity/streaming/ContinuityMediaStreamClient;->mScheduledFutureMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 36
    .line 37
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 38
    .line 39
    .line 40
    return-void
.end method
