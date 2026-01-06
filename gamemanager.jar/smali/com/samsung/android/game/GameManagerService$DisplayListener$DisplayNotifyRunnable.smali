.class Lcom/samsung/android/game/GameManagerService$DisplayListener$DisplayNotifyRunnable;
.super Ljava/lang/Object;
.source "GameManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/game/GameManagerService$DisplayListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DisplayNotifyRunnable"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/game/GameManagerService$DisplayListener;


# direct methods
.method private constructor <init>(Lcom/samsung/android/game/GameManagerService$DisplayListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 1322
    iput-object p1, p0, Lcom/samsung/android/game/GameManagerService$DisplayListener$DisplayNotifyRunnable;->this$1:Lcom/samsung/android/game/GameManagerService$DisplayListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/game/GameManagerService$DisplayListener;Lcom/samsung/android/game/GameManagerService-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/game/GameManagerService$DisplayListener$DisplayNotifyRunnable;-><init>(Lcom/samsung/android/game/GameManagerService$DisplayListener;)V

    return-void
.end method

.method private sendResolutionChangedToGameLauncher()V
    .locals 4

    .line 1349
    const-string v0, "before send intent to GameLauncher"

    const-string v1, "GameManager"

    invoke-static {v1, v0}, Lcom/samsung/android/game/GmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1350
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.samsung.android.game.gamehome.GAME_PACKAGE_CHANGED"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1351
    .local v0, "gameLauncherIntent":Landroid/content/Intent;
    const-string v2, "com.samsung.android.game.gamehome"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1352
    const-string v2, "type"

    const/4 v3, 0x5

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1354
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/game/GameManagerService$DisplayListener$DisplayNotifyRunnable;->this$1:Lcom/samsung/android/game/GameManagerService$DisplayListener;

    iget-object v2, v2, Lcom/samsung/android/game/GameManagerService$DisplayListener;->this$0:Lcom/samsung/android/game/GameManagerService;

    invoke-static {v2}, Lcom/samsung/android/game/GameManagerService;->-$$Nest$fgetmContext(Lcom/samsung/android/game/GameManagerService;)Landroid/content/Context;

    move-result-object v2

    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v2, v0, v3}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    .line 1355
    const-string v2, "after send intent to GameLauncher"

    invoke-static {v1, v2}, Lcom/samsung/android/game/GmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1359
    goto :goto_0

    .line 1356
    :catch_0
    move-exception v2

    .line 1357
    .local v2, "e":Ljava/lang/RuntimeException;
    const-string v3, "failed to send intent to GameLauncher"

    invoke-static {v1, v3}, Lcom/samsung/android/game/GmsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1358
    invoke-virtual {v2}, Ljava/lang/RuntimeException;->printStackTrace()V

    .line 1360
    .end local v2    # "e":Ljava/lang/RuntimeException;
    :goto_0
    return-void
.end method

.method private sendResolutionChangedToGos()V
    .locals 4

    .line 1335
    const-string v0, "before send intent to GameIntentService"

    const-string v1, "GameManager"

    invoke-static {v1, v0}, Lcom/samsung/android/game/GmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1336
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.samsung.android.game.gos.GameIntentService"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1337
    .local v0, "sendIntent":Landroid/content/Intent;
    const-string v2, "com.samsung.android.game.gos"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1338
    const-string v2, "type"

    const/4 v3, 0x5

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1340
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/game/GameManagerService$DisplayListener$DisplayNotifyRunnable;->this$1:Lcom/samsung/android/game/GameManagerService$DisplayListener;

    iget-object v2, v2, Lcom/samsung/android/game/GameManagerService$DisplayListener;->this$0:Lcom/samsung/android/game/GameManagerService;

    invoke-static {v2}, Lcom/samsung/android/game/GameManagerService;->-$$Nest$fgetmContext(Lcom/samsung/android/game/GameManagerService;)Landroid/content/Context;

    move-result-object v2

    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v2, v0, v3}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    .line 1341
    const-string v2, "after send intent to GameIntentService"

    invoke-static {v1, v2}, Lcom/samsung/android/game/GmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1345
    goto :goto_0

    .line 1342
    :catch_0
    move-exception v2

    .line 1343
    .local v2, "e":Ljava/lang/RuntimeException;
    const-string v3, "failed to send intent to GameIntentService"

    invoke-static {v1, v3}, Lcom/samsung/android/game/GmsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1344
    invoke-virtual {v2}, Ljava/lang/RuntimeException;->printStackTrace()V

    .line 1346
    .end local v2    # "e":Ljava/lang/RuntimeException;
    :goto_0
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1325
    const-string v0, "GameManager"

    const-string v1, "DisplayNotifyRunnable()"

    invoke-static {v0, v1}, Lcom/samsung/android/game/GmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1327
    invoke-direct {p0}, Lcom/samsung/android/game/GameManagerService$DisplayListener$DisplayNotifyRunnable;->sendResolutionChangedToGos()V

    .line 1329
    iget-object v0, p0, Lcom/samsung/android/game/GameManagerService$DisplayListener$DisplayNotifyRunnable;->this$1:Lcom/samsung/android/game/GameManagerService$DisplayListener;

    iget-object v0, v0, Lcom/samsung/android/game/GameManagerService$DisplayListener;->this$0:Lcom/samsung/android/game/GameManagerService;

    invoke-static {v0}, Lcom/samsung/android/game/GameManagerService;->-$$Nest$fgetmIsGameLauncherEnabled(Lcom/samsung/android/game/GameManagerService;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1330
    invoke-direct {p0}, Lcom/samsung/android/game/GameManagerService$DisplayListener$DisplayNotifyRunnable;->sendResolutionChangedToGameLauncher()V

    .line 1332
    :cond_0
    return-void
.end method
