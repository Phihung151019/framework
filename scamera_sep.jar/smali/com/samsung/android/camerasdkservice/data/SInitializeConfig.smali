.class public Lcom/samsung/android/camerasdkservice/data/SInitializeConfig;
.super Ljava/lang/Object;
.source "SInitializeConfig.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/camerasdkservice/data/SInitializeConfig;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mCameraId:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mMaxPictureCount:I

.field private mPictureOutputSurface:Landroid/view/Surface;

.field private mPictureSize:Landroid/util/Size;

.field private mPreviewOutputSurface:Landroid/view/Surface;

.field private mPreviewSize:Landroid/util/Size;

.field private mProcessorId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 12
    new-instance v0, Lcom/samsung/android/camerasdkservice/data/SInitializeConfig$1;

    invoke-direct {v0}, Lcom/samsung/android/camerasdkservice/data/SInitializeConfig$1;-><init>()V

    sput-object v0, Lcom/samsung/android/camerasdkservice/data/SInitializeConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    new-instance v0, Landroid/util/Size;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Landroid/util/Size;-><init>(II)V

    iput-object v0, p0, Lcom/samsung/android/camerasdkservice/data/SInitializeConfig;->mPreviewSize:Landroid/util/Size;

    .line 63
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Landroid/util/Size;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/util/Size;-><init>(II)V

    iput-object v0, p0, Lcom/samsung/android/camerasdkservice/data/SInitializeConfig;->mPictureSize:Landroid/util/Size;

    .line 52
    new-instance v0, Landroid/util/Size;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/util/Size;-><init>(II)V

    iput-object v0, p0, Lcom/samsung/android/camerasdkservice/data/SInitializeConfig;->mPreviewSize:Landroid/util/Size;

    .line 53
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/camerasdkservice/data/SInitializeConfig;->mCameraId:Ljava/lang/String;

    .line 54
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/camerasdkservice/data/SInitializeConfig;->mProcessorId:I

    .line 55
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/camerasdkservice/data/SInitializeConfig;->mMaxPictureCount:I

    .line 56
    const-class v0, Landroid/view/Surface;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/view/Surface;

    iput-object v0, p0, Lcom/samsung/android/camerasdkservice/data/SInitializeConfig;->mPictureOutputSurface:Landroid/view/Surface;

    .line 57
    const-class v0, Landroid/view/Surface;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/view/Surface;

    iput-object v0, p0, Lcom/samsung/android/camerasdkservice/data/SInitializeConfig;->mPreviewOutputSurface:Landroid/view/Surface;

    .line 58
    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/camerasdkservice/data/ProcessorConfig;)V
    .locals 1
    .param p1, "config"    # Lcom/samsung/android/camerasdkservice/data/ProcessorConfig;

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    invoke-virtual {p1}, Lcom/samsung/android/camerasdkservice/data/ProcessorConfig;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/camerasdkservice/data/SInitializeConfig;->mContext:Landroid/content/Context;

    .line 36
    invoke-virtual {p1}, Lcom/samsung/android/camerasdkservice/data/ProcessorConfig;->getCameraId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/camerasdkservice/data/SInitializeConfig;->mCameraId:Ljava/lang/String;

    .line 37
    invoke-virtual {p1}, Lcom/samsung/android/camerasdkservice/data/ProcessorConfig;->getMaxPictureCount()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/camerasdkservice/data/SInitializeConfig;->mMaxPictureCount:I

    .line 38
    invoke-virtual {p1}, Lcom/samsung/android/camerasdkservice/data/ProcessorConfig;->getPictureSize()Landroid/util/Size;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/camerasdkservice/data/SInitializeConfig;->mPictureSize:Landroid/util/Size;

    .line 39
    invoke-virtual {p1}, Lcom/samsung/android/camerasdkservice/data/ProcessorConfig;->getPreviewSize()Landroid/util/Size;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/camerasdkservice/data/SInitializeConfig;->mPreviewSize:Landroid/util/Size;

    .line 40
    invoke-virtual {p1}, Lcom/samsung/android/camerasdkservice/data/ProcessorConfig;->getProcessorId()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/camerasdkservice/data/SInitializeConfig;->mProcessorId:I

    .line 41
    invoke-virtual {p1}, Lcom/samsung/android/camerasdkservice/data/ProcessorConfig;->getPreviewOutputSurface()Landroid/view/Surface;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/camerasdkservice/data/SInitializeConfig;->mPreviewOutputSurface:Landroid/view/Surface;

    .line 42
    invoke-virtual {p1}, Lcom/samsung/android/camerasdkservice/data/ProcessorConfig;->getPictureOutputSurface()Landroid/view/Surface;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/camerasdkservice/data/SInitializeConfig;->mPictureOutputSurface:Landroid/view/Surface;

    .line 43
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 260
    const/4 v0, 0x0

    return v0
