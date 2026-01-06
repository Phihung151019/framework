.class public Lcom/samsung/android/game/ApBooster;
.super Ljava/lang/Object;
.source "ApBooster.java"


# static fields
.field private static final MSG_ACQUIRE:I = 0x0

.field private static final MSG_RELEASE:I = 0x1

.field private static final MSG_SET_DVFS_VALUE:I = 0x2

.field private static final TAG:Ljava/lang/String; = "ApBooster"

.field private static final TARGET_BUS:I = 0x2

.field private static final TARGET_CPU:I = 0x1


# instance fields
.field private mBusHelper:Lcom/samsung/android/os/SemDvfsManager;

.field private mCpuHelper:Lcom/samsung/android/os/SemDvfsManager;

.field private mCstateDisable:Lcom/samsung/android/os/SemDvfsManager;

.field private mHandler:Landroid/os/Handler;


# direct methods
.method static bridge synthetic -$$Nest$macquire(Lcom/samsung/android/game/ApBooster;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/game/ApBooster;->acquire(II)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mrelease(Lcom/samsung/android/game/ApBooster;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/game/ApBooster;->release()V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetDvfsValue(Lcom/samsung/android/game/ApBooster;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/game/ApBooster;->setDvfsValue(II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const/16 v0, 0xc

    invoke-static {p1, v0}, Lcom/samsung/android/os/SemDvfsManager;->createInstance(Landroid/content/Context;I)Lcom/samsung/android/os/SemDvfsManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/game/ApBooster;->mCpuHelper:Lcom/samsung/android/os/SemDvfsManager;

    .line 29
    const/16 v0, 0x13

    invoke-static {p1, v0}, Lcom/samsung/android/os/SemDvfsManager;->createInstance(Landroid/content/Context;I)Lcom/samsung/android/os/SemDvfsManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/game/ApBooster;->mBusHelper:Lcom/samsung/android/os/SemDvfsManager;

    .line 30
    const/16 v0, 0x17

    invoke-static {p1, v0}, Lcom/samsung/android/os/SemDvfsManager;->createInstance(Landroid/content/Context;I)Lcom/samsung/android/os/SemDvfsManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/game/ApBooster;->mCstateDisable:Lcom/samsung/android/os/SemDvfsManager;

    .line 32
    new-instance v0, Lcom/samsung/android/game/ApBooster$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/game/ApBooster$1;-><init>(Lcom/samsung/android/game/ApBooster;)V

    iput-object v0, p0, Lcom/samsung/android/game/ApBooster;->mHandler:Landroid/os/Handler;

    .line 48
    return-void
.end method

.method private acquire(II)V
    .locals 4
    .param p1, "targetBit"    # I
    .param p2, "timeout"    # I

    .line 90
    iget-object v0, p0, Lcom/samsung/android/game/ApBooster;->mCpuHelper:Lcom/samsung/android/os/SemDvfsManager;

    if-eqz v0, :cond_0

    and-int/lit8 v0, p1, 0x1

    if-lez v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/samsung/android/game/ApBooster;->mCpuHelper:Lcom/samsung/android/os/SemDvfsManager;

    mul-int/lit16 v1, p2, 0x3e8

    invoke-virtual {v0, v1}, Lcom/samsung/android/os/SemDvfsManager;->acquire(I)V

    .line 94
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/game/ApBooster;->mBusHelper:Lcom/samsung/android/os/SemDvfsManager;

    if-eqz v0, :cond_1

    and-int/lit8 v0, p1, 0x2

    if-lez v0, :cond_1

    .line 96
    iget-object v0, p0, Lcom/samsung/android/game/ApBooster;->mBusHelper:Lcom/samsung/android/os/SemDvfsManager;

    mul-int/lit16 v1, p2, 0x3e8

    invoke-virtual {v0, v1}, Lcom/samsung/android/os/SemDvfsManager;->acquire(I)V

    .line 98
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "/sys/kernel/gmc/maxlock_delay_sec"

    invoke-static {v1, v0}, Lcom/samsung/android/game/Util;->writeFile(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 99
    .local v0, "ret":Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "acquire(). invoked Util.writeFile, timeout: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", ret: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ApBooster"

    invoke-static {v2, v1}, Lcom/samsung/android/game/GmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/game/ApBooster;->mCstateDisable:Lcom/samsung/android/os/SemDvfsManager;

    if-eqz v1, :cond_2

    .line 104
    iget-object v1, p0, Lcom/samsung/android/game/ApBooster;->mCstateDisable:Lcom/samsung/android/os/SemDvfsManager;

    mul-int/lit16 v3, p2, 0x3e8

    invoke-virtual {v1, v3}, Lcom/samsung/android/os/SemDvfsManager;->acquire(I)V

    .line 105
    const-string v1, "mCstateDisable.acquire()"

    invoke-static {v2, v1}, Lcom/samsung/android/game/GmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 109
    :cond_2
    goto :goto_0

    .line 107
    :catch_0
    move-exception v1

    .line 108
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v2, v1}, Lcom/samsung/android/game/GmsLog;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 110
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method private release()V
    .locals 2

    .line 129
    const-string v0, "ApBooster"

    iget-object v1, p0, Lcom/samsung/android/game/ApBooster;->mCpuHelper:Lcom/samsung/android/os/SemDvfsManager;

    if-eqz v1, :cond_0

    .line 130
    iget-object v1, p0, Lcom/samsung/android/game/ApBooster;->mCpuHelper:Lcom/samsung/android/os/SemDvfsManager;

    invoke-virtual {v1}, Lcom/samsung/android/os/SemDvfsManager;->release()V

    .line 132
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/game/ApBooster;->mBusHelper:Lcom/samsung/android/os/SemDvfsManager;

    if-eqz v1, :cond_1

    .line 133
    iget-object v1, p0, Lcom/samsung/android/game/ApBooster;->mBusHelper:Lcom/samsung/android/os/SemDvfsManager;

    invoke-virtual {v1}, Lcom/samsung/android/os/SemDvfsManager;->release()V

    .line 138
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/game/ApBooster;->mCstateDisable:Lcom/samsung/android/os/SemDvfsManager;

    if-eqz v1, :cond_2

    .line 139
    iget-object v1, p0, Lcom/samsung/android/game/ApBooster;->mCstateDisable:Lcom/samsung/android/os/SemDvfsManager;

    invoke-virtual {v1}, Lcom/samsung/android/os/SemDvfsManager;->release()V

    .line 140
    const-string v1, "mCstateDisable.release()"

    invoke-static {v0, v1}, Lcom/samsung/android/game/GmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 144
    :cond_2
    goto :goto_0

    .line 142
    :catch_0
    move-exception v1

    .line 143
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v0, v1}, Lcom/samsung/android/game/GmsLog;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 145
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method private setDvfsValue(II)V
    .locals 2
    .param p1, "target"    # I
    .param p2, "freq"    # I

    .line 186
    const/4 v0, 0x1

    if-ne v0, p1, :cond_0

    .line 187
    iget-object v0, p0, Lcom/samsung/android/game/ApBooster;->mCpuHelper:Lcom/samsung/android/os/SemDvfsManager;

    invoke-virtual {v0, p2}, Lcom/samsung/android/os/SemDvfsManager;->setDvfsValue(I)V

    goto :goto_0

    .line 188
    :cond_0
    const/4 v0, 0x2

    if-ne v0, p1, :cond_1

    .line 189
    iget-object v0, p0, Lcom/samsung/android/game/ApBooster;->mBusHelper:Lcom/samsung/android/os/SemDvfsManager;

    invoke-virtual {v0, p2}, Lcom/samsung/android/os/SemDvfsManager;->setDvfsValue(I)V

    goto :goto_0

    .line 191
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setDvfsValue()-wrong target: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ApBooster"

    invoke-static {v1, v0}, Lcom/samsung/android/game/GmsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    :goto_0
    return-void
.end method


# virtual methods
.method public callAcquire(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "jsonParam"    # Ljava/lang/String;

    .line 52
    const-string v0, "value_int_1"

    const-string v1, "value_string_1"

    const-string v2, "{\"value_bool_1\":false}"

    .line 53
    .local v2, "response":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "callAcquire(), jsonParam: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ApBooster"

    invoke-static {v4, v3}, Lcom/samsung/android/game/GmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    if-nez p1, :cond_0

    return-object v2

    .line 57
    :cond_0
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 59
    .local v3, "requestJson":Lorg/json/JSONObject;
    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 60
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    goto :goto_2

    .line 64
    :cond_1
    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 65
    .local v1, "target":Ljava/lang/String;
    const/4 v5, 0x0

    .line 66
    .local v5, "targetBit":I
    if-eqz v1, :cond_2

    const-string v6, "cpu"

    invoke-virtual {v1, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 67
    or-int/lit8 v5, v5, 0x1

    .line 68
    :cond_2
    if-eqz v1, :cond_3

    const-string v6, "bus"

    invoke-virtual {v1, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 69
    or-int/lit8 v5, v5, 0x2

    .line 70
    :cond_3
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 71
    .local v0, "acquireTimeSec":I
    if-eqz v5, :cond_5

    if-gtz v0, :cond_4

    goto :goto_1

    .line 75
    :cond_4
    iget-object v6, p0, Lcom/samsung/android/game/ApBooster;->mHandler:Landroid/os/Handler;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    .line 76
    .local v6, "msg":Landroid/os/Message;
    iput v5, v6, Landroid/os/Message;->arg1:I

    .line 77
    iput v0, v6, Landroid/os/Message;->arg2:I

    .line 78
    iget-object v7, p0, Lcom/samsung/android/game/ApBooster;->mHandler:Landroid/os/Handler;

    invoke-virtual {v7, v6}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 80
    const-string v4, "{\"value_bool_1\":true}"
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v4

    .line 85
    .end local v0    # "acquireTimeSec":I
    .end local v1    # "target":Ljava/lang/String;
    .end local v3    # "requestJson":Lorg/json/JSONObject;
    .end local v5    # "targetBit":I
    .end local v6    # "msg":Landroid/os/Message;
    :goto_0
    goto :goto_3

    .line 72
    .restart local v0    # "acquireTimeSec":I
    .restart local v1    # "target":Ljava/lang/String;
    .restart local v3    # "requestJson":Lorg/json/JSONObject;
    .restart local v5    # "targetBit":I
    :cond_5
    :goto_1
    return-object v2

    .line 61
    .end local v0    # "acquireTimeSec":I
    .end local v1    # "target":Ljava/lang/String;
    .end local v5    # "targetBit":I
    :cond_6
    :goto_2
    return-object v2

    .line 83
    .end local v3    # "requestJson":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 84
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "callAcquire()-exception"

    invoke-static {v4, v1}, Lcom/samsung/android/game/GmsLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 81
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 82
    .local v0, "e":Lorg/json/JSONException;
    const-string v1, "callAcquire()-json exception"

    invoke-static {v4, v1}, Lcom/samsung/android/game/GmsLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .end local v0    # "e":Lorg/json/JSONException;
    goto :goto_0

    .line 86
    :goto_3
    return-object v2
.end method

.method public callRelease()Ljava/lang/String;
    .locals 4

    .line 115
    const-string v0, "{\"value_bool_1\":false}"

    .line 118
    .local v0, "response":Ljava/lang/String;
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/game/ApBooster;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 119
    .local v1, "msg":Landroid/os/Message;
    iget-object v2, p0, Lcom/samsung/android/game/ApBooster;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 120
    const-string v2, "{\"value_bool_1\":true}"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    .line 123
    .end local v1    # "msg":Landroid/os/Message;
    goto :goto_0

    .line 121
    :catch_0
    move-exception v1

    .line 122
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "ApBooster"

    const-string v3, "callRelease()-exception"

    invoke-static {v2, v3}, Lcom/samsung/android/game/GmsLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return-object v0
.end method

.method public callSetDvfsValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "jsonParam"    # Ljava/lang/String;

    .line 150
    const-string v0, "value_int_1"

    const-string v1, "value_string_1"

    const-string v2, "{\"value_bool_1\":false}"

    .line 151
    .local v2, "response":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "callSetDvfsValue(), jsonParam: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ApBooster"

    invoke-static {v4, v3}, Lcom/samsung/android/game/GmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    if-nez p1, :cond_0

    return-object v2

    .line 155
    :cond_0
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 157
    .local v3, "requestJson":Lorg/json/JSONObject;
    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 158
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    goto :goto_2

    .line 162
    :cond_1
    iget-object v5, p0, Lcom/samsung/android/game/ApBooster;->mHandler:Landroid/os/Handler;

    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    .line 163
    .local v5, "msg":Landroid/os/Message;
    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 164
    .local v1, "targetStr":Ljava/lang/String;
    const-string v7, "cpu"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 165
    const/4 v6, 0x1

    iput v6, v5, Landroid/os/Message;->arg1:I

    goto :goto_0

    .line 166
    :cond_2
    const-string v7, "bus"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 167
    iput v6, v5, Landroid/os/Message;->arg1:I

    .line 172
    :goto_0
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 173
    .local v0, "freq":I
    iput v0, v5, Landroid/os/Message;->arg2:I

    .line 174
    iget-object v6, p0, Lcom/samsung/android/game/ApBooster;->mHandler:Landroid/os/Handler;

    invoke-virtual {v6, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 176
    const-string v4, "{\"value_bool_1\":true}"

    move-object v2, v4

    .line 181
    .end local v0    # "freq":I
    .end local v1    # "targetStr":Ljava/lang/String;
    .end local v3    # "requestJson":Lorg/json/JSONObject;
    .end local v5    # "msg":Landroid/os/Message;
    :goto_1
    goto :goto_3

    .line 169
    .restart local v1    # "targetStr":Ljava/lang/String;
    .restart local v3    # "requestJson":Lorg/json/JSONObject;
    .restart local v5    # "msg":Landroid/os/Message;
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "callSetDvfsValue()-wrong target name: "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/samsung/android/game/GmsLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 170
    return-object v2

    .line 159
    .end local v1    # "targetStr":Ljava/lang/String;
    .end local v5    # "msg":Landroid/os/Message;
    :cond_4
    :goto_2
    return-object v2

    .line 179
    .end local v3    # "requestJson":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 180
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "callSetDvfsValue()-exception"

    invoke-static {v4, v1}, Lcom/samsung/android/game/GmsLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 177
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 178
    .local v0, "e":Lorg/json/JSONException;
    const-string v1, "callSetDvfsValue()-json exception"

    invoke-static {v4, v1}, Lcom/samsung/android/game/GmsLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .end local v0    # "e":Lorg/json/JSONException;
    goto :goto_1

    .line 182
    :goto_3
    return-object v2
.end method
