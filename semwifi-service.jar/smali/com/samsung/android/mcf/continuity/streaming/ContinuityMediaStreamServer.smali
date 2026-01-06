.class public final Lcom/samsung/android/mcf/continuity/streaming/ContinuityMediaStreamServer;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# instance fields
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

.field private mSecureStreaming:Lcom/samsung/android/mcf/continuity/streaming/SecureStreaming;

.field private final mStreamModeMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/samsung/android/mcf/continuity/impl/common/ContinuityRtpStreamingCommandManagerImpl;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/samsung/android/mcf/continuity/streaming/ContinuityMediaStreamServer;->mScheduledFutureMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 10
    .line 11
    iput-object p1, p0, Lcom/samsung/android/mcf/continuity/streaming/ContinuityMediaStreamServer;->mContinuityStreamingCommandManager:Lcom/samsung/android/mcf/continuity/impl/common/ContinuityRtpStreamingCommandManagerImpl;

    .line 12
    .line 13
    new-instance p1, Ljava/util/HashMap;

    .line 14
    .line 15
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 16
    .line 17
    .line 18
    new-instance p1, Ljava/util/HashMap;

    .line 19
    .line 20
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object p1, p0, Lcom/samsung/android/mcf/continuity/streaming/ContinuityMediaStreamServer;->mStreamModeMap:Ljava/util/HashMap;

    .line 24
    .line 25
    invoke-static {}, Lcom/samsung/android/mcf/continuity/streaming/SecureStreaming$SingletonHolder;->access$100()Lcom/samsung/android/mcf/continuity/streaming/SecureStreaming;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    iput-object p1, p0, Lcom/samsung/android/mcf/continuity/streaming/ContinuityMediaStreamServer;->mSecureStreaming:Lcom/samsung/android/mcf/continuity/streaming/SecureStreaming;

    .line 30
    .line 31
    return-void
.end method