.end method

.method public getCameraId()Ljava/lang/String;
    .locals 1

    .line 152
    iget-object v0, p0, Lcom/samsung/android/camerasdkservice/data/SInitializeConfig;->mCameraId:Ljava/lang/String;

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .line 233
    iget-object v0, p0, Lcom/samsung/android/camerasdkservice/data/SInitializeConfig;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getMaxPictureCount()I
    .locals 1

    .line 116
    iget v0, p0, Lcom/samsung/android/camerasdkservice/data/SInitializeConfig;->mMaxPictureCount:I

    return v0
.end method

.method public getPictureHeight()I
    .locals 1

    .line 188
    iget-object v0, p0, Lcom/samsung/android/camerasdkservice/data/SInitializeConfig;->mPictureSize:Landroid/util/Size;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/camerasdkservice/data/SInitializeConfig;->mPictureSize:Landroid/util/Size;

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getPictureOutputSurface()Landroid/view/Surface;
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/samsung/android/camerasdkservice/data/SInitializeConfig;->mPictureOutputSurface:Landroid/view/Surface;

    return-object v0
.end method

.method public getPictureSize()Landroid/util/Size;
    .locals 1

    .line 224
    iget-object v0, p0, Lcom/samsung/android/camerasdkservice/data/SInitializeConfig;->mPictureSize:Landroid/util/Size;

    return-object v0
.end method

.method public getPictureWidth()I
    .locals 1

    .line 206
    iget-object v0, p0, Lcom/samsung/android/camerasdkservice/data/SInitializeConfig;->mPictureSize:Landroid/util/Size;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/camerasdkservice/data/SInitializeConfig;->mPictureSize:Landroid/util/Size;

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getPreviewHeight()I
    .locals 1

    .line 161
    iget-object v0, p0, Lcom/samsung/android/camerasdkservice/data/SInitializeConfig;->mPreviewSize:Landroid/util/Size;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/camerasdkservice/data/SInitializeConfig;->mPreviewSize:Landroid/util/Size;

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getPreviewOutputSurface()Landroid/view/Surface;
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/samsung/android/camerasdkservice/data/SInitializeConfig;->mPreviewOutputSurface:Landroid/view/Surface;

    return-object v0
.end method

.method public getPreviewSize()Landroid/util/Size;
    .locals 1

    .line 215
    iget-object v0, p0, Lcom/samsung/android/camerasdkservice/data/SInitializeConfig;->mPreviewSize:Landroid/util/Size;

    return-object v0
.end method

.method public getPreviewWidth()I
    .locals 1

    .line 179
    iget-object v0, p0, Lcom/samsung/android/camerasdkservice/data/SInitializeConfig;->mPreviewSize:Landroid/util/Size;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/camerasdkservice/data/SInitializeConfig;->mPreviewSize:Landroid/util/Size;

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getProcessorId()I
    .locals 1

    .line 134
    iget v0, p0, Lcom/samsung/android/camerasdkservice/data/SInitializeConfig;->mProcessorId:I

    return v0
