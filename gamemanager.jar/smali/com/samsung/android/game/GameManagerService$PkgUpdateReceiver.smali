.class final Lcom/samsung/android/game/GameManagerService$PkgUpdateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "GameManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/game/GameManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PkgUpdateReceiver"
.end annotation


# static fields
.field private static final MSG_PREFIX:Ljava/lang/String; = "PkgUpdateReceiver, "


# instance fields
.field final synthetic this$0:Lcom/samsung/android/game/GameManagerService;


# direct methods
.method public constructor <init>(Lcom/samsung/android/game/GameManagerService;)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 1468
    iput-object p1, p0, Lcom/samsung/android/game/GameManagerService$PkgUpdateReceiver;->this$0:Lcom/samsung/android/game/GameManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 1469
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    move-object v4, v0

    .line 1470
    .local v4, "intentFilter":Landroid/content/IntentFilter;
    const-string v0, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v4, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1471
    const-string v0, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v4, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1472
    const-string v0, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v4, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1473
    const-string v0, "com.samsung.android.intent.action.SET_APPCATEGORY"

    invoke-virtual {v4, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1474
    const-string v0, "package"

    invoke-virtual {v4, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 1476
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v6

    .line 1477
    .local v6, "callbackHandler":Landroid/os/Handler;
    invoke-static {p1}, Lcom/samsung/android/game/GameManagerService;->-$$Nest$fgetmContext(Lcom/samsung/android/game/GameManagerService;)Landroid/content/Context;

    move-result-object v1

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v5, 0x0

    const/4 v7, 0x2

    move-object v2, p0

    invoke-virtual/range {v1 .. v7}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    .line 1478
    const-string p1, "GameManager"

    const-string v0, "PkgUpdateReceiver, : ctor"

    invoke-static {p1, v0}, Lcom/samsung/android/game/GmsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1479
    return-void
.end method

.method private isServiceRunning(Ljava/lang/String;)Z
    .locals 4
    .param p1, "pkgName"    # Ljava/lang/String;

    .line 1608
    iget-object v0, p0, Lcom/samsung/android/game/GameManagerService$PkgUpdateReceiver;->this$0:Lcom/samsung/android/game/GameManagerService;

    invoke-static {v0}, Lcom/samsung/android/game/GameManagerService;->-$$Nest$fgetmActivityManager(Lcom/samsung/android/game/GameManagerService;)Landroid/app/ActivityManager;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1609
    return v1

    .line 1612
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/game/GameManagerService$PkgUpdateReceiver;->this$0:Lcom/samsung/android/game/GameManagerService;

    invoke-static {v0}, Lcom/samsung/android/game/GameManagerService;->-$$Nest$fgetmActivityManager(Lcom/samsung/android/game/GameManagerService;)Landroid/app/ActivityManager;

    move-result-object v0

    const v2, 0x7fffffff

    invoke-virtual {v0, v2}, Landroid/app/ActivityManager;->getRunningServices(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningServiceInfo;

    .line 1613
    .local v2, "rsi":Landroid/app/ActivityManager$RunningServiceInfo;
    if-eqz p1, :cond_1

    iget-object v3, v2, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1614
    const/4 v0, 0x1

    return v0

    .line 1615
    .end local v2    # "rsi":Landroid/app/ActivityManager$RunningServiceInfo;
    :cond_1
    goto :goto_0

    .line 1616
    :cond_2
    return v1
.end method

.method private onPackageCategoryHintSet(Ljava/lang/String;I)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 1620
    invoke-static {}, Lcom/samsung/android/game/GameManagerService;->-$$Nest$sfgetIS_CHINA_DEVICE()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1622
    new-instance v0, Lcom/samsung/android/game/PmAppCategoryManager;

    iget-object v1, p0, Lcom/samsung/android/game/GameManagerService$PkgUpdateReceiver;->this$0:Lcom/samsung/android/game/GameManagerService;

    invoke-static {v1}, Lcom/samsung/android/game/GameManagerService;->-$$Nest$fgetmContext(Lcom/samsung/android/game/GameManagerService;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/game/PmAppCategoryManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Lcom/samsung/android/game/PmAppCategoryManager;->getCategoryHintFromAllUsers(Ljava/lang/String;)I

    move-result v0

    .line 1623
    .local v0, "appInfoCategory":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PkgUpdateReceiver, onPackageCategoryHintSet(), package="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", userId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", appInfoCategory="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "GameManager"

    invoke-static {v2, v1}, Lcom/samsung/android/game/GmsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1625
    iget-object v1, p0, Lcom/samsung/android/game/GameManagerService$PkgUpdateReceiver;->this$0:Lcom/samsung/android/game/GameManagerService;

    invoke-static {v1}, Lcom/samsung/android/game/GameManagerService;->-$$Nest$fgetmGosNotifyThread(Lcom/samsung/android/game/GameManagerService;)Lcom/samsung/android/game/GosNotifyThread;

    move-result-object v1

    const/16 v2, 0x9

    invoke-virtual {v1, v2, p1, p2}, Lcom/samsung/android/game/GosNotifyThread;->sendPackageMessage(ILjava/lang/String;I)V

    .line 1627
    .end local v0    # "appInfoCategory":I
    :cond_0
    return-void
.end method

.method private removeFromVrrGroup(Ljava/lang/String;)V
    .locals 1
    .param p1, "pkgName"    # Ljava/lang/String;

    .line 1560
    iget-object v0, p0, Lcom/samsung/android/game/GameManagerService$PkgUpdateReceiver;->this$0:Lcom/samsung/android/game/GameManagerService;

    invoke-static {v0}, Lcom/samsung/android/game/GameManagerService;->-$$Nest$fgetmVrrModeMap(Lcom/samsung/android/game/GameManagerService;)Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/game/GameManagerService$PkgUpdateReceiver;->this$0:Lcom/samsung/android/game/GameManagerService;

    invoke-static {v0}, Lcom/samsung/android/game/GameManagerService;->-$$Nest$fgetmVrrModeMap(Lcom/samsung/android/game/GameManagerService;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1561
    iget-object v0, p0, Lcom/samsung/android/game/GameManagerService$PkgUpdateReceiver;->this$0:Lcom/samsung/android/game/GameManagerService;

    invoke-static {v0}, Lcom/samsung/android/game/GameManagerService;->-$$Nest$fgetmVrrModeMap(Lcom/samsung/android/game/GameManagerService;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1563
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/game/GameManagerService$PkgUpdateReceiver;->this$0:Lcom/samsung/android/game/GameManagerService;

    invoke-static {v0}, Lcom/samsung/android/game/GameManagerService;->-$$Nest$fgetmDisabledVrrControlList(Lcom/samsung/android/game/GameManagerService;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/game/GameManagerService$PkgUpdateReceiver;->this$0:Lcom/samsung/android/game/GameManagerService;

    invoke-static {v0}, Lcom/samsung/android/game/GameManagerService;->-$$Nest$fgetmDisabledVrrControlList(Lcom/samsung/android/game/GameManagerService;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1564
    iget-object v0, p0, Lcom/samsung/android/game/GameManagerService$PkgUpdateReceiver;->this$0:Lcom/samsung/android/game/GameManagerService;

    invoke-static {v0}, Lcom/samsung/android/game/GameManagerService;->-$$Nest$fgetmDisabledVrrControlList(Lcom/samsung/android/game/GameManagerService;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1566
    :cond_1
    return-void
.end method


# virtual methods
.method public onPackageAdded(Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 4
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "user"    # Landroid/os/UserHandle;

    .line 1569
    if-eqz p1, :cond_4

    if-nez p2, :cond_0

    goto/16 :goto_1

    .line 1572
    :cond_0
    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    .line 1573
    .local v0, "userId":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PkgUpdateReceiver, onPackageAdded : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " userHandle : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " userId : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "GameManager"

    invoke-static {v2, v1}, Lcom/samsung/android/game/GmsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1576
    iget-object v1, p0, Lcom/samsung/android/game/GameManagerService$PkgUpdateReceiver;->this$0:Lcom/samsung/android/game/GameManagerService;

    invoke-static {v1}, Lcom/samsung/android/game/GameManagerService;->-$$Nest$fgetmGosNotifyThread(Lcom/samsung/android/game/GameManagerService;)Lcom/samsung/android/game/GosNotifyThread;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, v3, p1, v0}, Lcom/samsung/android/game/GosNotifyThread;->sendPackageMessage(ILjava/lang/String;I)V

    .line 1578
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PkgUpdateReceiver, com.samsung.android.game.gos is enabled : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/samsung/android/game/GameManagerService$PkgUpdateReceiver;->this$0:Lcom/samsung/android/game/GameManagerService;

    invoke-static {v3}, Lcom/samsung/android/game/GameManagerService;->-$$Nest$fgetmIsGosEnabled(Lcom/samsung/android/game/GameManagerService;)Z

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/samsung/android/game/GmsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1580
    const-string v1, "com.samsung.android.game.gamehome"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1581
    const-string v1, "PkgUpdateReceiver, com.samsung.android.game.gamehome is installed"

    invoke-static {v2, v1}, Lcom/samsung/android/game/GmsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1582
    iget-object v1, p0, Lcom/samsung/android/game/GameManagerService$PkgUpdateReceiver;->this$0:Lcom/samsung/android/game/GameManagerService;

    const-string v2, "PKG_GAMELAUNCHER installed"

    invoke-static {v1, v2}, Lcom/samsung/android/game/GameManagerService;->-$$Nest$mcheckPkgEnabledState(Lcom/samsung/android/game/GameManagerService;Ljava/lang/String;)V

    goto :goto_0

    .line 1583
    :cond_1
    const-string v1, "com.samsung.android.game.gametools"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1584
    const-string v1, "PkgUpdateReceiver, com.samsung.android.game.gametools is installed"

    invoke-static {v2, v1}, Lcom/samsung/android/game/GmsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1585
    iget-object v1, p0, Lcom/samsung/android/game/GameManagerService$PkgUpdateReceiver;->this$0:Lcom/samsung/android/game/GameManagerService;

    const-string v2, "PKG_GAMEBOOSTER installed"

    invoke-static {v1, v2}, Lcom/samsung/android/game/GameManagerService;->-$$Nest$mcheckPkgEnabledState(Lcom/samsung/android/game/GameManagerService;Ljava/lang/String;)V

    goto :goto_0

    .line 1586
    :cond_2
    const-string v1, "com.samsung.android.game.gos"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1587
    const-string v1, "PkgUpdateReceiver, com.samsung.android.game.gos is installed"

    invoke-static {v2, v1}, Lcom/samsung/android/game/GmsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1588
    iget-object v1, p0, Lcom/samsung/android/game/GameManagerService$PkgUpdateReceiver;->this$0:Lcom/samsung/android/game/GameManagerService;

    const-string v2, "PKG_GOS installed"

    invoke-static {v1, v2}, Lcom/samsung/android/game/GameManagerService;->-$$Nest$mcheckPkgEnabledState(Lcom/samsung/android/game/GameManagerService;Ljava/lang/String;)V

    .line 1590
    :cond_3
    :goto_0
    return-void

    .line 1570
    .end local v0    # "userId":I
    :cond_4
    :goto_1
    return-void
.end method

.method public onPackageRemoved(Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 5
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "user"    # Landroid/os/UserHandle;

    .line 1510
    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    .line 1511
    .local v0, "userId":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PkgUpdateReceiver, onPackageRemoved(). pkgName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", userId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "GameManager"

    invoke-static {v2, v1}, Lcom/samsung/android/game/GmsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1512
    if-nez p1, :cond_0

    .line 1513
    return-void

    .line 1516
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/game/GameManagerService$PkgUpdateReceiver;->this$0:Lcom/samsung/android/game/GameManagerService;

    invoke-static {v1}, Lcom/samsung/android/game/GameManagerService;->-$$Nest$fgetmContext(Lcom/samsung/android/game/GameManagerService;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1, v0}, Lcom/samsung/android/game/Util;->isPkgInstalled(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1517
    const-string v1, "PkgUpdateReceiver, onPackageRemoved(). The package is still installed. It is not uninstallation but update"

    invoke-static {v2, v1}, Lcom/samsung/android/game/GmsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1519
    return-void

    .line 1523
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/game/GameManagerService$PkgUpdateReceiver;->this$0:Lcom/samsung/android/game/GameManagerService;

    invoke-static {v1}, Lcom/samsung/android/game/GameManagerService;->-$$Nest$fgetmGosNotifyThread(Lcom/samsung/android/game/GameManagerService;)Lcom/samsung/android/game/GosNotifyThread;

    move-result-object v1

    const/4 v3, 0x1

    invoke-virtual {v1, v3, p1, v0}, Lcom/samsung/android/game/GosNotifyThread;->sendPackageMessage(ILjava/lang/String;I)V

    .line 1525
    iget-object v1, p0, Lcom/samsung/android/game/GameManagerService$PkgUpdateReceiver;->this$0:Lcom/samsung/android/game/GameManagerService;

    invoke-static {v1}, Lcom/samsung/android/game/GameManagerService;->-$$Nest$fgetmGameDataRepository(Lcom/samsung/android/game/GameManagerService;)Lcom/samsung/android/game/data/PackageDataRepository$GameDataRepository;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/samsung/android/game/data/PackageDataRepository$GameDataRepository;->contains(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1526
    iget-object v1, p0, Lcom/samsung/android/game/GameManagerService$PkgUpdateReceiver;->this$0:Lcom/samsung/android/game/GameManagerService;

    invoke-static {v1}, Lcom/samsung/android/game/GameManagerService;->-$$Nest$fgetmGameDataRepository(Lcom/samsung/android/game/GameManagerService;)Lcom/samsung/android/game/data/PackageDataRepository$GameDataRepository;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/samsung/android/game/data/PackageDataRepository$GameDataRepository;->remove(Ljava/lang/String;I)V

    .line 1527
    new-instance v1, Lcom/samsung/android/game/notification/GameEventNotifier;

    iget-object v4, p0, Lcom/samsung/android/game/GameManagerService$PkgUpdateReceiver;->this$0:Lcom/samsung/android/game/GameManagerService;

    invoke-static {v4}, Lcom/samsung/android/game/GameManagerService;->-$$Nest$fgetmContext(Lcom/samsung/android/game/GameManagerService;)Landroid/content/Context;

    move-result-object v4

    invoke-direct {v1, v4}, Lcom/samsung/android/game/notification/GameEventNotifier;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v3, p1, v0}, Lcom/samsung/android/game/notification/GameEventNotifier;->notifyGameEvent(ILjava/lang/String;I)V

    .line 1529
    :cond_2
    iget-object v1, p0, Lcom/samsung/android/game/GameManagerService$PkgUpdateReceiver;->this$0:Lcom/samsung/android/game/GameManagerService;

    invoke-static {v1}, Lcom/samsung/android/game/GameManagerService;->-$$Nest$fgetmSecGameFamilyRepository(Lcom/samsung/android/game/GameManagerService;)Lcom/samsung/android/game/data/PackageDataRepository$SecGameFamilyRepository;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/samsung/android/game/data/PackageDataRepository$SecGameFamilyRepository;->remove(Ljava/lang/String;I)V

    .line 1531
    invoke-direct {p0, p1}, Lcom/samsung/android/game/GameManagerService$PkgUpdateReceiver;->removeFromVrrGroup(Ljava/lang/String;)V

    .line 1533
    const-string v1, "com.samsung.android.game.gos"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string v4, "PkgUpdateReceiver, com.samsung.android.game.gos is removed"

    if-eqz v3, :cond_3

    invoke-direct {p0, p1}, Lcom/samsung/android/game/GameManagerService$PkgUpdateReceiver;->isServiceRunning(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 1534
    invoke-static {v2, v4}, Lcom/samsung/android/game/GmsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1536
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/game/GameManagerService$PkgUpdateReceiver;->this$0:Lcom/samsung/android/game/GameManagerService;

    invoke-static {v1}, Lcom/samsung/android/game/GameManagerService;->-$$Nest$fgetmContext(Lcom/samsung/android/game/GameManagerService;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, p1, v3}, Landroid/content/pm/PackageManager;->installExistingPackageAsUser(Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1537
    :catch_0
    move-exception v1

    .line 1538
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " installation is failed."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/game/GmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1539
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 1540
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_0
    goto :goto_1

    .line 1541
    :cond_3
    const-string v3, "com.samsung.android.game.gamehome"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1542
    const-string v1, "PkgUpdateReceiver, com.samsung.android.game.gamehome is removed"

    invoke-static {v2, v1}, Lcom/samsung/android/game/GmsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1543
    iget-object v1, p0, Lcom/samsung/android/game/GameManagerService$PkgUpdateReceiver;->this$0:Lcom/samsung/android/game/GameManagerService;

    const-string v2, "PKG_GAMELAUNCHER removed"

    invoke-static {v1, v2}, Lcom/samsung/android/game/GameManagerService;->-$$Nest$mcheckPkgEnabledState(Lcom/samsung/android/game/GameManagerService;Ljava/lang/String;)V

    goto :goto_1

    .line 1544
    :cond_4
    const-string v3, "com.samsung.android.game.gametools"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1545
    const-string v1, "PkgUpdateReceiver, com.samsung.android.game.gametools is removed"

    invoke-static {v2, v1}, Lcom/samsung/android/game/GmsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1546
    iget-object v1, p0, Lcom/samsung/android/game/GameManagerService$PkgUpdateReceiver;->this$0:Lcom/samsung/android/game/GameManagerService;

    const-string v2, "PKG_GAMEBOOSTER removed"

    invoke-static {v1, v2}, Lcom/samsung/android/game/GameManagerService;->-$$Nest$mcheckPkgEnabledState(Lcom/samsung/android/game/GameManagerService;Ljava/lang/String;)V

    goto :goto_1

    .line 1547
    :cond_5
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1548
    invoke-static {v2, v4}, Lcom/samsung/android/game/GmsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1549
    iget-object v1, p0, Lcom/samsung/android/game/GameManagerService$PkgUpdateReceiver;->this$0:Lcom/samsung/android/game/GameManagerService;

    const-string v2, "PKG_GOS removed"

    invoke-static {v1, v2}, Lcom/samsung/android/game/GameManagerService;->-$$Nest$mcheckPkgEnabledState(Lcom/samsung/android/game/GameManagerService;Ljava/lang/String;)V

    goto :goto_1

    .line 1550
    :cond_6
    const-string v1, "com.samsung.android.game.honeyplayplus"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1551
    const-string v1, "PkgUpdateReceiver, com.samsung.android.game.honeyplayplus is removed"

    invoke-static {v2, v1}, Lcom/samsung/android/game/GmsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1552
    iget-object v1, p0, Lcom/samsung/android/game/GameManagerService$PkgUpdateReceiver;->this$0:Lcom/samsung/android/game/GameManagerService;

    invoke-static {v1}, Lcom/samsung/android/game/GameManagerService;->-$$Nest$mclearAllCategoryHintUser(Lcom/samsung/android/game/GameManagerService;)V

    .line 1554
    :cond_7
    :goto_1
    return-void
.end method

.method public onPackageReplaced(Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 4
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "user"    # Landroid/os/UserHandle;

    .line 1593
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PkgUpdateReceiver, onPackageReplaced : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " userID : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GameManager"

    invoke-static {v1, v0}, Lcom/samsung/android/game/GmsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1594
    if-nez p1, :cond_0

    .line 1595
    return-void

    .line 1599
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/game/GameManagerService$PkgUpdateReceiver;->this$0:Lcom/samsung/android/game/GameManagerService;

    invoke-static {v0}, Lcom/samsung/android/game/GameManagerService;->-$$Nest$fgetmGosNotifyThread(Lcom/samsung/android/game/GameManagerService;)Lcom/samsung/android/game/GosNotifyThread;

    move-result-object v0

    const/16 v2, 0x8

    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    invoke-virtual {v0, v2, p1, v3}, Lcom/samsung/android/game/GosNotifyThread;->sendPackageMessage(ILjava/lang/String;I)V

    .line 1601
    const-string v0, "com.samsung.android.game.gamehome"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1602
    iget-object v0, p0, Lcom/samsung/android/game/GameManagerService$PkgUpdateReceiver;->this$0:Lcom/samsung/android/game/GameManagerService;

    const-string v2, "PKG_GAMELAUNCHER replaced"

    invoke-static {v0, v2}, Lcom/samsung/android/game/GameManagerService;->-$$Nest$mcheckPkgEnabledState(Lcom/samsung/android/game/GameManagerService;Ljava/lang/String;)V

    .line 1603
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PkgUpdateReceiver, com.samsung.android.game.gamehome is replaced, enabled : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/game/GameManagerService$PkgUpdateReceiver;->this$0:Lcom/samsung/android/game/GameManagerService;

    invoke-static {v2}, Lcom/samsung/android/game/GameManagerService;->-$$Nest$fgetmIsGameLauncherEnabled(Lcom/samsung/android/game/GameManagerService;)Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/game/GmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1605
    :cond_1
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 1482
    const-string v0, "android.intent.extra.user_handle"

    const/16 v1, -0x2710

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 1483
    .local v0, "userId":I
    new-instance v1, Landroid/os/UserHandle;

    invoke-direct {v1, v0}, Landroid/os/UserHandle;-><init>(I)V

    .line 1485
    .local v1, "user":Landroid/os/UserHandle;
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    .line 1486
    .local v2, "action":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PkgUpdateReceiver, onReceive(), action="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", userId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "GameManager"

    invoke-static {v5, v3}, Lcom/samsung/android/game/GmsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1487
    const-string v3, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v6, 0x0

    if-eqz v3, :cond_1

    .line 1488
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    .line 1489
    .local v3, "uri":Landroid/net/Uri;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v6

    .line 1490
    .local v6, "pkgName":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0, v6, v1}, Lcom/samsung/android/game/GameManagerService$PkgUpdateReceiver;->onPackageReplaced(Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 1491
    .end local v3    # "uri":Landroid/net/Uri;
    .end local v6    # "pkgName":Ljava/lang/String;
    goto :goto_1

    :cond_1
    const-string v3, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1492
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    .line 1493
    .restart local v3    # "uri":Landroid/net/Uri;
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v6

    .line 1494
    .restart local v6    # "pkgName":Ljava/lang/String;
    :cond_2
    invoke-virtual {p0, v6, v1}, Lcom/samsung/android/game/GameManagerService$PkgUpdateReceiver;->onPackageAdded(Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 1495
    .end local v3    # "uri":Landroid/net/Uri;
    .end local v6    # "pkgName":Ljava/lang/String;
    goto :goto_1

    :cond_3
    const-string v3, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1496
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    .line 1497
    .restart local v3    # "uri":Landroid/net/Uri;
    if-eqz v3, :cond_4

    invoke-virtual {v3}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v6

    .line 1498
    .restart local v6    # "pkgName":Ljava/lang/String;
    :cond_4
    invoke-virtual {p0, v6, v1}, Lcom/samsung/android/game/GameManagerService$PkgUpdateReceiver;->onPackageRemoved(Ljava/lang/String;Landroid/os/UserHandle;)V

    .end local v3    # "uri":Landroid/net/Uri;
    .end local v6    # "pkgName":Ljava/lang/String;
    goto :goto_0

    .line 1499
    :cond_5
    const-string v3, "com.samsung.android.intent.action.SET_APPCATEGORY"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1500
    const-string v3, "android.intent.extra.PACKAGE_NAME"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1501
    .local v3, "packageName":Ljava/lang/String;
    const-string v6, "app_category"

    const/4 v7, -0x1

    invoke-virtual {p2, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 1502
    .local v6, "instantCategoryFromIntent":I
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "PkgUpdateReceiver, onReceive(), package="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", instantCategoryFromIntent="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/samsung/android/game/GmsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1505
    invoke-direct {p0, v3, v0}, Lcom/samsung/android/game/GameManagerService$PkgUpdateReceiver;->onPackageCategoryHintSet(Ljava/lang/String;I)V

    goto :goto_1

    .line 1499
    .end local v3    # "packageName":Ljava/lang/String;
    .end local v6    # "instantCategoryFromIntent":I
    :cond_6
    :goto_0
    nop

    .line 1507
    :goto_1
    return-void
.end method
