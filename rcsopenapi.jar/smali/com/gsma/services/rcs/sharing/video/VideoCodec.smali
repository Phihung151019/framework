.class public Lcom/gsma/services/rcs/sharing/video/VideoCodec;
.super Ljava/lang/Object;
.source "VideoCodec.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gsma/services/rcs/sharing/video/VideoCodec$Encoding;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/gsma/services/rcs/sharing/video/VideoCodec;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final bitRate:I

.field private final clockRate:I

.field private final encoding:Ljava/lang/String;

.field private final frameRate:I

.field private final height:I

.field private final parameters:Ljava/lang/String;

.field private final payload:I

.field private final width:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 157
    new-instance v0, Lcom/gsma/services/rcs/sharing/video/VideoCodec$1;

    invoke-direct {v0}, Lcom/gsma/services/rcs/sharing/video/VideoCodec$1;-><init>()V

    sput-object v0, Lcom/gsma/services/rcs/sharing/video/VideoCodec;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/gsma/services/rcs/sharing/video/VideoCodec;->encoding:Ljava/lang/String;

    .line 86
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/gsma/services/rcs/sharing/video/VideoCodec;->payload:I

    .line 87
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/gsma/services/rcs/sharing/video/VideoCodec;->clockRate:I

    .line 88
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/gsma/services/rcs/sharing/video/VideoCodec;->frameRate:I

    .line 89
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/gsma/services/rcs/sharing/video/VideoCodec;->bitRate:I

    .line 90
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/gsma/services/rcs/sharing/video/VideoCodec;->width:I

    .line 91
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/gsma/services/rcs/sharing/video/VideoCodec;->height:I

    .line 92
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/gsma/services/rcs/sharing/video/VideoCodec;->parameters:Ljava/lang/String;

    .line 93
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIIIIILjava/lang/String;)V
    .locals 0
    .param p1, "encoding"    # Ljava/lang/String;
    .param p2, "payload"    # I
    .param p3, "clockRate"    # I
    .param p4, "frameRate"    # I
    .param p5, "bitRate"    # I
    .param p6, "width"    # I
    .param p7, "height"    # I
    .param p8, "parameters"    # Ljava/lang/String;

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    iput-object p1, p0, Lcom/gsma/services/rcs/sharing/video/VideoCodec;->encoding:Ljava/lang/String;

    .line 109
    iput p2, p0, Lcom/gsma/services/rcs/sharing/video/VideoCodec;->payload:I

    .line 110
    iput p3, p0, Lcom/gsma/services/rcs/sharing/video/VideoCodec;->clockRate:I

    .line 111
    iput p4, p0, Lcom/gsma/services/rcs/sharing/video/VideoCodec;->frameRate:I

    .line 112
    iput p5, p0, Lcom/gsma/services/rcs/sharing/video/VideoCodec;->bitRate:I

    .line 113
    iput-object p8, p0, Lcom/gsma/services/rcs/sharing/video/VideoCodec;->parameters:Ljava/lang/String;

    .line 114
    iput p6, p0, Lcom/gsma/services/rcs/sharing/video/VideoCodec;->width:I

    .line 115
    iput p7, p0, Lcom/gsma/services/rcs/sharing/video/VideoCodec;->height:I

    .line 116
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 133
    const/4 v0, 0x0

    return v0
.end method

.method public getBitRate()I
    .locals 1

    .line 204
    iget v0, p0, Lcom/gsma/services/rcs/sharing/video/VideoCodec;->bitRate:I

    return v0
.end method

.method public getClockRate()I
    .locals 1

    .line 188
    iget v0, p0, Lcom/gsma/services/rcs/sharing/video/VideoCodec;->clockRate:I

    return v0
.end method

.method public getEncoding()Ljava/lang/String;
    .locals 1

    .line 172
    iget-object v0, p0, Lcom/gsma/services/rcs/sharing/video/VideoCodec;->encoding:Ljava/lang/String;

    return-object v0
.end method

.method public getFrameRate()I
    .locals 1

    .line 196
    iget v0, p0, Lcom/gsma/services/rcs/sharing/video/VideoCodec;->frameRate:I

    return v0
.end method

.method public getHeight()I
    .locals 1

    .line 220
    iget v0, p0, Lcom/gsma/services/rcs/sharing/video/VideoCodec;->height:I

    return v0
.end method

.method public getParameters()Ljava/lang/String;
    .locals 1

    .line 229
    iget-object v0, p0, Lcom/gsma/services/rcs/sharing/video/VideoCodec;->parameters:Ljava/lang/String;

    return-object v0
.end method

.method public getPayloadType()I
    .locals 1

    .line 180
    iget v0, p0, Lcom/gsma/services/rcs/sharing/video/VideoCodec;->payload:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .line 212
    iget v0, p0, Lcom/gsma/services/rcs/sharing/video/VideoCodec;->width:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 143
    iget-object v0, p0, Lcom/gsma/services/rcs/sharing/video/VideoCodec;->encoding:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 144
    iget v0, p0, Lcom/gsma/services/rcs/sharing/video/VideoCodec;->payload:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 145
    iget v0, p0, Lcom/gsma/services/rcs/sharing/video/VideoCodec;->clockRate:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 146
    iget v0, p0, Lcom/gsma/services/rcs/sharing/video/VideoCodec;->frameRate:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 147
    iget v0, p0, Lcom/gsma/services/rcs/sharing/video/VideoCodec;->bitRate:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 148
    iget v0, p0, Lcom/gsma/services/rcs/sharing/video/VideoCodec;->width:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 149
    iget v0, p0, Lcom/gsma/services/rcs/sharing/video/VideoCodec;->height:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 150
    iget-object v0, p0, Lcom/gsma/services/rcs/sharing/video/VideoCodec;->parameters:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 151
    return-void
.end method
