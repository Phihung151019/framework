.class Lcom/samsung/android/game/GosNotifyThread$1;
.super Landroid/database/ContentObserver;
.source "GosNotifyThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/game/GosNotifyThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/game/GosNotifyThread;


# direct methods
.method constructor <init>(Lcom/samsung/android/game/GosNotifyThread;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/game/GosNotifyThread;
    .param p2, "arg0"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 52
    iput-object p1, p0, Lcom/samsung/android/game/GosNotifyThread$1;->this$0:Lcom/samsung/android/game/GosNotifyThread;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method

.method private sendVrrSettingChangedToGos()V
    .locals 4

    .line 70
    const-string v0, "mVrrSecureSettingObserver before send intent to GameIntentService"

    const-string v1, "GosNotifyThread"

    invoke-static {v1, v0}, Lcom/samsung/android/game/GmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.samsung.android.game.gos.GameIntentService"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 72
    .local v0, "sendIntent":Landroid/content/Intent;
    const-string v2, "com.samsung.android.game.gos"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 73
    const-string v2, "type"

    const/16 v3, 0xe

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 75
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/game/GosNotifyThread$1;->this$0:Lcom/samsung/android/game/GosNotifyThread;

    invoke-static {v2}, Lcom/samsung/android/game/GosNotifyThread;->-$$Nest$fgetmContext(Lcom/samsung/android/game/GosNotifyThread;)Landroid/content/Context;

    move-result-object v2

    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v2, v0, v3}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    .line 76
    const-string v2, "mVrrSecureSettingObserver after send intent to GameIntentService"

    invoke-static {v1, v2}, Lcom/samsung/android/game/GmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    goto :goto_0

    .line 77
    :catch_0
    move-exception v2

    .line 78
    .local v2, "e":Ljava/lang/RuntimeException;
    const-string v3, "mVrrSecureSettingObserver failed to send intent to GameIntentService"

    invoke-static {v1, v3}, Lcom/samsung/android/game/GmsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    invoke-virtual {v2}, Ljava/lang/RuntimeException;->printStackTrace()V

    .line 81
    .end local v2    # "e":Ljava/lang/RuntimeException;
    :goto_0
    return-void
.end method


# virtual methods
.method public deliverSelfNotifications()Z
    .locals 1

    .line 55
    const/4 v0, 0x1

    return v0
.end method

.method public onChange(Z)V
    .locals 7
    .param p1, "selfChange"    # Z

    .line 60
    iget-object v0, p0, Lcom/samsung/android/game/GosNotifyThread$1;->this$0:Lcom/samsung/android/game/GosNotifyThread;

    invoke-static {v0}, Lcom/samsung/android/game/GosNotifyThread;->-$$Nest$fgetmContext(Lcom/samsung/android/game/GosNotifyThread;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "refresh_rate_mode"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 61
    .local v0, "refreshRateMode":I
    iget-object v1, p0, Lcom/samsung/android/game/GosNotifyThread$1;->this$0:Lcom/samsung/android/game/GosNotifyThread;

    invoke-static {v1}, Lcom/samsung/android/game/GosNotifyThread;->-$$Nest$fgetmContext(Lcom/samsung/android/game/GosNotifyThread;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "game_display_hz_48"

    invoke-static {v1, v3, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 62
    .local v1, "allowed48ByUser":I
    iget-object v2, p0, Lcom/samsung/android/game/GosNotifyThread$1;->this$0:Lcom/samsung/android/game/GosNotifyThread;

    invoke-static {v2}, Lcom/samsung/android/game/GosNotifyThread;->-$$Nest$fgetmContext(Lcom/samsung/android/game/GosNotifyThread;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "game_refresh_rate_max_hz"

    const/4 v4, -0x1

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 63
    .local v2, "refreshRateMaxHzByUser":I
    nop

    .line 64
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    filled-new-array {v3, v4, v5, v6}, [Ljava/lang/Object;

    move-result-object v3

    .line 63
    const-string v4, "mVrrSecureSettingObserver onChange: %s, refresh_rate_mode: %s, game_display_hz_48: %s, game_refresh_rate_max_hz: %s"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "GosNotifyThread"

    invoke-static {v4, v3}, Lcom/samsung/android/game/GmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    invoke-direct {p0}, Lcom/samsung/android/game/GosNotifyThread$1;->sendVrrSettingChangedToGos()V

    .line 67
    return-void
.end method
