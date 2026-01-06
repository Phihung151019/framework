.class public Lcom/samsung/android/media/face/SemFace;
.super Ljava/lang/Object;
.source "SemFace.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/media/face/SemFace$PoseCategory;,
        Lcom/samsung/android/media/face/SemFace$GenderCategory;,
        Lcom/samsung/android/media/face/SemFace$AgeCategory;,
        Lcom/samsung/android/media/face/SemFace$ExpressionCategory;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/media/face/SemFace;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private pose:I

.field private rect:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 36
    new-instance v0, Lcom/samsung/android/media/face/SemFace$1;

    invoke-direct {v0}, Lcom/samsung/android/media/face/SemFace$1;-><init>()V

    sput-object v0, Lcom/samsung/android/media/face/SemFace;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    new-instance v0, Landroid/graphics/Rect;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/samsung/android/media/face/SemFace;->rect:Landroid/graphics/Rect;

    .line 70
    iput v1, p0, Lcom/samsung/android/media/face/SemFace;->pose:I

    .line 71
    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 1
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/samsung/android/media/face/SemFace;->rect:Landroid/graphics/Rect;

    .line 83
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/media/face/SemFace;->pose:I

    .line 84
    return-void
.end method

.method public constructor <init>(IIIII)V
    .locals 1
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I
    .param p5, "pose"    # I

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/samsung/android/media/face/SemFace;->rect:Landroid/graphics/Rect;

    .line 97
    iput p5, p0, Lcom/samsung/android/media/face/SemFace;->pose:I

    .line 98
    return-void
.end method

.method public constructor <init>(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "rect"    # Landroid/graphics/Rect;

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    iput-object p1, p0, Lcom/samsung/android/media/face/SemFace;->rect:Landroid/graphics/Rect;

    .line 107
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/media/face/SemFace;->pose:I

    .line 108
    return-void
.end method

.method public constructor <init>(Landroid/graphics/Rect;I)V
    .locals 0
    .param p1, "rect"    # Landroid/graphics/Rect;
    .param p2, "pose"    # I

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    iput-object p1, p0, Lcom/samsung/android/media/face/SemFace;->rect:Landroid/graphics/Rect;

    .line 118
    iput p2, p0, Lcom/samsung/android/media/face/SemFace;->pose:I

    .line 119
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "parcel"    # Landroid/os/Parcel;

    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 128
    if-eqz p1, :cond_0

    .line 132
    invoke-direct {p0, p1}, Lcom/samsung/android/media/face/SemFace;->readFromParcel(Landroid/os/Parcel;)V

    .line 133
    return-void

    .line 129
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot create object when input Parcel is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 190
    const-class v0, Landroid/graphics/Rect;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    iput-object v0, p0, Lcom/samsung/android/media/face/SemFace;->rect:Landroid/graphics/Rect;

    .line 191
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/media/face/SemFace;->pose:I

    .line 192
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 201
    const/4 v0, 0x0

    return v0
.end method

.method public getPose()I
    .locals 1

    .line 185
    iget v0, p0, Lcom/samsung/android/media/face/SemFace;->pose:I

    return v0
.end method

.method public getRect()Landroid/graphics/Rect;
    .locals 1

    .line 141
    iget-object v0, p0, Lcom/samsung/android/media/face/SemFace;->rect:Landroid/graphics/Rect;

    return-object v0
.end method

.method public isCoordinatesProper()Z
    .locals 2

    .line 172
    iget-object v0, p0, Lcom/samsung/android/media/face/SemFace;->rect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lcom/samsung/android/media/face/SemFace;->rect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/media/face/SemFace;->rect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Lcom/samsung/android/media/face/SemFace;->rect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    if-ge v0, v1, :cond_0

    .line 173
    const/4 v0, 0x1

    return v0

    .line 175
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public setRectCoordinatesLimit(IIII)V
    .locals 4
    .param p1, "leftLimit"    # I
    .param p2, "topLimit"    # I
    .param p3, "rightLimit"    # I
    .param p4, "bottomLimit"    # I

    .line 155
    if-gt p1, p3, :cond_4

    if-gt p2, p4, :cond_4

    .line 159
    iget-object v0, p0, Lcom/samsung/android/media/face/SemFace;->rect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/samsung/android/media/face/SemFace;->rect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    if-ge v1, p1, :cond_0

    move v1, p1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/media/face/SemFace;->rect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    :goto_0
    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 160
    iget-object v0, p0, Lcom/samsung/android/media/face/SemFace;->rect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/samsung/android/media/face/SemFace;->rect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    if-ge v1, p2, :cond_1

    move v1, p2

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/media/face/SemFace;->rect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    :goto_1
    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 161
    iget-object v0, p0, Lcom/samsung/android/media/face/SemFace;->rect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/samsung/android/media/face/SemFace;->rect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    if-le v1, p3, :cond_2

    move v1, p3

    goto :goto_2

    :cond_2
    iget-object v1, p0, Lcom/samsung/android/media/face/SemFace;->rect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    :goto_2
    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 162
    iget-object v0, p0, Lcom/samsung/android/media/face/SemFace;->rect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/samsung/android/media/face/SemFace;->rect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    if-le v1, p4, :cond_3

    move v1, p4

    goto :goto_3

    :cond_3
    iget-object v1, p0, Lcom/samsung/android/media/face/SemFace;->rect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    :goto_3
    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 163
    return-void

    .line 156
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid dimension of face bounding box information ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "<="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 213
    if-eqz p1, :cond_0

    .line 217
    iget-object v0, p0, Lcom/samsung/android/media/face/SemFace;->rect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 218
    iget v0, p0, Lcom/samsung/android/media/face/SemFace;->pose:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 219
    return-void

    .line 214
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot write to Parcel because it is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
