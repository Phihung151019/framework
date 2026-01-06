.class public Lcom/samsung/android/server/wifi/ap/SemWifiApNotification;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# static fields
.field private static final MAXAP_NOTI_ID:I = 0x1040fa6

.field private static final TAG:Ljava/lang/String; = "SemWifiApNotification"


# instance fields
.field body:Ljava/lang/String;

.field icon:I

.field private mContext:Landroid/content/Context;

.field private mMaxApNotificationManager:Landroid/app/NotificationManager;

.field private mWifiApStaInfoStateListener:Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$WifiApStaInfoStateListener;

.field r:Landroid/content/res/Resources;

.field private final semWifiApIntentHandler:Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;

.field title:Ljava/lang/String;


# direct methods
.method public static synthetic $r8$lambda$QSzDzHIRzZNGthqRl8YBovlSnyg(Lcom/samsung/android/server/wifi/ap/SemWifiApNotification;IIILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/server/wifi/ap/SemWifiApNotification;->lambda$new$0(IIILjava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApNotification;->mMaxApNotificationManager:Landroid/app/NotificationManager;

    .line 6
    .line 7
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApNotification;->r:Landroid/content/res/Resources;

    .line 12
    .line 13
    const v1, 0x1040f9f

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApNotification;->body:Ljava/lang/String;

    .line 21
    .line 22
    const v0, 0x108008a

    .line 23
    .line 24
    .line 25
    iput v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApNotification;->icon:I

    .line 26
    .line 27
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApNotification;->r:Landroid/content/res/Resources;

    .line 28
    .line 29
    const v1, 0x1040fa6

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApNotification;->title:Ljava/lang/String;

    .line 37
    .line 38
    new-instance v0, Lcom/samsung/android/server/wifi/ap/SemWifiApNotification$1;

    .line 39
    .line 40
    invoke-direct {v0, p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApNotification$1;-><init>(Lcom/samsung/android/server/wifi/ap/SemWifiApNotification;)V

    .line 41
    .line 42
    .line 43
    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApNotification;->mWifiApStaInfoStateListener:Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$WifiApStaInfoStateListener;

    .line 44
    .line 45
    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApNotification;->mContext:Landroid/content/Context;

    .line 46
    .line 47
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApIntentHandler()Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApNotification;->semWifiApIntentHandler:Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;

    .line 56
    .line 57
    new-instance v0, Lcom/samsung/android/server/wifi/ap/SemWifiApNotification$$ExternalSyntheticLambda0;

    .line 58
    .line 59
    invoke-direct {v0, p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApNotification$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/server/wifi/ap/SemWifiApNotification;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {p1, v0}, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;->registerListener(Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$WifiApStateListener;)V

    .line 63
    .line 64
    .line 65
    return-void
.end method

.method private synthetic lambda$new$0(IIILjava/lang/String;)V
    .locals 0

    .line 1
    const-string p2, "onreceive WIFI_AP_STATE_CHANGED_ACTION: apState : "

    .line 2
    .line 3
    const-string p3, "SemWifiApNotification"

    .line 4
    .line 5
    invoke-static {p2, p1, p3}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const/16 p2, 0xd

    .line 9
    .line 10
    if-ne p2, p1, :cond_0

    .line 11
    .line 12
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApNotification;->semWifiApIntentHandler:Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;

    .line 13
    .line 14
    iget-object p2, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApNotification;->mWifiApStaInfoStateListener:Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$WifiApStaInfoStateListener;

    .line 15
    .line 16
    invoke-virtual {p1, p2}, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;->registerListener(Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$WifiApStaInfoStateListener;)V

    .line 17
    .line 18
    .line 19
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApNotification;->mContext:Landroid/content/Context;

    .line 20
    .line 21
    const/4 p2, 0x0

    .line 22
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 23
    .line 24
    .line 25
    move-result-object p2

    .line 26
    filled-new-array {p2}, [Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object p2

    .line 30
    const p3, 0x1040f9f

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1, p3, p2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApNotification;->body:Ljava/lang/String;

    .line 38
    .line 39
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApNotification;->createApNotification(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    return-void

    .line 43
    :cond_0
    const/16 p2, 0xb

    .line 44
    .line 45
    if-eq p2, p1, :cond_2

    .line 46
    .line 47
    const/16 p2, 0xe

    .line 48
    .line 49
    if-ne p2, p1, :cond_1

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_1
    return-void

    .line 53
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApNotification;->semWifiApIntentHandler:Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;

    .line 54
    .line 55
    iget-object p2, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApNotification;->mWifiApStaInfoStateListener:Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$WifiApStaInfoStateListener;

    .line 56
    .line 57
    invoke-virtual {p1, p2}, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;->unregisterListener(Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$WifiApStaInfoStateListener;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApNotification;->clearApNotification()V

    .line 61
    .line 62
    .line 63
    return-void
.end method


# virtual methods
.method clearApNotification()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApNotification;->mMaxApNotificationManager:Landroid/app/NotificationManager;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApNotification;->mContext:Landroid/content/Context;

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
    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApNotification;->mMaxApNotificationManager:Landroid/app/NotificationManager;

    .line 16
    .line 17
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApNotification;->mMaxApNotificationManager:Landroid/app/NotificationManager;

    .line 18
    .line 19
    const v0, 0x1040fa6

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0, v0}, Landroid/app/NotificationManager;->cancel(I)V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method createApNotification(Ljava/lang/String;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApNotification;->mMaxApNotificationManager:Landroid/app/NotificationManager;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApNotification;->mContext:Landroid/content/Context;

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
    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApNotification;->mMaxApNotificationManager:Landroid/app/NotificationManager;

    .line 16
    .line 17
    :cond_0
    new-instance v0, Landroid/app/Notification$Builder;

    .line 18
    .line 19
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApNotification;->mContext:Landroid/content/Context;

    .line 20
    .line 21
    const-string v2, "wifiap_maxclient_notification"

    .line 22
    .line 23
    invoke-direct {v0, v1, v2}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApNotification;->title:Ljava/lang/String;

    .line 27
    .line 28
    new-instance v3, Landroid/app/NotificationChannel;

    .line 29
    .line 30
    const/4 v4, 0x4

    .line 31
    invoke-direct {v3, v2, v1, v4}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 32
    .line 33
    .line 34
    new-instance v1, Landroid/content/Intent;

    .line 35
    .line 36
    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 37
    .line 38
    .line 39
    const v2, 0x10008000

    .line 40
    .line 41
    .line 42
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 43
    .line 44
    .line 45
    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApNotification;->mContext:Landroid/content/Context;

    .line 46
    .line 47
    const/4 v4, 0x0

    .line 48
    const/high16 v5, 0x4000000

    .line 49
    .line 50
    invoke-static {v2, v4, v1, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApNotification;->mMaxApNotificationManager:Landroid/app/NotificationManager;

    .line 55
    .line 56
    invoke-virtual {v2, v3}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 57
    .line 58
    .line 59
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 60
    .line 61
    .line 62
    move-result-wide v2

    .line 63
    invoke-virtual {v0, v2, v3}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    .line 64
    .line 65
    .line 66
    move-result-object v2

    .line 67
    const/4 v3, 0x1

    .line 68
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    .line 69
    .line 70
    .line 71
    move-result-object v2

    .line 72
    iget-object v4, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApNotification;->title:Ljava/lang/String;

    .line 73
    .line 74
    invoke-virtual {v2, v4}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 75
    .line 76
    .line 77
    move-result-object v2

    .line 78
    invoke-virtual {v2, p1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    invoke-virtual {p1, v1}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    iget v2, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApNotification;->icon:I

    .line 87
    .line 88
    invoke-virtual {p1, v2}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    invoke-virtual {p1, v3}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    new-instance v2, Landroid/app/Notification$BigTextStyle;

    .line 97
    .line 98
    invoke-direct {v2}, Landroid/app/Notification$BigTextStyle;-><init>()V

    .line 99
    .line 100
    .line 101
    iget-object v3, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApNotification;->body:Ljava/lang/String;

    .line 102
    .line 103
    invoke-virtual {v2, v3}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    .line 104
    .line 105
    .line 106
    move-result-object v2

    .line 107
    invoke-virtual {p1, v2}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    .line 108
    .line 109
    .line 110
    move-result-object p1

    .line 111
    const v2, 0x108008a

    .line 112
    .line 113
    .line 114
    const-string v3, "Tap to manage"

    .line 115
    .line 116
    invoke-virtual {p1, v2, v3, v1}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 117
    .line 118
    .line 119
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApNotification;->mMaxApNotificationManager:Landroid/app/NotificationManager;

    .line 120
    .line 121
    const p1, 0x1040fa6

    .line 122
    .line 123
    .line 124
    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    .line 125
    .line 126
    .line 127
    move-result-object v0

    .line 128
    invoke-virtual {p0, p1, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 129
    .line 130
    .line 131
    return-void
.end method

.method updateApNotification(I)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApNotification;->mMaxApNotificationManager:Landroid/app/NotificationManager;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApNotification;->mContext:Landroid/content/Context;

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
    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApNotification;->mMaxApNotificationManager:Landroid/app/NotificationManager;

    .line 16
    .line 17
    :cond_0
    new-instance v0, Landroid/content/Intent;

    .line 18
    .line 19
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 20
    .line 21
    .line 22
    const v1, 0x10008000

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 26
    .line 27
    .line 28
    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApNotification;->mContext:Landroid/content/Context;

    .line 29
    .line 30
    const/4 v3, 0x0

    .line 31
    const/high16 v4, 0x4000000

    .line 32
    .line 33
    invoke-static {v2, v3, v0, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 38
    .line 39
    .line 40
    const/4 v0, 0x1

    .line 41
    if-ne p1, v0, :cond_1

    .line 42
    .line 43
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApNotification;->r:Landroid/content/res/Resources;

    .line 44
    .line 45
    const v1, 0x1040fa3

    .line 46
    .line 47
    .line 48
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    goto :goto_0

    .line 53
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApNotification;->mContext:Landroid/content/Context;

    .line 54
    .line 55
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    const v3, 0x1040f9f

    .line 64
    .line 65
    .line 66
    invoke-virtual {v1, v3, p1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    :goto_0
    new-instance v1, Landroid/app/Notification$Builder;

    .line 71
    .line 72
    iget-object v3, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApNotification;->mContext:Landroid/content/Context;

    .line 73
    .line 74
    const-string v4, "wifiap_maxclient_notification"

    .line 75
    .line 76
    invoke-direct {v1, v3, v4}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    iget v3, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApNotification;->icon:I

    .line 80
    .line 81
    invoke-virtual {v1, v3}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 82
    .line 83
    .line 84
    move-result-object v3

    .line 85
    iget-object v4, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApNotification;->title:Ljava/lang/String;

    .line 86
    .line 87
    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 88
    .line 89
    .line 90
    move-result-object v3

    .line 91
    invoke-virtual {v3, v0}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    .line 92
    .line 93
    .line 94
    move-result-object v3

    .line 95
    invoke-virtual {v3, v0}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    const v3, 0x108008a

    .line 104
    .line 105
    .line 106
    const-string v4, "Tap to manage"

    .line 107
    .line 108
    invoke-virtual {v0, v3, v4, v2}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    invoke-virtual {v0, p1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 113
    .line 114
    .line 115
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApNotification;->mMaxApNotificationManager:Landroid/app/NotificationManager;

    .line 116
    .line 117
    const p1, 0x1040fa6

    .line 118
    .line 119
    .line 120
    invoke-virtual {v1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    .line 121
    .line 122
    .line 123
    move-result-object v0

    .line 124
    invoke-virtual {p0, p1, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 125
    .line 126
    .line 127
    return-void
.end method
