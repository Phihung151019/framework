.class public final Landroidx/car/app/notification/CarNotificationManager;
.super Ljava/lang/Object;
.source "CarNotificationManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/car/app/notification/CarNotificationManager$Api29Impl;
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mNotificationManagerCompat:Landroidx/core/app/NotificationManagerCompat;

.field private final mPrimaryColor:Ljava/lang/Integer;

.field private final mPrimaryColorDark:Ljava/lang/Integer;

.field private final mSecondaryColor:Ljava/lang/Integer;

.field private final mSecondaryColorDark:Ljava/lang/Integer;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;

    .line 469
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 470
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Landroidx/car/app/notification/CarNotificationManager;->mContext:Landroid/content/Context;

    .line 471
    invoke-static {p1}, Landroidx/core/app/NotificationManagerCompat;->from(Landroid/content/Context;)Landroidx/core/app/NotificationManagerCompat;

    move-result-object v0

    iput-object v0, p0, Landroidx/car/app/notification/CarNotificationManager;->mNotificationManagerCompat:Landroidx/core/app/NotificationManagerCompat;

    .line 473
    iget-object v0, p0, Landroidx/car/app/notification/CarNotificationManager;->mContext:Landroid/content/Context;

    .line 474
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 473
    invoke-virtual {v0, v1}, Landroid/content/Context;->createConfigurationContext(Landroid/content/res/Configuration;)Landroid/content/Context;

    move-result-object v0

    .line 476
    .local v0, "themeableContext":Landroid/content/Context;
    invoke-static {p1}, Landroidx/car/app/notification/CarNotificationManager;->loadThemeId(Landroid/content/Context;)I

    move-result v1

    .line 477
    .local v1, "themeId":I
    if-eqz v1, :cond_0

    .line 478
    invoke-virtual {v0, v1}, Landroid/content/Context;->setTheme(I)V

    .line 481
    :cond_0
    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    .line 482
    .local v2, "theme":Landroid/content/res/Resources$Theme;
    invoke-virtual {v2}, Landroid/content/res/Resources$Theme;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 484
    .local v3, "themedResources":Landroid/content/res/Resources;
    nop

    .line 485
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 484
    const-string v5, "carColorPrimary"

    const-string v6, "attr"

    invoke-virtual {v3, v5, v6, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 486
    .local v4, "carColorPrimary":I
    invoke-static {v4, v2}, Landroidx/car/app/notification/CarNotificationManager;->getColor(ILandroid/content/res/Resources$Theme;)Ljava/lang/Integer;

    move-result-object v5

    iput-object v5, p0, Landroidx/car/app/notification/CarNotificationManager;->mPrimaryColor:Ljava/lang/Integer;

    .line 488
    nop

    .line 489
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 488
    const-string v7, "carColorPrimaryDark"

    invoke-virtual {v3, v7, v6, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 490
    .local v5, "carColorPrimaryDark":I
    invoke-static {v5, v2}, Landroidx/car/app/notification/CarNotificationManager;->getColor(ILandroid/content/res/Resources$Theme;)Ljava/lang/Integer;

    move-result-object v7

    iput-object v7, p0, Landroidx/car/app/notification/CarNotificationManager;->mPrimaryColorDark:Ljava/lang/Integer;

    .line 492
    nop

    .line 493
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    .line 492
    const-string v8, "carColorSecondary"

    invoke-virtual {v3, v8, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    .line 494
    .local v7, "carColorSecondary":I
    invoke-static {v7, v2}, Landroidx/car/app/notification/CarNotificationManager;->getColor(ILandroid/content/res/Resources$Theme;)Ljava/lang/Integer;

    move-result-object v8

    iput-object v8, p0, Landroidx/car/app/notification/CarNotificationManager;->mSecondaryColor:Ljava/lang/Integer;

    .line 496
    nop

    .line 497
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    .line 496
    const-string v9, "carColorSecondaryDark"

    invoke-virtual {v3, v9, v6, v8}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 498
    .local v6, "carColorSecondaryDark":I
    invoke-static {v6, v2}, Landroidx/car/app/notification/CarNotificationManager;->getColor(ILandroid/content/res/Resources$Theme;)Ljava/lang/Integer;

    move-result-object v8

    iput-object v8, p0, Landroidx/car/app/notification/CarNotificationManager;->mSecondaryColorDark:Ljava/lang/Integer;

    .line 499
    return-void
.end method

.method public static from(Landroid/content/Context;)Landroidx/car/app/notification/CarNotificationManager;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 93
    new-instance v0, Landroidx/car/app/notification/CarNotificationManager;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    invoke-direct {v0, v1}, Landroidx/car/app/notification/CarNotificationManager;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method private static getColor(ILandroid/content/res/Resources$Theme;)Ljava/lang/Integer;
    .locals 4
    .param p0, "resId"    # I
    .param p1, "appTheme"    # Landroid/content/res/Resources$Theme;

    .line 459
    const/4 v0, 0x0

    .line 460
    .local v0, "color":Ljava/lang/Integer;
    if-eqz p0, :cond_0

    .line 461
    filled-new-array {p0}, [I

    move-result-object v1

    .line 462
    .local v1, "attr":[I
    invoke-virtual {p1, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 463
    .local v2, "ta":Landroid/content/res/TypedArray;
    const/4 v3, 0x0

    invoke-virtual {v2, v3, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 464
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 466
    .end local v1    # "attr":[I
    .end local v2    # "ta":Landroid/content/res/TypedArray;
    :cond_0
    return-object v0
.end method

.method public static getEnabledListenerPackages(Landroid/content/Context;)Ljava/util/Set;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 330
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Landroidx/core/app/NotificationManagerCompat;->getEnabledListenerPackages(Landroid/content/Context;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method private static loadThemeId(Landroid/content/Context;)I
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .line 440
    const/4 v0, 0x0

    .line 443
    .local v0, "theme":I
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 444
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x80

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 447
    .local v1, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    nop

    .line 449
    iget-object v2, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v2, :cond_0

    .line 450
    iget-object v2, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v3, "androidx.car.app.theme"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 453
    :cond_0
    return v0

    .line 445
    .end local v1    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v1

    .line 446
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    return v0
.end method

.method private updateForAutomotive(Landroidx/core/app/NotificationCompat$Builder;)Landroid/app/Notification;
    .locals 10
    .param p1, "notification"    # Landroidx/core/app/NotificationCompat$Builder;

    .line 345
    nop

    .line 350
    new-instance v0, Landroidx/car/app/notification/CarAppExtender;

    invoke-virtual {p1}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/car/app/notification/CarAppExtender;-><init>(Landroid/app/Notification;)V

    .line 357
    .local v0, "carAppExtender":Landroidx/car/app/notification/CarAppExtender;
    invoke-virtual {v0}, Landroidx/car/app/notification/CarAppExtender;->getActions()Ljava/util/List;

    move-result-object v1

    invoke-static {p1, v1}, Landroidx/car/app/notification/CarNotificationManager$Api29Impl;->convertActionsToCompatActions(Landroidx/core/app/NotificationCompat$Builder;Ljava/util/List;)V

    .line 359
    invoke-virtual {v0}, Landroidx/car/app/notification/CarAppExtender;->getColor()Landroidx/car/app/model/CarColor;

    move-result-object v1

    .line 360
    .local v1, "color":Landroidx/car/app/model/CarColor;
    if-eqz v1, :cond_0

    .line 361
    invoke-virtual {p0, v1}, Landroidx/car/app/notification/CarNotificationManager;->getColorInt(Landroidx/car/app/model/CarColor;)Ljava/lang/Integer;

    move-result-object v2

    .line 362
    .local v2, "colorInt":Ljava/lang/Integer;
    if-eqz v2, :cond_0

    .line 363
    const/4 v3, 0x1

    invoke-virtual {p1, v3}, Landroidx/core/app/NotificationCompat$Builder;->setColorized(Z)Landroidx/core/app/NotificationCompat$Builder;

    .line 364
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p1, v3}, Landroidx/core/app/NotificationCompat$Builder;->setColor(I)Landroidx/core/app/NotificationCompat$Builder;

    .line 368
    .end local v2    # "colorInt":Ljava/lang/Integer;
    :cond_0
    invoke-virtual {v0}, Landroidx/car/app/notification/CarAppExtender;->getContentIntent()Landroid/app/PendingIntent;

    move-result-object v2

    .line 369
    .local v2, "contentIntent":Landroid/app/PendingIntent;
    if-eqz v2, :cond_1

    .line 370
    invoke-virtual {p1, v2}, Landroidx/core/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    .line 373
    :cond_1
    invoke-virtual {v0}, Landroidx/car/app/notification/CarAppExtender;->getContentTitle()Ljava/lang/CharSequence;

    move-result-object v3

    .line 374
    .local v3, "contentTitle":Ljava/lang/CharSequence;
    if-eqz v3, :cond_2

    .line 375
    invoke-virtual {p1, v3}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    .line 378
    :cond_2
    invoke-virtual {v0}, Landroidx/car/app/notification/CarAppExtender;->getContentText()Ljava/lang/CharSequence;

    move-result-object v4

    .line 379
    .local v4, "contentText":Ljava/lang/CharSequence;
    if-eqz v4, :cond_3

    .line 380
    invoke-virtual {p1, v4}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    .line 383
    :cond_3
    invoke-virtual {v0}, Landroidx/car/app/notification/CarAppExtender;->getDeleteIntent()Landroid/app/PendingIntent;

    move-result-object v5

    .line 384
    .local v5, "deleteIntent":Landroid/app/PendingIntent;
    if-eqz v5, :cond_4

    .line 385
    invoke-virtual {p1, v5}, Landroidx/core/app/NotificationCompat$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    .line 388
    :cond_4
    invoke-virtual {v0}, Landroidx/car/app/notification/CarAppExtender;->getChannelId()Ljava/lang/String;

    move-result-object v6

    .line 389
    .local v6, "channelId":Ljava/lang/String;
    if-eqz v6, :cond_5

    .line 390
    invoke-virtual {p1, v6}, Landroidx/core/app/NotificationCompat$Builder;->setChannelId(Ljava/lang/String;)Landroidx/core/app/NotificationCompat$Builder;

    .line 393
    :cond_5
    invoke-virtual {v0}, Landroidx/car/app/notification/CarAppExtender;->getLargeIcon()Landroid/graphics/Bitmap;

    move-result-object v7

    .line 394
    .local v7, "largeIcon":Landroid/graphics/Bitmap;
    if-eqz v7, :cond_6

    .line 395
    invoke-virtual {p1, v7}, Landroidx/core/app/NotificationCompat$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroidx/core/app/NotificationCompat$Builder;

    .line 398
    :cond_6
    invoke-virtual {v0}, Landroidx/car/app/notification/CarAppExtender;->getSmallIcon()I

    move-result v8

    .line 399
    .local v8, "smallIconRes":I
    if-eqz v8, :cond_7

    .line 400
    invoke-virtual {p1, v8}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    .line 403
    :cond_7
    invoke-virtual {p1}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v9

    return-object v9
.end method


# virtual methods
.method public areNotificationsEnabled()Z
    .locals 1

    .line 163
    iget-object v0, p0, Landroidx/car/app/notification/CarNotificationManager;->mNotificationManagerCompat:Landroidx/core/app/NotificationManagerCompat;

    invoke-virtual {v0}, Landroidx/core/app/NotificationManagerCompat;->areNotificationsEnabled()Z

    move-result v0

    return v0
.end method

.method public cancel(I)V
    .locals 1
    .param p1, "id"    # I

    .line 102
    iget-object v0, p0, Landroidx/car/app/notification/CarNotificationManager;->mNotificationManagerCompat:Landroidx/core/app/NotificationManagerCompat;

    invoke-virtual {v0, p1}, Landroidx/core/app/NotificationManagerCompat;->cancel(I)V

    .line 103
    return-void
.end method

.method public cancel(Ljava/lang/String;I)V
    .locals 1
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "id"    # I

    .line 111
    iget-object v0, p0, Landroidx/car/app/notification/CarNotificationManager;->mNotificationManagerCompat:Landroidx/core/app/NotificationManagerCompat;

    invoke-virtual {v0, p1, p2}, Landroidx/core/app/NotificationManagerCompat;->cancel(Ljava/lang/String;I)V

    .line 112
    return-void
.end method

.method public cancelAll()V
    .locals 1

    .line 120
    iget-object v0, p0, Landroidx/car/app/notification/CarNotificationManager;->mNotificationManagerCompat:Landroidx/core/app/NotificationManagerCompat;

    invoke-virtual {v0}, Landroidx/core/app/NotificationManagerCompat;->cancelAll()V

    .line 121
    return-void
.end method

.method public createNotificationChannel(Landroidx/core/app/NotificationChannelCompat;)V
    .locals 2
    .param p1, "channel"    # Landroidx/core/app/NotificationChannelCompat;

    .line 183
    iget-object v0, p0, Landroidx/car/app/notification/CarNotificationManager;->mNotificationManagerCompat:Landroidx/core/app/NotificationManagerCompat;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/core/app/NotificationChannelCompat;

    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationManagerCompat;->createNotificationChannel(Landroidx/core/app/NotificationChannelCompat;)V

    .line 184
    return-void
.end method

.method public createNotificationChannelGroup(Landroidx/core/app/NotificationChannelGroupCompat;)V
    .locals 2
    .param p1, "group"    # Landroidx/core/app/NotificationChannelGroupCompat;

    .line 194
    iget-object v0, p0, Landroidx/car/app/notification/CarNotificationManager;->mNotificationManagerCompat:Landroidx/core/app/NotificationManagerCompat;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/core/app/NotificationChannelGroupCompat;

    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationManagerCompat;->createNotificationChannelGroup(Landroidx/core/app/NotificationChannelGroupCompat;)V

    .line 195
    return-void
.end method

.method public createNotificationChannelGroups(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/core/app/NotificationChannelGroupCompat;",
            ">;)V"
        }
    .end annotation

    .line 220
    .local p1, "groups":Ljava/util/List;, "Ljava/util/List<Landroidx/core/app/NotificationChannelGroupCompat;>;"
    iget-object v0, p0, Landroidx/car/app/notification/CarNotificationManager;->mNotificationManagerCompat:Landroidx/core/app/NotificationManagerCompat;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationManagerCompat;->createNotificationChannelGroupsCompat(Ljava/util/List;)V

    .line 221
    return-void
.end method

.method public createNotificationChannels(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/core/app/NotificationChannelCompat;",
            ">;)V"
        }
    .end annotation

    .line 207
    .local p1, "channels":Ljava/util/List;, "Ljava/util/List<Landroidx/core/app/NotificationChannelCompat;>;"
    iget-object v0, p0, Landroidx/car/app/notification/CarNotificationManager;->mNotificationManagerCompat:Landroidx/core/app/NotificationManagerCompat;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationManagerCompat;->createNotificationChannelsCompat(Ljava/util/List;)V

    .line 208
    return-void
.end method

.method public deleteNotificationChannel(Ljava/lang/String;)V
    .locals 2
    .param p1, "channelId"    # Ljava/lang/String;

    .line 231
    iget-object v0, p0, Landroidx/car/app/notification/CarNotificationManager;->mNotificationManagerCompat:Landroidx/core/app/NotificationManagerCompat;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationManagerCompat;->deleteNotificationChannel(Ljava/lang/String;)V

    .line 232
    return-void
.end method

.method public deleteNotificationChannelGroup(Ljava/lang/String;)V
    .locals 2
    .param p1, "groupId"    # Ljava/lang/String;

    .line 243
    iget-object v0, p0, Landroidx/car/app/notification/CarNotificationManager;->mNotificationManagerCompat:Landroidx/core/app/NotificationManagerCompat;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationManagerCompat;->deleteNotificationChannelGroup(Ljava/lang/String;)V

    .line 244
    return-void
.end method

.method public deleteUnlistedNotificationChannels(Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 254
    .local p1, "channelIds":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    iget-object v0, p0, Landroidx/car/app/notification/CarNotificationManager;->mNotificationManagerCompat:Landroidx/core/app/NotificationManagerCompat;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationManagerCompat;->deleteUnlistedNotificationChannels(Ljava/util/Collection;)V

    .line 255
    return-void
.end method

.method getColorInt(Landroidx/car/app/model/CarColor;)Ljava/lang/Integer;
    .locals 3
    .param p1, "carColor"    # Landroidx/car/app/model/CarColor;

    .line 411
    iget-object v0, p0, Landroidx/car/app/notification/CarNotificationManager;->mContext:Landroid/content/Context;

    .line 412
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v0, v0, 0x30

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 416
    .local v0, "isDarkMode":Z
    :goto_0
    invoke-virtual {p1}, Landroidx/car/app/model/CarColor;->getType()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 433
    :pswitch_0
    const/4 v1, 0x0

    return-object v1

    .line 430
    :pswitch_1
    iget-object v1, p0, Landroidx/car/app/notification/CarNotificationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Landroidx/car/app/R$color;->carColorYellow:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    return-object v1

    .line 428
    :pswitch_2
    iget-object v1, p0, Landroidx/car/app/notification/CarNotificationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Landroidx/car/app/R$color;->carColorBlue:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    return-object v1

    .line 426
    :pswitch_3
    iget-object v1, p0, Landroidx/car/app/notification/CarNotificationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Landroidx/car/app/R$color;->carColorGreen:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    return-object v1

    .line 424
    :pswitch_4
    iget-object v1, p0, Landroidx/car/app/notification/CarNotificationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Landroidx/car/app/R$color;->carColorRed:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    return-object v1

    .line 422
    :pswitch_5
    if-eqz v0, :cond_1

    iget-object v1, p0, Landroidx/car/app/notification/CarNotificationManager;->mSecondaryColorDark:Ljava/lang/Integer;

    goto :goto_1

    :cond_1
    iget-object v1, p0, Landroidx/car/app/notification/CarNotificationManager;->mSecondaryColor:Ljava/lang/Integer;

    :goto_1
    return-object v1

    .line 420
    :pswitch_6
    if-eqz v0, :cond_2

    iget-object v1, p0, Landroidx/car/app/notification/CarNotificationManager;->mPrimaryColorDark:Ljava/lang/Integer;

    goto :goto_2

    :cond_2
    iget-object v1, p0, Landroidx/car/app/notification/CarNotificationManager;->mPrimaryColor:Ljava/lang/Integer;

    :goto_2
    return-object v1

    .line 418
    :pswitch_7
    if-eqz v0, :cond_3

    invoke-virtual {p1}, Landroidx/car/app/model/CarColor;->getColorDark()I

    move-result v1

    goto :goto_3

    :cond_3
    invoke-virtual {p1}, Landroidx/car/app/model/CarColor;->getColor()I

    move-result v1

    :goto_3
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    return-object v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public getImportance()I
    .locals 1

    .line 172
    iget-object v0, p0, Landroidx/car/app/notification/CarNotificationManager;->mNotificationManagerCompat:Landroidx/core/app/NotificationManagerCompat;

    invoke-virtual {v0}, Landroidx/core/app/NotificationManagerCompat;->getImportance()I

    move-result v0

    return v0
.end method

.method public getNotificationChannel(Ljava/lang/String;)Landroidx/core/app/NotificationChannelCompat;
    .locals 2
    .param p1, "channelId"    # Ljava/lang/String;

    .line 266
    iget-object v0, p0, Landroidx/car/app/notification/CarNotificationManager;->mNotificationManagerCompat:Landroidx/core/app/NotificationManagerCompat;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationManagerCompat;->getNotificationChannelCompat(Ljava/lang/String;)Landroidx/core/app/NotificationChannelCompat;

    move-result-object v0

    return-object v0
.end method

.method public getNotificationChannel(Ljava/lang/String;Ljava/lang/String;)Landroidx/core/app/NotificationChannelCompat;
    .locals 3
    .param p1, "channelId"    # Ljava/lang/String;
    .param p2, "conversationId"    # Ljava/lang/String;

    .line 281
    iget-object v0, p0, Landroidx/car/app/notification/CarNotificationManager;->mNotificationManagerCompat:Landroidx/core/app/NotificationManagerCompat;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 282
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 281
    invoke-virtual {v0, v1, v2}, Landroidx/core/app/NotificationManagerCompat;->getNotificationChannelCompat(Ljava/lang/String;Ljava/lang/String;)Landroidx/core/app/NotificationChannelCompat;

    move-result-object v0

    return-object v0
.end method

.method public getNotificationChannelGroup(Ljava/lang/String;)Landroidx/core/app/NotificationChannelGroupCompat;
    .locals 2
    .param p1, "channelGroupId"    # Ljava/lang/String;

    .line 295
    iget-object v0, p0, Landroidx/car/app/notification/CarNotificationManager;->mNotificationManagerCompat:Landroidx/core/app/NotificationManagerCompat;

    .line 296
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 295
    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationManagerCompat;->getNotificationChannelGroupCompat(Ljava/lang/String;)Landroidx/core/app/NotificationChannelGroupCompat;

    move-result-object v0

    return-object v0
.end method

.method public getNotificationChannelGroups()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/core/app/NotificationChannelGroupCompat;",
            ">;"
        }
    .end annotation

    .line 318
    iget-object v0, p0, Landroidx/car/app/notification/CarNotificationManager;->mNotificationManagerCompat:Landroidx/core/app/NotificationManagerCompat;

    invoke-virtual {v0}, Landroidx/core/app/NotificationManagerCompat;->getNotificationChannelGroupsCompat()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getNotificationChannels()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/core/app/NotificationChannelCompat;",
            ">;"
        }
    .end annotation

    .line 307
    iget-object v0, p0, Landroidx/car/app/notification/CarNotificationManager;->mNotificationManagerCompat:Landroidx/core/app/NotificationManagerCompat;

    invoke-virtual {v0}, Landroidx/core/app/NotificationManagerCompat;->getNotificationChannelsCompat()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public notify(ILandroidx/core/app/NotificationCompat$Builder;)V
    .locals 2
    .param p1, "id"    # I
    .param p2, "notification"    # Landroidx/core/app/NotificationCompat$Builder;

    .line 135
    iget-object v0, p0, Landroidx/car/app/notification/CarNotificationManager;->mNotificationManagerCompat:Landroidx/core/app/NotificationManagerCompat;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/core/app/NotificationCompat$Builder;

    invoke-virtual {p0, v1}, Landroidx/car/app/notification/CarNotificationManager;->updateForCar(Landroidx/core/app/NotificationCompat$Builder;)Landroid/app/Notification;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroidx/core/app/NotificationManagerCompat;->notify(ILandroid/app/Notification;)V

    .line 136
    return-void
.end method

.method public notify(Ljava/lang/String;ILandroidx/core/app/NotificationCompat$Builder;)V
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "id"    # I
    .param p3, "notification"    # Landroidx/core/app/NotificationCompat$Builder;

    .line 154
    iget-object v0, p0, Landroidx/car/app/notification/CarNotificationManager;->mNotificationManagerCompat:Landroidx/core/app/NotificationManagerCompat;

    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/core/app/NotificationCompat$Builder;

    invoke-virtual {p0, v1}, Landroidx/car/app/notification/CarNotificationManager;->updateForCar(Landroidx/core/app/NotificationCompat$Builder;)Landroid/app/Notification;

    move-result-object v1

    invoke-virtual {v0, p1, p2, v1}, Landroidx/core/app/NotificationManagerCompat;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    .line 155
    return-void
.end method

.method updateForCar(Landroidx/core/app/NotificationCompat$Builder;)Landroid/app/Notification;
    .locals 1
    .param p1, "notification"    # Landroidx/core/app/NotificationCompat$Builder;

    .line 336
    iget-object v0, p0, Landroidx/car/app/notification/CarNotificationManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroidx/car/app/utils/CommonUtils;->isAutomotiveOS(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 337
    invoke-direct {p0, p1}, Landroidx/car/app/notification/CarNotificationManager;->updateForAutomotive(Landroidx/core/app/NotificationCompat$Builder;)Landroid/app/Notification;

    move-result-object v0

    return-object v0

    .line 338
    :cond_0
    invoke-virtual {p1}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    invoke-static {v0}, Landroidx/car/app/notification/CarAppExtender;->isExtended(Landroid/app/Notification;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 339
    new-instance v0, Landroidx/car/app/notification/CarAppExtender$Builder;

    invoke-direct {v0}, Landroidx/car/app/notification/CarAppExtender$Builder;-><init>()V

    invoke-virtual {v0}, Landroidx/car/app/notification/CarAppExtender$Builder;->build()Landroidx/car/app/notification/CarAppExtender;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/core/app/NotificationCompat$Builder;->extend(Landroidx/core/app/NotificationCompat$Extender;)Landroidx/core/app/NotificationCompat$Builder;

    .line 341
    :cond_1
    invoke-virtual {p1}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    return-object v0
.end method
