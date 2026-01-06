.class public Lcom/samsung/android/server/wifi/ui/SemWifiNotificationController;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/server/wifi/ui/SemWifiNotificationController$NotificationSettingStore;,
        Lcom/samsung/android/server/wifi/ui/SemWifiNotificationController$State;
    }
.end annotation


# static fields
.field static final DEFAULT_REPEAT_DELAY_SEC:I = 0x3c

.field static final SETTINGS_VALUE_ANDROID_OFF:I = 0x0

.field static final SETTINGS_VALUE_ANDROID_ON:I = 0x1

.field static final SETTINGS_VALUE_DEFAULT_OFF:I = 0x2

.field static final SETTINGS_VALUE_ON:I = 0x3

.field private static final STATE_NO_NOTIFICATION:I = 0x0

.field private static final STATE_SHOWING_NOTIFICATION:I = 0x1

.field private static final TAG:Ljava/lang/String; = "SemWifiNotificationController"

.field static final TOGGLE_SETTINGS_NAME:Ljava/lang/String; = "wifi_networks_available_notification_on"


# instance fields
.field private final broadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final context:Landroid/content/Context;

.field private final frameworkFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

.field private final handler:Landroid/os/Handler;

.field private isActive:Z

.field private final isMenuSupported:Z

.field private final notificationBuilder:Lcom/samsung/android/server/wifi/ui/SemWifiNotificationBuilder;

.field private final notificationId:I

.field private final notificationManager:Landroid/app/NotificationManager;

.field private final notificationRepeatDelay:J

.field notificationRepeatTime:J

.field private screenOn:Z

.field private final settings:Lcom/samsung/android/server/wifi/ui/SemWifiNotificationController$NotificationSettingStore;

.field private state:I

.field private final userManager:Landroid/os/UserManager;

.field private final wifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;


