.class final Lcom/samsung/android/mcf/continuity/streaming/ContinuityStreamingMessageListener;
.super Lcom/samsung/android/mcf/continuity/api/ContinuityMessageManager$MessageListener;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# instance fields
.field private final mContinuityMediaStreamClient:Lcom/samsung/android/mcf/continuity/streaming/ContinuityMediaStreamClient;

.field private final mContinuityMediaStreamServer:Lcom/samsung/android/mcf/continuity/streaming/ContinuityMediaStreamServer;


# direct methods
.method constructor <init>(Lcom/samsung/android/mcf/continuity/streaming/ContinuityMediaStreamServer;Lcom/samsung/android/mcf/continuity/streaming/ContinuityMediaStreamClient;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/mcf/continuity/api/ContinuityMessageManager$MessageListener;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/samsung/android/mcf/continuity/streaming/ContinuityStreamingMessageListener;->mContinuityMediaStreamServer:Lcom/samsung/android/mcf/continuity/streaming/ContinuityMediaStreamServer;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/samsung/android/mcf/continuity/streaming/ContinuityStreamingMessageListener;->mContinuityMediaStreamClient:Lcom/samsung/android/mcf/continuity/streaming/ContinuityMediaStreamClient;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onReceived(Ljava/lang/String;[B)V
    .locals 3

    .line 1
    const-string v0, "ContinuityStreamingMessageListener"

    .line 2
    .line 3
    new-instance v1, Ljava/lang/String;

    .line 4
    .line 5
    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 6
    .line 7
    invoke-direct {v1, p2, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 8
    .line 9
    .line 10
    :try_start_0
    new-instance p2, Lorg/json/JSONObject;

    .line 11
    .line 12
    invoke-direct {p2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    .line 13
    .line 14
    .line 15
    :try_start_1
    const-string v1, "TYPE"

    .line 16
    .line 17
    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    .line 18
    .line 19
    .line 20
    move-result v1
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 21
    goto :goto_0

    .line 22
    :catch_0
    const/4 v1, -0x1

    .line 23
    :goto_0
    packed-switch v1, :pswitch_data_0

    .line 24
    .line 25
    .line 26
    :try_start_2
    const-string p0, "handleMessageReceived"

    .line 27
    .line 28
    const-string p2, "Not handled"

    .line 29
    .line 30
    invoke-static {v0, p0, p2}, Lcom/samsung/android/mcf/continuity/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    goto :goto_2

    .line 34
    :catch_1
    move-exception p0

    .line 35
    goto :goto_1

    .line 36
    :pswitch_0
    iget-object p0, p0, Lcom/samsung/android/mcf/continuity/streaming/ContinuityStreamingMessageListener;->mContinuityMediaStreamServer:Lcom/samsung/android/mcf/continuity/streaming/ContinuityMediaStreamServer;

    .line 37
    .line 38
    invoke-virtual {p0, p1, p2, v1}, Lcom/samsung/android/mcf/continuity/streaming/ContinuityMediaStreamServer;->handleMessageReceived(Ljava/lang/String;Lorg/json/JSONObject;I)V

    .line 39
    .line 40
    .line 41
    goto :goto_2

    .line 42
    :pswitch_1
    iget-object p0, p0, Lcom/samsung/android/mcf/continuity/streaming/ContinuityStreamingMessageListener;->mContinuityMediaStreamClient:Lcom/samsung/android/mcf/continuity/streaming/ContinuityMediaStreamClient;

    .line 43
    .line 44
    invoke-virtual {p0, p1, p2, v1}, Lcom/samsung/android/mcf/continuity/streaming/ContinuityMediaStreamClient;->handleMessageReceived(Ljava/lang/String;Lorg/json/JSONObject;I)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    .line 45
    .line 46
    .line 47
    goto :goto_2

    .line 48
    :goto_1
    new-instance p2, Ljava/lang/StringBuilder;

    .line 49
    .line 50
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 51
    .line 52
    .line 53
    invoke-static {p1}, Lcom/samsung/android/mcf/continuity/common/DLog;->secureDeviceId(Ljava/lang/String;)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    const-string p1, " : "

    .line 61
    .line 62
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {p0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object p0

    .line 69
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object p0

    .line 76
    const-string p1, "onReceived"

    .line 77
    .line 78
    invoke-static {v0, p1, p0}, Lcom/samsung/android/mcf/continuity/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    :goto_2
    return-void

    .line 82
    nop

    .line 83
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
