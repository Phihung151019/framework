.class public Lcom/samsung/android/server/uwb/bigdata/creator/LogMsgCreator;
.super Ljava/lang/Object;
.source "LogMsgCreator.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createCrashMsg(ILjava/lang/String;)Lcom/samsung/android/server/uwb/bigdata/LogMessage$Builder;
    .locals 3
    .param p1, "reasonCode"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .line 35
    invoke-static {}, Lcom/samsung/android/server/uwb/bigdata/LogMessage;->createBuilder()Lcom/samsung/android/server/uwb/bigdata/LogMessage$Builder;

    move-result-object v0

    .line 36
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/uwb/bigdata/LogMessage$Builder;->setType(I)Lcom/samsung/android/server/uwb/bigdata/LogMessage$Builder;

    move-result-object v0

    .line 37
    const-string v1, "FEATURE"

    const-string v2, "UWER"

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/server/uwb/bigdata/LogMessage$Builder;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/server/uwb/bigdata/LogMessage$Builder;

    move-result-object v0

    .line 38
    const-string v1, "ETYP"

    const-string v2, "UW_CRS"

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/server/uwb/bigdata/LogMessage$Builder;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/server/uwb/bigdata/LogMessage$Builder;

    move-result-object v0

    .line 39
    const-string v1, "UW_PKG"

    invoke-virtual {v0, v1, p2}, Lcom/samsung/android/server/uwb/bigdata/LogMessage$Builder;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/server/uwb/bigdata/LogMessage$Builder;

    move-result-object v0

    .line 35
    return-object v0
.end method

.method public createInitFailMsg(ILjava/lang/String;)Lcom/samsung/android/server/uwb/bigdata/LogMessage$Builder;
    .locals 3
    .param p1, "reasonCode"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .line 48
    invoke-static {}, Lcom/samsung/android/server/uwb/bigdata/LogMessage;->createBuilder()Lcom/samsung/android/server/uwb/bigdata/LogMessage$Builder;

    move-result-object v0

    .line 49
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/uwb/bigdata/LogMessage$Builder;->setType(I)Lcom/samsung/android/server/uwb/bigdata/LogMessage$Builder;

    move-result-object v0

    .line 50
    const-string v1, "FEATURE"

    const-string v2, "UWER"

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/server/uwb/bigdata/LogMessage$Builder;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/server/uwb/bigdata/LogMessage$Builder;

    move-result-object v0

    .line 51
    const-string v1, "ETYP"

    const-string v2, "UW_INT"

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/server/uwb/bigdata/LogMessage$Builder;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/server/uwb/bigdata/LogMessage$Builder;

    move-result-object v0

    .line 52
    const-string v1, "UW_PKG"

    invoke-virtual {v0, v1, p2}, Lcom/samsung/android/server/uwb/bigdata/LogMessage$Builder;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/server/uwb/bigdata/LogMessage$Builder;

    move-result-object v0

    .line 48
    return-object v0
.end method

.method public createMaxSessionParamLogMsg(I)Lcom/samsung/android/server/uwb/bigdata/LogMessage$Builder;
    .locals 3
    .param p1, "maxSessionCountForBigdata"    # I

    .line 27
    invoke-static {}, Lcom/samsung/android/server/uwb/bigdata/LogMessage;->createBuilder()Lcom/samsung/android/server/uwb/bigdata/LogMessage$Builder;

    move-result-object v0

    .line 28
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/uwb/bigdata/LogMessage$Builder;->setType(I)Lcom/samsung/android/server/uwb/bigdata/LogMessage$Builder;

    move-result-object v0

    .line 29
    const-string v1, "FEATURE"

    const-string v2, "UWST"

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/server/uwb/bigdata/LogMessage$Builder;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/server/uwb/bigdata/LogMessage$Builder;

    move-result-object v0

    .line 30
    const-string v1, "UW_CNT"

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/server/uwb/bigdata/LogMessage$Builder;->put(Ljava/lang/String;I)Lcom/samsung/android/server/uwb/bigdata/LogMessage$Builder;

    move-result-object v0

    .line 27
    return-object v0
.end method

