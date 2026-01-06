.class public Lcom/gsma/services/rcs/sharing/video/VideoDescriptor;
.super Ljava/lang/Object;
.source "VideoDescriptor.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/gsma/services/rcs/sharing/video/VideoDescriptor;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mHeight:I

.field private final mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 58
    new-instance v0, Lcom/gsma/services/rcs/sharing/video/VideoDescriptor$1;

    invoke-direct {v0}, Lcom/gsma/services/rcs/sharing/video/VideoDescriptor$1;-><init>()V

    sput-object v0, Lcom/gsma/services/rcs/sharing/video/VideoDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0
    .param p1, "width"    # I
    .param p2, "height"    # I

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput p1, p0, Lcom/gsma/services/rcs/sharing/video/VideoDescriptor;->mWidth:I

    .line 41
    iput p2, p0, Lcom/gsma/services/rcs/sharing/video/VideoDescriptor;->mHeight:I

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/gsma/services/rcs/sharing/video/VideoDescriptor;->mWidth:I

    .line 51
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/gsma/services/rcs/sharing/video/VideoDescriptor;->mHeight:I

    .line 52
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 91
    const/4 v0, 0x0

    return v0
.end method

.method public getHeight()I
    .locals 1

    .line 81
    iget v0, p0, Lcom/gsma/services/rcs/sharing/video/VideoDescriptor;->mHeight:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .line 73
    iget v0, p0, Lcom/gsma/services/rcs/sharing/video/VideoDescriptor;->mWidth:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flag"    # I

    .line 101
    iget v0, p0, Lcom/gsma/services/rcs/sharing/video/VideoDescriptor;->mWidth:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 102
    iget v0, p0, Lcom/gsma/services/rcs/sharing/video/VideoDescriptor;->mHeight:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 103
    return-void
.end method
