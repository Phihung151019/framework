.class Lcom/samsung/android/game/PerformancePolicyParser;
.super Ljava/lang/Object;
.source "PerformancePolicyParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/game/PerformancePolicyParser$PerformancePolicy;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "PerformancePolicyParser"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static parse(Ljava/lang/String;)Lcom/samsung/android/game/PerformancePolicyParser$PerformancePolicy;
    .locals 7
    .param p0, "performancePolicyForSsrm"    # Ljava/lang/String;

    .line 22
    new-instance v0, Lcom/samsung/android/game/PerformancePolicyParser$PerformancePolicy;

    invoke-direct {v0}, Lcom/samsung/android/game/PerformancePolicyParser$PerformancePolicy;-><init>()V

    .line 24
    .local v0, "perfPolicy":Lcom/samsung/android/game/PerformancePolicyParser$PerformancePolicy;
    const/4 v1, 0x0

    .line 25
    .local v1, "policyJson":Lorg/json/JSONObject;
    const-string v2, "PerformancePolicyParser"

    if-eqz p0, :cond_0

    .line 27
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v3

    .line 30
    goto :goto_0

    .line 28
    :catch_0
    move-exception v3

    .line 29
    .local v3, "e":Lorg/json/JSONException;
    invoke-static {v2, v3}, Lcom/samsung/android/game/GmsLog;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 32
    .end local v3    # "e":Lorg/json/JSONException;
    :cond_0
    :goto_0
    if-eqz v1, :cond_5

    .line 33
    const-string v3, "siop_mode"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_1

    .line 35
    invoke-virtual {v1, v3, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, v0, Lcom/samsung/android/game/PerformancePolicyParser$PerformancePolicy;->gameMode:I

    .line 37
    :cond_1
    const-string v3, "game_sdk_setting"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 38
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/samsung/android/game/PerformancePolicyParser$PerformancePolicy;->gameSdkSetting:Ljava/lang/String;

    .line 39
    const/4 v3, 0x0

    .line 41
    .local v3, "gameSdkSettingJson":Lorg/json/JSONObject;
    :try_start_1
    new-instance v4, Lorg/json/JSONObject;

    iget-object v6, v0, Lcom/samsung/android/game/PerformancePolicyParser$PerformancePolicy;->gameSdkSetting:Ljava/lang/String;

    invoke-direct {v4, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v3, v4

    .line 44
    goto :goto_1

    .line 42
    :catch_1
    move-exception v4

    .line 43
    .local v4, "e":Lorg/json/JSONException;
    invoke-static {v2, v4}, Lcom/samsung/android/game/GmsLog;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 46
    .end local v4    # "e":Lorg/json/JSONException;
    :goto_1
    if-eqz v3, :cond_4

    .line 47
    const-string v2, "cpu_min_percent"

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 48
    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/samsung/android/game/PerformancePolicyParser$PerformancePolicy;->cpuMinPercent:I

    .line 50
    :cond_2
    const-string v2, "gpu_min_percent"

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 51
    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/samsung/android/game/PerformancePolicyParser$PerformancePolicy;->gpuMinPercent:I

    .line 53
    :cond_3
    const-string v2, "is_supported"

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 54
    invoke-virtual {v3, v2, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, v0, Lcom/samsung/android/game/PerformancePolicyParser$PerformancePolicy;->isGameSdkSupported:Z

    .line 58
    .end local v3    # "gameSdkSettingJson":Lorg/json/JSONObject;
    :cond_4
    const-string v2, "governor_setting"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 59
    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/samsung/android/game/PerformancePolicyParser$PerformancePolicy;->governorSetting:Ljava/lang/String;

    .line 63
    :cond_5
    return-object v0
.end method
