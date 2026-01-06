.class Lcom/samsung/android/game/GameManagerService$SecGameFamilyPkgChangeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "GameManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/game/GameManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SecGameFamilyPkgChangeReceiver"
.end annotation


# static fields
.field private static final MSG_PREFIX:Ljava/lang/String; = "SecGameFamilyPkgChangeReceiver, "


# instance fields
.field private final mCallbackHandler:Landroid/os/Handler;

.field final synthetic this$0:Lcom/samsung/android/game/GameManagerService;


# direct methods
.method public constructor <init>(Lcom/samsung/android/game/GameManagerService;)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 1373
    iput-object p1, p0, Lcom/samsung/android/game/GameManagerService$SecGameFamilyPkgChangeReceiver;->this$0:Lcom/samsung/android/game/GameManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 1374
    const-string v0, "com.samsung.android.game."

    .line 1375
    .local v0, "prefix":Ljava/lang/String;
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    move-object v5, v1

    .line 1376
    .local v5, "intentFilter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v5, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1377
    const-string v1, "package"

    invoke-virtual {v5, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 1378
    const-string v1, "com.samsung.android.game."

    const/4 v2, 0x1

    invoke-virtual {v5, v1, v2}, Landroid/content/IntentFilter;->addDataSchemeSpecificPart(Ljava/lang/String;I)V

    .line 1380
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/game/GameManagerService$SecGameFamilyPkgChangeReceiver;->mCallbackHandler:Landroid/os/Handler;

    .line 1381
    invoke-static {p1}, Lcom/samsung/android/game/GameManagerService;->-$$Nest$fgetmContext(Lcom/samsung/android/game/GameManagerService;)Landroid/content/Context;

    move-result-object v2

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    iget-object v7, p0, Lcom/samsung/android/game/GameManagerService$SecGameFamilyPkgChangeReceiver;->mCallbackHandler:Landroid/os/Handler;

    const/4 v8, 0x2

    const/4 v6, 0x0

    move-object v3, p0

    invoke-virtual/range {v2 .. v8}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    .line 1382
    const-string p1, "GameManager"

    const-string v1, "SecGameFamilyPkgChangeReceiver, : ctor"

    invoke-static {p1, v1}, Lcom/samsung/android/game/GmsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1383
    return-void
.end method

.method private getPackageName(Landroid/content/Intent;)Ljava/lang/String;
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .line 1386
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 1387
    .local v0, "uri":Landroid/net/Uri;
    if-eqz v0, :cond_0

    .line 1388
    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 1389
    :cond_0
    const/4 v1, 0x0

    .line 1387
    :goto_0
    return-object v1
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 1394
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1395
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1396
    return-void

    .line 1399
    :cond_0
    invoke-direct {p0, p2}, Lcom/samsung/android/game/GameManagerService$SecGameFamilyPkgChangeReceiver;->getPackageName(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v1

    .line 1400
    .local v1, "pkgName":Ljava/lang/String;
    if-nez v1, :cond_1

    .line 1401
    return-void

    .line 1404
    :cond_1
    const-string v2, "com.samsung.android.game.gamehome"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "GameManager"

    if-eqz v2, :cond_2

    .line 1405
    iget-object v2, p0, Lcom/samsung/android/game/GameManagerService$SecGameFamilyPkgChangeReceiver;->this$0:Lcom/samsung/android/game/GameManagerService;

    const-string v4, "PKG_GAMELAUNCHER changed"

    invoke-static {v2, v4}, Lcom/samsung/android/game/GameManagerService;->-$$Nest$mcheckPkgEnabledState(Lcom/samsung/android/game/GameManagerService;Ljava/lang/String;)V

    .line 1406
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SecGameFamilyPkgChangeReceiver, com.samsung.android.game.gamehome is changed. enabled: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/samsung/android/game/GameManagerService$SecGameFamilyPkgChangeReceiver;->this$0:Lcom/samsung/android/game/GameManagerService;

    invoke-static {v4}, Lcom/samsung/android/game/GameManagerService;->-$$Nest$fgetmIsGameLauncherEnabled(Lcom/samsung/android/game/GameManagerService;)Z

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/samsung/android/game/GmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1407
    iget-object v2, p0, Lcom/samsung/android/game/GameManagerService$SecGameFamilyPkgChangeReceiver;->this$0:Lcom/samsung/android/game/GameManagerService;

    invoke-static {v2}, Lcom/samsung/android/game/GameManagerService;->-$$Nest$fgetmIsGameLauncherEnabled(Lcom/samsung/android/game/GameManagerService;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 1408
    iget-object v2, p0, Lcom/samsung/android/game/GameManagerService$SecGameFamilyPkgChangeReceiver;->this$0:Lcom/samsung/android/game/GameManagerService;

    invoke-static {v2}, Lcom/samsung/android/game/GameManagerService;->-$$Nest$fgetmContext(Lcom/samsung/android/game/GameManagerService;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "pref_setting_gamelauncher_need_fresh_start"

    const/4 v5, 0x1

    invoke-static {v2, v4, v5}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1409
    const-string v2, "SecGameFamilyPkgChangeReceiver, set URI_GAMELAUNCHER_PREF to 1"

    invoke-static {v3, v2}, Lcom/samsung/android/game/GmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1411
    :cond_2
    const-string v2, "com.samsung.android.game.gos"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1412
    iget-object v2, p0, Lcom/samsung/android/game/GameManagerService$SecGameFamilyPkgChangeReceiver;->this$0:Lcom/samsung/android/game/GameManagerService;

    const-string v4, "PKG_GOS changed"

    invoke-static {v2, v4}, Lcom/samsung/android/game/GameManagerService;->-$$Nest$mcheckPkgEnabledState(Lcom/samsung/android/game/GameManagerService;Ljava/lang/String;)V

    .line 1413
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SecGameFamilyPkgChangeReceiver, com.samsung.android.game.gos is changed. enabled: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/samsung/android/game/GameManagerService$SecGameFamilyPkgChangeReceiver;->this$0:Lcom/samsung/android/game/GameManagerService;

    invoke-static {v4}, Lcom/samsung/android/game/GameManagerService;->-$$Nest$fgetmIsGosEnabled(Lcom/samsung/android/game/GameManagerService;)Z

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/samsung/android/game/GmsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1415
    iget-object v2, p0, Lcom/samsung/android/game/GameManagerService$SecGameFamilyPkgChangeReceiver;->this$0:Lcom/samsung/android/game/GameManagerService;

    invoke-static {v2}, Lcom/samsung/android/game/GameManagerService;->-$$Nest$fgetmIsGosEnabled(Lcom/samsung/android/game/GameManagerService;)Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/samsung/android/game/GameManagerService$SecGameFamilyPkgChangeReceiver;->this$0:Lcom/samsung/android/game/GameManagerService;

    invoke-static {v2}, Lcom/samsung/android/game/GameManagerService;->-$$Nest$misMlPidModel(Lcom/samsung/android/game/GameManagerService;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1417
    iget-object v2, p0, Lcom/samsung/android/game/GameManagerService$SecGameFamilyPkgChangeReceiver;->this$0:Lcom/samsung/android/game/GameManagerService;

    invoke-static {v2}, Lcom/samsung/android/game/GameManagerService;->-$$Nest$mclearPackageData(Lcom/samsung/android/game/GameManagerService;)V

    .line 1418
    const-string v2, "SecGameFamilyPkgChangeReceiver,  the user\'s data was reset by disabling GOS"

    invoke-static {v3, v2}, Lcom/samsung/android/game/GmsLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1421
    :cond_3
    :goto_0
    return-void
.end method
