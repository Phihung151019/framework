.class public Lcom/samsung/android/knox/lockscreen/LSOItemText;
.super Lcom/samsung/android/knox/lockscreen/LSOItemData;
.source "qb/104190634 99f1dbf964410b239c7a01052e351590f66e8dc00afbe8338c9b357cd98f1b2a"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/knox/lockscreen/LSOItemText$LSOTextSize;
    }
.end annotation


# static fields
.field public static final greylist DEFAULT_TEXT_SIZE:F

.field public static final greylist LSO_FIELD_TEXT:I = 0x80

.field public static final greylist LSO_FIELD_TEXT_COLOR:I = 0x100

.field public static final greylist LSO_FIELD_TEXT_SIZE:I = 0x200

.field public static final greylist LSO_FIELD_TEXT_STYLE:I = 0x400


# instance fields
.field public greylist text:Ljava/lang/String;

.field public greylist text_color:I

.field public greylist text_size:F

.field public greylist text_style:I


# direct methods
.method static constructor greylist <clinit>()V
    .locals 1

    sget-object v0, Lcom/samsung/android/knox/lockscreen/LSOItemText$LSOTextSize;->NORMAL:Lcom/samsung/android/knox/lockscreen/LSOItemText$LSOTextSize;

    iget v0, v0, Lcom/samsung/android/knox/lockscreen/LSOItemText$LSOTextSize;->nativeVal:F

    sput v0, Lcom/samsung/android/knox/lockscreen/LSOItemText;->DEFAULT_TEXT_SIZE:F

    return-void
.end method

.method public constructor greylist <init>()V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/samsung/android/knox/lockscreen/LSOItemData;-><init>(B)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/knox/lockscreen/LSOItemText;->text_color:I

    iput v0, p0, Lcom/samsung/android/knox/lockscreen/LSOItemText;->text_style:I

    sget v0, Lcom/samsung/android/knox/lockscreen/LSOItemText;->DEFAULT_TEXT_SIZE:F

    iput v0, p0, Lcom/samsung/android/knox/lockscreen/LSOItemText;->text_size:F

    return-void
.end method

.method public constructor greylist <init>(Landroid/os/Parcel;)V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/knox/lockscreen/LSOItemData;-><init>(BLandroid/os/Parcel;)V

    return-void
.end method

