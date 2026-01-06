.class public Lcom/samsung/android/server/uwb/bigdata/LogMessage$Builder;
.super Ljava/lang/Object;
.source "LogMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/uwb/bigdata/LogMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mMessage:Lcom/samsung/android/server/uwb/bigdata/LogMessage;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Lcom/samsung/android/server/uwb/bigdata/LogMessage;

    invoke-direct {v0}, Lcom/samsung/android/server/uwb/bigdata/LogMessage;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/uwb/bigdata/LogMessage$Builder;->mMessage:Lcom/samsung/android/server/uwb/bigdata/LogMessage;

    .line 46
    return-void
.end method

.method private constructor <init>(I)V
    .locals 1
    .param p1, "type"    # I

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Lcom/samsung/android/server/uwb/bigdata/LogMessage;

    invoke-direct {v0}, Lcom/samsung/android/server/uwb/bigdata/LogMessage;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/uwb/bigdata/LogMessage$Builder;->mMessage:Lcom/samsung/android/server/uwb/bigdata/LogMessage;

    .line 41
    iget-object v0, p0, Lcom/samsung/android/server/uwb/bigdata/LogMessage$Builder;->mMessage:Lcom/samsung/android/server/uwb/bigdata/LogMessage;

    invoke-static {v0, p1}, Lcom/samsung/android/server/uwb/bigdata/LogMessage;->-$$Nest$fputmType(Lcom/samsung/android/server/uwb/bigdata/LogMessage;I)V

    .line 42
    return-void
.end method

