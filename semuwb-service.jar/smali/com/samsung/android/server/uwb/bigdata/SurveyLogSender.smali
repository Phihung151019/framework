.class public Lcom/samsung/android/server/uwb/bigdata/SurveyLogSender;
.super Ljava/lang/Object;
.source "SurveyLogSender.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/server/uwb/bigdata/SurveyLogSender$Callback;,
        Lcom/samsung/android/server/uwb/bigdata/SurveyLogSender$SendingThread;,
        Lcom/samsung/android/server/uwb/bigdata/SurveyLogSender$SendingHandler;
    }
.end annotation


# static fields
.field private static final ACTION_NAME_FEAUTRE_SURVEY:Ljava/lang/String; = "com.samsung.android.providers.context.log.action.USE_APP_FEATURE_SURVEY"

.field private static final ACTION_NAME_MULTI_FEAUTRE_SURVEY:Ljava/lang/String; = "com.samsung.android.providers.context.log.action.USE_MULTI_APP_FEATURE_SURVEY"

.field private static final ACTION_NAME_STATUS_SURVEY:Ljava/lang/String; = "com.samsung.android.providers.context.log.action.REPORT_APP_STATUS_SURVEY"

.field public static final APP_ID:Ljava/lang/String; = "com.samsung.android.uwb"

.field static final DBG:Z

.field public static final FLAG_BUILD_COMMON:I = 0x1

.field public static final FLAG_SKIP_COMMON_INFO:I = 0x0

.field public static final FLAG_VENDOR_INFO:I = 0x2

.field private static final NAME_APP_ID:Ljava/lang/String; = "app_id"

.field private static final NAME_DATA:Ljava/lang/String; = "data"

.field private static final NAME_EXTRA:Ljava/lang/String; = "extra"

.field private static final NAME_FEATURE:Ljava/lang/String; = "feature"

.field private static final NAME_LOG_TYPE:Ljava/lang/String; = "logtype"

.field private static final NAME_VALUE:Ljava/lang/String; = "value"

.field private static final PACKAGE_NAME_SURVEY:Ljava/lang/String; = "com.samsung.android.providers.context"

.field private static final TAG:Ljava/lang/String; = "SurveyLogSenderUWB"


# instance fields
.field mCallback:Lcom/samsung/android/server/uwb/bigdata/SurveyLogSender$Callback;

.field mContext:Landroid/content/Context;

.field mHqm:Lcom/samsung/android/server/uwb/bigdata/HWParameter;

.field mSendingThread:Lcom/samsung/android/server/uwb/bigdata/SurveyLogSender$SendingThread;