.method public createSessionMsg(ILjava/lang/String;)Lcom/samsung/android/server/uwb/bigdata/LogMessage$Builder;
    .locals 3
    .param p1, "reasonCode"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .line 56
    invoke-static {}, Lcom/samsung/android/server/uwb/bigdata/LogMessage;->createBuilder()Lcom/samsung/android/server/uwb/bigdata/LogMessage$Builder;

    move-result-object v0

    .line 57
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/uwb/bigdata/LogMessage$Builder;->setType(I)Lcom/samsung/android/server/uwb/bigdata/LogMessage$Builder;

    move-result-object v0

    .line 58
    const-string v1, "FEATURE"

    const-string v2, "UWER"

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/server/uwb/bigdata/LogMessage$Builder;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/server/uwb/bigdata/LogMessage$Builder;

    move-result-object v0

    .line 59
    const-string v1, "ETYP"

    const-string v2, "UW_SSN"

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/server/uwb/bigdata/LogMessage$Builder;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/server/uwb/bigdata/LogMessage$Builder;

    move-result-object v0

    .line 60
    const-string v1, "UW_PKG"

    invoke-virtual {v0, v1, p2}, Lcom/samsung/android/server/uwb/bigdata/LogMessage$Builder;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/server/uwb/bigdata/LogMessage$Builder;

    move-result-object v0

    .line 63
    const-string v1, "ERSN"

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/server/uwb/bigdata/LogMessage$Builder;->put(Ljava/lang/String;I)Lcom/samsung/android/server/uwb/bigdata/LogMessage$Builder;

    move-result-object v0

    .line 56
    return-object v0
.end method

.method public createUsageParamLogMsg(Lcom/samsung/android/server/uwb/SamsungUwbSessionManager$UwbSession;Lcom/samsung/android/server/uwb/bigdata/item/Item;)Lcom/samsung/android/server/uwb/bigdata/LogMessage$Builder;
    .locals 5
    .param p1, "uwbSessionInfo"    # Lcom/samsung/android/server/uwb/SamsungUwbSessionManager$UwbSession;
    .param p2, "bigdataItem"    # Lcom/samsung/android/server/uwb/bigdata/item/Item;

    .line 12
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p2}, Lcom/samsung/android/server/uwb/bigdata/item/Item;->getRangingStartTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    long-to-int v0, v0

    int-to-long v0, v0

    .line 14
    .local v0, "rangingTimeResult":J
    invoke-static {}, Lcom/samsung/android/server/uwb/bigdata/LogMessage;->createBuilder()Lcom/samsung/android/server/uwb/bigdata/LogMessage$Builder;

    move-result-object v2

    .line 15
    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/samsung/android/server/uwb/bigdata/LogMessage$Builder;->setType(I)Lcom/samsung/android/server/uwb/bigdata/LogMessage$Builder;

    move-result-object v2

    .line 16
    const-string v3, "FEATURE"

    const-string v4, "UWIN"

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/server/uwb/bigdata/LogMessage$Builder;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/server/uwb/bigdata/LogMessage$Builder;

    move-result-object v2

    .line 17
    invoke-virtual {p1}, Lcom/samsung/android/server/uwb/SamsungUwbSessionManager$UwbSession;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "UW_PKG"

    invoke-virtual {v2, v4, v3}, Lcom/samsung/android/server/uwb/bigdata/LogMessage$Builder;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/server/uwb/bigdata/LogMessage$Builder;

    move-result-object v2

    .line 18
    invoke-virtual {p1}, Lcom/samsung/android/server/uwb/SamsungUwbSessionManager$UwbSession;->getProtocolName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "UW_TYP"

    invoke-virtual {v2, v4, v3}, Lcom/samsung/android/server/uwb/bigdata/LogMessage$Builder;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/server/uwb/bigdata/LogMessage$Builder;

    move-result-object v2

    .line 19
    invoke-virtual {p1}, Lcom/samsung/android/server/uwb/SamsungUwbSessionManager$UwbSession;->getRangingInterval()I

    move-result v3

    const-string v4, "UW_ITV"

    invoke-virtual {v2, v4, v3}, Lcom/samsung/android/server/uwb/bigdata/LogMessage$Builder;->put(Ljava/lang/String;I)Lcom/samsung/android/server/uwb/bigdata/LogMessage$Builder;

    move-result-object v2

    .line 20
    invoke-virtual {p1}, Lcom/samsung/android/server/uwb/SamsungUwbSessionManager$UwbSession;->getSlotDuration()I

    move-result v3

    const-string v4, "UW_SLD"

    invoke-virtual {v2, v4, v3}, Lcom/samsung/android/server/uwb/bigdata/LogMessage$Builder;->put(Ljava/lang/String;I)Lcom/samsung/android/server/uwb/bigdata/LogMessage$Builder;

    move-result-object v2

    .line 21
    invoke-virtual {p2}, Lcom/samsung/android/server/uwb/bigdata/item/Item;->getJsonParam()Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "UW_PAM"

    invoke-virtual {v2, v4, v3}, Lcom/samsung/android/server/uwb/bigdata/LogMessage$Builder;->put(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/samsung/android/server/uwb/bigdata/LogMessage$Builder;

    move-result-object v2

    .line 22
    const-string v3, "UW_TIM"

    invoke-virtual {v2, v3, v0, v1}, Lcom/samsung/android/server/uwb/bigdata/LogMessage$Builder;->put(Ljava/lang/String;J)Lcom/samsung/android/server/uwb/bigdata/LogMessage$Builder;

    move-result-object v2

    .line 14
    return-object v2
.end method