# direct methods
.method public static synthetic $r8$lambda$Fj33lyYEpP5CDN0GvEjWiP-F5O8(Lcom/samsung/android/server/wifi/ui/SemWifiNotificationController;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/ui/SemWifiNotificationController;->lambda$new$1(Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic $r8$lambda$IxUcwFUlsEycHCcdu1fmg1OJNEE(Lcom/samsung/android/server/wifi/ui/SemWifiNotificationController;II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/ui/SemWifiNotificationController;->lambda$new$0(II)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic $r8$lambda$WmwiY62zqOywEpHUjn1_U2qOzh8(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/samsung/android/server/wifi/ui/SemWifiNotificationController;->lambda$getNetworkCount$2(Ljava/lang/String;Ljava/lang/String;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method static bridge synthetic -$$Nest$fgetcontext(Lcom/samsung/android/server/wifi/ui/SemWifiNotificationController;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ui/SemWifiNotificationController;->context:Landroid/content/Context;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetframeworkFacade(Lcom/samsung/android/server/wifi/ui/SemWifiNotificationController;)Lcom/samsung/android/server/wifi/SemFrameworkFacade;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ui/SemWifiNotificationController;->frameworkFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$mhandleSeeAllNetworksAction(Lcom/samsung/android/server/wifi/ui/SemWifiNotificationController;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ui/SemWifiNotificationController;->handleSeeAllNetworksAction()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleUserDismissedAction(Lcom/samsung/android/server/wifi/ui/SemWifiNotificationController;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ui/SemWifiNotificationController;->handleUserDismissedAction()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/server/wifi/SemFrameworkFacade;Landroid/os/Handler;Lcom/samsung/android/server/wifi/SemWifiManagerProxy;)V
    .locals 6

    .line 1
    new-instance v5, Lcom/samsung/android/server/wifi/ui/SemWifiNotificationBuilder;

    invoke-direct {v5, p1, p2}, Lcom/samsung/android/server/wifi/ui/SemWifiNotificationBuilder;-><init>(Landroid/content/Context;Lcom/samsung/android/server/wifi/SemFrameworkFacade;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/server/wifi/ui/SemWifiNotificationController;-><init>(Landroid/content/Context;Lcom/samsung/android/server/wifi/SemFrameworkFacade;Landroid/os/Handler;Lcom/samsung/android/server/wifi/SemWifiManagerProxy;Lcom/samsung/android/server/wifi/ui/SemWifiNotificationBuilder;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/samsung/android/server/wifi/SemFrameworkFacade;Landroid/os/Handler;Lcom/samsung/android/server/wifi/SemWifiManagerProxy;Lcom/samsung/android/server/wifi/ui/SemWifiNotificationBuilder;)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lcom/samsung/android/server/wifi/ui/SemWifiNotificationController;->state:I

    .line 4
    new-instance v1, Lcom/samsung/android/server/wifi/ui/SemWifiNotificationController$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/server/wifi/ui/SemWifiNotificationController$1;-><init>(Lcom/samsung/android/server/wifi/ui/SemWifiNotificationController;)V

    iput-object v1, p0, Lcom/samsung/android/server/wifi/ui/SemWifiNotificationController;->broadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 5
    iput-object p1, p0, Lcom/samsung/android/server/wifi/ui/SemWifiNotificationController;->context:Landroid/content/Context;

    .line 6
    iput-object p2, p0, Lcom/samsung/android/server/wifi/ui/SemWifiNotificationController;->frameworkFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    .line 7
    iput-object p3, p0, Lcom/samsung/android/server/wifi/ui/SemWifiNotificationController;->handler:Landroid/os/Handler;

    .line 8
    iput-object p4, p0, Lcom/samsung/android/server/wifi/ui/SemWifiNotificationController;->wifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 9
    iput-object p5, p0, Lcom/samsung/android/server/wifi/ui/SemWifiNotificationController;->notificationBuilder:Lcom/samsung/android/server/wifi/ui/SemWifiNotificationBuilder;

    .line 10
    const-class p5, Landroid/os/UserManager;

    invoke-virtual {p1, p5}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Landroid/os/UserManager;

    iput-object p5, p0, Lcom/samsung/android/server/wifi/ui/SemWifiNotificationController;->userManager:Landroid/os/UserManager;

    .line 11
    const-string p5, "notification"

    invoke-virtual {p1, p5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/NotificationManager;

    iput-object p1, p0, Lcom/samsung/android/server/wifi/ui/SemWifiNotificationController;->notificationManager:Landroid/app/NotificationManager;

    .line 12
    new-instance p1, Lcom/samsung/android/server/wifi/ui/SemWifiNotificationController$NotificationSettingStore;

    invoke-direct {p1, p0, p3}, Lcom/samsung/android/server/wifi/ui/SemWifiNotificationController$NotificationSettingStore;-><init>(Lcom/samsung/android/server/wifi/ui/SemWifiNotificationController;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/samsung/android/server/wifi/ui/SemWifiNotificationController;->settings:Lcom/samsung/android/server/wifi/ui/SemWifiNotificationController$NotificationSettingStore;

    .line 13
    const-string p3, "CountryISO"

    invoke-virtual {p2, p3}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->getStringCscFeature(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 14
    const-string p3, "US"

    invoke-virtual {p3, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p3

    if-nez p3, :cond_0

    const-string p3, "CA"

    invoke-virtual {p3, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/ui/SemWifiNotificationController;->isMenuSupported:Z

    const p2, 0x1080703

    .line 15
    iput p2, p0, Lcom/samsung/android/server/wifi/ui/SemWifiNotificationController;->notificationId:I

    const/16 p2, 0x3c

    .line 16
    invoke-virtual {p1, p2}, Lcom/samsung/android/server/wifi/ui/SemWifiNotificationController$NotificationSettingStore;->getRepeatDelay(I)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/samsung/android/server/wifi/ui/SemWifiNotificationController;->notificationRepeatDelay:J

    .line 17
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ui/SemWifiNotificationController;->modifySettingsDBValues()V

    if-eqz v0, :cond_2

    .line 18
    new-instance p1, Lcom/samsung/android/server/wifi/ui/SemWifiNotificationController$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/samsung/android/server/wifi/ui/SemWifiNotificationController$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/server/wifi/ui/SemWifiNotificationController;)V

    invoke-virtual {p4, p1}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->registerListener(Lcom/samsung/android/server/wifi/SemWifiManagerProxy$WifiStateListener;)V

    .line 19
    invoke-virtual {p4}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->isScreenOn()Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/ui/SemWifiNotificationController;->screenOn:Z

    .line 20
    new-instance p1, Lcom/samsung/android/server/wifi/ui/SemWifiNotificationController$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0}, Lcom/samsung/android/server/wifi/ui/SemWifiNotificationController$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/server/wifi/ui/SemWifiNotificationController;)V

    invoke-virtual {p4, p1}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->registerListener(Lcom/samsung/android/server/wifi/SemWifiManagerProxy$ScreenStateListener;)V

    :cond_2
    return-void
.end method

.method private clearRepeatTime()V
    .locals 2

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/ui/SemWifiNotificationController;->notificationRepeatTime:J

    .line 4
    .line 5
    return-void
.end method

.method private getNetworkCount(Ljava/util/Set;Ljava/lang/String;)J
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")J"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    new-instance p1, Lcom/samsung/android/server/wifi/ui/SemWifiNotificationController$$ExternalSyntheticLambda2;

    .line 6
    .line 7
    invoke-direct {p1, p2}, Lcom/samsung/android/server/wifi/ui/SemWifiNotificationController$$ExternalSyntheticLambda2;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    invoke-interface {p0}, Ljava/util/stream/Stream;->count()J

    .line 15
    .line 16
    .line 17
    move-result-wide p0

    .line 18
    return-wide p0
.end method

.method private getOpenNetworkCount(Ljava/util/Set;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_1

    .line 3
    .line 4
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    sget-object v1, Landroid/net/wifi/WifiConfiguration$KeyMgmt;->strings:[Ljava/lang/String;

    .line 12
    .line 13
    aget-object v0, v1, v0

    .line 14
    .line 15
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/server/wifi/ui/SemWifiNotificationController;->getNetworkCount(Ljava/util/Set;Ljava/lang/String;)J

    .line 16
    .line 17
    .line 18
    move-result-wide v2

    .line 19
    long-to-int v0, v2

    .line 20
    iget-object v2, p0, Lcom/samsung/android/server/wifi/ui/SemWifiNotificationController;->wifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 21
    .line 22
    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->isEnhancedOpenSupported()Z

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    if-eqz v2, :cond_1

    .line 27
    .line 28
    const/16 v2, 0x9

    .line 29
    .line 30
    aget-object v1, v1, v2

    .line 31
    .line 32
    invoke-direct {p0, p1, v1}, Lcom/samsung/android/server/wifi/ui/SemWifiNotificationController;->getNetworkCount(Ljava/util/Set;Ljava/lang/String;)J

    .line 33
    .line 34
    .line 35
    move-result-wide p0

    .line 36
    long-to-int p0, p0

    .line 37
    add-int/2addr v0, p0

    .line 38
    :cond_1
    :goto_0
    return v0
.end method

.method private handleSeeAllNetworksAction()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ui/SemWifiNotificationController;->context:Landroid/content/Context;

    .line 2
    .line 3
    new-instance v1, Landroid/content/Intent;

    .line 4
    .line 5
    const-string v2, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    .line 6
    .line 7
    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 11
    .line 12
    .line 13
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ui/SemWifiNotificationController;->context:Landroid/content/Context;

    .line 14
    .line 15
    new-instance v1, Landroid/content/Intent;

    .line 16
    .line 17
    const-string v2, "android.settings.WIFI_SETTINGS"

    .line 18
    .line 19
    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    const/high16 v2, 0x10000000

    .line 23
    .line 24
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :catch_0
    const-string v0, "SemWifiNotificationController"

    .line 33
    .line 34
    const-string v1, "failed to show Wi-Fi picker activity"

    .line 35
    .line 36
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    .line 38
    .line 39
    :goto_0
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ui/SemWifiNotificationController;->hideNotification()V

    .line 40
    .line 41
    .line 42
    return-void
.end method

.method private handleUserDismissedAction()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/samsung/android/server/wifi/ui/SemWifiNotificationController;->state:I

    .line 3
    .line 4
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ui/SemWifiNotificationController;->updateRepeatTime()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method private hideNotification()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/samsung/android/server/wifi/ui/SemWifiNotificationController;->state:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    const-string v0, "SemWifiNotificationController"

    .line 7
    .line 8
    const-string v1, "hideNotification"

    .line 9
    .line 10
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ui/SemWifiNotificationController;->notificationManager:Landroid/app/NotificationManager;

    .line 14
    .line 15
    iget v1, p0, Lcom/samsung/android/server/wifi/ui/SemWifiNotificationController;->notificationId:I

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 18
    .line 19
    .line 20
    const/4 v0, 0x0

    .line 21
    iput v0, p0, Lcom/samsung/android/server/wifi/ui/SemWifiNotificationController;->state:I

    .line 22
    .line 23
    :cond_0
    return-void
.end method

.method private isAvailable()Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/samsung/android/server/wifi/ui/SemWifiNotificationController;->state:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/ui/SemWifiNotificationController;->isActive:Z

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ui/SemWifiNotificationController;->isScreenOn()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ui/SemWifiNotificationController;->settings:Lcom/samsung/android/server/wifi/ui/SemWifiNotificationController$NotificationSettingStore;

    .line 16
    .line 17
    invoke-static {v0}, Lcom/samsung/android/server/wifi/ui/SemWifiNotificationController$NotificationSettingStore;->-$$Nest$misEnabled(Lcom/samsung/android/server/wifi/ui/SemWifiNotificationController$NotificationSettingStore;)Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ui/SemWifiNotificationController;->isAvailableTime()Z

    .line 24
    .line 25
    .line 26
    move-result p0

    .line 27
    if-eqz p0, :cond_0

    .line 28
    .line 29
    const/4 p0, 0x1

    .line 30
    return p0

    .line 31
    :cond_0
    const/4 p0, 0x0

    .line 32
    return p0
.end method

.method private isAvailableTime()Z
    .locals 4

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    iget-wide v2, p0, Lcom/samsung/android/server/wifi/ui/SemWifiNotificationController;->notificationRepeatTime:J

    .line 6
    .line 7
    cmp-long p0, v0, v2

    .line 8
    .line 9
    if-ltz p0, :cond_0

    .line 10
    .line 11
    const/4 p0, 0x1

    .line 12
    return p0

    .line 13
    :cond_0
    const/4 p0, 0x0

    .line 14
    return p0
.end method

.method private isDisallowedChangeWifiConfig()Z
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ui/SemWifiNotificationController;->userManager:Landroid/os/UserManager;

    .line 2
    .line 3
    const-string v0, "no_config_wifi"

    .line 4
    .line 5
    sget-object v1, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    .line 6
    .line 7
    invoke-virtual {p0, v0, v1}, Landroid/os/UserManager;->hasUserRestrictionForUser(Ljava/lang/String;Landroid/os/UserHandle;)Z

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    return p0
.end method

.method private isScreenOn()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/ui/SemWifiNotificationController;->screenOn:Z

    .line 2
    .line 3
    return p0
.end method

.method private static synthetic lambda$getNetworkCount$2(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 1
    invoke-virtual {p1, p0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method private synthetic lambda$new$0(II)V
    .locals 0

    .line 1
    const/4 p2, 0x3

    .line 2
    if-ne p1, p2, :cond_0

    .line 3
    .line 4
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ui/SemWifiNotificationController;->startNotificationController()V

    .line 5
    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    const/4 p2, 0x1

    .line 9
    if-ne p1, p2, :cond_1

    .line 10
    .line 11
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ui/SemWifiNotificationController;->stopNotificationController()V

    .line 12
    .line 13
    .line 14
    :cond_1
    return-void
.end method

.method private synthetic lambda$new$1(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/ui/SemWifiNotificationController;->screenOn:Z

    .line 2
    .line 3
    return-void
.end method

.method private modifySettingsDBValues()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ui/SemWifiNotificationController;->isSupported()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ui/SemWifiNotificationController;->settings:Lcom/samsung/android/server/wifi/ui/SemWifiNotificationController$NotificationSettingStore;

    .line 8
    .line 9
    invoke-static {p0}, Lcom/samsung/android/server/wifi/ui/SemWifiNotificationController$NotificationSettingStore;->-$$Nest$mmigrationNotificationSettings(Lcom/samsung/android/server/wifi/ui/SemWifiNotificationController$NotificationSettingStore;)V

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ui/SemWifiNotificationController;->settings:Lcom/samsung/android/server/wifi/ui/SemWifiNotificationController$NotificationSettingStore;

    .line 14
    .line 15
    invoke-static {p0}, Lcom/samsung/android/server/wifi/ui/SemWifiNotificationController$NotificationSettingStore;->-$$Nest$mturnsOffNotificationSetting(Lcom/samsung/android/server/wifi/ui/SemWifiNotificationController$NotificationSettingStore;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method private showNotification(I)V
    .locals 2

    .line 1
    const-string v0, "showNotification network count: "

    .line 2
    .line 3
    const-string v1, "SemWifiNotificationController"

    .line 4
    .line 5
    invoke-static {v0, p1, v1}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ui/SemWifiNotificationController;->notificationBuilder:Lcom/samsung/android/server/wifi/ui/SemWifiNotificationBuilder;

    .line 9
    .line 10
    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/server/wifi/ui/SemWifiNotificationBuilder;->createOpenNetworkAvailableNotification(Ljava/lang/String;I)Landroid/app/Notification;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ui/SemWifiNotificationController;->notificationManager:Landroid/app/NotificationManager;

    .line 15
    .line 16
    iget v1, p0, Lcom/samsung/android/server/wifi/ui/SemWifiNotificationController;->notificationId:I

    .line 17
    .line 18
    invoke-virtual {v0, v1, p1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 19
    .line 20
    .line 21
    const/4 p1, 0x1

    .line 22
    iput p1, p0, Lcom/samsung/android/server/wifi/ui/SemWifiNotificationController;->state:I

    .line 23
    .line 24
    return-void
.end method

.method private startNotificationController()V
    .locals 7

    .line 1
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/ui/SemWifiNotificationController;->isActive:Z

    .line 2
    .line 3
    const-string v1, "SemWifiNotificationController"

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const-string v0, "start"

    .line 8
    .line 9
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    const/4 v0, 0x1

    .line 13
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/ui/SemWifiNotificationController;->isActive:Z

    .line 14
    .line 15
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ui/SemWifiNotificationController;->settings:Lcom/samsung/android/server/wifi/ui/SemWifiNotificationController$NotificationSettingStore;

    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/ui/SemWifiNotificationController$NotificationSettingStore;->startMonitoring()V

    .line 18
    .line 19
    .line 20
    new-instance v3, Landroid/content/IntentFilter;

    .line 21
    .line 22
    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 23
    .line 24
    .line 25
    const-string v0, "com.samsung.android.server.wifi.ui.USER_DISMISSED_NOTIFICATION"

    .line 26
    .line 27
    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    const-string v0, "com.samsung.android.server.wifi.ui.PICK_WIFI_NETWORK"

    .line 31
    .line 32
    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ui/SemWifiNotificationController;->context:Landroid/content/Context;

    .line 36
    .line 37
    iget-object v2, p0, Lcom/samsung/android/server/wifi/ui/SemWifiNotificationController;->broadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 38
    .line 39
    iget-object v5, p0, Lcom/samsung/android/server/wifi/ui/SemWifiNotificationController;->handler:Landroid/os/Handler;

    .line 40
    .line 41
    const/4 v6, 0x2

    .line 42
    const/4 v4, 0x0

    .line 43
    invoke-virtual/range {v1 .. v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    .line 44
    .line 45
    .line 46
    return-void

    .line 47
    :cond_0
    const-string p0, "already started"

    .line 48
    .line 49
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    .line 51
    .line 52
    return-void
.end method

.method private stopNotificationController()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/ui/SemWifiNotificationController;->isActive:Z

    .line 2
    .line 3
    const-string v1, "SemWifiNotificationController"

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const-string v0, "stop"

    .line 8
    .line 9
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/ui/SemWifiNotificationController;->isActive:Z

    .line 14
    .line 15
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ui/SemWifiNotificationController;->settings:Lcom/samsung/android/server/wifi/ui/SemWifiNotificationController$NotificationSettingStore;

    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/ui/SemWifiNotificationController$NotificationSettingStore;->stopMonitoring()V

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ui/SemWifiNotificationController;->context:Landroid/content/Context;

    .line 21
    .line 22
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ui/SemWifiNotificationController;->broadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ui/SemWifiNotificationController;->clearPendingNotification()V

    .line 28
    .line 29
    .line 30
    return-void

    .line 31
    :cond_0
    const-string p0, "already stopped"

    .line 32
    .line 33
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method private updateRepeatTime()V
    .locals 4

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    iget-wide v2, p0, Lcom/samsung/android/server/wifi/ui/SemWifiNotificationController;->notificationRepeatDelay:J

    .line 6
    .line 7
    add-long/2addr v0, v2

    .line 8
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/ui/SemWifiNotificationController;->notificationRepeatTime:J

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public clearPendingNotification()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ui/SemWifiNotificationController;->clearRepeatTime()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ui/SemWifiNotificationController;->hideNotification()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public handleScanResults(Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ui/SemWifiNotificationController;->isDisallowedChangeWifiConfig()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ui/SemWifiNotificationController;->hideNotification()V

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ui/SemWifiNotificationController;->isAvailable()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_1

    .line 16
    .line 17
    return-void

    .line 18
    :cond_1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/ui/SemWifiNotificationController;->getOpenNetworkCount(Ljava/util/Set;)I

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    if-lez p1, :cond_2

    .line 23
    .line 24
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/ui/SemWifiNotificationController;->showNotification(I)V

    .line 25
    .line 26
    .line 27
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ui/SemWifiNotificationController;->updateRepeatTime()V

    .line 28
    .line 29
    .line 30
    return-void

    .line 31
    :cond_2
    const-string p1, "SemWifiNotificationController"

    .line 32
    .line 33
    const-string v0, "handleScanResults no networks"

    .line 34
    .line 35
    invoke-static {p1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    .line 37
    .line 38
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ui/SemWifiNotificationController;->hideNotification()V

    .line 39
    .line 40
    .line 41
    return-void
.end method

.method public isSupported()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/ui/SemWifiNotificationController;->isMenuSupported:Z

    .line 2
    .line 3
    return p0
.end method
