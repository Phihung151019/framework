.class public final Landroidx/car/app/notification/CarAppExtender$Builder;
.super Ljava/lang/Object;
.source "CarAppExtender.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/car/app/notification/CarAppExtender;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field final mActions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/app/Notification$Action;",
            ">;"
        }
    .end annotation
.end field

.field mChannelId:Ljava/lang/String;

.field mColor:Landroidx/car/app/model/CarColor;

.field mContentIntent:Landroid/app/PendingIntent;

.field mContentText:Ljava/lang/CharSequence;

.field mContentTitle:Ljava/lang/CharSequence;

.field mDeleteIntent:Landroid/app/PendingIntent;

.field mImportance:I

.field mLargeIconBitmap:Landroid/graphics/Bitmap;

.field mSmallIconResId:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 623
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 408
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/car/app/notification/CarAppExtender$Builder;->mActions:Ljava/util/ArrayList;

    .line 409
    const/16 v0, -0x3e8

    iput v0, p0, Landroidx/car/app/notification/CarAppExtender$Builder;->mImportance:I

    .line 624
    return-void
.end method


# virtual methods
.method public addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroidx/car/app/notification/CarAppExtender$Builder;
    .locals 4
    .param p1, "icon"    # I
    .param p2, "title"    # Ljava/lang/CharSequence;
    .param p3, "intent"    # Landroid/app/PendingIntent;

    .line 556
    iget-object v0, p0, Landroidx/car/app/notification/CarAppExtender$Builder;->mActions:Ljava/util/ArrayList;

    new-instance v1, Landroid/app/Notification$Action;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/PendingIntent;

    invoke-direct {v1, p1, v2, v3}, Landroid/app/Notification$Action;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 557
    return-object p0
.end method

.method public build()Landroidx/car/app/notification/CarAppExtender;
    .locals 1

    .line 619
    new-instance v0, Landroidx/car/app/notification/CarAppExtender;

    invoke-direct {v0, p0}, Landroidx/car/app/notification/CarAppExtender;-><init>(Landroidx/car/app/notification/CarAppExtender$Builder;)V

    return-object v0
.end method

.method public setChannelId(Ljava/lang/String;)Landroidx/car/app/notification/CarAppExtender$Builder;
    .locals 0
    .param p1, "channelId"    # Ljava/lang/String;

    .line 610
    iput-object p1, p0, Landroidx/car/app/notification/CarAppExtender$Builder;->mChannelId:Ljava/lang/String;

    .line 611
    return-object p0
.end method

.method public setColor(Landroidx/car/app/model/CarColor;)Landroidx/car/app/notification/CarAppExtender$Builder;
    .locals 1
    .param p1, "color"    # Landroidx/car/app/model/CarColor;

    .line 592
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/car/app/model/CarColor;

    iput-object v0, p0, Landroidx/car/app/notification/CarAppExtender$Builder;->mColor:Landroidx/car/app/model/CarColor;

    .line 593
    return-object p0
.end method

.method public setContentIntent(Landroid/app/PendingIntent;)Landroidx/car/app/notification/CarAppExtender$Builder;
    .locals 1
    .param p1, "contentIntent"    # Landroid/app/PendingIntent;

    .line 502
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    iput-object v0, p0, Landroidx/car/app/notification/CarAppExtender$Builder;->mContentIntent:Landroid/app/PendingIntent;

    .line 503
    return-object p0
.end method

.method public setContentText(Ljava/lang/CharSequence;)Landroidx/car/app/notification/CarAppExtender$Builder;
    .locals 1
    .param p1, "contentText"    # Ljava/lang/CharSequence;

    .line 448
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iput-object v0, p0, Landroidx/car/app/notification/CarAppExtender$Builder;->mContentText:Ljava/lang/CharSequence;

    .line 449
    return-object p0
.end method

.method public setContentTitle(Ljava/lang/CharSequence;)Landroidx/car/app/notification/CarAppExtender$Builder;
    .locals 1
    .param p1, "contentTitle"    # Ljava/lang/CharSequence;

    .line 430
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iput-object v0, p0, Landroidx/car/app/notification/CarAppExtender$Builder;->mContentTitle:Ljava/lang/CharSequence;

    .line 431
    return-object p0
.end method

.method public setDeleteIntent(Landroid/app/PendingIntent;)Landroidx/car/app/notification/CarAppExtender$Builder;
    .locals 1
    .param p1, "deleteIntent"    # Landroid/app/PendingIntent;

    .line 521
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    iput-object v0, p0, Landroidx/car/app/notification/CarAppExtender$Builder;->mDeleteIntent:Landroid/app/PendingIntent;

    .line 522
    return-object p0
.end method

.method public setImportance(I)Landroidx/car/app/notification/CarAppExtender$Builder;
    .locals 0
    .param p1, "importance"    # I

    .line 575
    iput p1, p0, Landroidx/car/app/notification/CarAppExtender$Builder;->mImportance:I

    .line 576
    return-object p0
.end method

.method public setLargeIcon(Landroid/graphics/Bitmap;)Landroidx/car/app/notification/CarAppExtender$Builder;
    .locals 1
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .line 482
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    iput-object v0, p0, Landroidx/car/app/notification/CarAppExtender$Builder;->mLargeIconBitmap:Landroid/graphics/Bitmap;

    .line 483
    return-object p0
.end method

.method public setSmallIcon(I)Landroidx/car/app/notification/CarAppExtender$Builder;
    .locals 0
    .param p1, "iconResId"    # I

    .line 462
    iput p1, p0, Landroidx/car/app/notification/CarAppExtender$Builder;->mSmallIconResId:I

    .line 463
    return-object p0
.end method
