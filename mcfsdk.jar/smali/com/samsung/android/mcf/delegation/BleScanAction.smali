.class public Lcom/samsung/android/mcf/delegation/BleScanAction;
.super Ljava/lang/Object;
.source "BleScanAction.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/mcf/delegation/BleScanAction$Builder;
    }
.end annotation


# static fields
.field private static final KEY_ACTION_NAME:Ljava/lang/String; = "action"

.field private static final KEY_ACTION_TYPE:Ljava/lang/String; = "type"

.field private static final KEY_CLASS_NAME:Ljava/lang/String; = "className"

.field static final KEY_EXTRA:Ljava/lang/String; = "appData"

.field private static final KEY_FLAGS:Ljava/lang/String; = "flags"

.field private static final KEY_PACKAGE_NAME:Ljava/lang/String; = "packageName"

.field private static final TAG:Ljava/lang/String; = "BleScanAction"

.field public static final TYPE_ACTIVITY:I = 0x2

.field public static final TYPE_BROADCAST:I = 0x1

.field public static final TYPE_SERVICE:I


# instance fields
.field private final bundle:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "bundle"    # Landroid/os/Bundle;

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Lcom/samsung/android/mcf/delegation/BleScanAction;->bundle:Landroid/os/Bundle;

    .line 56
    return-void
.end method

