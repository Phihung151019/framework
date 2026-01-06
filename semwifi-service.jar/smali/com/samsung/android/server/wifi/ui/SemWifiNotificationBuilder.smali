.class Lcom/samsung/android/server/wifi/ui/SemWifiNotificationBuilder;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# static fields
.field public static final ACTION_PICK_WIFI_NETWORK:Ljava/lang/String; = "com.samsung.android.server.wifi.ui.PICK_WIFI_NETWORK"

.field public static final ACTION_USER_DISMISSED_NOTIFICATION:Ljava/lang/String; = "com.samsung.android.server.wifi.ui.USER_DISMISSED_NOTIFICATION"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mFrameworkFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

.field private final mResources:Landroid/content/res/Resources;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/samsung/android/server/wifi/SemFrameworkFacade;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/samsung/android/server/wifi/ui/SemWifiNotificationBuilder;->mContext:Landroid/content/Context;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/samsung/android/server/wifi/ui/SemWifiNotificationBuilder;->mFrameworkFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    .line 7
    .line 8
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    iput-object p1, p0, Lcom/samsung/android/server/wifi/ui/SemWifiNotificationBuilder;->mResources:Landroid/content/res/Resources;

    .line 13
    .line 14
    return-void
.end method

.method private createNotificationBuilder(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;)Landroid/app/Notification$Builder;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ui/SemWifiNotificationBuilder;->mFrameworkFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ui/SemWifiNotificationBuilder;->mContext:Landroid/content/Context;

    .line 4
    .line 5
    const-string v2, "NETWORK_AVAILABLE"

    .line 6
    .line 7
    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->makeNotificationBuilder(Landroid/content/Context;Ljava/lang/String;)Landroid/app/Notification$Builder;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const v1, 0x1080bed

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {v0, p1}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-virtual {v0, p1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-virtual {p1, p2}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    const-string p2, "com.samsung.android.server.wifi.ui.USER_DISMISSED_NOTIFICATION"

    .line 31
    .line 32
    invoke-direct {p0, p2, p3}, Lcom/samsung/android/server/wifi/ui/SemWifiNotificationBuilder;->getPrivateBroadcast(Ljava/lang/String;Ljava/lang/String;)Landroid/app/PendingIntent;

    .line 33
    .line 34
    .line 35
    move-result-object p2

    .line 36
    invoke-virtual {p1, p2}, Landroid/app/Notification$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    const/4 p2, 0x0

    .line 41
    invoke-virtual {p1, p2}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    const/4 p2, 0x1

    .line 46
    invoke-virtual {p1, p2}, Landroid/app/Notification$Builder;->setLocalOnly(Z)Landroid/app/Notification$Builder;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    iget-object p2, p0, Lcom/samsung/android/server/wifi/ui/SemWifiNotificationBuilder;->mResources:Landroid/content/res/Resources;

    .line 51
    .line 52
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ui/SemWifiNotificationBuilder;->mContext:Landroid/content/Context;

    .line 53
    .line 54
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 55
    .line 56
    .line 57
    move-result-object p0

    .line 58
    const p3, 0x106001c

    .line 59
    .line 60
    .line 61
    invoke-virtual {p2, p3, p0}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    .line 62
    .line 63
    .line 64
    move-result p0

    .line 65
    invoke-virtual {p1, p0}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    .line 66
    .line 67
    .line 68
    move-result-object p0

    .line 69
    return-object p0
.end method

.method private getPrivateBroadcast(Ljava/lang/String;Ljava/lang/String;)Landroid/app/PendingIntent;
    .locals 2

    .line 1
    new-instance p2, Landroid/content/Intent;

    .line 2
    .line 3
    invoke-direct {p2, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ui/SemWifiNotificationBuilder;->mFrameworkFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    .line 7
    .line 8
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ui/SemWifiNotificationBuilder;->mContext:Landroid/content/Context;

    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    const/high16 v1, 0xc000000

    .line 12
    .line 13
    invoke-virtual {p1, p0, v0, p2, v1}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method


# virtual methods
.method createOpenNetworkAvailableNotification(Ljava/lang/String;I)Landroid/app/Notification;
    .locals 5

    .line 1
    new-instance v0, Landroid/app/Notification$Action$Builder;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ui/SemWifiNotificationBuilder;->mResources:Landroid/content/res/Resources;

    .line 4
    .line 5
    const v2, 0x1041118

    .line 6
    .line 7
    .line 8
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    const-string v2, "com.samsung.android.server.wifi.ui.PICK_WIFI_NETWORK"

    .line 13
    .line 14
    invoke-direct {p0, v2, p1}, Lcom/samsung/android/server/wifi/ui/SemWifiNotificationBuilder;->getPrivateBroadcast(Ljava/lang/String;Ljava/lang/String;)Landroid/app/PendingIntent;

    .line 15
    .line 16
    .line 17
    move-result-object v3

    .line 18
    const/4 v4, 0x0

    .line 19
    invoke-direct {v0, v4, v1, v3}, Landroid/app/Notification$Action$Builder;-><init>(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Landroid/app/Notification$Action$Builder;->build()Landroid/app/Notification$Action;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    const/4 v1, 0x1

    .line 27
    if-le p2, v1, :cond_0

    .line 28
    .line 29
    iget-object p2, p0, Lcom/samsung/android/server/wifi/ui/SemWifiNotificationBuilder;->mContext:Landroid/content/Context;

    .line 30
    .line 31
    const v3, 0x1041121

    .line 32
    .line 33
    .line 34
    invoke-virtual {p2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    .line 35
    .line 36
    .line 37
    move-result-object p2

    .line 38
    iget-object v3, p0, Lcom/samsung/android/server/wifi/ui/SemWifiNotificationBuilder;->mContext:Landroid/content/Context;

    .line 39
    .line 40
    const v4, 0x1041122

    .line 41
    .line 42
    .line 43
    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    .line 44
    .line 45
    .line 46
    move-result-object v3

    .line 47
    goto :goto_0

    .line 48
    :cond_0
    iget-object p2, p0, Lcom/samsung/android/server/wifi/ui/SemWifiNotificationBuilder;->mContext:Landroid/content/Context;

    .line 49
    .line 50
    const v3, 0x104111f

    .line 51
    .line 52
    .line 53
    invoke-virtual {p2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    .line 54
    .line 55
    .line 56
    move-result-object p2

    .line 57
    iget-object v3, p0, Lcom/samsung/android/server/wifi/ui/SemWifiNotificationBuilder;->mContext:Landroid/content/Context;

    .line 58
    .line 59
    const v4, 0x1041120

    .line 60
    .line 61
    .line 62
    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    .line 63
    .line 64
    .line 65
    move-result-object v3

    .line 66
    :goto_0
    invoke-direct {p0, p2, v3, p1}, Lcom/samsung/android/server/wifi/ui/SemWifiNotificationBuilder;->createNotificationBuilder(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;)Landroid/app/Notification$Builder;

    .line 67
    .line 68
    .line 69
    move-result-object p2

    .line 70
    invoke-virtual {p2, v0}, Landroid/app/Notification$Builder;->addAction(Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;

    .line 71
    .line 72
    .line 73
    move-result-object p2

    .line 74
    invoke-direct {p0, v2, p1}, Lcom/samsung/android/server/wifi/ui/SemWifiNotificationBuilder;->getPrivateBroadcast(Ljava/lang/String;Ljava/lang/String;)Landroid/app/PendingIntent;

    .line 75
    .line 76
    .line 77
    move-result-object p0

    .line 78
    invoke-virtual {p2, p0}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 79
    .line 80
    .line 81
    move-result-object p0

    .line 82
    invoke-virtual {p0, v1}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    .line 83
    .line 84
    .line 85
    move-result-object p0

    .line 86
    invoke-virtual {p0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    .line 87
    .line 88
    .line 89
    move-result-object p0

    .line 90
    return-object p0
.end method
