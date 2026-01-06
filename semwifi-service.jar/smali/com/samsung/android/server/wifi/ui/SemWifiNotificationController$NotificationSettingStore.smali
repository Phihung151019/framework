.class Lcom/samsung/android/server/wifi/ui/SemWifiNotificationController$NotificationSettingStore;
.super Landroid/database/ContentObserver;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/ui/SemWifiNotificationController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NotificationSettingStore"
.end annotation


# instance fields
.field private isEnabled:Z

.field final synthetic this$0:Lcom/samsung/android/server/wifi/ui/SemWifiNotificationController;


# direct methods
.method static bridge synthetic -$$Nest$misEnabled(Lcom/samsung/android/server/wifi/ui/SemWifiNotificationController$NotificationSettingStore;)Z
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ui/SemWifiNotificationController$NotificationSettingStore;->isEnabled()Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method static bridge synthetic -$$Nest$mmigrationNotificationSettings(Lcom/samsung/android/server/wifi/ui/SemWifiNotificationController$NotificationSettingStore;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ui/SemWifiNotificationController$NotificationSettingStore;->migrationNotificationSettings()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$mturnsOffNotificationSetting(Lcom/samsung/android/server/wifi/ui/SemWifiNotificationController$NotificationSettingStore;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ui/SemWifiNotificationController$NotificationSettingStore;->turnsOffNotificationSetting()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method constructor <init>(Lcom/samsung/android/server/wifi/ui/SemWifiNotificationController;Landroid/os/Handler;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/samsung/android/server/wifi/ui/SemWifiNotificationController$NotificationSettingStore;->this$0:Lcom/samsung/android/server/wifi/ui/SemWifiNotificationController;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ui/SemWifiNotificationController$NotificationSettingStore;->getNotificationSetting()I

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    const/4 p2, 0x3

    .line 11
    if-ne p1, p2, :cond_0

    .line 12
    .line 13
    const/4 p1, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 p1, 0x0

    .line 16
    :goto_0
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/ui/SemWifiNotificationController$NotificationSettingStore;->isEnabled:Z

    .line 17
    .line 18
    return-void
.end method

.method private getNotificationSetting()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ui/SemWifiNotificationController$NotificationSettingStore;->this$0:Lcom/samsung/android/server/wifi/ui/SemWifiNotificationController;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/samsung/android/server/wifi/ui/SemWifiNotificationController;->-$$Nest$fgetframeworkFacade(Lcom/samsung/android/server/wifi/ui/SemWifiNotificationController;)Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ui/SemWifiNotificationController$NotificationSettingStore;->this$0:Lcom/samsung/android/server/wifi/ui/SemWifiNotificationController;

    .line 8
    .line 9
    invoke-static {p0}, Lcom/samsung/android/server/wifi/ui/SemWifiNotificationController;->-$$Nest$fgetcontext(Lcom/samsung/android/server/wifi/ui/SemWifiNotificationController;)Landroid/content/Context;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    const-string v1, "wifi_networks_available_notification_on"

    .line 14
    .line 15
    const/4 v2, 0x2

    .line 16
    invoke-virtual {v0, p0, v1, v2}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->getIntegerSetting(Landroid/content/Context;Ljava/lang/String;I)I

    .line 17
    .line 18
    .line 19
    move-result p0

    .line 20
    return p0
.end method

.method private isEnabled()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/ui/SemWifiNotificationController$NotificationSettingStore;->isEnabled:Z

    .line 2
    .line 3
    return p0
.end method

.method private migrationNotificationSettings()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ui/SemWifiNotificationController$NotificationSettingStore;->getNotificationSetting()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    .line 8
    const/4 v0, 0x3

    .line 9
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/ui/SemWifiNotificationController$NotificationSettingStore;->setNotificationSetting(I)V

    .line 10
    .line 11
    .line 12
    iput-boolean v1, p0, Lcom/samsung/android/server/wifi/ui/SemWifiNotificationController$NotificationSettingStore;->isEnabled:Z

    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    if-nez v0, :cond_1

    .line 16
    .line 17
    const/4 v0, 0x2

    .line 18
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/ui/SemWifiNotificationController$NotificationSettingStore;->setNotificationSetting(I)V

    .line 19
    .line 20
    .line 21
    :cond_1
    return-void
.end method

.method private setNotificationSetting(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ui/SemWifiNotificationController$NotificationSettingStore;->this$0:Lcom/samsung/android/server/wifi/ui/SemWifiNotificationController;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/samsung/android/server/wifi/ui/SemWifiNotificationController;->-$$Nest$fgetframeworkFacade(Lcom/samsung/android/server/wifi/ui/SemWifiNotificationController;)Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ui/SemWifiNotificationController$NotificationSettingStore;->this$0:Lcom/samsung/android/server/wifi/ui/SemWifiNotificationController;

    .line 8
    .line 9
    invoke-static {p0}, Lcom/samsung/android/server/wifi/ui/SemWifiNotificationController;->-$$Nest$fgetcontext(Lcom/samsung/android/server/wifi/ui/SemWifiNotificationController;)Landroid/content/Context;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    const-string v1, "wifi_networks_available_notification_on"

    .line 14
    .line 15
    invoke-virtual {v0, p0, v1, p1}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->setIntegerSetting(Landroid/content/Context;Ljava/lang/String;I)Z

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method private turnsOffNotificationSetting()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/ui/SemWifiNotificationController$NotificationSettingStore;->setNotificationSetting(I)V

    .line 3
    .line 4
    .line 5
    return-void
.end method


# virtual methods
.method public getRepeatDelay(I)J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ui/SemWifiNotificationController$NotificationSettingStore;->this$0:Lcom/samsung/android/server/wifi/ui/SemWifiNotificationController;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/samsung/android/server/wifi/ui/SemWifiNotificationController;->-$$Nest$fgetframeworkFacade(Lcom/samsung/android/server/wifi/ui/SemWifiNotificationController;)Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ui/SemWifiNotificationController$NotificationSettingStore;->this$0:Lcom/samsung/android/server/wifi/ui/SemWifiNotificationController;

    .line 8
    .line 9
    invoke-static {p0}, Lcom/samsung/android/server/wifi/ui/SemWifiNotificationController;->-$$Nest$fgetcontext(Lcom/samsung/android/server/wifi/ui/SemWifiNotificationController;)Landroid/content/Context;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    const-string v1, "wifi_networks_available_repeat_delay"

    .line 14
    .line 15
    invoke-virtual {v0, p0, v1, p1}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->getIntegerSetting(Landroid/content/Context;Ljava/lang/String;I)I

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    int-to-long p0, p0

    .line 20
    const-wide/16 v0, 0x3e8

    .line 21
    .line 22
    mul-long/2addr p0, v0

    .line 23
    return-wide p0
.end method

.method public onChange(Z)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ui/SemWifiNotificationController$NotificationSettingStore;->getNotificationSetting()I

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    const/4 v0, 0x3

    .line 9
    if-ne p1, v0, :cond_0

    .line 10
    .line 11
    const/4 p1, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 p1, 0x0

    .line 14
    :goto_0
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/ui/SemWifiNotificationController$NotificationSettingStore;->isEnabled:Z

    .line 15
    .line 16
    new-instance p1, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    const-string v0, "setting db was changed "

    .line 19
    .line 20
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/ui/SemWifiNotificationController$NotificationSettingStore;->isEnabled:Z

    .line 24
    .line 25
    const-string v1, "SemWifiNotificationController"

    .line 26
    .line 27
    invoke-static {p1, v0, v1}, Lcom/samsung/android/server/wifi/SemEasySetupWifiManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    .line 28
    .line 29
    .line 30
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ui/SemWifiNotificationController$NotificationSettingStore;->this$0:Lcom/samsung/android/server/wifi/ui/SemWifiNotificationController;

    .line 31
    .line 32
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ui/SemWifiNotificationController;->clearPendingNotification()V

    .line 33
    .line 34
    .line 35
    return-void
.end method

.method public startMonitoring()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ui/SemWifiNotificationController$NotificationSettingStore;->this$0:Lcom/samsung/android/server/wifi/ui/SemWifiNotificationController;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/samsung/android/server/wifi/ui/SemWifiNotificationController;->-$$Nest$fgetframeworkFacade(Lcom/samsung/android/server/wifi/ui/SemWifiNotificationController;)Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ui/SemWifiNotificationController$NotificationSettingStore;->this$0:Lcom/samsung/android/server/wifi/ui/SemWifiNotificationController;

    .line 8
    .line 9
    invoke-static {v1}, Lcom/samsung/android/server/wifi/ui/SemWifiNotificationController;->-$$Nest$fgetcontext(Lcom/samsung/android/server/wifi/ui/SemWifiNotificationController;)Landroid/content/Context;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    const-string v2, "wifi_networks_available_notification_on"

    .line 14
    .line 15
    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    const/4 v3, 0x1

    .line 20
    invoke-virtual {v0, v1, v2, v3, p0}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->registerContentObserver(Landroid/content/Context;Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public stopMonitoring()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ui/SemWifiNotificationController$NotificationSettingStore;->this$0:Lcom/samsung/android/server/wifi/ui/SemWifiNotificationController;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/samsung/android/server/wifi/ui/SemWifiNotificationController;->-$$Nest$fgetframeworkFacade(Lcom/samsung/android/server/wifi/ui/SemWifiNotificationController;)Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ui/SemWifiNotificationController$NotificationSettingStore;->this$0:Lcom/samsung/android/server/wifi/ui/SemWifiNotificationController;

    .line 8
    .line 9
    invoke-static {v1}, Lcom/samsung/android/server/wifi/ui/SemWifiNotificationController;->-$$Nest$fgetcontext(Lcom/samsung/android/server/wifi/ui/SemWifiNotificationController;)Landroid/content/Context;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v0, v1, p0}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->unregisterContentObserver(Landroid/content/Context;Landroid/database/ContentObserver;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method