.end method

.method public setCameraId(Ljava/lang/String;)V
    .locals 0
    .param p1, "cameraId"    # Ljava/lang/String;

    .line 143
    iput-object p1, p0, Lcom/samsung/android/camerasdkservice/data/SInitializeConfig;->mCameraId:Ljava/lang/String;

    .line 144
    return-void
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 242
    iput-object p1, p0, Lcom/samsung/android/camerasdkservice/data/SInitializeConfig;->mContext:Landroid/content/Context;

    .line 243
    return-void
.end method

.method public setMaxPictureCount(I)V
    .locals 0
    .param p1, "maxPictureCount"    # I

    .line 107
    iput p1, p0, Lcom/samsung/android/camerasdkservice/data/SInitializeConfig;->mMaxPictureCount:I

    .line 108
    return-void
.end method

.method public setPictureOutputSurface(Landroid/view/Surface;)V
    .locals 0
    .param p1, "pictureOutputSurface"    # Landroid/view/Surface;

    .line 71
    iput-object p1, p0, Lcom/samsung/android/camerasdkservice/data/SInitializeConfig;->mPictureOutputSurface:Landroid/view/Surface;

    .line 72
    return-void
.end method

.method public setPictureSize(Landroid/util/Size;)V
    .locals 0
    .param p1, "pictureSize"    # Landroid/util/Size;

    .line 197
    iput-object p1, p0, Lcom/samsung/android/camerasdkservice/data/SInitializeConfig;->mPictureSize:Landroid/util/Size;

    .line 198
    return-void
.end method

.method public setPreviewOutputSurface(Landroid/view/Surface;)V
    .locals 0
    .param p1, "previewOutputSurface"    # Landroid/view/Surface;

    .line 89
    iput-object p1, p0, Lcom/samsung/android/camerasdkservice/data/SInitializeConfig;->mPreviewOutputSurface:Landroid/view/Surface;

    .line 90
    return-void
.end method

.method public setPreviewSize(Landroid/util/Size;)V
    .locals 0
    .param p1, "previewSize"    # Landroid/util/Size;

    .line 170
    iput-object p1, p0, Lcom/samsung/android/camerasdkservice/data/SInitializeConfig;->mPreviewSize:Landroid/util/Size;

    .line 171
    return-void
.end method

.method public setProcessorId(I)V
    .locals 0
    .param p1, "processorId"    # I

    .line 125
    iput p1, p0, Lcom/samsung/android/camerasdkservice/data/SInitializeConfig;->mProcessorId:I

    .line 126
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 247
    iget-object v0, p0, Lcom/samsung/android/camerasdkservice/data/SInitializeConfig;->mPictureSize:Landroid/util/Size;

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 248
    iget-object v0, p0, Lcom/samsung/android/camerasdkservice/data/SInitializeConfig;->mPictureSize:Landroid/util/Size;

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 249
    iget-object v0, p0, Lcom/samsung/android/camerasdkservice/data/SInitializeConfig;->mPreviewSize:Landroid/util/Size;

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 250
    iget-object v0, p0, Lcom/samsung/android/camerasdkservice/data/SInitializeConfig;->mPreviewSize:Landroid/util/Size;

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 251
    iget-object v0, p0, Lcom/samsung/android/camerasdkservice/data/SInitializeConfig;->mCameraId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 252
    iget v0, p0, Lcom/samsung/android/camerasdkservice/data/SInitializeConfig;->mProcessorId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 253
    iget v0, p0, Lcom/samsung/android/camerasdkservice/data/SInitializeConfig;->mMaxPictureCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 254
    iget-object v0, p0, Lcom/samsung/android/camerasdkservice/data/SInitializeConfig;->mPictureOutputSurface:Landroid/view/Surface;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 255
    iget-object v0, p0, Lcom/samsung/android/camerasdkservice/data/SInitializeConfig;->mPreviewOutputSurface:Landroid/view/Surface;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 256
    return-void
.end method
