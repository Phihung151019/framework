.class public Lcom/android/internal/telephony/util/NotificationChannelController;
.super Ljava/lang/Object;
.source "NotificationChannelController.java"


# static fields
.field public static final blacklist CHANNEL_ID_ALERT:Ljava/lang/String; = "alert"

.field public static final blacklist CHANNEL_ID_CALL_FORWARD:Ljava/lang/String; = "callForwardNew"

.field public static final blacklist CHANNEL_ID_MOBILE_DATA_STATUS:Ljava/lang/String; = "mobileDataAlertNew"

.field public static final blacklist CHANNEL_ID_SIM:Ljava/lang/String; = "sim"

.field public static final blacklist CHANNEL_ID_SIM_HIGH_PRIORITY:Ljava/lang/String; = "simHighPriority"

.field public static final blacklist CHANNEL_ID_SMS:Ljava/lang/String; = "sms"

.field public static final blacklist CHANNEL_ID_VOICE_MAIL:Ljava/lang/String; = "voiceMail"

.field public static final blacklist CHANNEL_ID_WFC:Ljava/lang/String; = "wfc"


# instance fields
.field private final blacklist mBroadcastReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static bridge synthetic blacklist -$$Nest$smcreateAll(Landroid/content/Context;)V
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/android/internal/telephony/util/NotificationChannelController;->createAll(Landroid/content/Context;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smmigrateVoicemailNotificationSettings(Landroid/content/Context;)V
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/android/internal/telephony/util/NotificationChannelController;->migrateVoicemailNotificationSettings(Landroid/content/Context;)V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;)V
    .locals 2

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 172
    new-instance v0, Lcom/android/internal/telephony/util/NotificationChannelController$1;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/util/NotificationChannelController$1;-><init>(Lcom/android/internal/telephony/util/NotificationChannelController;)V

    iput-object v0, p0, Lcom/android/internal/telephony/util/NotificationChannelController;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 126
    new-instance p0, Landroid/content/IntentFilter;

    invoke-direct {p0}, Landroid/content/IntentFilter;-><init>()V

    .line 127
    const-string v1, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {p0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 128
    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {p0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 129
    invoke-virtual {p1, v0, p0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 130
    invoke-static {p1}, Lcom/android/internal/telephony/util/NotificationChannelController;->createAll(Landroid/content/Context;)V

    return-void
.end method

.method private static blacklist createAll(Landroid/content/Context;)V
    .locals 14

    .line 65
    new-instance v0, Landroid/app/NotificationChannel;

    const v1, 0x1040963

    .line 67
    invoke-virtual {p0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    const-string v2, "alert"

    const/4 v3, 0x3

    invoke-direct {v0, v2, v1, v3}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 69
    sget-object v1, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    new-instance v2, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v2}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/4 v4, 0x5

    .line 70
    invoke-virtual {v2, v4}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v2

    .line 69
    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationChannel;->setSound(Landroid/net/Uri;Landroid/media/AudioAttributes;)V

    const/4 v1, 0x1

    .line 72
    invoke-virtual {v0, v1}, Landroid/app/NotificationChannel;->setBlockable(Z)V

    .line 74
    new-instance v2, Landroid/app/NotificationChannel;

    const v5, 0x1040962

    .line 76
    invoke-virtual {p0, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    const-string v6, "mobileDataAlertNew"

    const/4 v7, 0x2

    invoke-direct {v2, v6, v5, v7}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 79
    invoke-virtual {v2, v1}, Landroid/app/NotificationChannel;->setBlockable(Z)V

    .line 81
    new-instance v5, Landroid/app/NotificationChannel;

    const v6, 0x104096a

    .line 83
    invoke-virtual {p0, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    const-string v8, "sim"

    invoke-direct {v5, v8, v6, v7}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    const/4 v6, 0x0

    .line 86
    invoke-virtual {v5, v6, v6}, Landroid/app/NotificationChannel;->setSound(Landroid/net/Uri;Landroid/media/AudioAttributes;)V

    .line 88
    new-instance v6, Landroid/app/NotificationChannel;

    const v8, 0x1040957

    .line 90
    invoke-virtual {p0, v8}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    const-string v9, "callForwardNew"

    invoke-direct {v6, v9, v8, v3}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 92
    invoke-static {p0, v6}, Lcom/android/internal/telephony/util/NotificationChannelController;->migrateCallFowardNotificationChannel(Landroid/content/Context;Landroid/app/NotificationChannel;)V

    .line 94
    const-class v8, Landroid/app/NotificationManager;

    invoke-virtual {p0, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/NotificationManager;

    const/4 v9, 0x7

    new-array v9, v9, [Landroid/app/NotificationChannel;

    new-instance v10, Landroid/app/NotificationChannel;

    const v11, 0x104096c

    .line 97
    invoke-virtual {p0, v11}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v11

    const-string v12, "sms"

    const/4 v13, 0x4

    invoke-direct {v10, v12, v11, v13}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    const/4 v11, 0x0

    aput-object v10, v9, v11

    new-instance v10, Landroid/app/NotificationChannel;

    const v11, 0x1040973

    .line 100
    invoke-virtual {p0, v11}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v11

    const-string v12, "wfc"

    invoke-direct {v10, v12, v11, v7}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    aput-object v10, v9, v1

    new-instance v1, Landroid/app/NotificationChannel;

    const v10, 0x104096b

    .line 103
    invoke-virtual {p0, v10}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v10

    const-string v11, "simHighPriority"

    invoke-direct {v1, v11, v10, v13}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    aput-object v1, v9, v7

    aput-object v0, v9, v3

    aput-object v2, v9, v13

    aput-object v5, v9, v4

    const/4 v0, 0x6

    aput-object v6, v9, v0

    .line 95
    invoke-static {v9}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/app/NotificationManager;->createNotificationChannels(Ljava/util/List;)V

    .line 109
    const-string v0, "voiceMail"

    invoke-static {v0, p0}, Lcom/android/internal/telephony/util/NotificationChannelController;->getChannel(Ljava/lang/String;Landroid/content/Context;)Landroid/app/NotificationChannel;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 110
    invoke-static {p0}, Lcom/android/internal/telephony/util/NotificationChannelController;->migrateVoicemailNotificationSettings(Landroid/content/Context;)V

    .line 115
    :cond_0
    const-string v0, "mobileDataAlert"

    invoke-static {v0, p0}, Lcom/android/internal/telephony/util/NotificationChannelController;->getChannel(Ljava/lang/String;Landroid/content/Context;)Landroid/app/NotificationChannel;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 116
    const-class v1, Landroid/app/NotificationManager;

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .line 117
    invoke-virtual {v1, v0}, Landroid/app/NotificationManager;->deleteNotificationChannel(Ljava/lang/String;)V

    .line 119
    :cond_1
    const-string v0, "callForward"

    invoke-static {v0, p0}, Lcom/android/internal/telephony/util/NotificationChannelController;->getChannel(Ljava/lang/String;Landroid/content/Context;)Landroid/app/NotificationChannel;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 120
    const-class v1, Landroid/app/NotificationManager;

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/NotificationManager;

    .line 121
    invoke-virtual {p0, v0}, Landroid/app/NotificationManager;->deleteNotificationChannel(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public static blacklist getChannel(Ljava/lang/String;Landroid/content/Context;)Landroid/app/NotificationChannel;
    .locals 1

    .line 134
    const-class v0, Landroid/app/NotificationManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/NotificationManager;

    .line 135
    invoke-virtual {p1, p0}, Landroid/app/NotificationManager;->getNotificationChannel(Ljava/lang/String;)Landroid/app/NotificationChannel;

    move-result-object p0

    return-object p0
.end method

.method private static blacklist migrateCallFowardNotificationChannel(Landroid/content/Context;Landroid/app/NotificationChannel;)V
    .locals 2

    .line 162
    const-string v0, "callForward"

    .line 163
    invoke-static {v0, p0}, Lcom/android/internal/telephony/util/NotificationChannelController;->getChannel(Ljava/lang/String;Landroid/content/Context;)Landroid/app/NotificationChannel;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 165
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getSound()Landroid/net/Uri;

    move-result-object v0

    .line 166
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getAudioAttributes()Landroid/media/AudioAttributes;

    move-result-object v1

    .line 165
    invoke-virtual {p1, v0, v1}, Landroid/app/NotificationChannel;->setSound(Landroid/net/Uri;Landroid/media/AudioAttributes;)V

    .line 167
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getVibrationPattern()[J

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/NotificationChannel;->setVibrationPattern([J)V

    .line 168
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->shouldVibrate()Z

    move-result p0

    invoke-virtual {p1, p0}, Landroid/app/NotificationChannel;->enableVibration(Z)V

    :cond_0
    return-void
.end method

.method private static blacklist migrateVoicemailNotificationSettings(Landroid/content/Context;)V
    .locals 4

    .line 146
    new-instance v0, Landroid/app/NotificationChannel;

    const v1, 0x1040971

    .line 148
    invoke-virtual {p0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    const/4 v2, 0x3

    const-string v3, "voiceMail"

    invoke-direct {v0, v3, v1, v2}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 151
    invoke-static {p0}, Lcom/android/internal/telephony/util/VoicemailNotificationSettingsUtil;->getVibrationPreference(Landroid/content/Context;)Z

    move-result v1

    .line 150
    invoke-virtual {v0, v1}, Landroid/app/NotificationChannel;->enableVibration(Z)V

    .line 152
    const-class v1, Landroid/app/NotificationManager;

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/NotificationManager;

    .line 153
    invoke-virtual {p0, v0}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    return-void
.end method
