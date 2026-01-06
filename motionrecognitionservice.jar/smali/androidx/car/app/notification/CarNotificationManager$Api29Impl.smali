.class final Landroidx/car/app/notification/CarNotificationManager$Api29Impl;
.super Ljava/lang/Object;
.source "CarNotificationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/car/app/notification/CarNotificationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Api29Impl"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 534
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 535
    return-void
.end method

.method static convertActionsToCompatActions(Landroidx/core/app/NotificationCompat$Builder;Ljava/util/List;)V
    .locals 3
    .param p0, "notification"    # Landroidx/core/app/NotificationCompat$Builder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/core/app/NotificationCompat$Builder;",
            "Ljava/util/List<",
            "Landroid/app/Notification$Action;",
            ">;)V"
        }
    .end annotation

    .line 510
    .local p1, "actions":Ljava/util/List;, "Ljava/util/List<Landroid/app/Notification$Action;>;"
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 511
    return-void

    .line 514
    :cond_0
    invoke-virtual {p0}, Landroidx/core/app/NotificationCompat$Builder;->clearActions()Landroidx/core/app/NotificationCompat$Builder;

    .line 515
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Notification$Action;

    .line 516
    .local v1, "action":Landroid/app/Notification$Action;
    invoke-static {v1}, Landroidx/car/app/notification/CarNotificationManager$Api29Impl;->fromAndroidAction(Landroid/app/Notification$Action;)Landroidx/core/app/NotificationCompat$Action;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroidx/core/app/NotificationCompat$Builder;->addAction(Landroidx/core/app/NotificationCompat$Action;)Landroidx/core/app/NotificationCompat$Builder;

    .line 517
    .end local v1    # "action":Landroid/app/Notification$Action;
    goto :goto_0

    .line 518
    :cond_1
    return-void
.end method

.method private static fromAndroidAction(Landroid/app/Notification$Action;)Landroidx/core/app/NotificationCompat$Action;
    .locals 4
    .param p0, "action"    # Landroid/app/Notification$Action;

    .line 528
    new-instance v0, Landroidx/core/app/NotificationCompat$Action;

    invoke-virtual {p0}, Landroid/app/Notification$Action;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    .line 529
    :cond_0
    invoke-virtual {p0}, Landroid/app/Notification$Action;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Icon;->getResId()I

    move-result v1

    :goto_0
    iget-object v2, p0, Landroid/app/Notification$Action;->title:Ljava/lang/CharSequence;

    iget-object v3, p0, Landroid/app/Notification$Action;->actionIntent:Landroid/app/PendingIntent;

    invoke-direct {v0, v1, v2, v3}, Landroidx/core/app/NotificationCompat$Action;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 528
    return-object v0
.end method
