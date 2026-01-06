.class public final Lcom/samsung/android/knox/lockscreen/LSOItemCreator;
.super Ljava/lang/Object;
.source "qb/104190634 99f1dbf964410b239c7a01052e351590f66e8dc00afbe8338c9b357cd98f1b2a"


# static fields
.field public static final greylist LSO_ITEM_TYPE_CONTAINER:B = 0x4t

.field public static final greylist LSO_ITEM_TYPE_IMAGE:B = 0x3t

.field public static final greylist LSO_ITEM_TYPE_NONE:B = 0x0t

.field public static final greylist LSO_ITEM_TYPE_SPACE:B = 0x1t

.field public static final greylist LSO_ITEM_TYPE_TEXT:B = 0x2t

.field public static final greylist LSO_ITEM_TYPE_WIDGET:B = 0x5t

.field public static final greylist TAG:Ljava/lang/String; = "LSO_LSOItemCreator"


# direct methods
.method public constructor greylist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static greylist createItem(B)Lcom/samsung/android/knox/lockscreen/LSOItemData;
    .locals 2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_4

    const/4 v0, 0x2

    if-eq p0, v0, :cond_3

    const/4 v0, 0x3

    if-eq p0, v0, :cond_2

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/4 v0, 0x5

    if-eq p0, v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unknown ItemType: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "LSO_LSOItemCreator"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance p0, Lcom/samsung/android/knox/lockscreen/LSOItemWidget;

    invoke-direct {p0}, Lcom/samsung/android/knox/lockscreen/LSOItemWidget;-><init>()V

    return-object p0

    :cond_1
    new-instance p0, Lcom/samsung/android/knox/lockscreen/LSOItemContainer;

    invoke-direct {p0}, Lcom/samsung/android/knox/lockscreen/LSOItemContainer;-><init>()V

    return-object p0

    :cond_2
    new-instance p0, Lcom/samsung/android/knox/lockscreen/LSOItemImage;

    invoke-direct {p0}, Lcom/samsung/android/knox/lockscreen/LSOItemImage;-><init>()V

    return-object p0

    :cond_3
    new-instance p0, Lcom/samsung/android/knox/lockscreen/LSOItemText;

    invoke-direct {p0}, Lcom/samsung/android/knox/lockscreen/LSOItemText;-><init>()V

    return-object p0

    :cond_4
    new-instance p0, Lcom/samsung/android/knox/lockscreen/LSOItemSpace;

    invoke-direct {p0}, Lcom/samsung/android/knox/lockscreen/LSOItemSpace;-><init>()V

    return-object p0
.end method

.method public static greylist createItem(BLandroid/os/Parcel;)Lcom/samsung/android/knox/lockscreen/LSOItemData;
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_4

    const/4 v0, 0x2

    if-eq p0, v0, :cond_3

    const/4 v0, 0x3

    if-eq p0, v0, :cond_2

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/4 v0, 0x5

    if-eq p0, v0, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Unknown ItemType: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "LSO_LSOItemCreator"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance p0, Lcom/samsung/android/knox/lockscreen/LSOItemWidget;

    invoke-direct {p0, p1}, Lcom/samsung/android/knox/lockscreen/LSOItemWidget;-><init>(Landroid/os/Parcel;)V

    return-object p0

    :cond_1
    new-instance p0, Lcom/samsung/android/knox/lockscreen/LSOItemContainer;

    invoke-direct {p0, p1}, Lcom/samsung/android/knox/lockscreen/LSOItemContainer;-><init>(Landroid/os/Parcel;)V

    return-object p0

    :cond_2
    new-instance p0, Lcom/samsung/android/knox/lockscreen/LSOItemImage;

    invoke-direct {p0, p1}, Lcom/samsung/android/knox/lockscreen/LSOItemImage;-><init>(Landroid/os/Parcel;)V

    return-object p0

    :cond_3
    new-instance p0, Lcom/samsung/android/knox/lockscreen/LSOItemText;

    invoke-direct {p0, p1}, Lcom/samsung/android/knox/lockscreen/LSOItemText;-><init>(Landroid/os/Parcel;)V

    return-object p0

    :cond_4
    new-instance p0, Lcom/samsung/android/knox/lockscreen/LSOItemSpace;

    invoke-direct {p0, p1}, Lcom/samsung/android/knox/lockscreen/LSOItemSpace;-><init>(Landroid/os/Parcel;)V

    return-object p0
.end method
