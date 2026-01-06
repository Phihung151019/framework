.class public Lcom/samsung/android/game/GamePluginsUninstaller;
.super Ljava/lang/Object;
.source "GamePluginsUninstaller.java"

# interfaces
.implements Lcom/samsung/android/game/receiver/DeviceIdleModeListener;


# static fields
.field private static final PACKAGE_NAMES_ALL_GAME_PLUGINS:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "GamePluginsUninstaller"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mInstalledGamePluginsPackageNames:Ljava/util/TreeSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 15
    const-string v5, "com.samsung.android.perf_z"

    const-string v6, "com.samsung.android.game.immersivemode"

    const-string v0, "com.samsung.android.game.gamelab"

    const-string v1, "com.samsung.android.game.gifcreator"

    const-string v2, "com.samsung.android.gamesightplugin"

    const-string v3, "com.samsung.android.game.gameboosterplus"

    const-string v4, "com.samsung.android.game.gameclock"

    filled-new-array/range {v0 .. v6}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/game/GamePluginsUninstaller;->PACKAGE_NAMES_ALL_GAME_PLUGINS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/samsung/android/game/GamePluginsUninstaller;->mContext:Landroid/content/Context;

    .line 29
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/game/GamePluginsUninstaller;->mInstalledGamePluginsPackageNames:Ljava/util/TreeSet;

    .line 30
    return-void
.end method

.method private uninstallPackages()V
    .locals 6

    .line 68
    iget-object v0, p0, Lcom/samsung/android/game/GamePluginsUninstaller;->mInstalledGamePluginsPackageNames:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->isEmpty()Z

    move-result v0

    const-string v1, "GamePluginsUninstaller"

    if-eqz v0, :cond_0

    .line 69
    const-string v0, "uninstallPackages(). No package names provided for uninstallation."

    invoke-static {v1, v0}, Lcom/samsung/android/game/GmsLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    return-void

    .line 73
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/game/GamePluginsUninstaller;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager;->getPackageInstaller()Landroid/content/pm/PackageInstaller;

    move-result-object v0

    .line 74
    .local v0, "pi":Landroid/content/pm/PackageInstaller;
    iget-object v2, p0, Lcom/samsung/android/game/GamePluginsUninstaller;->mInstalledGamePluginsPackageNames:Ljava/util/TreeSet;

    invoke-virtual {v2}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 76
    .local v3, "packageName":Ljava/lang/String;
    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {v0, v3, v4}, Landroid/content/pm/PackageInstaller;->uninstall(Ljava/lang/String;Landroid/content/IntentSender;)V

    .line 77
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "uninstallPackages(). uninstalled packageName="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/samsung/android/game/GmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    goto :goto_1

    .line 78
    :catch_0
    move-exception v4

    .line 79
    .local v4, "e":Ljava/lang/Exception;
    const-string v5, "uninstallPackages(). exception while uninstalling a package"

    invoke-static {v1, v5, v4}, Lcom/samsung/android/game/GmsLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 81
    .end local v3    # "packageName":Ljava/lang/String;
    .end local v4    # "e":Ljava/lang/Exception;
    :goto_1
    goto :goto_0

    .line 82
    :cond_1
    return-void
.end method


# virtual methods
.method public checkInstalledGamePlugins()V
    .locals 5

    .line 33
    iget-object v0, p0, Lcom/samsung/android/game/GamePluginsUninstaller;->mInstalledGamePluginsPackageNames:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->clear()V

    .line 34
    sget-object v0, Lcom/samsung/android/game/GamePluginsUninstaller;->PACKAGE_NAMES_ALL_GAME_PLUGINS:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 35
    .local v3, "packageName":Ljava/lang/String;
    iget-object v4, p0, Lcom/samsung/android/game/GamePluginsUninstaller;->mContext:Landroid/content/Context;

    invoke-static {v4, v3}, Lcom/samsung/android/game/Util;->isApplicationDataExisting(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 36
    iget-object v4, p0, Lcom/samsung/android/game/GamePluginsUninstaller;->mInstalledGamePluginsPackageNames:Ljava/util/TreeSet;

    invoke-virtual {v4, v3}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 34
    .end local v3    # "packageName":Ljava/lang/String;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 39
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "checkInstalledGamePlugins(). installedGamePluginsPackageNames="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/game/GamePluginsUninstaller;->mInstalledGamePluginsPackageNames:Ljava/util/TreeSet;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GamePluginsUninstaller"

    invoke-static {v1, v0}, Lcom/samsung/android/game/GmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    return-void
.end method

.method public hideGamePlugins(I)V
    .locals 3
    .param p1, "userId"    # I

    .line 47
    invoke-virtual {p0}, Lcom/samsung/android/game/GamePluginsUninstaller;->isAnyGamePluginInstalled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 48
    invoke-static {p1}, Landroid/os/UserHandle;->semOf(I)Landroid/os/UserHandle;

    move-result-object v0

    .line 49
    .local v0, "currentUserHandle":Landroid/os/UserHandle;
    iget-object v1, p0, Lcom/samsung/android/game/GamePluginsUninstaller;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/game/GamePluginsUninstaller;->mInstalledGamePluginsPackageNames:Ljava/util/TreeSet;

    invoke-static {v1, v0, v2}, Lcom/samsung/android/game/Util;->hidePackages(Landroid/content/Context;Landroid/os/UserHandle;Ljava/util/Set;)V

    .line 51
    .end local v0    # "currentUserHandle":Landroid/os/UserHandle;
    :cond_0
    return-void
.end method

.method public isAnyGamePluginInstalled()Z
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/samsung/android/game/GamePluginsUninstaller;->mInstalledGamePluginsPackageNames:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public onDeviceIdleModeChanged(ZLcom/samsung/android/game/receiver/DeviceIdleModeReceiver;)V
    .locals 1
    .param p1, "deviceIdleModeEnabled"    # Z
    .param p2, "deviceIdleModeReceiver"    # Lcom/samsung/android/game/receiver/DeviceIdleModeReceiver;

    .line 61
    if-eqz p1, :cond_0

    .line 62
    invoke-direct {p0}, Lcom/samsung/android/game/GamePluginsUninstaller;->uninstallPackages()V

    .line 63
    iget-object v0, p0, Lcom/samsung/android/game/GamePluginsUninstaller;->mContext:Landroid/content/Context;

    invoke-static {v0, p2}, Lcom/samsung/android/game/receiver/DeviceIdleModeReceiver;->unregisterReceiver(Landroid/content/Context;Lcom/samsung/android/game/receiver/DeviceIdleModeReceiver;)V

    .line 65
    :cond_0
    return-void
.end method

.method public scheduleToUninstallGamePluginsWhileDeviceIdle()V
    .locals 2

    .line 54
    invoke-virtual {p0}, Lcom/samsung/android/game/GamePluginsUninstaller;->isAnyGamePluginInstalled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 55
    iget-object v0, p0, Lcom/samsung/android/game/GamePluginsUninstaller;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/samsung/android/game/receiver/DeviceIdleModeReceiver;

    invoke-direct {v1, p0}, Lcom/samsung/android/game/receiver/DeviceIdleModeReceiver;-><init>(Lcom/samsung/android/game/receiver/DeviceIdleModeListener;)V

    invoke-static {v0, v1}, Lcom/samsung/android/game/receiver/DeviceIdleModeReceiver;->registerReceiver(Landroid/content/Context;Lcom/samsung/android/game/receiver/DeviceIdleModeReceiver;)V

    .line 57
    :cond_0
    return-void
.end method