# virtual methods
.method final handleMessageReceived(Ljava/lang/String;Lorg/json/JSONObject;I)V
    .locals 3
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
    const-string v1, "ContinuityMediaStreamServer"

    .line 16
    .line 17
    const-string v2, "handleMessageReceived"

    .line 18
    .line 19
    invoke-static {v1, v2, v0}, Lcom/samsung/android/mcf/continuity/common/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    const/4 v0, 0x2

    .line 23
    if-eq p3, v0, :cond_4

    .line 24
    .line 25
    const/4 v0, 0x4

    .line 26
    if-eq p3, v0, :cond_3

    .line 27
    .line 28
    const/4 v0, 0x7

    .line 29
    if-eq p3, v0, :cond_0

    .line 30
    .line 31
    const-string p0, "Not handled"

    .line 32
    .line 33
    invoke-static {v1, v2, p0}, Lcom/samsung/android/mcf/continuity/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    return-void

    .line 37
    :cond_0
    iget-object p3, p0, Lcom/samsung/android/mcf/continuity/streaming/ContinuityMediaStreamServer;->mScheduledFutureMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 38
    .line 39
    invoke-virtual {p3, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result p3

    .line 43
    if-eqz p3, :cond_5

    .line 44
    .line 45
    iget-object p3, p0, Lcom/samsung/android/mcf/continuity/streaming/ContinuityMediaStreamServer;->mScheduledFutureMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 46
    .line 47
    invoke-virtual {p3, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object p3

    .line 51
    check-cast p3, Ljava/util/concurrent/ScheduledFuture;

    .line 52
    .line 53
    if-eqz p3, :cond_5

    .line 54
    .line 55
    const/4 v0, 0x1

    .line 56
    invoke-interface {p3, v0}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 57
    .line 58
    .line 59
    invoke-static {p2}, Lcom/samsung/android/mcf/continuity/streaming/ContinuityStreamingJSONHelper;->getMediaStreamCapability(Lorg/json/JSONObject;)V

    .line 60
    .line 61
    .line 62
    const-string p3, "SECURE_STREAM_SUPPORT"

    .line 63
    .line 64
    invoke-virtual {p2, p3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 65
    .line 66
    .line 67
    move-result v0

    .line 68
    const/4 v2, 0x0

    .line 69
    if-eqz v0, :cond_2

    .line 70
    .line 71
    :try_start_0
    invoke-virtual {p2, p3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    .line 72
    .line 73
    .line 74
    move-result v0

    .line 75
    if-gez v0, :cond_1

    .line 76
    .line 77
    goto :goto_0

    .line 78
    :cond_1
    invoke-virtual {p2, p3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    .line 79
    .line 80
    .line 81
    move-result v2
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    goto :goto_0

    .line 83
    :catch_0
    move-exception p0

    .line 84
    new-instance p1, Ljava/lang/RuntimeException;

    .line 85
    .line 86
    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 87
    .line 88
    .line 89
    throw p1

    .line 90
    :cond_2
    :goto_0
    iget-object p0, p0, Lcom/samsung/android/mcf/continuity/streaming/ContinuityMediaStreamServer;->mSecureStreaming:Lcom/samsung/android/mcf/continuity/streaming/SecureStreaming;

    .line 91
    .line 92
    invoke-virtual {p0, v2, p1}, Lcom/samsung/android/mcf/continuity/streaming/SecureStreaming;->addSecureOption(ILjava/lang/String;)V

    .line 93
    .line 94
    .line 95
    const-string p0, "handleClientInfoResponseMsg"

    .line 96
    .line 97
    const-string p1, "mStreamStatusListenerServer not set properly"

    .line 98
    .line 99
    invoke-static {v1, p0, p1}, Lcom/samsung/android/mcf/continuity/common/DLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    return-void

    .line 103
    :cond_3
    const-string p0, "RTSP Server not started."

    .line 104
    .line 105
    invoke-static {v1, v2, p0}, Lcom/samsung/android/mcf/continuity/common/DLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    return-void

    .line 109
    :cond_4
    new-instance p3, Ljava/util/ArrayList;

    .line 110
    .line 111
    invoke-direct {p3, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 112
    .line 113
    .line 114
    :try_start_1
    const-string v0, "ENABLE_OPTION"

    .line 115
    .line 116
    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    .line 117
    .line 118
    .line 119
    move-result v0

    .line 120
    const-string v1, "ERROR_CODE"

    .line 121
    .line 122
    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    .line 123
    .line 124
    .line 125
    move-result p2
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 126
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 127
    .line 128
    .line 129
    move-result-object v0

    .line 130
    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 131
    .line 132
    .line 133
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 134
    .line 135
    .line 136
    move-result-object p2

    .line 137
    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 138
    .line 139
    .line 140
    goto :goto_1

    .line 141
    :catch_1
    move-exception p2

    .line 142
    invoke-virtual {p2}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object p2

    .line 146
    const-string p3, "ContinuityStreamingJSONHelper"

    .line 147
    .line 148
    const-string v0, "getEnableOptionDeclinedFromJSONObject"

    .line 149
    .line 150
    invoke-static {p3, v0, p2}, Lcom/samsung/android/mcf/continuity/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    .line 152
    .line 153
    const/4 p3, 0x0

    .line 154
    :goto_1
    new-instance p2, Lcom/samsung/android/mcf/continuity/streaming/ContinuityMediaStreamServer$$ExternalSyntheticLambda0;

    .line 155
    .line 156
    invoke-direct {p2, p0, p3, p1}, Lcom/samsung/android/mcf/continuity/streaming/ContinuityMediaStreamServer$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/mcf/continuity/streaming/ContinuityMediaStreamServer;Ljava/util/List;Ljava/lang/String;)V

    .line 157
    .line 158
    .line 159
    invoke-static {p2}, Lcom/samsung/android/mcf/continuity/common/ExecutorUtil;->executeOnCallback(Ljava/lang/Runnable;)V

    .line 160
    .line 161
    .line 162
    :cond_5
    return-void
.end method

.method final stopStreamServer()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mcf/continuity/streaming/ContinuityMediaStreamServer;->mStreamModeMap:Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lcom/samsung/android/mcf/continuity/streaming/ContinuityMediaStreamServer;->mSecureStreaming:Lcom/samsung/android/mcf/continuity/streaming/SecureStreaming;

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/samsung/android/mcf/continuity/streaming/SecureStreaming;->clear()V

    .line 9
    .line 10
    .line 11
    return-void
.end method
