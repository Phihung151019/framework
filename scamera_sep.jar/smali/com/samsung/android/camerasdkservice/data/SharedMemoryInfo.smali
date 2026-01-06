.class public Lcom/samsung/android/camerasdkservice/data/SharedMemoryInfo;
.super Ljava/lang/Object;
.source "SharedMemoryInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/camerasdkservice/data/SharedMemoryInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final MEMORY_FILE_NAME:Ljava/lang/String; = "CameraSDK"


# instance fields
.field private mMapping:Ljava/nio/ByteBuffer;

.field private mSharedMemory:Landroid/os/SharedMemory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 59
    new-instance v0, Lcom/samsung/android/camerasdkservice/data/SharedMemoryInfo$1;

    invoke-direct {v0}, Lcom/samsung/android/camerasdkservice/data/SharedMemoryInfo$1;-><init>()V

    sput-object v0, Lcom/samsung/android/camerasdkservice/data/SharedMemoryInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "length"    # I

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    :try_start_0
    const-string v0, "CameraSDK"

    invoke-static {v0, p1}, Landroid/os/SharedMemory;->create(Ljava/lang/String;I)Landroid/os/SharedMemory;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/camerasdkservice/data/SharedMemoryInfo;->mSharedMemory:Landroid/os/SharedMemory;

    .line 32
    iget-object v0, p0, Lcom/samsung/android/camerasdkservice/data/SharedMemoryInfo;->mSharedMemory:Landroid/os/SharedMemory;

    invoke-virtual {v0}, Landroid/os/SharedMemory;->mapReadWrite()Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/camerasdkservice/data/SharedMemoryInfo;->mMapping:Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    goto :goto_0

    .line 34
    :catch_0
    move-exception v0

    .line 35
    .local v0, "e":Landroid/system/ErrnoException;
    invoke-virtual {v0}, Landroid/system/ErrnoException;->printStackTrace()V

    .line 37
    .end local v0    # "e":Landroid/system/ErrnoException;
    :goto_0
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const-class v0, Landroid/os/SharedMemory;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/os/SharedMemory;

    iput-object v0, p0, Lcom/samsung/android/camerasdkservice/data/SharedMemoryInfo;->mSharedMemory:Landroid/os/SharedMemory;

    .line 48
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/camerasdkservice/data/SharedMemoryInfo;->mSharedMemory:Landroid/os/SharedMemory;

    invoke-virtual {v0}, Landroid/os/SharedMemory;->mapReadWrite()Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/camerasdkservice/data/SharedMemoryInfo;->mMapping:Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    goto :goto_0

    .line 49
    :catch_0
    move-exception v0

    .line 50
    .local v0, "e":Landroid/system/ErrnoException;
    invoke-virtual {v0}, Landroid/system/ErrnoException;->printStackTrace()V

    .line 52
    .end local v0    # "e":Landroid/system/ErrnoException;
    :goto_0
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 168
    invoke-virtual {p0}, Lcom/samsung/android/camerasdkservice/data/SharedMemoryInfo;->deactivate()V

    .line 169
    iget-object v0, p0, Lcom/samsung/android/camerasdkservice/data/SharedMemoryInfo;->mSharedMemory:Landroid/os/SharedMemory;

    if-eqz v0, :cond_0

    .line 170
    iget-object v0, p0, Lcom/samsung/android/camerasdkservice/data/SharedMemoryInfo;->mSharedMemory:Landroid/os/SharedMemory;

    invoke-virtual {v0}, Landroid/os/SharedMemory;->close()V

    .line 172
    :cond_0
    return-void
.end method

.method deactivate()V
    .locals 1

    .line 180
    iget-object v0, p0, Lcom/samsung/android/camerasdkservice/data/SharedMemoryInfo;->mMapping:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_0

    .line 181
    iget-object v0, p0, Lcom/samsung/android/camerasdkservice/data/SharedMemoryInfo;->mMapping:Ljava/nio/ByteBuffer;

    invoke-static {v0}, Landroid/os/SharedMemory;->unmap(Ljava/nio/ByteBuffer;)V

    .line 182
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/camerasdkservice/data/SharedMemoryInfo;->mMapping:Ljava/nio/ByteBuffer;

    .line 184
    :cond_0
    return-void
.end method

.method public describeContents()I
    .locals 1

    .line 153
    const/4 v0, 0x0

    return v0
.end method

.method public getSharedMemory()Landroid/os/SharedMemory;
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/samsung/android/camerasdkservice/data/SharedMemoryInfo;->mSharedMemory:Landroid/os/SharedMemory;

    return-object v0
.end method

.method public getSharedMemoryMap()Ljava/nio/ByteBuffer;
    .locals 1

    .line 119
    iget-object v0, p0, Lcom/samsung/android/camerasdkservice/data/SharedMemoryInfo;->mMapping:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public readBytes([BIII)I
    .locals 1
    .param p1, "buffer"    # [B
    .param p2, "srcOffset"    # I
    .param p3, "destOffset"    # I
    .param p4, "count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 105
    iget-object v0, p0, Lcom/samsung/android/camerasdkservice/data/SharedMemoryInfo;->mMapping:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/samsung/android/camerasdkservice/data/SharedMemoryInfo;->mMapping:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 107
    iget-object v0, p0, Lcom/samsung/android/camerasdkservice/data/SharedMemoryInfo;->mMapping:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1, p3, p4}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 109
    :cond_0
    return p4
.end method

.method public setSharedMemory(Landroid/os/SharedMemory;)V
    .locals 0
    .param p1, "sharedMemory"    # Landroid/os/SharedMemory;

    .line 89
    iput-object p1, p0, Lcom/samsung/android/camerasdkservice/data/SharedMemoryInfo;->mSharedMemory:Landroid/os/SharedMemory;

    .line 90
    return-void
.end method

.method public writeBytes([BIII)V
    .locals 1
    .param p1, "buffer"    # [B
    .param p2, "srcOffset"    # I
    .param p3, "destOffset"    # I
    .param p4, "count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 134
    iget-object v0, p0, Lcom/samsung/android/camerasdkservice/data/SharedMemoryInfo;->mMapping:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_0

    .line 135
    iget-object v0, p0, Lcom/samsung/android/camerasdkservice/data/SharedMemoryInfo;->mMapping:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 136
    iget-object v0, p0, Lcom/samsung/android/camerasdkservice/data/SharedMemoryInfo;->mMapping:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1, p2, p4}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 138
    :cond_0
    return-void
.end method

.method public writeBytesBuffer(Ljava/nio/ByteBuffer;)V
    .locals 1
    .param p1, "src"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 148
    iget-object v0, p0, Lcom/samsung/android/camerasdkservice/data/SharedMemoryInfo;->mMapping:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 149
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 159
    iget-object v0, p0, Lcom/samsung/android/camerasdkservice/data/SharedMemoryInfo;->mSharedMemory:Landroid/os/SharedMemory;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 160
    return-void
.end method
