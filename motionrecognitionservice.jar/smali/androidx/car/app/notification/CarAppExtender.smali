.class public final Landroidx/car/app/notification/CarAppExtender;
.super Ljava/lang/Object;
.source "CarAppExtender.java"

# interfaces
.implements Landroidx/core/app/NotificationCompat$Extender;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/car/app/notification/CarAppExtender$Builder;
    }
.end annotation


# static fields
.field private static final EXTRA_ACTIONS:Ljava/lang/String; = "actions"

.field private static final EXTRA_CAR_EXTENDER:Ljava/lang/String; = "androidx.car.app.EXTENSIONS"

.field private static final EXTRA_CHANNEL_ID:Ljava/lang/String; = "channel_id"

.field private static final EXTRA_COLOR:Ljava/lang/String; = "color"

.field private static final EXTRA_CONTENT_INTENT:Ljava/lang/String; = "content_intent"

.field private static final EXTRA_CONTENT_TEXT:Ljava/lang/String; = "content_text"

.field private static final EXTRA_CONTENT_TITLE:Ljava/lang/String; = "content_title"

.field private static final EXTRA_DELETE_INTENT:Ljava/lang/String; = "delete_intent"

.field private static final EXTRA_IMPORTANCE:Ljava/lang/String; = "importance"

.field private static final EXTRA_LARGE_BITMAP:Ljava/lang/String; = "large_bitmap"

.field private static final EXTRA_SMALL_RES_ID:Ljava/lang/String; = "small_res_id"

.field private static final TAG:Ljava/lang/String; = "CarAppExtender"


# instance fields
.field private mActions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/app/Notification$Action;",
            ">;"
        }
    .end annotation
.end field

.field private mChannelId:Ljava/lang/String;

.field private mColor:Landroidx/car/app/model/CarColor;

.field private mContentIntent:Landroid/app/PendingIntent;

.field private mContentText:Ljava/lang/CharSequence;

.field private mContentTitle:Ljava/lang/CharSequence;

.field private mDeleteIntent:Landroid/app/PendingIntent;

.field private mImportance:I

.field private mLargeIconBitmap:Landroid/graphics/Bitmap;

.field private mSmallIconResId:I