.method synthetic constructor <init>(ILcom/samsung/android/server/uwb/bigdata/LogMessage-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/server/uwb/bigdata/LogMessage$Builder;-><init>(I)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/server/uwb/bigdata/LogMessage-IA;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/server/uwb/bigdata/LogMessage$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public append(Lcom/samsung/android/server/uwb/bigdata/LogMessage;)Lcom/samsung/android/server/uwb/bigdata/LogMessage$Builder;
    .locals 1
    .param p1, "message"    # Lcom/samsung/android/server/uwb/bigdata/LogMessage;

    .line 135
    invoke-virtual {p1}, Lcom/samsung/android/server/uwb/bigdata/LogMessage;->getMessage()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/server/uwb/bigdata/LogMessage$Builder;->append(Lorg/json/JSONObject;)Lcom/samsung/android/server/uwb/bigdata/LogMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public append(Lorg/json/JSONObject;)Lcom/samsung/android/server/uwb/bigdata/LogMessage$Builder;
    .locals 5
    .param p1, "message"    # Lorg/json/JSONObject;

    .line 118
    :try_start_0
    sget-boolean v0, Lcom/samsung/android/server/uwb/bigdata/LogMessage;->DBG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/server/uwb/bigdata/LogMessage;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "message: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    :cond_0
    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v0

    .line 121
    .local v0, "i":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 122
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 123
    .local v1, "key":Ljava/lang/String;
    sget-boolean v2, Lcom/samsung/android/server/uwb/bigdata/LogMessage;->DBG:Z

    if-eqz v2, :cond_1

    sget-object v2, Lcom/samsung/android/server/uwb/bigdata/LogMessage;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "key: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " msg : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/server/uwb/bigdata/LogMessage$Builder;->mMessage:Lcom/samsung/android/server/uwb/bigdata/LogMessage;

    invoke-static {v2}, Lcom/samsung/android/server/uwb/bigdata/LogMessage;->-$$Nest$fgetmData(Lcom/samsung/android/server/uwb/bigdata/LogMessage;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 125
    nop

    .end local v1    # "key":Ljava/lang/String;
    goto :goto_0

    .line 129
    .end local v0    # "i":Ljava/util/Iterator;
    :cond_2
    goto :goto_1

    .line 127
    :catch_0
    move-exception v0

    .line 128
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/samsung/android/server/uwb/bigdata/LogMessage;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "error:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-object p0
.end method

.method public build()Lcom/samsung/android/server/uwb/bigdata/LogMessage;
    .locals 4

    .line 140
    :try_start_0
    sget-boolean v0, Lcom/samsung/android/server/uwb/bigdata/LogMessage;->DBG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/server/uwb/bigdata/LogMessage;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "build: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/server/uwb/bigdata/LogMessage$Builder;->mMessage:Lcom/samsung/android/server/uwb/bigdata/LogMessage;

    invoke-static {v2}, Lcom/samsung/android/server/uwb/bigdata/LogMessage;->-$$Nest$fgetmData(Lcom/samsung/android/server/uwb/bigdata/LogMessage;)Lorg/json/JSONObject;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 144
    :cond_0
    goto :goto_0

    .line 142
    :catch_0
    move-exception v0

    .line 143
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/samsung/android/server/uwb/bigdata/LogMessage;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/server/uwb/bigdata/LogMessage$Builder;->mMessage:Lcom/samsung/android/server/uwb/bigdata/LogMessage;

    return-object v0
.end method

.method public put(Ljava/lang/String;I)Lcom/samsung/android/server/uwb/bigdata/LogMessage$Builder;
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # I

    .line 72
    sget-boolean v0, Lcom/samsung/android/server/uwb/bigdata/LogMessage;->DBG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/server/uwb/bigdata/LogMessage;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "int: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/server/uwb/bigdata/LogMessage$Builder;->mMessage:Lcom/samsung/android/server/uwb/bigdata/LogMessage;

    invoke-static {v0}, Lcom/samsung/android/server/uwb/bigdata/LogMessage;->-$$Nest$fgetmData(Lcom/samsung/android/server/uwb/bigdata/LogMessage;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    goto :goto_0

    .line 76
    :catch_0
    move-exception v0

    .line 77
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/samsung/android/server/uwb/bigdata/LogMessage;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-object p0
.end method

.method public put(Ljava/lang/String;J)Lcom/samsung/android/server/uwb/bigdata/LogMessage$Builder;
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # J

    .line 83
    sget-boolean v0, Lcom/samsung/android/server/uwb/bigdata/LogMessage;->DBG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/server/uwb/bigdata/LogMessage;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "long: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/server/uwb/bigdata/LogMessage$Builder;->mMessage:Lcom/samsung/android/server/uwb/bigdata/LogMessage;

    invoke-static {v0}, Lcom/samsung/android/server/uwb/bigdata/LogMessage;->-$$Nest$fgetmData(Lcom/samsung/android/server/uwb/bigdata/LogMessage;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    goto :goto_0

    .line 87
    :catch_0
    move-exception v0

    .line 88
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/samsung/android/server/uwb/bigdata/LogMessage;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-object p0
.end method

.method public put(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/server/uwb/bigdata/LogMessage$Builder;
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 94
    sget-boolean v0, Lcom/samsung/android/server/uwb/bigdata/LogMessage;->DBG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/server/uwb/bigdata/LogMessage;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "String: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/server/uwb/bigdata/LogMessage$Builder;->mMessage:Lcom/samsung/android/server/uwb/bigdata/LogMessage;

    invoke-static {v0}, Lcom/samsung/android/server/uwb/bigdata/LogMessage;->-$$Nest$fgetmData(Lcom/samsung/android/server/uwb/bigdata/LogMessage;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 100
    goto :goto_0

    .line 98
    :catch_0
    move-exception v0

    .line 99
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/samsung/android/server/uwb/bigdata/LogMessage;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-object p0
.end method

.method public put(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/samsung/android/server/uwb/bigdata/LogMessage$Builder;
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "object"    # Lorg/json/JSONObject;

    .line 105
    sget-boolean v0, Lcom/samsung/android/server/uwb/bigdata/LogMessage;->DBG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/server/uwb/bigdata/LogMessage;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "String: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/server/uwb/bigdata/LogMessage$Builder;->mMessage:Lcom/samsung/android/server/uwb/bigdata/LogMessage;

    invoke-static {v0}, Lcom/samsung/android/server/uwb/bigdata/LogMessage;->-$$Nest$fgetmData(Lcom/samsung/android/server/uwb/bigdata/LogMessage;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 111
    goto :goto_0

    .line 109
    :catch_0
    move-exception v0

    .line 110
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/samsung/android/server/uwb/bigdata/LogMessage;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-object p0
.end method

.method public put(Ljava/lang/String;Z)Lcom/samsung/android/server/uwb/bigdata/LogMessage$Builder;
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Z

    .line 61
    sget-boolean v0, Lcom/samsung/android/server/uwb/bigdata/LogMessage;->DBG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/server/uwb/bigdata/LogMessage;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "boolean: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/server/uwb/bigdata/LogMessage$Builder;->mMessage:Lcom/samsung/android/server/uwb/bigdata/LogMessage;

    invoke-static {v0}, Lcom/samsung/android/server/uwb/bigdata/LogMessage;->-$$Nest$fgetmData(Lcom/samsung/android/server/uwb/bigdata/LogMessage;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    goto :goto_0

    .line 65
    :catch_0
    move-exception v0

    .line 66
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/samsung/android/server/uwb/bigdata/LogMessage;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-object p0
.end method

.method public setExtraType(I)Lcom/samsung/android/server/uwb/bigdata/LogMessage$Builder;
    .locals 3
    .param p1, "type"    # I

    .line 55
    sget-boolean v0, Lcom/samsung/android/server/uwb/bigdata/LogMessage;->DBG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/server/uwb/bigdata/LogMessage;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setExtraType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/server/uwb/bigdata/LogMessage$Builder;->mMessage:Lcom/samsung/android/server/uwb/bigdata/LogMessage;

    invoke-static {v0, p1}, Lcom/samsung/android/server/uwb/bigdata/LogMessage;->-$$Nest$fputmExtraType(Lcom/samsung/android/server/uwb/bigdata/LogMessage;I)V

    .line 57
    return-object p0
.end method

.method public setType(I)Lcom/samsung/android/server/uwb/bigdata/LogMessage$Builder;
    .locals 3
    .param p1, "type"    # I

    .line 49
    sget-boolean v0, Lcom/samsung/android/server/uwb/bigdata/LogMessage;->DBG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/server/uwb/bigdata/LogMessage;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/server/uwb/bigdata/LogMessage$Builder;->mMessage:Lcom/samsung/android/server/uwb/bigdata/LogMessage;

    invoke-static {v0, p1}, Lcom/samsung/android/server/uwb/bigdata/LogMessage;->-$$Nest$fputmType(Lcom/samsung/android/server/uwb/bigdata/LogMessage;I)V

    .line 51
    return-object p0
.end method