.method public static fromJsonString(Ljava/lang/String;)Lcom/samsung/android/mcf/delegation/BleScanAction;
    .locals 9
    .param p0, "jsonString"    # Ljava/lang/String;

    .line 106
    const-string v0, "type"

    const-string v1, "className"

    const-string v2, "packageName"

    const-string v3, "appData"

    const-string v4, "flags"

    const-string v5, "action"

    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 108
    .local v6, "bundle":Landroid/os/Bundle;
    :try_start_0
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 109
    .local v7, "obj":Lorg/json/JSONObject;
    invoke-virtual {v7, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v2, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    invoke-virtual {v7, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v6, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 113
    invoke-virtual {v7, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 114
    invoke-virtual {v7, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v5, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    :cond_0
    invoke-virtual {v7, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 118
    invoke-virtual {v7, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v6, v4, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 121
    :cond_1
    invoke-virtual {v7, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 122
    invoke-virtual {v7, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    :cond_2
    new-instance v0, Lcom/samsung/android/mcf/delegation/BleScanAction;

    invoke-direct {v0, v6}, Lcom/samsung/android/mcf/delegation/BleScanAction;-><init>(Landroid/os/Bundle;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 125
    .end local v7    # "obj":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 126
    .local v0, "e":Lorg/json/JSONException;
    const-string v1, "BleScanAction - "

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v2

    const-string v3, "BleScanAction"

    invoke-static {v3, v1, v2}, Lcom/samsung/android/mcf/common/DLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    const/4 v1, 0x0

    return-object v1
.end method


# virtual methods
.method public getBundle()Landroid/os/Bundle;
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/samsung/android/mcf/delegation/BleScanAction;->bundle:Landroid/os/Bundle;

    return-object v0
.end method

.method public send(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 71
    const-string v0, "-"

    const-string v1, "BleScanAction"

    const-string v2, "send"

    invoke-static {v1, v2, v0}, Lcom/samsung/android/mcf/common/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    iget-object v0, p0, Lcom/samsung/android/mcf/delegation/BleScanAction;->bundle:Landroid/os/Bundle;

    const-string v3, "packageName"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/samsung/android/mcf/delegation/BleScanAction;->bundle:Landroid/os/Bundle;

    .line 73
    const-string v4, "className"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 72
    invoke-virtual {p2, v0, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 75
    iget-object v0, p0, Lcom/samsung/android/mcf/delegation/BleScanAction;->bundle:Landroid/os/Bundle;

    const-string v3, "action"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/samsung/android/mcf/delegation/BleScanAction;->bundle:Landroid/os/Bundle;

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 79
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/mcf/delegation/BleScanAction;->bundle:Landroid/os/Bundle;

    const-string v3, "flags"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 80
    iget-object v0, p0, Lcom/samsung/android/mcf/delegation/BleScanAction;->bundle:Landroid/os/Bundle;

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 83
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/mcf/delegation/BleScanAction;->bundle:Landroid/os/Bundle;

    const-string v3, "appData"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 84
    iget-object v0, p0, Lcom/samsung/android/mcf/delegation/BleScanAction;->bundle:Landroid/os/Bundle;

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 87
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/mcf/delegation/BleScanAction;->bundle:Landroid/os/Bundle;

    const-string v3, "type"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 89
    .local v0, "type":I
    if-nez v0, :cond_3

    .line 90
    :try_start_0
    invoke-virtual {p1, p2}, Landroid/content/Context;->startForegroundService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_1

    .line 96
    :catch_0
    move-exception v3

    goto :goto_0

    .line 91
    :cond_3
    const/4 v3, 0x2

    if-ne v0, v3, :cond_4

    .line 92
    invoke-virtual {p1, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 93
    :cond_4
    const/4 v3, 0x1

    if-ne v0, v3, :cond_5

    .line 94
    const-string v3, "com.samsung.android.mcfserver.permission.USE_PROVIDER_API"

    invoke-virtual {p1, p2, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 97
    .local v3, "e":Ljava/lang/Exception;
    :goto_0
    invoke-static {v1, v2, v3}, Lcom/samsung/android/mcf/common/DLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_2

    .line 98
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_5
    :goto_1
    nop

    .line 99
    :goto_2
    return-void
.end method

.method public toJsonString()Ljava/lang/String;
    .locals 9

    .line 136
    const-string v0, "appData"

    const-string v1, "flags"

    const-string v2, "action"

    const-string v3, "type"

    const-string v4, "className"

    const-string v5, "packageName"

    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 138
    .local v6, "obj":Lorg/json/JSONObject;
    const/4 v7, 0x0

    :try_start_0
    iget-object v8, p0, Lcom/samsung/android/mcf/delegation/BleScanAction;->bundle:Landroid/os/Bundle;

    invoke-virtual {v8, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v5, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 139
    iget-object v5, p0, Lcom/samsung/android/mcf/delegation/BleScanAction;->bundle:Landroid/os/Bundle;

    invoke-virtual {v5, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 140
    iget-object v4, p0, Lcom/samsung/android/mcf/delegation/BleScanAction;->bundle:Landroid/os/Bundle;

    invoke-virtual {v4, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v6, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 142
    iget-object v3, p0, Lcom/samsung/android/mcf/delegation/BleScanAction;->bundle:Landroid/os/Bundle;

    invoke-virtual {v3, v2, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 143
    .local v3, "action":Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 144
    invoke-virtual {v6, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 147
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/mcf/delegation/BleScanAction;->bundle:Landroid/os/Bundle;

    const/4 v4, 0x0

    invoke-virtual {v2, v1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 148
    .local v2, "flags":I
    if-lez v2, :cond_1

    .line 149
    invoke-virtual {v6, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 152
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/mcf/delegation/BleScanAction;->bundle:Landroid/os/Bundle;

    invoke-virtual {v1, v0, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 153
    .local v1, "appData":Ljava/lang/String;
    if-eqz v1, :cond_2

    .line 154
    invoke-virtual {v6, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 156
    :cond_2
    invoke-virtual {v6}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 157
    .end local v1    # "appData":Ljava/lang/String;
    .end local v2    # "flags":I
    .end local v3    # "action":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 158
    .local v0, "e":Lorg/json/JSONException;
    const-string v1, "toJsonObject : "

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v2

    const-string v3, "BleScanAction"

    invoke-static {v3, v1, v2}, Lcom/samsung/android/mcf/common/DLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    .end local v0    # "e":Lorg/json/JSONException;
    return-object v7
.end method
