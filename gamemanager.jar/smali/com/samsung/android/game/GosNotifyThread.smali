.class public Lcom/samsung/android/game/GosNotifyThread;
.super Landroid/os/HandlerThread;
.source "GosNotifyThread.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/game/GosNotifyThread$NetworkReceiver;
    }
.end annotation


# static fields
.field static final CHANGE_TYPE_CATEGORY_CHANGED:I = 0x9

.field static final CHANGE_TYPE_INSTALLED:I = 0x0

.field static final CHANGE_TYPE_REMOVED:I = 0x1

.field static final CHANGE_TYPE_REPLACED:I = 0x8

.field private static final MSG_GOS_ENABLED:I = 0x67

.field private static final MSG_PACKAGE_SIGNAL:I = 0x64

.field private static final MSG_USER_SWITCHED:I = 0x66

.field private static final MSG_WIFI_CONNECTED:I = 0x65

.field private static final NOTIFY_GOS_TIME_INTERVAL:I = 0x3a98

.field private static final SECURE_BOOSTER_ALLOWED_48HZ:Ljava/lang/String; = "game_display_hz_48"

.field private static final SECURE_BOOSTER_REFRESH_RATE_MAX_HZ:Ljava/lang/String; = "game_refresh_rate_max_hz"

.field private static final SECURE_SETTINGS_REFRESH_RATE_MODE:Ljava/lang/String; = "refresh_rate_mode"

.field private static final TAG:Ljava/lang/String; = "GosNotifyThread"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private final mNetworkReceiver:Lcom/samsung/android/game/GosNotifyThread$NetworkReceiver;

.field private mNotifyToGosCnt:I

.field private mUserRemovedReceiver:Landroid/content/BroadcastReceiver;

.field private mVrrSecureSettingObserver:Landroid/database/ContentObserver;


