.class public Lcom/samsung/android/knox/lockscreen/LockscreenOverlay$LSOImage;
.super Ljava/lang/Object;
.source "qb/104190634 99f1dbf964410b239c7a01052e351590f66e8dc00afbe8338c9b357cd98f1b2a"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/knox/lockscreen/LockscreenOverlay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LSOImage"
.end annotation


# instance fields
.field public greylist bottomPosition:I

.field public greylist filePath:Ljava/lang/String;

.field public greylist scaleType:Landroid/widget/ImageView$ScaleType;

.field public greylist topPosition:I


# direct methods
.method public constructor greylist <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/knox/lockscreen/LockscreenOverlay$LSOImage;->topPosition:I

    const/16 v0, 0x64

    iput v0, p0, Lcom/samsung/android/knox/lockscreen/LockscreenOverlay$LSOImage;->bottomPosition:I

    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    iput-object v0, p0, Lcom/samsung/android/knox/lockscreen/LockscreenOverlay$LSOImage;->scaleType:Landroid/widget/ImageView$ScaleType;

    return-void
.end method

.method public constructor greylist <init>(ILjava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/samsung/android/knox/lockscreen/LockscreenOverlay$LSOImage;->topPosition:I

    iput p3, p0, Lcom/samsung/android/knox/lockscreen/LockscreenOverlay$LSOImage;->bottomPosition:I

    iput-object p2, p0, Lcom/samsung/android/knox/lockscreen/LockscreenOverlay$LSOImage;->filePath:Ljava/lang/String;

    sget-object p1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    iput-object p1, p0, Lcom/samsung/android/knox/lockscreen/LockscreenOverlay$LSOImage;->scaleType:Landroid/widget/ImageView$ScaleType;

    return-void
.end method

.method public constructor greylist <init>(ILjava/lang/String;ILandroid/widget/ImageView$ScaleType;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/samsung/android/knox/lockscreen/LockscreenOverlay$LSOImage;->topPosition:I

    iput p3, p0, Lcom/samsung/android/knox/lockscreen/LockscreenOverlay$LSOImage;->bottomPosition:I

    iput-object p2, p0, Lcom/samsung/android/knox/lockscreen/LockscreenOverlay$LSOImage;->filePath:Ljava/lang/String;

    iput-object p4, p0, Lcom/samsung/android/knox/lockscreen/LockscreenOverlay$LSOImage;->scaleType:Landroid/widget/ImageView$ScaleType;

    return-void
.end method

.method public constructor greylist <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/knox/lockscreen/LockscreenOverlay$LSOImage;->topPosition:I

    const/16 v0, 0x64

    iput v0, p0, Lcom/samsung/android/knox/lockscreen/LockscreenOverlay$LSOImage;->bottomPosition:I

    iput-object p1, p0, Lcom/samsung/android/knox/lockscreen/LockscreenOverlay$LSOImage;->filePath:Ljava/lang/String;

    sget-object p1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    iput-object p1, p0, Lcom/samsung/android/knox/lockscreen/LockscreenOverlay$LSOImage;->scaleType:Landroid/widget/ImageView$ScaleType;

    return-void
.end method
