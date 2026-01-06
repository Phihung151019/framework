.class public Lcom/samsung/android/server/uwb/bigdata/BigdataManager;
.super Ljava/lang/Object;
.source "BigdataManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "UwbBigdataManager"


# instance fields
.field private DBG:Ljava/lang/Boolean;

.field private mContext:Landroid/content/Context;

.field private mLogCreator:Lcom/samsung/android/server/uwb/bigdata/creator/LogMsgCreator;

.field private mSessionCounter:Lcom/samsung/android/server/uwb/bigdata/SessionCounter;

.field private mSessionMap:Lcom/samsung/android/server/uwb/bigdata/item/SessionMap;

.field private mUwbDbManager:Lcom/samsung/android/server/uwb/bigdata/db/UwbDbManager;

.field private final mUwbLogSender:Lcom/samsung/android/server/uwb/bigdata/SurveyLogSender;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/server/uwb/SamsungExtension;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "samsungExtension"    # Lcom/samsung/android/server/uwb/SamsungExtension;

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/server/uwb/bigdata/BigdataManager;->DBG:Ljava/lang/Boolean;

    .line 37
    iput-object p1, p0, Lcom/samsung/android/server/uwb/bigdata/BigdataManager;->mContext:Landroid/content/Context;

    .line 38
    new-instance v0, Lcom/samsung/android/server/uwb/bigdata/SurveyLogSender;

    iget-object v1, p0, Lcom/samsung/android/server/uwb/bigdata/BigdataManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/samsung/android/server/uwb/bigdata/SurveyLogSender;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/server/uwb/bigdata/BigdataManager;->mUwbLogSender:Lcom/samsung/android/server/uwb/bigdata/SurveyLogSender;

    .line 39
    iget-object v0, p0, Lcom/samsung/android/server/uwb/bigdata/BigdataManager;->mUwbLogSender:Lcom/samsung/android/server/uwb/bigdata/SurveyLogSender;

    new-instance v1, Lcom/samsung/android/server/uwb/bigdata/item/UwbDeviceInfoCallback;

    iget-object v2, p0, Lcom/samsung/android/server/uwb/bigdata/BigdataManager;->mContext:Landroid/content/Context;

    invoke-direct {v1, p2, v2}, Lcom/samsung/android/server/uwb/bigdata/item/UwbDeviceInfoCallback;-><init>(Lcom/samsung/android/server/uwb/SamsungExtension;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/uwb/bigdata/SurveyLogSender;->registerCallback(Lcom/samsung/android/server/uwb/bigdata/SurveyLogSender$Callback;)V

    .line 40
    new-instance v0, Lcom/samsung/android/server/uwb/bigdata/item/SessionMap;

    invoke-direct {v0}, Lcom/samsung/android/server/uwb/bigdata/item/SessionMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/uwb/bigdata/BigdataManager;->mSessionMap:Lcom/samsung/android/server/uwb/bigdata/item/SessionMap;

    .line 41
    new-instance v0, Lcom/samsung/android/server/uwb/bigdata/creator/LogMsgCreator;

    invoke-direct {v0}, Lcom/samsung/android/server/uwb/bigdata/creator/LogMsgCreator;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/uwb/bigdata/BigdataManager;->mLogCreator:Lcom/samsung/android/server/uwb/bigdata/creator/LogMsgCreator;

    .line 42
    new-instance v0, Lcom/samsung/android/server/uwb/bigdata/SessionCounter;

    invoke-direct {v0, p2}, Lcom/samsung/android/server/uwb/bigdata/SessionCounter;-><init>(Lcom/samsung/android/server/uwb/SamsungExtension;)V

    iput-object v0, p0, Lcom/samsung/android/server/uwb/bigdata/BigdataManager;->mSessionCounter:Lcom/samsung/android/server/uwb/bigdata/SessionCounter;

    .line 43
    new-instance v0, Lcom/samsung/android/server/uwb/bigdata/db/UwbDbManager;

    iget-object v1, p0, Lcom/samsung/android/server/uwb/bigdata/BigdataManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/samsung/android/server/uwb/bigdata/db/UwbDbManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/server/uwb/bigdata/BigdataManager;->mUwbDbManager:Lcom/samsung/android/server/uwb/bigdata/db/UwbDbManager;

    .line 44
    return-void
.end method

.method private checkingFeature(Lcom/samsung/android/server/uwb/SamsungUwbSessionManager$UwbSession;)Ljava/lang/String;
    .locals 3
    .param p1, "uwbSessionInfo"    # Lcom/samsung/android/server/uwb/SamsungUwbSessionManager$UwbSession;

    .line 180
    const-string v0, ""

    .line 181
    .local v0, "feature":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/samsung/android/server/uwb/SamsungUwbSessionManager$UwbSession;->getSessionState()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 182
    const-string v0, "UWST"

    goto :goto_0

    .line 183
    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/server/uwb/SamsungUwbSessionManager$UwbSession;->getSessionState()I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    .line 184
    invoke-virtual {p1}, Lcom/samsung/android/server/uwb/SamsungUwbSessionManager$UwbSession;->getSessionState()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 185
    :cond_1
    const-string v0, "UWIN"

    .line 187
    :cond_2
    :goto_0
    return-object v0
.end method

.method private isItemNull(Lcom/samsung/android/server/uwb/bigdata/item/Item;)Z
    .locals 1
    .param p1, "bigdataItem"    # Lcom/samsung/android/server/uwb/bigdata/item/Item;

    .line 195
    if-nez p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isNull()Z
    .locals 1

    .line 191
    iget-object v0, p0, Lcom/samsung/android/server/uwb/bigdata/BigdataManager;->mSessionMap:Lcom/samsung/android/server/uwb/bigdata/item/SessionMap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/server/uwb/bigdata/BigdataManager;->mUwbLogSender:Lcom/samsung/android/server/uwb/bigdata/SurveyLogSender;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/server/uwb/bigdata/BigdataManager;->mSessionMap:Lcom/samsung/android/server/uwb/bigdata/item/SessionMap;

    invoke-virtual {v0}, Lcom/samsung/android/server/uwb/bigdata/item/SessionMap;->getItemHashMap()Ljava/util/HashMap;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private isValidBigdata(Lcom/samsung/android/server/uwb/bigdata/item/Item;)Z
    .locals 4
    .param p1, "bigdataItem"    # Lcom/samsung/android/server/uwb/bigdata/item/Item;

    .line 199
    invoke-virtual {p1}, Lcom/samsung/android/server/uwb/bigdata/item/Item;->getRangingStartTime()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isValidBigdata(Ljava/lang/String;)Z
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .line 203
    const-string v0, "com.samsung.android.uwb"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 204
    const-string v0, "UwbBigdataManager"

    const-string v1, "not necessary"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    const/4 v0, 0x1

    return v0

    .line 207
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private removeSessionIdInHashMap(I)V
    .locals 2
    .param p1, "sessionID"    # I

    .line 172
    iget-object v0, p0, Lcom/samsung/android/server/uwb/bigdata/BigdataManager;->mSessionMap:Lcom/samsung/android/server/uwb/bigdata/item/SessionMap;

    invoke-virtual {v0}, Lcom/samsung/android/server/uwb/bigdata/item/SessionMap;->getItemHashMap()Ljava/util/HashMap;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    return-void
.end method

.method private resetRangingTime(I)V
    .locals 3
    .param p1, "sessionID"    # I

    .line 176
    iget-object v0, p0, Lcom/samsung/android/server/uwb/bigdata/BigdataManager;->mSessionMap:Lcom/samsung/android/server/uwb/bigdata/item/SessionMap;

    invoke-virtual {v0}, Lcom/samsung/android/server/uwb/bigdata/item/SessionMap;->getItemHashMap()Ljava/util/HashMap;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/server/uwb/bigdata/item/Item;

    const-wide/16 v1, -0x1

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/server/uwb/bigdata/item/Item;->setRangingStartTime(J)V

    .line 177
    return-void
.end method


# virtual methods
.method public addBigDataItemByConfigureChanged(Lcom/google/uwb/support/oemextension/SessionConfigParams;)V
    .locals 10
    .param p1, "sessionConfigParams"    # Lcom/google/uwb/support/oemextension/SessionConfigParams;

    .line 49
    invoke-virtual {p1}, Lcom/google/uwb/support/oemextension/SessionConfigParams;->getFiraOpenSessionParamsBundle()Landroid/os/PersistableBundle;

    move-result-object v0

    .line 50
    .local v0, "openSessionParamsBundle":Landroid/os/PersistableBundle;
    const/4 v1, 0x0

    .line 51
    .local v1, "sessionID":I
    const-string v2, ""

    .line 52
    .local v2, "pkgName":Ljava/lang/String;
    const/4 v3, 0x0

    .line 53
    .local v3, "obj":Lorg/json/JSONObject;
    invoke-static {v0}, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->isCorrectProtocol(Landroid/os/PersistableBundle;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 54
    invoke-static {v0}, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->fromBundle(Landroid/os/PersistableBundle;)Lcom/google/uwb/support/fira/FiraOpenSessionParams;

    move-result-object v4

    .line 55
    .local v4, "param":Lcom/google/uwb/support/fira/FiraOpenSessionParams;
    invoke-virtual {v4}, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->getSessionId()I

    move-result v1

    .line 56
    invoke-virtual {v4}, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->getPrfMode()I

    move-result v5

    invoke-virtual {v4}, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->getStsConfig()I

    move-result v6

    invoke-virtual {v4}, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->getRangingRoundUsage()I

    move-result v7

    invoke-virtual {v4}, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->getScheduledMode()I

    move-result v8

    invoke-virtual {v4}, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->getChannelNumber()I

    move-result v9

    invoke-static {v5, v6, v7, v8, v9}, Lcom/samsung/android/server/uwb/bigdata/json/JsonCreator;->createParamData(IIIII)Lorg/json/JSONObject;

    move-result-object v3

    .end local v4    # "param":Lcom/google/uwb/support/fira/FiraOpenSessionParams;
    goto :goto_0

    .line 57
    :cond_0
    invoke-static {v0}, Lcom/google/uwb/support/ccc/CccOpenRangingParams;->isCorrectProtocol(Landroid/os/PersistableBundle;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 58
    invoke-static {v0}, Lcom/google/uwb/support/ccc/CccOpenRangingParams;->fromBundle(Landroid/os/PersistableBundle;)Lcom/google/uwb/support/ccc/CccOpenRangingParams;

    move-result-object v4

    .line 59
    .local v4, "param":Lcom/google/uwb/support/ccc/CccOpenRangingParams;
    invoke-virtual {v4}, Lcom/google/uwb/support/ccc/CccOpenRangingParams;->getSessionId()I

    move-result v1

    .line 60
    const/4 v5, 0x2

    invoke-virtual {v4}, Lcom/google/uwb/support/ccc/CccOpenRangingParams;->getChannel()I

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-static {v7, v8, v5, v8, v6}, Lcom/samsung/android/server/uwb/bigdata/json/JsonCreator;->createParamData(IIIII)Lorg/json/JSONObject;

    move-result-object v3

    goto :goto_1

    .line 57
    .end local v4    # "param":Lcom/google/uwb/support/ccc/CccOpenRangingParams;
    :cond_1
    :goto_0
    nop

    .line 63
    :goto_1
    iget-object v4, p0, Lcom/samsung/android/server/uwb/bigdata/BigdataManager;->mSessionMap:Lcom/samsung/android/server/uwb/bigdata/item/SessionMap;

    invoke-virtual {v4, v1}, Lcom/samsung/android/server/uwb/bigdata/item/SessionMap;->getBigdataItem(I)Lcom/samsung/android/server/uwb/bigdata/item/Item;

    move-result-object v4

    .line 65
    .local v4, "bigdataItem":Lcom/samsung/android/server/uwb/bigdata/item/Item;
    invoke-direct {p0, v4}, Lcom/samsung/android/server/uwb/bigdata/BigdataManager;->isItemNull(Lcom/samsung/android/server/uwb/bigdata/item/Item;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 66
    new-instance v5, Lcom/samsung/android/server/uwb/bigdata/item/Item;

    invoke-direct {v5, v1}, Lcom/samsung/android/server/uwb/bigdata/item/Item;-><init>(I)V

    move-object v4, v5

    .line 67
    iget-object v5, p0, Lcom/samsung/android/server/uwb/bigdata/BigdataManager;->mSessionMap:Lcom/samsung/android/server/uwb/bigdata/item/SessionMap;

    invoke-virtual {v5, v1, v4}, Lcom/samsung/android/server/uwb/bigdata/item/SessionMap;->put(ILcom/samsung/android/server/uwb/bigdata/item/Item;)V

    .line 70
    :cond_2
    if-eqz v3, :cond_3

    .line 71
    invoke-virtual {v4, v3}, Lcom/samsung/android/server/uwb/bigdata/item/Item;->setJsonParam(Lorg/json/JSONObject;)V

    .line 74
    :cond_3
    return-void
.end method

.method public sendBigdata(Lcom/samsung/android/server/uwb/SamsungUwbSessionManager$UwbSession;)V
    .locals 8
    .param p1, "uwbSessionInfo"    # Lcom/samsung/android/server/uwb/SamsungUwbSessionManager$UwbSession;

    .line 113
    invoke-direct {p0}, Lcom/samsung/android/server/uwb/bigdata/BigdataManager;->isNull()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 114
    return-void

    .line 117
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/server/uwb/bigdata/BigdataManager;->mSessionMap:Lcom/samsung/android/server/uwb/bigdata/item/SessionMap;

    invoke-virtual {p1}, Lcom/samsung/android/server/uwb/SamsungUwbSessionManager$UwbSession;->getSessionId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/uwb/bigdata/item/SessionMap;->getBigdataItem(I)Lcom/samsung/android/server/uwb/bigdata/item/Item;

    move-result-object v0

    .line 118
    .local v0, "bigdataItem":Lcom/samsung/android/server/uwb/bigdata/item/Item;
    const-string v1, ""

    .line 120
    .local v1, "feature":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/samsung/android/server/uwb/SamsungUwbSessionManager$UwbSession;->getSessionId()I

    move-result v2

    .line 122
    .local v2, "sessionID":I
    invoke-direct {p0, v0}, Lcom/samsung/android/server/uwb/bigdata/BigdataManager;->isItemNull(Lcom/samsung/android/server/uwb/bigdata/item/Item;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 123
    new-instance v3, Lcom/samsung/android/server/uwb/bigdata/item/Item;

    invoke-direct {v3, v2}, Lcom/samsung/android/server/uwb/bigdata/item/Item;-><init>(I)V

    move-object v0, v3

    .line 124
    iget-object v3, p0, Lcom/samsung/android/server/uwb/bigdata/BigdataManager;->mSessionMap:Lcom/samsung/android/server/uwb/bigdata/item/SessionMap;

    invoke-virtual {v3, v2, v0}, Lcom/samsung/android/server/uwb/bigdata/item/SessionMap;->put(ILcom/samsung/android/server/uwb/bigdata/item/Item;)V

    .line 127
    :cond_1
    invoke-virtual {p1}, Lcom/samsung/android/server/uwb/SamsungUwbSessionManager$UwbSession;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 129
    .local v3, "packageName":Ljava/lang/String;
    invoke-direct {p0, v3}, Lcom/samsung/android/server/uwb/bigdata/BigdataManager;->isValidBigdata(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    return-void

    .line 131
    :cond_2
    invoke-virtual {v0, v3}, Lcom/samsung/android/server/uwb/bigdata/item/Item;->setPackageName(Ljava/lang/String;)V

    .line 133
    invoke-direct {p0, p1}, Lcom/samsung/android/server/uwb/bigdata/BigdataManager;->checkingFeature(Lcom/samsung/android/server/uwb/SamsungUwbSessionManager$UwbSession;)Ljava/lang/String;

    move-result-object v1

    .line 135
    invoke-direct {p0, v0}, Lcom/samsung/android/server/uwb/bigdata/BigdataManager;->isItemNull(Lcom/samsung/android/server/uwb/bigdata/item/Item;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 136
    return-void

    .line 138
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Feature : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ID : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " State : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lcom/samsung/android/server/uwb/SamsungUwbSessionManager$UwbSession;->getSessionState()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "UwbBigdataManager"

    invoke-static {v5, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    const-string v4, "UWIN"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 142
    invoke-direct {p0, v0}, Lcom/samsung/android/server/uwb/bigdata/BigdataManager;->isValidBigdata(Lcom/samsung/android/server/uwb/bigdata/item/Item;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 143
    iget-object v4, p0, Lcom/samsung/android/server/uwb/bigdata/BigdataManager;->mUwbLogSender:Lcom/samsung/android/server/uwb/bigdata/SurveyLogSender;

    iget-object v5, p0, Lcom/samsung/android/server/uwb/bigdata/BigdataManager;->mLogCreator:Lcom/samsung/android/server/uwb/bigdata/creator/LogMsgCreator;

    invoke-virtual {v5, p1, v0}, Lcom/samsung/android/server/uwb/bigdata/creator/LogMsgCreator;->createUsageParamLogMsg(Lcom/samsung/android/server/uwb/SamsungUwbSessionManager$UwbSession;Lcom/samsung/android/server/uwb/bigdata/item/Item;)Lcom/samsung/android/server/uwb/bigdata/LogMessage$Builder;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/server/uwb/bigdata/LogMessage$Builder;->build()Lcom/samsung/android/server/uwb/bigdata/LogMessage;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lcom/samsung/android/server/uwb/bigdata/SurveyLogSender;->send(Lcom/samsung/android/server/uwb/bigdata/LogMessage;I)V

    .line 144
    invoke-direct {p0, v2}, Lcom/samsung/android/server/uwb/bigdata/BigdataManager;->resetRangingTime(I)V

    .line 145
    invoke-direct {p0, v2}, Lcom/samsung/android/server/uwb/bigdata/BigdataManager;->removeSessionIdInHashMap(I)V

    goto :goto_0

    .line 148
    :cond_4
    const-string v4, "UWST"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 151
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v0, v6, v7}, Lcom/samsung/android/server/uwb/bigdata/item/Item;->setRangingStartTime(J)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 155
    nop

    .line 156
    iget-object v4, p0, Lcom/samsung/android/server/uwb/bigdata/BigdataManager;->mSessionCounter:Lcom/samsung/android/server/uwb/bigdata/SessionCounter;

    invoke-virtual {v4}, Lcom/samsung/android/server/uwb/bigdata/SessionCounter;->setActiveSessionCount()Z

    .line 162
    :cond_5
    :goto_0
    return-void

    .line 152
    :catch_0
    move-exception v4

    .line 153
    .local v4, "e":Ljava/lang/NullPointerException;
    iget-object v6, p0, Lcom/samsung/android/server/uwb/bigdata/BigdataManager;->DBG:Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_6

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "feature :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    :cond_6
    return-void

    .line 158
    .end local v4    # "e":Ljava/lang/NullPointerException;
    :cond_7
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "No feature for bigdata :"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    return-void
.end method

.method public sendBigdataByDeviceState(I)V
    .locals 3
    .param p1, "deviceState"    # I

    .line 77
    const-string v0, "chip"

    const/4 v1, -0x1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 79
    :pswitch_0
    const-string v2, "UW_CRS"

    invoke-virtual {p0, v2, v1, v0}, Lcom/samsung/android/server/uwb/bigdata/BigdataManager;->sendErrorBigdata(Ljava/lang/String;ILjava/lang/String;)V

    .line 80
    goto :goto_0

    .line 82
    :pswitch_1
    const-string v2, "UW_INT"

    invoke-virtual {p0, v2, v1, v0}, Lcom/samsung/android/server/uwb/bigdata/BigdataManager;->sendErrorBigdata(Ljava/lang/String;ILjava/lang/String;)V

    .line 85
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0xfe
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public sendBigdataForMaxSessionCount()V
    .locals 3

    .line 165
    iget-object v0, p0, Lcom/samsung/android/server/uwb/bigdata/BigdataManager;->mSessionCounter:Lcom/samsung/android/server/uwb/bigdata/SessionCounter;

    invoke-virtual {v0}, Lcom/samsung/android/server/uwb/bigdata/SessionCounter;->getMaxSessionCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 166
    iget-object v0, p0, Lcom/samsung/android/server/uwb/bigdata/BigdataManager;->mUwbLogSender:Lcom/samsung/android/server/uwb/bigdata/SurveyLogSender;

    iget-object v1, p0, Lcom/samsung/android/server/uwb/bigdata/BigdataManager;->mLogCreator:Lcom/samsung/android/server/uwb/bigdata/creator/LogMsgCreator;

    iget-object v2, p0, Lcom/samsung/android/server/uwb/bigdata/BigdataManager;->mSessionCounter:Lcom/samsung/android/server/uwb/bigdata/SessionCounter;

    invoke-virtual {v2}, Lcom/samsung/android/server/uwb/bigdata/SessionCounter;->getMaxSessionCount()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/server/uwb/bigdata/creator/LogMsgCreator;->createMaxSessionParamLogMsg(I)Lcom/samsung/android/server/uwb/bigdata/LogMessage$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/server/uwb/bigdata/LogMessage$Builder;->build()Lcom/samsung/android/server/uwb/bigdata/LogMessage;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/server/uwb/bigdata/SurveyLogSender;->send(Lcom/samsung/android/server/uwb/bigdata/LogMessage;I)V

    .line 167
    iget-object v0, p0, Lcom/samsung/android/server/uwb/bigdata/BigdataManager;->mSessionCounter:Lcom/samsung/android/server/uwb/bigdata/SessionCounter;

    invoke-virtual {v0}, Lcom/samsung/android/server/uwb/bigdata/SessionCounter;->resetMaxSessionCount()V

    .line 169
    :cond_0
    return-void
.end method

.method public sendDbDataForUwbState(I)V
    .locals 1
    .param p1, "state"    # I

    .line 109
    iget-object v0, p0, Lcom/samsung/android/server/uwb/bigdata/BigdataManager;->mUwbDbManager:Lcom/samsung/android/server/uwb/bigdata/db/UwbDbManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/server/uwb/bigdata/db/UwbDbManager;->insertUwbStateData(I)Z

    .line 110
    return-void
.end method

.method public sendDbDataForUwbUsage(Lcom/samsung/android/server/uwb/SamsungUwbSessionManager$UwbSession;)V
    .locals 9
    .param p1, "uwbSessionInfo"    # Lcom/samsung/android/server/uwb/SamsungUwbSessionManager$UwbSession;

    .line 98
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sendBigdata: sessionId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/samsung/android/server/uwb/SamsungUwbSessionManager$UwbSession;->getSessionId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UwbBigdataManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    invoke-virtual {p1}, Lcom/samsung/android/server/uwb/SamsungUwbSessionManager$UwbSession;->getSessionId()I

    move-result v3

    .line 101
    .local v3, "sessionId":I
    invoke-virtual {p1}, Lcom/samsung/android/server/uwb/SamsungUwbSessionManager$UwbSession;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 102
    .local v4, "packageName":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/samsung/android/server/uwb/SamsungUwbSessionManager$UwbSession;->getServiceType()I

    move-result v5

    .line 103
    .local v5, "serviceType":I
    invoke-virtual {p1}, Lcom/samsung/android/server/uwb/SamsungUwbSessionManager$UwbSession;->getChannelNumber()I

    move-result v6

    .line 104
    .local v6, "channelNo":I
    invoke-virtual {p1}, Lcom/samsung/android/server/uwb/SamsungUwbSessionManager$UwbSession;->getRangingDuration()J

    move-result-wide v7

    .line 105
    .local v7, "rangingDuration":J
    iget-object v2, p0, Lcom/samsung/android/server/uwb/bigdata/BigdataManager;->mUwbDbManager:Lcom/samsung/android/server/uwb/bigdata/db/UwbDbManager;

    invoke-virtual/range {v2 .. v8}, Lcom/samsung/android/server/uwb/bigdata/db/UwbDbManager;->insertUwbUsageData(ILjava/lang/String;IIJ)Z

    .line 106
    return-void
.end method

.method public sendErrorBigdata(Ljava/lang/String;ILjava/lang/String;)V
    .locals 3
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "reasonCode"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .line 88
    const-string v0, "UW_CRS"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x3

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/samsung/android/server/uwb/bigdata/BigdataManager;->mUwbLogSender:Lcom/samsung/android/server/uwb/bigdata/SurveyLogSender;

    iget-object v2, p0, Lcom/samsung/android/server/uwb/bigdata/BigdataManager;->mLogCreator:Lcom/samsung/android/server/uwb/bigdata/creator/LogMsgCreator;

    invoke-virtual {v2, p2, p3}, Lcom/samsung/android/server/uwb/bigdata/creator/LogMsgCreator;->createCrashMsg(ILjava/lang/String;)Lcom/samsung/android/server/uwb/bigdata/LogMessage$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/server/uwb/bigdata/LogMessage$Builder;->build()Lcom/samsung/android/server/uwb/bigdata/LogMessage;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/server/uwb/bigdata/SurveyLogSender;->send(Lcom/samsung/android/server/uwb/bigdata/LogMessage;I)V

    goto :goto_0

    .line 90
    :cond_0
    const-string v0, "UW_INT"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 91
    iget-object v0, p0, Lcom/samsung/android/server/uwb/bigdata/BigdataManager;->mUwbLogSender:Lcom/samsung/android/server/uwb/bigdata/SurveyLogSender;

    iget-object v2, p0, Lcom/samsung/android/server/uwb/bigdata/BigdataManager;->mLogCreator:Lcom/samsung/android/server/uwb/bigdata/creator/LogMsgCreator;

    invoke-virtual {v2, p2, p3}, Lcom/samsung/android/server/uwb/bigdata/creator/LogMsgCreator;->createInitFailMsg(ILjava/lang/String;)Lcom/samsung/android/server/uwb/bigdata/LogMessage$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/server/uwb/bigdata/LogMessage$Builder;->build()Lcom/samsung/android/server/uwb/bigdata/LogMessage;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/server/uwb/bigdata/SurveyLogSender;->send(Lcom/samsung/android/server/uwb/bigdata/LogMessage;I)V

    goto :goto_0

    .line 92
    :cond_1
    const-string v0, "UW_SSN"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 93
    iget-object v0, p0, Lcom/samsung/android/server/uwb/bigdata/BigdataManager;->mUwbLogSender:Lcom/samsung/android/server/uwb/bigdata/SurveyLogSender;

    iget-object v2, p0, Lcom/samsung/android/server/uwb/bigdata/BigdataManager;->mLogCreator:Lcom/samsung/android/server/uwb/bigdata/creator/LogMsgCreator;

    invoke-virtual {v2, p2, p3}, Lcom/samsung/android/server/uwb/bigdata/creator/LogMsgCreator;->createSessionMsg(ILjava/lang/String;)Lcom/samsung/android/server/uwb/bigdata/LogMessage$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/server/uwb/bigdata/LogMessage$Builder;->build()Lcom/samsung/android/server/uwb/bigdata/LogMessage;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/server/uwb/bigdata/SurveyLogSender;->send(Lcom/samsung/android/server/uwb/bigdata/LogMessage;I)V

    .line 95
    :cond_2
    :goto_0
    return-void
.end method
