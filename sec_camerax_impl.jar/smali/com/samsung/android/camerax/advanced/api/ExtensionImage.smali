.class public Lcom/samsung/android/camerax/advanced/api/ExtensionImage;
.super Landroid/media/Image;
.source "ExtensionImage.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/camerax/advanced/api/ExtensionImage;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "ExtensionImage"


# instance fields
.field private mBuffer:Landroid/hardware/HardwareBuffer;

.field private mCrop:Landroid/graphics/Rect;

.field private mFence:Landroid/os/ParcelFileDescriptor;

.field private mFormat:I

.field private mGraphicBuffer:Landroid/graphics/GraphicBuffer;

.field private mHeight:I

.field private mPlaneCount:I

.field private mPlanes:[Landroid/media/ImageReader$ImagePlane;

.field private mScalingMode:I

.field private mTimestamp:J

.field private mTransform:I

.field private mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 94
    new-instance v0, Lcom/samsung/android/camerax/advanced/api/ExtensionImage$1;

    invoke-direct {v0}, Lcom/samsung/android/camerax/advanced/api/ExtensionImage$1;-><init>()V

    sput-object v0, Lcom/samsung/android/camerax/advanced/api/ExtensionImage;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/media/Image;)V
    .locals 3
    .param p1, "image"    # Landroid/media/Image;

    .line 50
    invoke-direct {p0}, Landroid/media/Image;-><init>()V

    .line 51
    invoke-virtual {p1}, Landroid/media/Image;->getFormat()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/camerax/advanced/api/ExtensionImage;->mFormat:I

    .line 52
    invoke-virtual {p1}, Landroid/media/Image;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/camerax/advanced/api/ExtensionImage;->mWidth:I

    .line 53
    invoke-virtual {p1}, Landroid/media/Image;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/camerax/advanced/api/ExtensionImage;->mHeight:I

    .line 54
    invoke-virtual {p1}, Landroid/media/Image;->getTransform()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/camerax/advanced/api/ExtensionImage;->mTransform:I

    .line 55
    invoke-virtual {p1}, Landroid/media/Image;->getScalingMode()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/camerax/advanced/api/ExtensionImage;->mScalingMode:I

    .line 56
    invoke-virtual {p1}, Landroid/media/Image;->getTimestamp()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/camerax/advanced/api/ExtensionImage;->mTimestamp:J

    .line 57
    invoke-virtual {p1}, Landroid/media/Image;->getPlaneCount()I

    move-result v0

    if-gtz v0, :cond_0

    .line 58
    invoke-virtual {p1}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v0

    array-length v0, v0

    iput v0, p0, Lcom/samsung/android/camerax/advanced/api/ExtensionImage;->mPlaneCount:I

    goto :goto_0

    .line 60
    :cond_0
    invoke-virtual {p1}, Landroid/media/Image;->getPlaneCount()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/camerax/advanced/api/ExtensionImage;->mPlaneCount:I

    .line 63
    :goto_0
    invoke-virtual {p1}, Landroid/media/Image;->getCropRect()Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/camerax/advanced/api/ExtensionImage;->mCrop:Landroid/graphics/Rect;

    .line 64
    invoke-virtual {p1}, Landroid/media/Image;->getHardwareBuffer()Landroid/hardware/HardwareBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/camerax/advanced/api/ExtensionImage;->mBuffer:Landroid/hardware/HardwareBuffer;

    .line 66
    :try_start_0
    invoke-virtual {p1}, Landroid/media/Image;->getFence()Landroid/hardware/SyncFence;

    move-result-object v0

    .line 67
    .local v0, "fd":Landroid/hardware/SyncFence;
    invoke-virtual {v0}, Landroid/hardware/SyncFence;->isValid()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 68
    invoke-virtual {v0}, Landroid/hardware/SyncFence;->getFdDup()Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/camerax/advanced/api/ExtensionImage;->mFence:Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    .end local v0    # "fd":Landroid/hardware/SyncFence;
    :cond_1
    goto :goto_1

    .line 70
    :catch_0
    move-exception v0

    .line 71
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "ExtensionImage"

    const-string v2, "Failed to parcel buffer fence!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    .end local v0    # "e":Ljava/io/IOException;
    :goto_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/camerax/advanced/api/ExtensionImage;->mIsImageValid:Z

    .line 75
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "parcel"    # Landroid/os/Parcel;

    .line 77
    invoke-direct {p0}, Landroid/media/Image;-><init>()V

    .line 78
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/camerax/advanced/api/ExtensionImage;->mFormat:I

    .line 79
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/camerax/advanced/api/ExtensionImage;->mWidth:I

    .line 80
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/camerax/advanced/api/ExtensionImage;->mHeight:I

    .line 81
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/camerax/advanced/api/ExtensionImage;->mTransform:I

    .line 82
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/camerax/advanced/api/ExtensionImage;->mScalingMode:I

    .line 83
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/camerax/advanced/api/ExtensionImage;->mTimestamp:J

    .line 84
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/camerax/advanced/api/ExtensionImage;->mPlaneCount:I

    .line 85
    const-class v0, Landroid/graphics/Rect;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-class v1, Landroid/graphics/Rect;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    iput-object v0, p0, Lcom/samsung/android/camerax/advanced/api/ExtensionImage;->mCrop:Landroid/graphics/Rect;

    .line 86
    const-class v0, Landroid/hardware/HardwareBuffer;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-class v1, Landroid/hardware/HardwareBuffer;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/HardwareBuffer;

    iput-object v0, p0, Lcom/samsung/android/camerax/advanced/api/ExtensionImage;->mBuffer:Landroid/hardware/HardwareBuffer;

    .line 88
    const-class v0, Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-class v1, Landroid/os/ParcelFileDescriptor;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/ParcelFileDescriptor;

    iput-object v0, p0, Lcom/samsung/android/camerax/advanced/api/ExtensionImage;->mFence:Landroid/os/ParcelFileDescriptor;

    .line 91
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/camerax/advanced/api/ExtensionImage;->mIsImageValid:Z

    .line 92
    return-void
