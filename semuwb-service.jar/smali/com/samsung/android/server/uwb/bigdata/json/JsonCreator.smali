.class public Lcom/samsung/android/server/uwb/bigdata/json/JsonCreator;
.super Ljava/lang/Object;
.source "JsonCreator.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createParamData(IIIII)Lorg/json/JSONObject;
    .locals 3
    .param p0, "prf"    # I
    .param p1, "stsUsage"    # I
    .param p2, "roundUsage"    # I
    .param p3, "scheduledMode"    # I
    .param p4, "channelNum"    # I

    .line 32
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 34
    .local v0, "param":Lorg/json/JSONObject;
    :try_start_0
    const-string v1, "PRF"

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 35
    const-string v1, "STS"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 36
    const-string v1, "USG"

    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 37
    const-string v1, "SCH"

    invoke-virtual {v0, v1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 38
    const-string v1, "CHN"

    invoke-virtual {v0, v1, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 41
    nop

    .line 42
    return-object v0

    .line 39
    :catch_0
    move-exception v1

    .line 40
    .local v1, "e":Lorg/json/JSONException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public static createParamData(Lcom/samsung/android/server/uwb/SamsungUwbSessionManager$UwbSession;)Lorg/json/JSONObject;
    .locals 3
    .param p0, "uwbSessionInfo"    # Lcom/samsung/android/server/uwb/SamsungUwbSessionManager$UwbSession;

    .line 17
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 19
    .local v0, "param":Lorg/json/JSONObject;
    :try_start_0
    const-string v1, "PRF"

    invoke-virtual {p0}, Lcom/samsung/android/server/uwb/SamsungUwbSessionManager$UwbSession;->getPrfMode()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 20
    const-string v1, "STS"

    invoke-virtual {p0}, Lcom/samsung/android/server/uwb/SamsungUwbSessionManager$UwbSession;->getStsUsage()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 21
    const-string v1, "USG"

    invoke-virtual {p0}, Lcom/samsung/android/server/uwb/SamsungUwbSessionManager$UwbSession;->getRoundUsage()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 22
    const-string v1, "SCH"

    invoke-virtual {p0}, Lcom/samsung/android/server/uwb/SamsungUwbSessionManager$UwbSession;->getScheduledMode()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 23
    const-string v1, "CHN"

    invoke-virtual {p0}, Lcom/samsung/android/server/uwb/SamsungUwbSessionManager$UwbSession;->getChannelNumber()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    nop

    .line 27
    return-object v0

    .line 24
    :catch_0
    move-exception v1

    .line 25
    .local v1, "e":Lorg/json/JSONException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method