# direct methods
.method static bridge synthetic -$$Nest$mprocessingObjectData(Lcom/samsung/android/server/uwb/bigdata/SurveyLogSender;Lorg/json/JSONObject;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/uwb/bigdata/SurveyLogSender;->processingObjectData(Lorg/json/JSONObject;I)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 37
    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/server/uwb/bigdata/SurveyLogSender;->DBG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/server/uwb/bigdata/SurveyLogSender;->mCallback:Lcom/samsung/android/server/uwb/bigdata/SurveyLogSender$Callback;

    .line 76
    iput-object p1, p0, Lcom/samsung/android/server/uwb/bigdata/SurveyLogSender;->mContext:Landroid/content/Context;

    .line 78
    new-instance v0, Lcom/samsung/android/server/uwb/bigdata/HWParameter;

    invoke-direct {v0, p1}, Lcom/samsung/android/server/uwb/bigdata/HWParameter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/server/uwb/bigdata/SurveyLogSender;->mHqm:Lcom/samsung/android/server/uwb/bigdata/HWParameter;

    .line 79
    new-instance v0, Lcom/samsung/android/server/uwb/bigdata/SurveyLogSender$SendingThread;

    invoke-direct {v0, p0}, Lcom/samsung/android/server/uwb/bigdata/SurveyLogSender$SendingThread;-><init>(Lcom/samsung/android/server/uwb/bigdata/SurveyLogSender;)V

    iput-object v0, p0, Lcom/samsung/android/server/uwb/bigdata/SurveyLogSender;->mSendingThread:Lcom/samsung/android/server/uwb/bigdata/SurveyLogSender$SendingThread;

    .line 80
    iget-object v0, p0, Lcom/samsung/android/server/uwb/bigdata/SurveyLogSender;->mSendingThread:Lcom/samsung/android/server/uwb/bigdata/SurveyLogSender$SendingThread;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/uwb/bigdata/SurveyLogSender$SendingThread;->setDaemon(Z)V

    .line 81
    iget-object v0, p0, Lcom/samsung/android/server/uwb/bigdata/SurveyLogSender;->mSendingThread:Lcom/samsung/android/server/uwb/bigdata/SurveyLogSender$SendingThread;

    invoke-virtual {v0}, Lcom/samsung/android/server/uwb/bigdata/SurveyLogSender$SendingThread;->start()V

    .line 82
    return-void
.end method

.method private processingObjectData(Lorg/json/JSONObject;I)V
    .locals 8
    .param p1, "logData"    # Lorg/json/JSONObject;
    .param p2, "flag"    # I

    .line 107
    const-string v0, "FEATURE"

    const-string v1, "SurveyLogSenderUWB"

    const-string v2, ""

    .line 109
    .local v2, "type":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    .line 110
    sget-boolean v3, Lcom/samsung/android/server/uwb/bigdata/SurveyLogSender;->DBG:Z

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "feature : - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    :cond_0
    iget-object v3, p0, Lcom/samsung/android/server/uwb/bigdata/SurveyLogSender;->mCallback:Lcom/samsung/android/server/uwb/bigdata/SurveyLogSender$Callback;

    invoke-interface {v3, p2}, Lcom/samsung/android/server/uwb/bigdata/SurveyLogSender$Callback;->getDefaultMessage(I)Lcom/samsung/android/server/uwb/bigdata/LogMessage;

    move-result-object v3

    .line 113
    .local v3, "logDefault":Lcom/samsung/android/server/uwb/bigdata/LogMessage;
    if-eqz v3, :cond_2

    .line 114
    invoke-virtual {v3}, Lcom/samsung/android/server/uwb/bigdata/LogMessage;->getMessage()Lorg/json/JSONObject;

    move-result-object v4

    .line 115
    .local v4, "logDefaultData":Lorg/json/JSONObject;
    invoke-virtual {v4}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v5

    .line 116
    .local v5, "iter":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 117
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    .line 118
    .local v6, "key":Ljava/lang/String;
    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {p1, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 119
    nop

    .end local v6    # "key":Ljava/lang/String;
    goto :goto_0

    .line 120
    .end local v4    # "logDefaultData":Lorg/json/JSONObject;
    .end local v5    # "iter":Ljava/util/Iterator;
    :cond_1
    goto :goto_1

    .line 121
    :cond_2
    const-string v4, "No Data for JsonObject."

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 126
    .end local v3    # "logDefault":Lcom/samsung/android/server/uwb/bigdata/LogMessage;
    :goto_1
    nop

    .line 128
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 129
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v2, v0}, Lcom/samsung/android/server/uwb/bigdata/SurveyLogSender;->sendIntentInternal(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    return-void

    .line 123
    :catch_0
    move-exception v0

    .line 124
    .local v0, "e":Lorg/json/JSONException;
    const-string v3, "No Key for string in Object"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    return-void
.end method

.method private sendIntentInternal(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "feature"    # Ljava/lang/String;
    .param p2, "extra"    # Ljava/lang/String;

    .line 134
    iget-object v0, p0, Lcom/samsung/android/server/uwb/bigdata/SurveyLogSender;->mHqm:Lcom/samsung/android/server/uwb/bigdata/HWParameter;

    if-eqz v0, :cond_0

    .line 135
    iget-object v0, p0, Lcom/samsung/android/server/uwb/bigdata/SurveyLogSender;->mHqm:Lcom/samsung/android/server/uwb/bigdata/HWParameter;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/server/uwb/bigdata/HWParameter;->insertLogFromBigdata(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    :cond_0
    sget-boolean v0, Lcom/samsung/android/server/uwb/bigdata/SurveyLogSender;->DBG:Z

    const-string v1, "SurveyLogSenderUWB"

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "feature : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " extra : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    :cond_1
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 141
    .local v0, "cv":Landroid/content/ContentValues;
    const-string v2, "app_id"

    const-string v3, "com.samsung.android.uwb"

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    const-string v2, "feature"

    invoke-virtual {v0, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    const-string v2, "extra"

    invoke-virtual {v0, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    sget-boolean v2, Lcom/samsung/android/server/uwb/bigdata/SurveyLogSender;->DBG:Z

    if-eqz v2, :cond_2

    .line 146
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "insertLog::json.toString()="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/content/ContentValues;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 148
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "insertLog::feature="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    :goto_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.samsung.android.providers.context.log.action.USE_APP_FEATURE_SURVEY"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 153
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "data"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 154
    const-string v2, "com.samsung.android.providers.context"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 155
    iget-object v2, p0, Lcom/samsung/android/server/uwb/bigdata/SurveyLogSender;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 156
    return-void
.end method


# virtual methods
.method public registerCallback(Lcom/samsung/android/server/uwb/bigdata/SurveyLogSender$Callback;)V
    .locals 0
    .param p1, "callback"    # Lcom/samsung/android/server/uwb/bigdata/SurveyLogSender$Callback;

    .line 85
    iput-object p1, p0, Lcom/samsung/android/server/uwb/bigdata/SurveyLogSender;->mCallback:Lcom/samsung/android/server/uwb/bigdata/SurveyLogSender$Callback;

    .line 86
    return-void
.end method

.method public send(Lcom/samsung/android/server/uwb/bigdata/LogMessage;)V
    .locals 1
    .param p1, "logData"    # Lcom/samsung/android/server/uwb/bigdata/LogMessage;

    .line 102
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/server/uwb/bigdata/SurveyLogSender;->send(Lcom/samsung/android/server/uwb/bigdata/LogMessage;I)V

    .line 103
    return-void
.end method

.method public send(Lcom/samsung/android/server/uwb/bigdata/LogMessage;I)V
    .locals 2
    .param p1, "logData"    # Lcom/samsung/android/server/uwb/bigdata/LogMessage;
    .param p2, "additionalFlag"    # I

    .line 90
    sget-boolean v0, Lcom/samsung/android/server/uwb/bigdata/SurveyLogSender;->DBG:Z

    if-eqz v0, :cond_0

    .line 91
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "send message"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/samsung/android/server/uwb/bigdata/LogMessage;->getStringMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", flag: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SurveyLogSenderUWB"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/server/uwb/bigdata/SurveyLogSender;->mSendingThread:Lcom/samsung/android/server/uwb/bigdata/SurveyLogSender$SendingThread;

    iget-object v0, v0, Lcom/samsung/android/server/uwb/bigdata/SurveyLogSender$SendingThread;->mHandler:Lcom/samsung/android/server/uwb/bigdata/SurveyLogSender$SendingHandler;

    invoke-virtual {v0}, Lcom/samsung/android/server/uwb/bigdata/SurveyLogSender$SendingHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 94
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {p1}, Lcom/samsung/android/server/uwb/bigdata/LogMessage;->getType()I

    move-result v1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 95
    invoke-virtual {p1}, Lcom/samsung/android/server/uwb/bigdata/LogMessage;->getExtraType()I

    move-result v1

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 96
    iput p2, v0, Landroid/os/Message;->arg2:I

    .line 97
    invoke-virtual {p1}, Lcom/samsung/android/server/uwb/bigdata/LogMessage;->getMessage()Lorg/json/JSONObject;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 98
    iget-object v1, p0, Lcom/samsung/android/server/uwb/bigdata/SurveyLogSender;->mSendingThread:Lcom/samsung/android/server/uwb/bigdata/SurveyLogSender$SendingThread;

    iget-object v1, v1, Lcom/samsung/android/server/uwb/bigdata/SurveyLogSender$SendingThread;->mHandler:Lcom/samsung/android/server/uwb/bigdata/SurveyLogSender$SendingHandler;

    invoke-virtual {v1, v0}, Lcom/samsung/android/server/uwb/bigdata/SurveyLogSender$SendingHandler;->sendMessage(Landroid/os/Message;)Z

    .line 99
    return-void
.end method