# direct methods
.method public constructor <init>(Landroid/app/Notification;)V
    .locals 7
    .param p1, "notification"    # Landroid/app/Notification;

    .line 170
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 171
    invoke-static {p1}, Landroidx/core/app/NotificationCompat;->getExtras(Landroid/app/Notification;)Landroid/os/Bundle;

    move-result-object v0

    .line 172
    .local v0, "extras":Landroid/os/Bundle;
    if-nez v0, :cond_0

    .line 173
    return-void

    .line 176
    :cond_0
    const-string v1, "androidx.car.app.EXTENSIONS"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 177
    .local v1, "carBundle":Landroid/os/Bundle;
    if-nez v1, :cond_1

    .line 178
    return-void

    .line 181
    :cond_1
    const-string v2, "content_title"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, p0, Landroidx/car/app/notification/CarAppExtender;->mContentTitle:Ljava/lang/CharSequence;

    .line 182
    const-string v2, "content_text"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, p0, Landroidx/car/app/notification/CarAppExtender;->mContentText:Ljava/lang/CharSequence;

    .line 183
    const-string v2, "small_res_id"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Landroidx/car/app/notification/CarAppExtender;->mSmallIconResId:I

    .line 184
    const-string v2, "large_bitmap"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    iput-object v2, p0, Landroidx/car/app/notification/CarAppExtender;->mLargeIconBitmap:Landroid/graphics/Bitmap;

    .line 185
    const-string v2, "content_intent"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/app/PendingIntent;

    iput-object v2, p0, Landroidx/car/app/notification/CarAppExtender;->mContentIntent:Landroid/app/PendingIntent;

    .line 186
    const-string v2, "delete_intent"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/app/PendingIntent;

    iput-object v2, p0, Landroidx/car/app/notification/CarAppExtender;->mDeleteIntent:Landroid/app/PendingIntent;

    .line 187
    const-string v2, "actions"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 188
    .local v2, "actions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/Notification$Action;>;"
    if-nez v2, :cond_2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0

    :cond_2
    move-object v3, v2

    :goto_0
    iput-object v3, p0, Landroidx/car/app/notification/CarAppExtender;->mActions:Ljava/util/ArrayList;

    .line 189
    nop

    .line 190
    const-string v3, "importance"

    const/16 v4, -0x3e8

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Landroidx/car/app/notification/CarAppExtender;->mImportance:I

    .line 193
    const-string v3, "color"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    .line 194
    .local v3, "colorBundle":Landroid/os/Bundle;
    if-eqz v3, :cond_3

    .line 196
    :try_start_0
    invoke-static {v3}, Landroidx/car/app/serialization/Bundler;->fromBundle(Landroid/os/Bundle;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/car/app/model/CarColor;

    iput-object v4, p0, Landroidx/car/app/notification/CarAppExtender;->mColor:Landroidx/car/app/model/CarColor;
    :try_end_0
    .catch Landroidx/car/app/serialization/BundlerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 199
    goto :goto_1

    .line 197
    :catch_0
    move-exception v4

    .line 198
    .local v4, "e":Landroidx/car/app/serialization/BundlerException;
    const-string v5, "CarAppExtender"

    const-string v6, "Failed to deserialize the notification color"

    invoke-static {v5, v6, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 202
    .end local v4    # "e":Landroidx/car/app/serialization/BundlerException;
    :cond_3
    :goto_1
    const-string v4, "channel_id"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Landroidx/car/app/notification/CarAppExtender;->mChannelId:Ljava/lang/String;

    .line 203
    return-void
.end method

.method constructor <init>(Landroidx/car/app/notification/CarAppExtender$Builder;)V
    .locals 1
    .param p1, "builder"    # Landroidx/car/app/notification/CarAppExtender$Builder;

    .line 205
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 206
    iget-object v0, p1, Landroidx/car/app/notification/CarAppExtender$Builder;->mContentTitle:Ljava/lang/CharSequence;

    iput-object v0, p0, Landroidx/car/app/notification/CarAppExtender;->mContentTitle:Ljava/lang/CharSequence;

    .line 207
    iget-object v0, p1, Landroidx/car/app/notification/CarAppExtender$Builder;->mContentText:Ljava/lang/CharSequence;

    iput-object v0, p0, Landroidx/car/app/notification/CarAppExtender;->mContentText:Ljava/lang/CharSequence;

    .line 208
    iget v0, p1, Landroidx/car/app/notification/CarAppExtender$Builder;->mSmallIconResId:I

    iput v0, p0, Landroidx/car/app/notification/CarAppExtender;->mSmallIconResId:I

    .line 209
    iget-object v0, p1, Landroidx/car/app/notification/CarAppExtender$Builder;->mLargeIconBitmap:Landroid/graphics/Bitmap;

    iput-object v0, p0, Landroidx/car/app/notification/CarAppExtender;->mLargeIconBitmap:Landroid/graphics/Bitmap;

    .line 210
    iget-object v0, p1, Landroidx/car/app/notification/CarAppExtender$Builder;->mContentIntent:Landroid/app/PendingIntent;

    iput-object v0, p0, Landroidx/car/app/notification/CarAppExtender;->mContentIntent:Landroid/app/PendingIntent;

    .line 211
    iget-object v0, p1, Landroidx/car/app/notification/CarAppExtender$Builder;->mDeleteIntent:Landroid/app/PendingIntent;

    iput-object v0, p0, Landroidx/car/app/notification/CarAppExtender;->mDeleteIntent:Landroid/app/PendingIntent;

    .line 212
    iget-object v0, p1, Landroidx/car/app/notification/CarAppExtender$Builder;->mActions:Ljava/util/ArrayList;

    iput-object v0, p0, Landroidx/car/app/notification/CarAppExtender;->mActions:Ljava/util/ArrayList;

    .line 213
    iget v0, p1, Landroidx/car/app/notification/CarAppExtender$Builder;->mImportance:I

    iput v0, p0, Landroidx/car/app/notification/CarAppExtender;->mImportance:I

    .line 214
    iget-object v0, p1, Landroidx/car/app/notification/CarAppExtender$Builder;->mColor:Landroidx/car/app/model/CarColor;

    iput-object v0, p0, Landroidx/car/app/notification/CarAppExtender;->mColor:Landroidx/car/app/model/CarColor;

    .line 215
    iget-object v0, p1, Landroidx/car/app/notification/CarAppExtender$Builder;->mChannelId:Ljava/lang/String;

    iput-object v0, p0, Landroidx/car/app/notification/CarAppExtender;->mChannelId:Ljava/lang/String;

    .line 216
    return-void
.end method

.method public static isExtended(Landroid/app/Notification;)Z
    .locals 3
    .param p0, "notification"    # Landroid/app/Notification;

    .line 285
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Notification;

    invoke-static {v0}, Landroidx/core/app/NotificationCompat;->getExtras(Landroid/app/Notification;)Landroid/os/Bundle;

    move-result-object v0

    .line 286
    .local v0, "extras":Landroid/os/Bundle;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 287
    return v1

    .line 290
    :cond_0
    const-string v2, "androidx.car.app.EXTENSIONS"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method


# virtual methods
.method public extend(Landroidx/core/app/NotificationCompat$Builder;)Landroidx/core/app/NotificationCompat$Builder;
    .locals 4
    .param p1, "builder"    # Landroidx/core/app/NotificationCompat$Builder;

    .line 229
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 232
    .local v0, "carExtensions":Landroid/os/Bundle;
    iget-object v1, p0, Landroidx/car/app/notification/CarAppExtender;->mContentTitle:Ljava/lang/CharSequence;

    if-eqz v1, :cond_0

    .line 233
    const-string v1, "content_title"

    iget-object v2, p0, Landroidx/car/app/notification/CarAppExtender;->mContentTitle:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 236
    :cond_0
    iget-object v1, p0, Landroidx/car/app/notification/CarAppExtender;->mContentText:Ljava/lang/CharSequence;

    if-eqz v1, :cond_1

    .line 237
    const-string v1, "content_text"

    iget-object v2, p0, Landroidx/car/app/notification/CarAppExtender;->mContentText:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 240
    :cond_1
    iget v1, p0, Landroidx/car/app/notification/CarAppExtender;->mSmallIconResId:I

    if-eqz v1, :cond_2

    .line 241
    const-string v1, "small_res_id"

    iget v2, p0, Landroidx/car/app/notification/CarAppExtender;->mSmallIconResId:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 244
    :cond_2
    iget-object v1, p0, Landroidx/car/app/notification/CarAppExtender;->mLargeIconBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_3

    .line 245
    const-string v1, "large_bitmap"

    iget-object v2, p0, Landroidx/car/app/notification/CarAppExtender;->mLargeIconBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 248
    :cond_3
    iget-object v1, p0, Landroidx/car/app/notification/CarAppExtender;->mContentIntent:Landroid/app/PendingIntent;

    if-eqz v1, :cond_4

    .line 249
    const-string v1, "content_intent"

    iget-object v2, p0, Landroidx/car/app/notification/CarAppExtender;->mContentIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 252
    :cond_4
    iget-object v1, p0, Landroidx/car/app/notification/CarAppExtender;->mDeleteIntent:Landroid/app/PendingIntent;

    if-eqz v1, :cond_5

    .line 253
    const-string v1, "delete_intent"

    iget-object v2, p0, Landroidx/car/app/notification/CarAppExtender;->mDeleteIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 256
    :cond_5
    iget-object v1, p0, Landroidx/car/app/notification/CarAppExtender;->mActions:Ljava/util/ArrayList;

    if-eqz v1, :cond_6

    iget-object v1, p0, Landroidx/car/app/notification/CarAppExtender;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_6

    .line 257
    const-string v1, "actions"

    iget-object v2, p0, Landroidx/car/app/notification/CarAppExtender;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 260
    :cond_6
    const-string v1, "importance"

    iget v2, p0, Landroidx/car/app/notification/CarAppExtender;->mImportance:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 262
    iget-object v1, p0, Landroidx/car/app/notification/CarAppExtender;->mColor:Landroidx/car/app/model/CarColor;

    if-eqz v1, :cond_7

    .line 264
    :try_start_0
    iget-object v1, p0, Landroidx/car/app/notification/CarAppExtender;->mColor:Landroidx/car/app/model/CarColor;

    invoke-static {v1}, Landroidx/car/app/serialization/Bundler;->toBundle(Ljava/lang/Object;)Landroid/os/Bundle;

    move-result-object v1

    .line 265
    .local v1, "bundle":Landroid/os/Bundle;
    const-string v2, "color"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroidx/car/app/serialization/BundlerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 268
    .end local v1    # "bundle":Landroid/os/Bundle;
    goto :goto_0

    .line 266
    :catch_0
    move-exception v1

    .line 267
    .local v1, "e":Landroidx/car/app/serialization/BundlerException;
    const-string v2, "CarAppExtender"

    const-string v3, "Failed to serialize the notification color"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 271
    .end local v1    # "e":Landroidx/car/app/serialization/BundlerException;
    :cond_7
    :goto_0
    iget-object v1, p0, Landroidx/car/app/notification/CarAppExtender;->mChannelId:Ljava/lang/String;

    if-eqz v1, :cond_8

    .line 272
    const-string v1, "channel_id"

    iget-object v2, p0, Landroidx/car/app/notification/CarAppExtender;->mChannelId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    :cond_8
    invoke-virtual {p1}, Landroidx/core/app/NotificationCompat$Builder;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "androidx.car.app.EXTENSIONS"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 276
    return-object p1
.end method

.method public getActions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/app/Notification$Action;",
            ">;"
        }
    .end annotation

    .line 362
    iget-object v0, p0, Landroidx/car/app/notification/CarAppExtender;->mActions:Ljava/util/ArrayList;

    invoke-static {v0}, Landroidx/car/app/utils/CollectionUtils;->emptyIfNull(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getChannelId()Ljava/lang/String;
    .locals 1

    .line 392
    iget-object v0, p0, Landroidx/car/app/notification/CarAppExtender;->mChannelId:Ljava/lang/String;

    return-object v0
.end method

.method public getColor()Landroidx/car/app/model/CarColor;
    .locals 1

    .line 382
    iget-object v0, p0, Landroidx/car/app/notification/CarAppExtender;->mColor:Landroidx/car/app/model/CarColor;

    return-object v0
.end method

.method public getContentIntent()Landroid/app/PendingIntent;
    .locals 1

    .line 341
    iget-object v0, p0, Landroidx/car/app/notification/CarAppExtender;->mContentIntent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method public getContentText()Ljava/lang/CharSequence;
    .locals 1

    .line 310
    iget-object v0, p0, Landroidx/car/app/notification/CarAppExtender;->mContentText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getContentTitle()Ljava/lang/CharSequence;
    .locals 1

    .line 300
    iget-object v0, p0, Landroidx/car/app/notification/CarAppExtender;->mContentTitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getDeleteIntent()Landroid/app/PendingIntent;
    .locals 1

    .line 352
    iget-object v0, p0, Landroidx/car/app/notification/CarAppExtender;->mDeleteIntent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method public getImportance()I
    .locals 1

    .line 371
    iget v0, p0, Landroidx/car/app/notification/CarAppExtender;->mImportance:I

    return v0
.end method

.method public getLargeIcon()Landroid/graphics/Bitmap;
    .locals 1

    .line 330
    iget-object v0, p0, Landroidx/car/app/notification/CarAppExtender;->mLargeIconBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getSmallIcon()I
    .locals 1

    .line 320
    iget v0, p0, Landroidx/car/app/notification/CarAppExtender;->mSmallIconResId:I

    return v0
.end method
