.class public Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerNotificationManager;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# static fields
.field public static final NOTIFICATION_TYPE_AUTO_SWITCH:I = 0x3

.field public static final NOTIFICATION_TYPE_DETECTED:I = 0x2

.field public static final NOTIFICATION_TYPE_SUGGESTION:I = 0x1

.field private static final TAG:Ljava/lang/String; = "SemWifiTransportLayerNotificationManager"

.field private static final TCP_MONITOR_HUN_ID:I = 0x104112c

.field private static final TCP_MONITOR_NOTIFICATION_ID:I = 0x1041131

.field private static final TCP_MONITOR_SUGGESTION_ID:I = 0x1041135


# instance fields
.field private final NOTIFICATION_CHANNEL_ID_DEFAULT:Ljava/lang/String;

.field private final NOTIFICATION_CHANNEL_ID_HIGH:Ljava/lang/String;

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mChannelNameEmergency:Ljava/lang/String;

.field private mChannelNameGeneral:Ljava/lang/String;

.field private final mContext:Landroid/content/Context;

.field private mNotificationManager:Landroid/app/NotificationManager;

.field private mPackageManager:Landroid/content/pm/PackageManager;


# direct methods
.method static bridge synthetic -$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerNotificationManager;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerNotificationManager;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmChannelNameEmergency(Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerNotificationManager;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerNotificationManager;->mChannelNameEmergency:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputmChannelNameGeneral(Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerNotificationManager;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerNotificationManager;->mChannelNameGeneral:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$minitNotificationChannel(Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerNotificationManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerNotificationManager;->initNotificationChannel()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "WifiTransportLayerNotificationManager_HIGH"

    .line 5
    .line 6
    iput-object v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerNotificationManager;->NOTIFICATION_CHANNEL_ID_HIGH:Ljava/lang/String;

    .line 7
    .line 8
    const-string v0, "WifiTransportLayerNotificationManager_DEFAULT"

    .line 9
    .line 10
    iput-object v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerNotificationManager;->NOTIFICATION_CHANNEL_ID_DEFAULT:Ljava/lang/String;

    .line 11
    .line 12
    iput-object p1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerNotificationManager;->mContext:Landroid/content/Context;

    .line 13
    .line 14
    new-instance v0, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    const v2, 0x1041135

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v1, "("

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    const v4, 0x104112a

    .line 43
    .line 44
    .line 45
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v3

    .line 49
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    const-string v3, ")"

    .line 53
    .line 54
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    iput-object v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerNotificationManager;->mChannelNameGeneral:Ljava/lang/String;

    .line 62
    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    .line 64
    .line 65
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 66
    .line 67
    .line 68
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 69
    .line 70
    .line 71
    move-result-object v4

    .line 72
    invoke-virtual {v4, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v2

    .line 76
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    const v1, 0x1041129

    .line 87
    .line 88
    .line 89
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object p1

    .line 103
    iput-object p1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerNotificationManager;->mChannelNameEmergency:Ljava/lang/String;

    .line 104
    .line 105
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerNotificationManager;->initNotificationChannel()V

    .line 106
    .line 107
    .line 108
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerNotificationManager;->setBroadCastReceiver()V

    .line 109
    .line 110
    .line 111
    return-void
.end method

.method private getAppLabel(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerNotificationManager;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const v1, 0x400080

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerNotificationManager;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    check-cast p0, Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    .line 22
    return-object p0

    .line 23
    :catch_0
    move-exception p0

    .line 24
    invoke-virtual {p0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 25
    .line 26
    .line 27
    const-string p0, ""

    .line 28
    .line 29
    return-object p0
.end method

.method private getNotificationManager()Landroid/app/NotificationManager;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerNotificationManager;->mNotificationManager:Landroid/app/NotificationManager;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerNotificationManager;->mContext:Landroid/content/Context;

    .line 6
    .line 7
    const-string v1, "notification"

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Landroid/app/NotificationManager;

    .line 14
    .line 15
    iput-object v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerNotificationManager;->mNotificationManager:Landroid/app/NotificationManager;

    .line 16
    .line 17
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerNotificationManager;->mNotificationManager:Landroid/app/NotificationManager;

    .line 18
    .line 19
    return-object p0
.end method

.method private getPackageManager()Landroid/content/pm/PackageManager;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerNotificationManager;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerNotificationManager;->mContext:Landroid/content/Context;

    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iput-object v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerNotificationManager;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 12
    .line 13
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerNotificationManager;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 14
    .line 15
    return-object p0
.end method

.method private initNotificationChannel()V
    .locals 4

    .line 1
    new-instance v0, Landroid/app/NotificationChannel;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerNotificationManager;->mChannelNameEmergency:Ljava/lang/String;

    .line 4
    .line 5
    const/4 v2, 0x4

    .line 6
    const-string v3, "WifiTransportLayerNotificationManager_HIGH"

    .line 7
    .line 8
    invoke-direct {v0, v3, v1, v2}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerNotificationManager;->mContext:Landroid/content/Context;

    .line 12
    .line 13
    const-class v2, Landroid/app/NotificationManager;

    .line 14
    .line 15
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    check-cast v1, Landroid/app/NotificationManager;

    .line 20
    .line 21
    invoke-virtual {v1, v0}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 22
    .line 23
    .line 24
    new-instance v0, Landroid/app/NotificationChannel;

    .line 25
    .line 26
    iget-object p0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerNotificationManager;->mChannelNameGeneral:Ljava/lang/String;

    .line 27
    .line 28
    const/4 v2, 0x3

    .line 29
    const-string v3, "WifiTransportLayerNotificationManager_DEFAULT"

    .line 30
    .line 31
    invoke-direct {v0, v3, p0, v2}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1, v0}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 35
    .line 36
    .line 37
    return-void
.end method

.method private setBroadCastReceiver()V
    .locals 3

    .line 1
    new-instance v0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerNotificationManager$1;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerNotificationManager$1;-><init>(Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerNotificationManager;)V

    .line 4
    .line 5
    .line 6
    iput-object v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerNotificationManager;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 7
    .line 8
    new-instance v0, Landroid/content/IntentFilter;

    .line 9
    .line 10
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 11
    .line 12
    .line 13
    const-string v1, "android.intent.action.LOCALE_CHANGED"

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerNotificationManager;->mContext:Landroid/content/Context;

    .line 19
    .line 20
    iget-object p0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerNotificationManager;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 21
    .line 22
    const/4 v2, 0x2

    .line 23
    invoke-virtual {v1, p0, v0, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method private showTcpMonitorHeadUpNotification(ZILjava/lang/String;)Z
    .locals 9

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "showTcpMonitorHeadUpNotification: "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    const-string v1, ", "

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    const-string v1, "SemWifiTransportLayerNotificationManager"

    .line 30
    .line 31
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    .line 33
    .line 34
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerNotificationManager;->getNotificationManager()Landroid/app/NotificationManager;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    const v1, 0x104112c

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 42
    .line 43
    .line 44
    const/4 v0, 0x1

    .line 45
    if-nez p1, :cond_0

    .line 46
    .line 47
    return v0

    .line 48
    :cond_0
    const/4 p1, 0x0

    .line 49
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerNotificationManager;->mContext:Landroid/content/Context;

    .line 50
    .line 51
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    invoke-direct {p0, p3}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerNotificationManager;->getAppLabel(Ljava/lang/String;)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v3

    .line 59
    filled-new-array {v3}, [Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v3

    .line 63
    invoke-virtual {v2, v1, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v2

    .line 67
    iget-object v3, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerNotificationManager;->mContext:Landroid/content/Context;

    .line 68
    .line 69
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 70
    .line 71
    .line 72
    move-result-object v3

    .line 73
    invoke-direct {p0, p3}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerNotificationManager;->getAppLabel(Ljava/lang/String;)Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v4

    .line 77
    filled-new-array {v4}, [Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object v4

    .line 81
    const v5, 0x104112b

    .line 82
    .line 83
    .line 84
    invoke-virtual {v3, v5, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v3

    .line 88
    new-instance v4, Landroid/content/Intent;

    .line 89
    .line 90
    const-string v5, "com.samsung.android.net.wifi.TCP_MONITOR_ACTION_USE_MOBILE_DATA"

    .line 91
    .line 92
    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    const-string v5, "uid"

    .line 96
    .line 97
    invoke-virtual {v4, v5, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 98
    .line 99
    .line 100
    const-string p2, "packageName"

    .line 101
    .line 102
    invoke-virtual {v4, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 103
    .line 104
    .line 105
    iget-object p2, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerNotificationManager;->mContext:Landroid/content/Context;

    .line 106
    .line 107
    const/high16 p3, 0xc000000

    .line 108
    .line 109
    invoke-static {p2, p1, v4, p3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 110
    .line 111
    .line 112
    move-result-object p2

    .line 113
    new-instance v5, Landroid/app/Notification$Action$Builder;

    .line 114
    .line 115
    iget-object v6, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerNotificationManager;->mContext:Landroid/content/Context;

    .line 116
    .line 117
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 118
    .line 119
    .line 120
    move-result-object v6

    .line 121
    const v7, 0x104112d

    .line 122
    .line 123
    .line 124
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v6

    .line 128
    iget-object v7, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerNotificationManager;->mContext:Landroid/content/Context;

    .line 129
    .line 130
    invoke-static {v7, p1, v4, p3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 131
    .line 132
    .line 133
    move-result-object v4

    .line 134
    const/4 v7, 0x0

    .line 135
    invoke-direct {v5, v7, v6, v4}, Landroid/app/Notification$Action$Builder;-><init>(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 136
    .line 137
    .line 138
    invoke-virtual {v5}, Landroid/app/Notification$Action$Builder;->build()Landroid/app/Notification$Action;

    .line 139
    .line 140
    .line 141
    move-result-object v4

    .line 142
    new-instance v5, Landroid/content/Intent;

    .line 143
    .line 144
    const-string v6, "com.samsung.android.net.wifi.WIFI_TCP_MONITOR_DELETE_NOTIFICATION"

    .line 145
    .line 146
    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 147
    .line 148
    .line 149
    const-string v6, "TYPE"

    .line 150
    .line 151
    const/4 v7, 0x2

    .line 152
    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 153
    .line 154
    .line 155
    iget-object v6, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerNotificationManager;->mContext:Landroid/content/Context;

    .line 156
    .line 157
    invoke-static {v6, p1, v5, p3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 158
    .line 159
    .line 160
    move-result-object p3

    .line 161
    new-instance v5, Landroid/app/Notification$BigTextStyle;

    .line 162
    .line 163
    invoke-direct {v5}, Landroid/app/Notification$BigTextStyle;-><init>()V

    .line 164
    .line 165
    .line 166
    invoke-virtual {v5, v3}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    .line 167
    .line 168
    .line 169
    move-result-object v5

    .line 170
    new-instance v6, Landroid/app/Notification$Builder;

    .line 171
    .line 172
    iget-object v7, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerNotificationManager;->mContext:Landroid/content/Context;

    .line 173
    .line 174
    const-string v8, "WifiTransportLayerNotificationManager_HIGH"

    .line 175
    .line 176
    invoke-direct {v6, v7, v8}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 177
    .line 178
    .line 179
    const v7, 0x1080bee

    .line 180
    .line 181
    .line 182
    invoke-virtual {v6, v7}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 183
    .line 184
    .line 185
    move-result-object v6

    .line 186
    invoke-virtual {v6, v5}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    .line 187
    .line 188
    .line 189
    move-result-object v5

    .line 190
    invoke-virtual {v5, v0}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    .line 191
    .line 192
    .line 193
    move-result-object v5

    .line 194
    invoke-virtual {v5, v2}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 195
    .line 196
    .line 197
    move-result-object v5

    .line 198
    invoke-virtual {v5, v2}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 199
    .line 200
    .line 201
    move-result-object v2

    .line 202
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 203
    .line 204
    .line 205
    move-result-object v2

    .line 206
    invoke-virtual {v2, v4}, Landroid/app/Notification$Builder;->addAction(Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;

    .line 207
    .line 208
    .line 209
    move-result-object v2

    .line 210
    invoke-virtual {v2, p3}, Landroid/app/Notification$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 211
    .line 212
    .line 213
    move-result-object p3

    .line 214
    invoke-virtual {p3, p2}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 215
    .line 216
    .line 217
    move-result-object p2

    .line 218
    invoke-virtual {p2}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    .line 219
    .line 220
    .line 221
    move-result-object p2

    .line 222
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 223
    .line 224
    .line 225
    move-result-wide v2

    .line 226
    iput-wide v2, p2, Landroid/app/Notification;->when:J

    .line 227
    .line 228
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerNotificationManager;->getNotificationManager()Landroid/app/NotificationManager;

    .line 229
    .line 230
    .line 231
    move-result-object p0

    .line 232
    invoke-virtual {p0, v1, p2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 233
    .line 234
    .line 235
    return v0

    .line 236
    :catch_0
    move-exception p0

    .line 237
    invoke-virtual {p0}, Landroid/content/res/Resources$NotFoundException;->printStackTrace()V

    .line 238
    .line 239
    .line 240
    return p1
.end method

.method private showTcpMonitorNotification(ZILjava/lang/String;)Z
    .locals 9

    .line 1
    const-string v0, "TYPE"

    .line 2
    .line 3
    const-string v1, "\u200f"

    .line 4
    .line 5
    new-instance v2, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    const-string v3, "showTcpMonitorNotification: "

    .line 8
    .line 9
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    const-string v3, ", "

    .line 16
    .line 17
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p2

    .line 33
    const-string v2, "SemWifiTransportLayerNotificationManager"

    .line 34
    .line 35
    invoke-static {v2, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    .line 37
    .line 38
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerNotificationManager;->getNotificationManager()Landroid/app/NotificationManager;

    .line 39
    .line 40
    .line 41
    move-result-object p2

    .line 42
    const v2, 0x1041131

    .line 43
    .line 44
    .line 45
    invoke-virtual {p2, v2}, Landroid/app/NotificationManager;->cancel(I)V

    .line 46
    .line 47
    .line 48
    const/4 p2, 0x1

    .line 49
    if-nez p1, :cond_0

    .line 50
    .line 51
    return p2

    .line 52
    :cond_0
    const/4 p1, 0x0

    .line 53
    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerNotificationManager;->mContext:Landroid/content/Context;

    .line 54
    .line 55
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 56
    .line 57
    .line 58
    move-result-object v3

    .line 59
    invoke-direct {p0, p3}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerNotificationManager;->getAppLabel(Ljava/lang/String;)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v4

    .line 63
    filled-new-array {v4}, [Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v4

    .line 67
    invoke-virtual {v3, v2, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v3

    .line 71
    iget-object v4, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerNotificationManager;->mContext:Landroid/content/Context;

    .line 72
    .line 73
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 74
    .line 75
    .line 76
    move-result-object v4

    .line 77
    invoke-direct {p0, p3}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerNotificationManager;->getAppLabel(Ljava/lang/String;)Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object p3

    .line 81
    filled-new-array {p3}, [Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object p3

    .line 85
    const v5, 0x104112e

    .line 86
    .line 87
    .line 88
    invoke-virtual {v4, v5, p3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object p3

    .line 92
    iget-object v4, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerNotificationManager;->mContext:Landroid/content/Context;

    .line 93
    .line 94
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 95
    .line 96
    .line 97
    move-result-object v4

    .line 98
    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 99
    .line 100
    .line 101
    move-result-object v4

    .line 102
    invoke-virtual {v4}, Landroid/content/res/Configuration;->getLayoutDirection()I

    .line 103
    .line 104
    .line 105
    move-result v4

    .line 106
    if-ne v4, p2, :cond_1

    .line 107
    .line 108
    new-instance v4, Ljava/lang/StringBuilder;

    .line 109
    .line 110
    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    const/16 v3, 0x200f

    .line 117
    .line 118
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v4

    .line 125
    new-instance v5, Ljava/lang/StringBuilder;

    .line 126
    .line 127
    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object p3

    .line 140
    move-object v3, v4

    .line 141
    goto :goto_0

    .line 142
    :catch_0
    move-exception p0

    .line 143
    goto/16 :goto_1

    .line 144
    .line 145
    :cond_1
    :goto_0
    new-instance v1, Landroid/content/Intent;

    .line 146
    .line 147
    const-string v4, "com.samsung.android.net.wifi.WIFI_TCP_MONITOR_ACTION_SETTINGS"

    .line 148
    .line 149
    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 150
    .line 151
    .line 152
    const/4 v4, 0x6

    .line 153
    invoke-virtual {v1, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 154
    .line 155
    .line 156
    iget-object v4, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerNotificationManager;->mContext:Landroid/content/Context;

    .line 157
    .line 158
    const/high16 v5, 0xc000000

    .line 159
    .line 160
    invoke-static {v4, p1, v1, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 161
    .line 162
    .line 163
    move-result-object v1

    .line 164
    new-instance v4, Landroid/app/Notification$Action$Builder;

    .line 165
    .line 166
    iget-object v6, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerNotificationManager;->mContext:Landroid/content/Context;

    .line 167
    .line 168
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 169
    .line 170
    .line 171
    move-result-object v6

    .line 172
    const v7, 0x1041134

    .line 173
    .line 174
    .line 175
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object v6

    .line 179
    const/4 v7, 0x0

    .line 180
    invoke-direct {v4, v7, v6, v1}, Landroid/app/Notification$Action$Builder;-><init>(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 181
    .line 182
    .line 183
    invoke-virtual {v4}, Landroid/app/Notification$Action$Builder;->build()Landroid/app/Notification$Action;

    .line 184
    .line 185
    .line 186
    move-result-object v4

    .line 187
    new-instance v6, Landroid/content/Intent;

    .line 188
    .line 189
    const-string v7, "com.samsung.android.net.wifi.WIFI_TCP_MONITOR_DELETE_NOTIFICATION"

    .line 190
    .line 191
    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 192
    .line 193
    .line 194
    const/4 v7, 0x3

    .line 195
    invoke-virtual {v6, v0, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 196
    .line 197
    .line 198
    iget-object v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerNotificationManager;->mContext:Landroid/content/Context;

    .line 199
    .line 200
    invoke-static {v0, p1, v6, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 201
    .line 202
    .line 203
    move-result-object v0

    .line 204
    new-instance v5, Landroid/app/Notification$BigTextStyle;

    .line 205
    .line 206
    invoke-direct {v5}, Landroid/app/Notification$BigTextStyle;-><init>()V

    .line 207
    .line 208
    .line 209
    invoke-virtual {v5, p3}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    .line 210
    .line 211
    .line 212
    move-result-object v5

    .line 213
    new-instance v6, Landroid/app/Notification$Builder;

    .line 214
    .line 215
    iget-object v7, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerNotificationManager;->mContext:Landroid/content/Context;

    .line 216
    .line 217
    const-string v8, "WifiTransportLayerNotificationManager_DEFAULT"

    .line 218
    .line 219
    invoke-direct {v6, v7, v8}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 220
    .line 221
    .line 222
    const v7, 0x1080bee

    .line 223
    .line 224
    .line 225
    invoke-virtual {v6, v7}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 226
    .line 227
    .line 228
    move-result-object v6

    .line 229
    invoke-virtual {v6, v5}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    .line 230
    .line 231
    .line 232
    move-result-object v5

    .line 233
    invoke-virtual {v5, p2}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    .line 234
    .line 235
    .line 236
    move-result-object v5

    .line 237
    invoke-virtual {v5, v3}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 238
    .line 239
    .line 240
    move-result-object v5

    .line 241
    invoke-virtual {v5, v3}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 242
    .line 243
    .line 244
    move-result-object v3

    .line 245
    invoke-virtual {v3, p3}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 246
    .line 247
    .line 248
    move-result-object p3

    .line 249
    invoke-virtual {p3, v4}, Landroid/app/Notification$Builder;->addAction(Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;

    .line 250
    .line 251
    .line 252
    move-result-object p3

    .line 253
    invoke-virtual {p3, v0}, Landroid/app/Notification$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 254
    .line 255
    .line 256
    move-result-object p3

    .line 257
    invoke-virtual {p3, v1}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 258
    .line 259
    .line 260
    move-result-object p3

    .line 261
    invoke-virtual {p3}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    .line 262
    .line 263
    .line 264
    move-result-object p3

    .line 265
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 266
    .line 267
    .line 268
    move-result-wide v0

    .line 269
    iput-wide v0, p3, Landroid/app/Notification;->when:J

    .line 270
    .line 271
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerNotificationManager;->getNotificationManager()Landroid/app/NotificationManager;

    .line 272
    .line 273
    .line 274
    move-result-object p0

    .line 275
    invoke-virtual {p0, v2, p3}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 276
    .line 277
    .line 278
    return p2

    .line 279
    :goto_1
    invoke-virtual {p0}, Landroid/content/res/Resources$NotFoundException;->printStackTrace()V

    .line 280
    .line 281
    .line 282
    return p1
.end method

.method private showTcpMonitorSuggestionNotification(ZLjava/lang/String;I)Z
    .locals 9

    .line 1
    const-string v0, "TYPE"

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    const-string v2, "showTcpMonitorSuggestionNotification: "

    .line 6
    .line 7
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v2, ", "

    .line 14
    .line 15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    const-string v2, "SemWifiTransportLayerNotificationManager"

    .line 26
    .line 27
    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    .line 29
    .line 30
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerNotificationManager;->getNotificationManager()Landroid/app/NotificationManager;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    const v2, 0x1041135

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1, v2}, Landroid/app/NotificationManager;->cancel(I)V

    .line 38
    .line 39
    .line 40
    const/4 v1, 0x1

    .line 41
    if-nez p1, :cond_0

    .line 42
    .line 43
    return v1

    .line 44
    :cond_0
    const/4 p1, 0x0

    .line 45
    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerNotificationManager;->mContext:Landroid/content/Context;

    .line 46
    .line 47
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 48
    .line 49
    .line 50
    move-result-object v3

    .line 51
    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v3

    .line 55
    iget-object v4, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerNotificationManager;->mContext:Landroid/content/Context;

    .line 56
    .line 57
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 58
    .line 59
    .line 60
    move-result-object v4

    .line 61
    invoke-direct {p0, p2}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerNotificationManager;->getAppLabel(Ljava/lang/String;)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object p2

    .line 65
    filled-new-array {p2}, [Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object p2

    .line 69
    const v5, 0x1041133

    .line 70
    .line 71
    .line 72
    invoke-virtual {v4, v5, p2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object p2

    .line 76
    new-instance v4, Landroid/content/Intent;

    .line 77
    .line 78
    const-string v5, "com.samsung.android.net.wifi.WIFI_TCP_MONITOR_ACTION_SETTINGS"

    .line 79
    .line 80
    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    const/4 v5, 0x4

    .line 84
    invoke-virtual {v4, v0, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 85
    .line 86
    .line 87
    const-string v5, "UID"

    .line 88
    .line 89
    invoke-virtual {v4, v5, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 90
    .line 91
    .line 92
    iget-object p3, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerNotificationManager;->mContext:Landroid/content/Context;

    .line 93
    .line 94
    const/high16 v5, 0xc000000

    .line 95
    .line 96
    invoke-static {p3, p1, v4, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 97
    .line 98
    .line 99
    move-result-object p3

    .line 100
    new-instance v4, Landroid/app/Notification$Action$Builder;

    .line 101
    .line 102
    iget-object v6, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerNotificationManager;->mContext:Landroid/content/Context;

    .line 103
    .line 104
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 105
    .line 106
    .line 107
    move-result-object v6

    .line 108
    const v7, 0x1041134

    .line 109
    .line 110
    .line 111
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v6

    .line 115
    const/4 v7, 0x0

    .line 116
    invoke-direct {v4, v7, v6, p3}, Landroid/app/Notification$Action$Builder;-><init>(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 117
    .line 118
    .line 119
    invoke-virtual {v4}, Landroid/app/Notification$Action$Builder;->build()Landroid/app/Notification$Action;

    .line 120
    .line 121
    .line 122
    move-result-object v4

    .line 123
    new-instance v6, Landroid/content/Intent;

    .line 124
    .line 125
    const-string v7, "com.samsung.android.net.wifi.WIFI_TCP_MONITOR_DELETE_NOTIFICATION"

    .line 126
    .line 127
    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    invoke-virtual {v6, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 131
    .line 132
    .line 133
    iget-object v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerNotificationManager;->mContext:Landroid/content/Context;

    .line 134
    .line 135
    invoke-static {v0, p1, v6, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 136
    .line 137
    .line 138
    move-result-object v0

    .line 139
    new-instance v5, Landroid/app/Notification$BigTextStyle;

    .line 140
    .line 141
    invoke-direct {v5}, Landroid/app/Notification$BigTextStyle;-><init>()V

    .line 142
    .line 143
    .line 144
    invoke-virtual {v5, p2}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    .line 145
    .line 146
    .line 147
    move-result-object v5

    .line 148
    new-instance v6, Landroid/app/Notification$Builder;

    .line 149
    .line 150
    iget-object v7, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerNotificationManager;->mContext:Landroid/content/Context;

    .line 151
    .line 152
    const-string v8, "WifiTransportLayerNotificationManager_HIGH"

    .line 153
    .line 154
    invoke-direct {v6, v7, v8}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 155
    .line 156
    .line 157
    const v7, 0x1080bee

    .line 158
    .line 159
    .line 160
    invoke-virtual {v6, v7}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 161
    .line 162
    .line 163
    move-result-object v6

    .line 164
    invoke-virtual {v6, v5}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    .line 165
    .line 166
    .line 167
    move-result-object v5

    .line 168
    invoke-virtual {v5, v1}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    .line 169
    .line 170
    .line 171
    move-result-object v5

    .line 172
    invoke-virtual {v5, v3}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 173
    .line 174
    .line 175
    move-result-object v5

    .line 176
    invoke-virtual {v5, v3}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 177
    .line 178
    .line 179
    move-result-object v3

    .line 180
    invoke-virtual {v3, p2}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 181
    .line 182
    .line 183
    move-result-object p2

    .line 184
    invoke-virtual {p2, v4}, Landroid/app/Notification$Builder;->addAction(Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;

    .line 185
    .line 186
    .line 187
    move-result-object p2

    .line 188
    invoke-virtual {p2, v0}, Landroid/app/Notification$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 189
    .line 190
    .line 191
    move-result-object p2

    .line 192
    invoke-virtual {p2, p3}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 193
    .line 194
    .line 195
    move-result-object p2

    .line 196
    invoke-virtual {p2}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    .line 197
    .line 198
    .line 199
    move-result-object p2

    .line 200
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 201
    .line 202
    .line 203
    move-result-wide v3

    .line 204
    iput-wide v3, p2, Landroid/app/Notification;->when:J

    .line 205
    .line 206
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerNotificationManager;->getNotificationManager()Landroid/app/NotificationManager;

    .line 207
    .line 208
    .line 209
    move-result-object p0

    .line 210
    invoke-virtual {p0, v2, p2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 211
    .line 212
    .line 213
    return v1

    .line 214
    :catch_0
    move-exception p0

    .line 215
    invoke-virtual {p0}, Landroid/content/res/Resources$NotFoundException;->printStackTrace()V

    .line 216
    .line 217
    .line 218
    return p1
.end method


# virtual methods
.method public clearNotificationAll()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x0

    .line 3
    invoke-direct {p0, v0, v1, v0}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerNotificationManager;->showTcpMonitorSuggestionNotification(ZLjava/lang/String;I)Z

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, v0, v0, v1}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerNotificationManager;->showTcpMonitorHeadUpNotification(ZILjava/lang/String;)Z

    .line 7
    .line 8
    .line 9
    invoke-direct {p0, v0, v0, v1}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerNotificationManager;->showTcpMonitorNotification(ZILjava/lang/String;)Z

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public removeNotification(I)V
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    const/4 v2, 0x0

    .line 4
    if-eq p1, v0, :cond_2

    .line 5
    .line 6
    const/4 v0, 0x2

    .line 7
    if-eq p1, v0, :cond_1

    .line 8
    .line 9
    const/4 v0, 0x3

    .line 10
    if-eq p1, v0, :cond_0

    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    invoke-direct {p0, v2, v2, v1}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerNotificationManager;->showTcpMonitorNotification(ZILjava/lang/String;)Z

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :cond_1
    invoke-direct {p0, v2, v2, v1}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerNotificationManager;->showTcpMonitorHeadUpNotification(ZILjava/lang/String;)Z

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :cond_2
    invoke-direct {p0, v2, v1, v2}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerNotificationManager;->showTcpMonitorSuggestionNotification(ZLjava/lang/String;I)Z

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public showNotification(IILjava/lang/String;)V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    if-eq p1, v0, :cond_2

    .line 3
    .line 4
    const/4 v1, 0x2

    .line 5
    if-eq p1, v1, :cond_1

    .line 6
    .line 7
    const/4 v1, 0x3

    .line 8
    if-eq p1, v1, :cond_0

    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    invoke-direct {p0, v0, p2, p3}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerNotificationManager;->showTcpMonitorNotification(ZILjava/lang/String;)Z

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :cond_1
    invoke-direct {p0, v0, p2, p3}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerNotificationManager;->showTcpMonitorHeadUpNotification(ZILjava/lang/String;)Z

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :cond_2
    invoke-direct {p0, v0, p3, p2}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerNotificationManager;->showTcpMonitorSuggestionNotification(ZLjava/lang/String;I)Z

    .line 20
    .line 21
    .line 22
    return-void
.end method