.end method


# virtual methods
.method public close()V
    .locals 4

    .line 182
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/camerax/advanced/api/ExtensionImage;->mIsImageValid:Z

    .line 183
    iget-object v0, p0, Lcom/samsung/android/camerax/advanced/api/ExtensionImage;->mGraphicBuffer:Landroid/graphics/GraphicBuffer;

    const-string v1, "ExtensionImage"

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 185
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/camerax/advanced/api/ExtensionImage;->mGraphicBuffer:Landroid/graphics/GraphicBuffer;

    invoke-static {v0}, Landroid/media/ImageReader;->unlockGraphicBuffer(Landroid/graphics/GraphicBuffer;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 188
    goto :goto_0

    .line 186
    :catch_0
    move-exception v0

    .line 187
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v3, "graphic buffer already finalized"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 189
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/camerax/advanced/api/ExtensionImage;->mGraphicBuffer:Landroid/graphics/GraphicBuffer;

    invoke-virtual {v0}, Landroid/graphics/GraphicBuffer;->destroy()V

    .line 190
    iput-object v2, p0, Lcom/samsung/android/camerax/advanced/api/ExtensionImage;->mGraphicBuffer:Landroid/graphics/GraphicBuffer;

    .line 193
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/camerax/advanced/api/ExtensionImage;->mPlanes:[Landroid/media/ImageReader$ImagePlane;

    if-eqz v0, :cond_1

    .line 194
    iput-object v2, p0, Lcom/samsung/android/camerax/advanced/api/ExtensionImage;->mPlanes:[Landroid/media/ImageReader$ImagePlane;

    .line 197
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/camerax/advanced/api/ExtensionImage;->mBuffer:Landroid/hardware/HardwareBuffer;

    if-eqz v0, :cond_2

    .line 198
    iget-object v0, p0, Lcom/samsung/android/camerax/advanced/api/ExtensionImage;->mBuffer:Landroid/hardware/HardwareBuffer;

    invoke-virtual {v0}, Landroid/hardware/HardwareBuffer;->close()V

    .line 199
    iput-object v2, p0, Lcom/samsung/android/camerax/advanced/api/ExtensionImage;->mBuffer:Landroid/hardware/HardwareBuffer;

    .line 202
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/camerax/advanced/api/ExtensionImage;->mFence:Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_3

    .line 204
    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/camerax/advanced/api/ExtensionImage;->mFence:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 207
    goto :goto_1

    .line 205
    :catch_1
    move-exception v0

    .line 206
    .local v0, "e":Ljava/io/IOException;
    const-string v3, "Failed to close sync fence!"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    .end local v0    # "e":Ljava/io/IOException;
    :goto_1
    iput-object v2, p0, Lcom/samsung/android/camerax/advanced/api/ExtensionImage;->mFence:Landroid/os/ParcelFileDescriptor;

    .line 210
    :cond_3
    return-void
.end method

.method public describeContents()I
    .locals 1

    .line 220
    const/4 v0, 0x1

    return v0
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 174
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/camerax/advanced/api/ExtensionImage;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 176
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 177
    nop

    .line 178
    return-void

    .line 176
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 177
    throw v0
.end method

.method public getCropRect()Landroid/graphics/Rect;
    .locals 1

    .line 168
    iget-object v0, p0, Lcom/samsung/android/camerax/advanced/api/ExtensionImage;->mCrop:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getFormat()I
    .locals 1

    .line 108
    invoke-virtual {p0}, Lcom/samsung/android/camerax/advanced/api/ExtensionImage;->throwISEIfImageIsInvalid()V

    .line 109
    iget v0, p0, Lcom/samsung/android/camerax/advanced/api/ExtensionImage;->mFormat:I

    return v0
.end method

.method public getHardwareBuffer()Landroid/hardware/HardwareBuffer;
    .locals 1

    .line 120
    iget-object v0, p0, Lcom/samsung/android/camerax/advanced/api/ExtensionImage;->mBuffer:Landroid/hardware/HardwareBuffer;

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .line 125
    invoke-virtual {p0}, Lcom/samsung/android/camerax/advanced/api/ExtensionImage;->throwISEIfImageIsInvalid()V

    .line 126
    iget v0, p0, Lcom/samsung/android/camerax/advanced/api/ExtensionImage;->mHeight:I

    return v0
.end method

.method public getPlaneCount()I
    .locals 1

    .line 149
    invoke-virtual {p0}, Lcom/samsung/android/camerax/advanced/api/ExtensionImage;->throwISEIfImageIsInvalid()V

    .line 150
    iget v0, p0, Lcom/samsung/android/camerax/advanced/api/ExtensionImage;->mPlaneCount:I

    return v0
.end method

.method public getPlanes()[Landroid/media/Image$Plane;
    .locals 10

    .line 155
    invoke-virtual {p0}, Lcom/samsung/android/camerax/advanced/api/ExtensionImage;->throwISEIfImageIsInvalid()V

    .line 156
    iget-object v0, p0, Lcom/samsung/android/camerax/advanced/api/ExtensionImage;->mPlanes:[Landroid/media/ImageReader$ImagePlane;

    if-nez v0, :cond_1

    .line 157
    iget-object v0, p0, Lcom/samsung/android/camerax/advanced/api/ExtensionImage;->mFence:Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/camerax/advanced/api/ExtensionImage;->mFence:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->detachFd()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    move v3, v0

    .line 158
    .local v3, "fenceFd":I
    iget-object v0, p0, Lcom/samsung/android/camerax/advanced/api/ExtensionImage;->mBuffer:Landroid/hardware/HardwareBuffer;

    invoke-static {v0}, Landroid/graphics/GraphicBuffer;->createFromHardwareBuffer(Landroid/hardware/HardwareBuffer;)Landroid/graphics/GraphicBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/camerax/advanced/api/ExtensionImage;->mGraphicBuffer:Landroid/graphics/GraphicBuffer;

    .line 159
    iget v1, p0, Lcom/samsung/android/camerax/advanced/api/ExtensionImage;->mPlaneCount:I

    iget-object v2, p0, Lcom/samsung/android/camerax/advanced/api/ExtensionImage;->mGraphicBuffer:Landroid/graphics/GraphicBuffer;

    iget v4, p0, Lcom/samsung/android/camerax/advanced/api/ExtensionImage;->mFormat:I

    iget-wide v5, p0, Lcom/samsung/android/camerax/advanced/api/ExtensionImage;->mTimestamp:J

    iget v7, p0, Lcom/samsung/android/camerax/advanced/api/ExtensionImage;->mTransform:I

    iget v8, p0, Lcom/samsung/android/camerax/advanced/api/ExtensionImage;->mScalingMode:I

    iget-object v9, p0, Lcom/samsung/android/camerax/advanced/api/ExtensionImage;->mCrop:Landroid/graphics/Rect;

    invoke-static/range {v1 .. v9}, Landroid/media/ImageReader;->initializeImagePlanes(ILandroid/graphics/GraphicBuffer;IIJIILandroid/graphics/Rect;)[Landroid/media/ImageReader$ImagePlane;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/camerax/advanced/api/ExtensionImage;->mPlanes:[Landroid/media/ImageReader$ImagePlane;

    .line 163
    .end local v3    # "fenceFd":I
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/camerax/advanced/api/ExtensionImage;->mPlanes:[Landroid/media/ImageReader$ImagePlane;

    invoke-virtual {v0}, [Landroid/media/ImageReader$ImagePlane;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/media/Image$Plane;

    return-object v0
.end method

.method public getScalingMode()I
    .locals 1

    .line 143
    invoke-virtual {p0}, Lcom/samsung/android/camerax/advanced/api/ExtensionImage;->throwISEIfImageIsInvalid()V

    .line 144
    iget v0, p0, Lcom/samsung/android/camerax/advanced/api/ExtensionImage;->mScalingMode:I

    return v0
.end method

.method public getTimestamp()J
    .locals 2

    .line 131
    invoke-virtual {p0}, Lcom/samsung/android/camerax/advanced/api/ExtensionImage;->throwISEIfImageIsInvalid()V

    .line 132
    iget-wide v0, p0, Lcom/samsung/android/camerax/advanced/api/ExtensionImage;->mTimestamp:J

    return-wide v0
.end method

.method public getTransform()I
    .locals 1

    .line 137
    invoke-virtual {p0}, Lcom/samsung/android/camerax/advanced/api/ExtensionImage;->throwISEIfImageIsInvalid()V

    .line 138
    iget v0, p0, Lcom/samsung/android/camerax/advanced/api/ExtensionImage;->mTransform:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .line 114
    invoke-virtual {p0}, Lcom/samsung/android/camerax/advanced/api/ExtensionImage;->throwISEIfImageIsInvalid()V

    .line 115
    iget v0, p0, Lcom/samsung/android/camerax/advanced/api/ExtensionImage;->mWidth:I

    return v0
.end method

.method public isAttachable()Z
    .locals 1

    .line 215
    const/4 v0, 0x1

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 225
    iget v0, p0, Lcom/samsung/android/camerax/advanced/api/ExtensionImage;->mFormat:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 226
    iget v0, p0, Lcom/samsung/android/camerax/advanced/api/ExtensionImage;->mWidth:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 227
    iget v0, p0, Lcom/samsung/android/camerax/advanced/api/ExtensionImage;->mHeight:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 228
    iget v0, p0, Lcom/samsung/android/camerax/advanced/api/ExtensionImage;->mTransform:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 229
    iget v0, p0, Lcom/samsung/android/camerax/advanced/api/ExtensionImage;->mScalingMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 230
    iget-wide v0, p0, Lcom/samsung/android/camerax/advanced/api/ExtensionImage;->mTimestamp:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 231
    iget v0, p0, Lcom/samsung/android/camerax/advanced/api/ExtensionImage;->mPlaneCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 232
    iget-object v0, p0, Lcom/samsung/android/camerax/advanced/api/ExtensionImage;->mCrop:Landroid/graphics/Rect;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 233
    iget-object v0, p0, Lcom/samsung/android/camerax/advanced/api/ExtensionImage;->mBuffer:Landroid/hardware/HardwareBuffer;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 234
    iget-object v0, p0, Lcom/samsung/android/camerax/advanced/api/ExtensionImage;->mFence:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 235
    return-void
.end method