# direct methods
.method static bridge synthetic -$$Nest$fgetmContext(Lcom/samsung/android/game/GosNotifyThread;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/game/GosNotifyThread;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mnotifyGosEnabledToGos(Lcom/samsung/android/game/GosNotifyThread;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/game/GosNotifyThread;->notifyGosEnabledToGos()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mnotifyPackageChangedToGos(Lcom/samsung/android/game/GosNotifyThread;ILjava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/game/GosNotifyThread;->notifyPackageChangedToGos(ILjava/lang/String;I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mnotifyUserSwitchedToGos(Lcom/samsung/android/game/GosNotifyThread;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/game/GosNotifyThread;->notifyUserSwitchedToGos()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mnotifyWifiConnectedToGos(Lcom/samsung/android/game/GosNotifyThread;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/game/GosNotifyThread;->notifyWifiConnectedToGos()V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;

    .line 105
    const-string v0, "GosNotifyThread"

    invoke-direct {p0, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 52
    new-instance v0, Lcom/samsung/android/game/GosNotifyThread$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/game/GosNotifyThread$1;-><init>(Lcom/samsung/android/game/GosNotifyThread;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/game/GosNotifyThread;->mVrrSecureSettingObserver:Landroid/database/ContentObserver;

    .line 84
    new-instance v0, Lcom/samsung/android/game/GosNotifyThread$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/game/GosNotifyThread$2;-><init>(Lcom/samsung/android/game/GosNotifyThread;)V

    iput-object v0, p0, Lcom/samsung/android/game/GosNotifyThread;->mUserRemovedReceiver:Landroid/content/BroadcastReceiver;

    .line 106
    iput-object p1, p0, Lcom/samsung/android/game/GosNotifyThread;->mContext:Landroid/content/Context;

    .line 107
    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/game/GosNotifyThread;->mNotifyToGosCnt:I

    .line 109
    new-instance v0, Lcom/samsung/android/game/GosNotifyThread$NetworkReceiver;

    iget-object v1, p0, Lcom/samsung/android/game/GosNotifyThread;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/game/GosNotifyThread$NetworkReceiver;-><init>(Lcom/samsung/android/game/GosNotifyThread;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/game/GosNotifyThread;->mNetworkReceiver:Lcom/samsung/android/game/GosNotifyThread$NetworkReceiver;

    .line 110
    iget-object v3, p0, Lcom/samsung/android/game/GosNotifyThread;->mUserRemovedReceiver:Landroid/content/BroadcastReceiver;

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    new-instance v5, Landroid/content/IntentFilter;

    const-string v0, "android.intent.action.USER_REMOVED"

    invoke-direct {v5, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v7, 0x0

    const/4 v8, 0x2

    const/4 v6, 0x0

    move-object v2, p1

    .end local p1    # "context":Landroid/content/Context;
    .local v2, "context":Landroid/content/Context;
    invoke-virtual/range {v2 .. v8}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    .line 112
    iget-object p1, p0, Lcom/samsung/android/game/GosNotifyThread;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    .line 113
    .local p1, "cr":Landroid/content/ContentResolver;
    const-string v0, "game_display_hz_48"

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 114
    .local v0, "settings":Landroid/net/Uri;
    iget-object v1, p0, Lcom/samsung/android/game/GosNotifyThread;->mVrrSecureSettingObserver:Landroid/database/ContentObserver;

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 115
    const-string v1, "game_refresh_rate_max_hz"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 116
    .local v1, "maxHzSettings":Landroid/net/Uri;
    iget-object v4, p0, Lcom/samsung/android/game/GosNotifyThread;->mVrrSecureSettingObserver:Landroid/database/ContentObserver;

    invoke-virtual {p1, v1, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 117
    return-void
.end method

.method private isGeneralNonGame(Ljava/lang/String;I)Z
    .locals 3
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "userHandleId"    # I

    .line 196
    new-instance v0, Lcom/samsung/android/game/data/PackageDataRepository$GameDataRepository;

    invoke-direct {v0}, Lcom/samsung/android/game/data/PackageDataRepository$GameDataRepository;-><init>()V

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/game/data/PackageDataRepository$GameDataRepository;->contains(Ljava/lang/String;I)Z

    move-result v0

    .line 197
    .local v0, "isGame":Z
    new-instance v1, Lcom/samsung/android/game/data/PackageDataRepository$SecGameFamilyRepository;

    invoke-direct {v1}, Lcom/samsung/android/game/data/PackageDataRepository$SecGameFamilyRepository;-><init>()V

    invoke-virtual {v1, p1, p2}, Lcom/samsung/android/game/data/PackageDataRepository$SecGameFamilyRepository;->contains(Ljava/lang/String;I)Z

    move-result v1

    .line 198
    .local v1, "isSecGameFamily":Z
    if-nez v0, :cond_0

    if-nez v1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method private isSupportedUserId(I)Z
    .locals 2
    .param p1, "userHandleId"    # I

    .line 147
    const/4 v0, 0x0

    .line 148
    .local v0, "supported":Z
    if-eqz p1, :cond_0

    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 149
    :cond_0
    const/4 v0, 0x1

    .line 151
    :cond_1
    return v0
.end method

.method private isUninstallEventMonitoredPkgName(Ljava/lang/String;)Z
    .locals 7
    .param p1, "pkgName"    # Ljava/lang/String;

    .line 202
    const-string v0, "com.samsung.android.game"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 203
    return v1

    .line 205
    :cond_0
    const-string v0, "com.samsung.android.perf_z"

    const-string v2, "com.samsung.android.plugin.dailylimits"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    .line 208
    .local v0, "pluginPkgNames":[Ljava/lang/String;
    array-length v2, v0

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_2

    aget-object v5, v0, v4

    .line 209
    .local v5, "tempPkgName":Ljava/lang/String;
    invoke-static {p1, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 210
    return v1

    .line 208
    .end local v5    # "tempPkgName":Ljava/lang/String;
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 214
    :cond_2
    return v3
.end method

.method private notifyGosEnabledToGos()V
    .locals 5

    .line 259
    const-string v0, "notifyGosEnabledToGos(), before send intent to GOS. type:19"

    const-string v1, "GosNotifyThread"

    invoke-static {v1, v0}, Lcom/samsung/android/game/GmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.samsung.android.game.gos.GameIntentService"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 261
    .local v0, "gosIntent":Landroid/content/Intent;
    const-string v2, "com.samsung.android.game.gos"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 262
    const-string v2, "type"

    const/16 v3, 0x13

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 264
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/game/GosNotifyThread;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v2, v0, v3}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    move-result-object v2

    .line 265
    .local v2, "retGos":Landroid/content/ComponentName;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "notifyGosEnabledToGos(), after send intent to GOS. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/samsung/android/game/GmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 269
    .end local v2    # "retGos":Landroid/content/ComponentName;
    goto :goto_0

    .line 266
    :catch_0
    move-exception v2

    .line 267
    .local v2, "e":Ljava/lang/RuntimeException;
    const-string v3, "notifyGosEnabledToGos(), failed to send intent to GOS"

    invoke-static {v1, v3}, Lcom/samsung/android/game/GmsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    invoke-virtual {v2}, Ljava/lang/RuntimeException;->printStackTrace()V

    .line 270
    .end local v2    # "e":Ljava/lang/RuntimeException;
    :goto_0
    return-void
.end method

.method private notifyPackageChangedToGos(ILjava/lang/String;I)V
    .locals 7
    .param p1, "changeType"    # I
    .param p2, "pkgName"    # Ljava/lang/String;
    .param p3, "userHandleId"    # I

    .line 155
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyPackageChangedToGos(), before send intent to GOS. type:15, changeType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", pkgName:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", userHandleId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GosNotifyThread"

    invoke-static {v1, v0}, Lcom/samsung/android/game/GmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    invoke-direct {p0, p3}, Lcom/samsung/android/game/GosNotifyThread;->isSupportedUserId(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 159
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyPackageChangedToGos(), not supported user. do nothing. userHandleId: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/game/GmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    return-void

    .line 163
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.samsung.android.game.gos.GameIntentService"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 164
    .local v0, "gosIntent":Landroid/content/Intent;
    const-string v2, "com.samsung.android.game.gos"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 165
    const-string v2, "type"

    const/16 v3, 0xf

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 166
    const-string v2, "packageName"

    invoke-virtual {v0, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 167
    const-string v2, "pkgName"

    invoke-virtual {v0, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 168
    const-string v2, "changeType"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 169
    const-string v2, "userId"

    invoke-virtual {v0, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 171
    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez p1, :cond_1

    move v4, v2

    goto :goto_0

    :cond_1
    move v4, v3

    :goto_0
    const/16 v5, 0x8

    if-ne p1, v5, :cond_2

    goto :goto_1

    :cond_2
    move v2, v3

    :goto_1
    or-int/2addr v2, v4

    if-eqz v2, :cond_3

    .line 173
    new-instance v2, Lcom/samsung/android/game/PmAppCategoryManager;

    iget-object v3, p0, Lcom/samsung/android/game/GosNotifyThread;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/samsung/android/game/PmAppCategoryManager;-><init>(Landroid/content/Context;)V

    .line 174
    .local v2, "pmAppCategoryManager":Lcom/samsung/android/game/PmAppCategoryManager;
    invoke-virtual {v2, p2}, Lcom/samsung/android/game/PmAppCategoryManager;->getManifestCategory(Ljava/lang/String;)I

    move-result v3

    .line 175
    .local v3, "manifestCategory":I
    invoke-virtual {v2, p2}, Lcom/samsung/android/game/PmAppCategoryManager;->getCategoryOverride(Ljava/lang/String;)I

    move-result v4

    .line 176
    .local v4, "categoryOverride":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "notifyPackageChangedToGos(), category from pm: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/samsung/android/game/GmsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    const-string v5, "manifestCategory"

    invoke-virtual {v0, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 179
    const-string v5, "categoryOverride"

    invoke-virtual {v0, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 183
    .end local v2    # "pmAppCategoryManager":Lcom/samsung/android/game/PmAppCategoryManager;
    .end local v3    # "manifestCategory":I
    .end local v4    # "categoryOverride":I
    :cond_3
    move v2, p3

    .line 184
    .local v2, "targetUserId":I
    :try_start_0
    invoke-static {p3}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 185
    const/4 v2, 0x0

    .line 187
    :cond_4
    iget-object v3, p0, Lcom/samsung/android/game/GosNotifyThread;->mContext:Landroid/content/Context;

    new-instance v4, Landroid/os/UserHandle;

    invoke-direct {v4, v2}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v3, v0, v4}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    move-result-object v3

    .line 188
    .local v3, "retGos":Landroid/content/ComponentName;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "notifyPackageChangedToGos(), after send intent to GOS. "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/samsung/android/game/GmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 192
    .end local v2    # "targetUserId":I
    .end local v3    # "retGos":Landroid/content/ComponentName;
    goto :goto_2

    .line 189
    :catch_0
    move-exception v2

    .line 190
    .local v2, "e":Ljava/lang/RuntimeException;
    const-string v3, "notifyPackageChangedToGos(), failed to send intent to GOS"

    invoke-static {v1, v3}, Lcom/samsung/android/game/GmsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    invoke-virtual {v2}, Ljava/lang/RuntimeException;->printStackTrace()V

    .line 193
    .end local v2    # "e":Ljava/lang/RuntimeException;
    :goto_2
    return-void
.end method

.method private notifyUserSwitchedToGos()V
    .locals 8

    .line 218
    const-string v0, "notifyUserSwitchedToGos(), before send intent to GOS. type:18"

    const-string v1, "GosNotifyThread"

    invoke-static {v1, v0}, Lcom/samsung/android/game/GmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.samsung.android.game.gos.GameIntentService"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 220
    .local v0, "gosIntent":Landroid/content/Intent;
    const-string v2, "com.samsung.android.game.gos"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 221
    const-string v2, "type"

    const/16 v3, 0x12

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 223
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/game/GosNotifyThread;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v2, v0, v3}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    move-result-object v2

    .line 224
    .local v2, "retGos":Landroid/content/ComponentName;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "notifyUserSwitchedToGos(), after send intent to GOS. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/samsung/android/game/GmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    const/4 v3, 0x1

    if-nez v2, :cond_1

    .line 227
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "notifyUserSwitchedToGos(), send intent failed retry to GOS. "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/samsung/android/game/GosNotifyThread;->mNotifyToGosCnt:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/samsung/android/game/GmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    iget v4, p0, Lcom/samsung/android/game/GosNotifyThread;->mNotifyToGosCnt:I

    const/4 v5, 0x3

    if-ge v4, v5, :cond_0

    .line 229
    iget-object v4, p0, Lcom/samsung/android/game/GosNotifyThread;->mHandler:Landroid/os/Handler;

    const/16 v5, 0x66

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 230
    iget-object v4, p0, Lcom/samsung/android/game/GosNotifyThread;->mHandler:Landroid/os/Handler;

    const-wide/16 v6, 0x3a98

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 231
    iget v4, p0, Lcom/samsung/android/game/GosNotifyThread;->mNotifyToGosCnt:I

    add-int/2addr v4, v3

    iput v4, p0, Lcom/samsung/android/game/GosNotifyThread;->mNotifyToGosCnt:I

    goto :goto_0

    .line 233
    :cond_0
    iput v3, p0, Lcom/samsung/android/game/GosNotifyThread;->mNotifyToGosCnt:I

    goto :goto_0

    .line 236
    :cond_1
    iput v3, p0, Lcom/samsung/android/game/GosNotifyThread;->mNotifyToGosCnt:I
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 241
    .end local v2    # "retGos":Landroid/content/ComponentName;
    :goto_0
    goto :goto_1

    .line 238
    :catch_0
    move-exception v2

    .line 239
    .local v2, "e":Ljava/lang/RuntimeException;
    const-string v3, "notifyUserSwitchedToGos(), failed to send intent to GOS"

    invoke-static {v1, v3}, Lcom/samsung/android/game/GmsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    invoke-virtual {v2}, Ljava/lang/RuntimeException;->printStackTrace()V

    .line 242
    .end local v2    # "e":Ljava/lang/RuntimeException;
    :goto_1
    return-void
.end method

.method private notifyWifiConnectedToGos()V
    .locals 5

    .line 245
    const-string v0, "notifyWifiConnectedToGos(), before send intent to GOS. type:16"

    const-string v1, "GosNotifyThread"

    invoke-static {v1, v0}, Lcom/samsung/android/game/GmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.samsung.android.game.gos.GameIntentService"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 247
    .local v0, "gosIntent":Landroid/content/Intent;
    const-string v2, "com.samsung.android.game.gos"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 248
    const-string v2, "type"

    const/16 v3, 0x10

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 250
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/game/GosNotifyThread;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v2, v0, v3}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    move-result-object v2

    .line 251
    .local v2, "retGos":Landroid/content/ComponentName;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "notifyWifiConnectedToGos(), after send intent to GOS. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/samsung/android/game/GmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 255
    .end local v2    # "retGos":Landroid/content/ComponentName;
    goto :goto_0

    .line 252
    :catch_0
    move-exception v2

    .line 253
    .local v2, "e":Ljava/lang/RuntimeException;
    const-string v3, "notifyWifiConnectedToGos(), failed to send intent to GOS"

    invoke-static {v1, v3}, Lcom/samsung/android/game/GmsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    invoke-virtual {v2}, Ljava/lang/RuntimeException;->printStackTrace()V

    .line 256
    .end local v2    # "e":Ljava/lang/RuntimeException;
    :goto_0
    return-void
.end method


# virtual methods
.method protected onLooperPrepared()V
    .locals 2

    .line 121
    invoke-super {p0}, Landroid/os/HandlerThread;->onLooperPrepared()V

    .line 122
    new-instance v0, Lcom/samsung/android/game/GosNotifyThread$3;

    invoke-virtual {p0}, Lcom/samsung/android/game/GosNotifyThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/game/GosNotifyThread$3;-><init>(Lcom/samsung/android/game/GosNotifyThread;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/android/game/GosNotifyThread;->mHandler:Landroid/os/Handler;

    .line 144
    return-void
.end method

.method public sendGosEnabledMessage()V
    .locals 2

    .line 299
    iget-object v0, p0, Lcom/samsung/android/game/GosNotifyThread;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x67

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 300
    return-void
.end method

.method public sendPackageMessage(ILjava/lang/String;I)V
    .locals 2
    .param p1, "changeType"    # I
    .param p2, "pkgName"    # Ljava/lang/String;
    .param p3, "userHandleId"    # I

    .line 273
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sendPackageMessage(), changeType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", pkgName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", userHandleId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GosNotifyThread"

    invoke-static {v1, v0}, Lcom/samsung/android/game/GmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 277
    invoke-direct {p0, p2, p3}, Lcom/samsung/android/game/GosNotifyThread;->isGeneralNonGame(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p2}, Lcom/samsung/android/game/GosNotifyThread;->isUninstallEventMonitoredPkgName(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 278
    const-string v0, "sendPackageMessage(), Sending is blocked because it is not an uninstall event monitored app"

    invoke-static {v1, v0}, Lcom/samsung/android/game/GmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    return-void

    .line 283
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/game/GosNotifyThread;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 284
    .local v0, "m":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 285
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 286
    iput p3, v0, Landroid/os/Message;->arg2:I

    .line 287
    iget-object v1, p0, Lcom/samsung/android/game/GosNotifyThread;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 288
    return-void
.end method

.method public sendUserSwitchMessage()V
    .locals 2

    .line 295
    iget-object v0, p0, Lcom/samsung/android/game/GosNotifyThread;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 296
    return-void
.end method

.method public sendWifiConnectedMessage()V
    .locals 2

    .line 291
    iget-object v0, p0, Lcom/samsung/android/game/GosNotifyThread;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 292
    return-void
.end method