.method public constructor greylist <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/samsung/android/knox/lockscreen/LSOItemData;-><init>(B)V

    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/lockscreen/LSOItemText;->setText(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public greylist getText()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/knox/lockscreen/LSOItemText;->text:Ljava/lang/String;

    return-object p0
.end method

.method public greylist getTextColor()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/knox/lockscreen/LSOItemText;->text_color:I

    return p0
.end method

.method public greylist getTextSize()Lcom/samsung/android/knox/lockscreen/LSOItemText$LSOTextSize;
    .locals 1

    iget v0, p0, Lcom/samsung/android/knox/lockscreen/LSOItemText;->text_size:F

    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/lockscreen/LSOItemText;->getTextSize(F)Lcom/samsung/android/knox/lockscreen/LSOItemText$LSOTextSize;

    move-result-object p0

    return-object p0
.end method

.method public final greylist getTextSize(F)Lcom/samsung/android/knox/lockscreen/LSOItemText$LSOTextSize;
    .locals 1

    sget-object p0, Lcom/samsung/android/knox/lockscreen/LSOItemText$LSOTextSize;->HUGE:Lcom/samsung/android/knox/lockscreen/LSOItemText$LSOTextSize;

    iget v0, p0, Lcom/samsung/android/knox/lockscreen/LSOItemText$LSOTextSize;->nativeVal:F

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    return-object p0

    :cond_0
    sget-object p0, Lcom/samsung/android/knox/lockscreen/LSOItemText$LSOTextSize;->LARGE:Lcom/samsung/android/knox/lockscreen/LSOItemText$LSOTextSize;

    iget v0, p0, Lcom/samsung/android/knox/lockscreen/LSOItemText$LSOTextSize;->nativeVal:F

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_1

    return-object p0

    :cond_1
    sget-object p0, Lcom/samsung/android/knox/lockscreen/LSOItemText$LSOTextSize;->NORMAL:Lcom/samsung/android/knox/lockscreen/LSOItemText$LSOTextSize;

    iget v0, p0, Lcom/samsung/android/knox/lockscreen/LSOItemText$LSOTextSize;->nativeVal:F

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_2

    return-object p0

    :cond_2
    sget-object p0, Lcom/samsung/android/knox/lockscreen/LSOItemText$LSOTextSize;->SMALL:Lcom/samsung/android/knox/lockscreen/LSOItemText$LSOTextSize;

    iget v0, p0, Lcom/samsung/android/knox/lockscreen/LSOItemText$LSOTextSize;->nativeVal:F

    cmpl-float p1, p1, v0

    if-ltz p1, :cond_3

    return-object p0

    :cond_3
    sget-object p0, Lcom/samsung/android/knox/lockscreen/LSOItemText$LSOTextSize;->TINY:Lcom/samsung/android/knox/lockscreen/LSOItemText$LSOTextSize;

    return-object p0
.end method

.method public greylist getTextSizeAsFloat()F
    .locals 0

    iget p0, p0, Lcom/samsung/android/knox/lockscreen/LSOItemText;->text_size:F

    return p0
.end method

.method public greylist getTextStyle()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/knox/lockscreen/LSOItemText;->text_style:I

    return p0
.end method

.method public greylist readFromParcel(Landroid/os/Parcel;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->readFromParcel(Landroid/os/Parcel;)V

    const/16 v0, 0x80

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->readStringFromParcel(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/lockscreen/LSOItemText;->text:Ljava/lang/String;

    const/16 v0, 0x100

    const/4 v1, -0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->readIntFromParcel(Landroid/os/Parcel;II)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/knox/lockscreen/LSOItemText;->text_color:I

    const/16 v0, 0x400

    invoke-virtual {p0, p1, v0, v1}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->readIntFromParcel(Landroid/os/Parcel;II)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/knox/lockscreen/LSOItemText;->text_style:I

    const/16 v0, 0x200

    sget v1, Lcom/samsung/android/knox/lockscreen/LSOItemText;->DEFAULT_TEXT_SIZE:F

    invoke-virtual {p0, p1, v0, v1}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->readFloatFromParcel(Landroid/os/Parcel;IF)F

    move-result p1

    iput p1, p0, Lcom/samsung/android/knox/lockscreen/LSOItemText;->text_size:F

    return-void
.end method

.method public greylist setText(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/knox/lockscreen/LSOItemText;->text:Ljava/lang/String;

    const/16 p1, 0x80

    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->updateFieldFlag(I)V

    return-void
.end method

.method public greylist setTextColor(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/knox/lockscreen/LSOItemText;->text_color:I

    const/16 p1, 0x100

    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->updateFieldFlag(I)V

    return-void
.end method

.method public greylist setTextSize(F)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/lockscreen/LSOItemText;->getTextSize(F)Lcom/samsung/android/knox/lockscreen/LSOItemText$LSOTextSize;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/lockscreen/LSOItemText;->setTextSize(Lcom/samsung/android/knox/lockscreen/LSOItemText$LSOTextSize;)V

    return-void
.end method

.method public greylist setTextSize(Lcom/samsung/android/knox/lockscreen/LSOItemText$LSOTextSize;)V
    .locals 2

    iget p1, p1, Lcom/samsung/android/knox/lockscreen/LSOItemText$LSOTextSize;->nativeVal:F

    sget v0, Lcom/samsung/android/knox/lockscreen/LSOItemText;->DEFAULT_TEXT_SIZE:F

    cmpl-float v0, p1, v0

    const/16 v1, 0x200

    if-nez v0, :cond_0

    invoke-virtual {p0, v1}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->removeFieldFlag(I)V

    return-void

    :cond_0
    iput p1, p0, Lcom/samsung/android/knox/lockscreen/LSOItemText;->text_size:F

    invoke-virtual {p0, v1}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->updateFieldFlag(I)V

    return-void
.end method

.method public greylist setTextStyle(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/knox/lockscreen/LSOItemText;->text_style:I

    const/16 p1, 0x400

    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->updateFieldFlag(I)V

    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "TextView "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-super {p0}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Text:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/knox/lockscreen/LSOItemText;->text:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {p0, v0, v2, v1}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->toString(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Text_Color:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/samsung/android/knox/lockscreen/LSOItemText;->text_color:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x100

    invoke-virtual {p0, v0, v2, v1}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->toString(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Text_Style:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/samsung/android/knox/lockscreen/LSOItemText;->text_style:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x400

    invoke-virtual {p0, v0, v2, v1}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->toString(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Text_Size:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/samsung/android/knox/lockscreen/LSOItemText;->text_size:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x200

    invoke-virtual {p0, v0, v2, v1}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->toString(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->writeToParcel(Landroid/os/Parcel;I)V

    const/16 p2, 0x80

    iget-object v0, p0, Lcom/samsung/android/knox/lockscreen/LSOItemText;->text:Ljava/lang/String;

    invoke-virtual {p0, p1, p2, v0}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->writeToParcel(Landroid/os/Parcel;ILjava/lang/String;)V

    const/16 p2, 0x100

    iget v0, p0, Lcom/samsung/android/knox/lockscreen/LSOItemText;->text_color:I

    invoke-virtual {p0, p1, p2, v0}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->writeToParcel(Landroid/os/Parcel;II)V

    const/16 p2, 0x400

    iget v0, p0, Lcom/samsung/android/knox/lockscreen/LSOItemText;->text_style:I

    invoke-virtual {p0, p1, p2, v0}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->writeToParcel(Landroid/os/Parcel;II)V

    const/16 p2, 0x200

    iget v0, p0, Lcom/samsung/android/knox/lockscreen/LSOItemText;->text_size:F

    invoke-virtual {p0, p1, p2, v0}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->writeToParcel(Landroid/os/Parcel;IF)V

    return-void
.end method
