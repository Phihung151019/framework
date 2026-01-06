.class public Lcom/samsung/android/camerax/advanced/api/ExtensionTotalCaptureResult;
.super Ljava/lang/Object;
.source "ExtensionTotalCaptureResult.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/camerax/advanced/api/ExtensionTotalCaptureResult;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mCameraId:Ljava/lang/String;

.field private final mFrameNumber:J

.field private final mPartialResults:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/camerax/advanced/api/ExtensionCaptureResult;",
            ">;"
        }
    .end annotation
.end field

.field private final mPhysicalCaptureResults:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/hardware/camera2/impl/PhysicalCaptureResultInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mRequest:Landroid/hardware/camera2/CaptureRequest;

.field private final mResults:Landroid/hardware/camera2/impl/CameraMetadataNative;

.field private final mSequenceId:I

.field private final mSessionId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 33
    const-class v0, Lcom/samsung/android/camerax/advanced/api/ExtensionTotalCaptureResult;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/camerax/advanced/api/ExtensionTotalCaptureResult;->TAG:Ljava/lang/String;

    .line 77
    new-instance v0, Lcom/samsung/android/camerax/advanced/api/ExtensionTotalCaptureResult$1;

    invoke-direct {v0}, Lcom/samsung/android/camerax/advanced/api/ExtensionTotalCaptureResult$1;-><init>()V

    sput-object v0, Lcom/samsung/android/camerax/advanced/api/ExtensionTotalCaptureResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/hardware/camera2/TotalCaptureResult;)V
    .locals 7
    .param p1, "totalCaptureResult"    # Landroid/hardware/camera2/TotalCaptureResult;

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/camerax/advanced/api/ExtensionTotalCaptureResult;->mPartialResults:Ljava/util/List;

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/camerax/advanced/api/ExtensionTotalCaptureResult;->mPhysicalCaptureResults:Ljava/util/List;

    .line 45
    invoke-virtual {p1}, Landroid/hardware/camera2/TotalCaptureResult;->getCameraId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/camerax/advanced/api/ExtensionTotalCaptureResult;->mCameraId:Ljava/lang/String;

    .line 46
    invoke-virtual {p1}, Landroid/hardware/camera2/TotalCaptureResult;->getNativeMetadata()Landroid/hardware/camera2/impl/CameraMetadataNative;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/camerax/advanced/api/ExtensionTotalCaptureResult;->mResults:Landroid/hardware/camera2/impl/CameraMetadataNative;

    .line 47
    invoke-virtual {p1}, Landroid/hardware/camera2/TotalCaptureResult;->getRequest()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/camerax/advanced/api/ExtensionTotalCaptureResult;->mRequest:Landroid/hardware/camera2/CaptureRequest;

    .line 48
    invoke-virtual {p1}, Landroid/hardware/camera2/TotalCaptureResult;->getSequenceId()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/camerax/advanced/api/ExtensionTotalCaptureResult;->mSequenceId:I

    .line 49
    invoke-virtual {p1}, Landroid/hardware/camera2/TotalCaptureResult;->getFrameNumber()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/camerax/advanced/api/ExtensionTotalCaptureResult;->mFrameNumber:J

    .line 50
    invoke-virtual {p1}, Landroid/hardware/camera2/TotalCaptureResult;->getSessionId()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/camerax/advanced/api/ExtensionTotalCaptureResult;->mSessionId:I

    .line 51
    invoke-virtual {p1}, Landroid/hardware/camera2/TotalCaptureResult;->getPartialResults()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/camera2/CaptureResult;

    .line 52
    .local v1, "partial":Landroid/hardware/camera2/CaptureResult;
    iget-object v2, p0, Lcom/samsung/android/camerax/advanced/api/ExtensionTotalCaptureResult;->mPartialResults:Ljava/util/List;

    new-instance v3, Lcom/samsung/android/camerax/advanced/api/ExtensionCaptureResult;

    invoke-direct {v3, v1}, Lcom/samsung/android/camerax/advanced/api/ExtensionCaptureResult;-><init>(Landroid/hardware/camera2/CaptureResult;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 53
    .end local v1    # "partial":Landroid/hardware/camera2/CaptureResult;
    goto :goto_0

    .line 54
    :cond_0
    nop

    .line 55
    invoke-virtual {p1}, Landroid/hardware/camera2/TotalCaptureResult;->getPhysicalCameraTotalResults()Ljava/util/Map;

    move-result-object v0

    .line 56
    .local v0, "physicalResults":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/hardware/camera2/TotalCaptureResult;>;"
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/camera2/TotalCaptureResult;

    .line 57
    .local v2, "physicalResult":Landroid/hardware/camera2/TotalCaptureResult;
    iget-object v3, p0, Lcom/samsung/android/camerax/advanced/api/ExtensionTotalCaptureResult;->mPhysicalCaptureResults:Ljava/util/List;

    new-instance v4, Landroid/hardware/camera2/impl/PhysicalCaptureResultInfo;

    invoke-virtual {v2}, Landroid/hardware/camera2/TotalCaptureResult;->getCameraId()Ljava/lang/String;

    move-result-object v5

    .line 58
    invoke-virtual {v2}, Landroid/hardware/camera2/TotalCaptureResult;->getNativeMetadata()Landroid/hardware/camera2/impl/CameraMetadataNative;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Landroid/hardware/camera2/impl/PhysicalCaptureResultInfo;-><init>(Ljava/lang/String;Landroid/hardware/camera2/impl/CameraMetadataNative;)V

    .line 57
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 59
    .end local v2    # "physicalResult":Landroid/hardware/camera2/TotalCaptureResult;
    goto :goto_1

    .line 60
    :cond_1
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "parcel"    # Landroid/os/Parcel;

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/camerax/advanced/api/ExtensionTotalCaptureResult;->mPartialResults:Ljava/util/List;

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/camerax/advanced/api/ExtensionTotalCaptureResult;->mPhysicalCaptureResults:Ljava/util/List;

    .line 63
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/camerax/advanced/api/ExtensionTotalCaptureResult;->mCameraId:Ljava/lang/String;

    .line 64
    const-class v0, Landroid/hardware/camera2/impl/CameraMetadataNative;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-class v1, Landroid/hardware/camera2/impl/CameraMetadataNative;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/impl/CameraMetadataNative;

    iput-object v0, p0, Lcom/samsung/android/camerax/advanced/api/ExtensionTotalCaptureResult;->mResults:Landroid/hardware/camera2/impl/CameraMetadataNative;

    .line 66
    const-class v0, Landroid/hardware/camera2/CaptureRequest;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-class v1, Landroid/hardware/camera2/CaptureRequest;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/CaptureRequest;

    iput-object v0, p0, Lcom/samsung/android/camerax/advanced/api/ExtensionTotalCaptureResult;->mRequest:Landroid/hardware/camera2/CaptureRequest;

    .line 68
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/camerax/advanced/api/ExtensionTotalCaptureResult;->mSequenceId:I

    .line 69
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/camerax/advanced/api/ExtensionTotalCaptureResult;->mFrameNumber:J

    .line 70
    iget-object v0, p0, Lcom/samsung/android/camerax/advanced/api/ExtensionTotalCaptureResult;->mPartialResults:Ljava/util/List;

    const-class v1, Lcom/samsung/android/camerax/advanced/api/ExtensionCaptureResult;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-class v2, Lcom/samsung/android/camerax/advanced/api/ExtensionCaptureResult;

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Parcel;->readParcelableList(Ljava/util/List;Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/util/List;

    .line 72
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/camerax/advanced/api/ExtensionTotalCaptureResult;->mSessionId:I

    .line 73
    iget-object v0, p0, Lcom/samsung/android/camerax/advanced/api/ExtensionTotalCaptureResult;->mPhysicalCaptureResults:Ljava/util/List;

    const-class v1, Landroid/hardware/camera2/impl/PhysicalCaptureResultInfo;

    .line 74
    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-class v2, Landroid/hardware/camera2/impl/PhysicalCaptureResultInfo;

    .line 73
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Parcel;->readParcelableList(Ljava/util/List;Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/util/List;

    .line 75
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 92
    const/4 v0, 0x0

    return v0
.end method

.method public getTotalCaptureResult()Landroid/hardware/camera2/TotalCaptureResult;
    .locals 11

    .line 108
    const/4 v0, 0x0

    new-array v0, v0, [Landroid/hardware/camera2/impl/PhysicalCaptureResultInfo;

    .line 109
    .local v0, "physicalResults":[Landroid/hardware/camera2/impl/PhysicalCaptureResultInfo;
    iget-object v1, p0, Lcom/samsung/android/camerax/advanced/api/ExtensionTotalCaptureResult;->mPhysicalCaptureResults:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 110
    iget-object v1, p0, Lcom/samsung/android/camerax/advanced/api/ExtensionTotalCaptureResult;->mPhysicalCaptureResults:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    new-array v0, v1, [Landroid/hardware/camera2/impl/PhysicalCaptureResultInfo;

    .line 111
    iget-object v1, p0, Lcom/samsung/android/camerax/advanced/api/ExtensionTotalCaptureResult;->mPhysicalCaptureResults:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, [Landroid/hardware/camera2/impl/PhysicalCaptureResultInfo;

    move-object v10, v0

    goto :goto_0

    .line 109
    :cond_0
    move-object v10, v0

    .line 113
    .end local v0    # "physicalResults":[Landroid/hardware/camera2/impl/PhysicalCaptureResultInfo;
    .local v10, "physicalResults":[Landroid/hardware/camera2/impl/PhysicalCaptureResultInfo;
    :goto_0
    new-instance v8, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/samsung/android/camerax/advanced/api/ExtensionTotalCaptureResult;->mPartialResults:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v8, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 114
    .local v8, "partials":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/camera2/CaptureResult;>;"
    iget-object v0, p0, Lcom/samsung/android/camerax/advanced/api/ExtensionTotalCaptureResult;->mPartialResults:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/camerax/advanced/api/ExtensionCaptureResult;

    .line 115
    .local v1, "extensionResult":Lcom/samsung/android/camerax/advanced/api/ExtensionCaptureResult;
    invoke-virtual {v1}, Lcom/samsung/android/camerax/advanced/api/ExtensionCaptureResult;->getCaptureResult()Landroid/hardware/camera2/CaptureResult;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 116
    .end local v1    # "extensionResult":Lcom/samsung/android/camerax/advanced/api/ExtensionCaptureResult;
    goto :goto_1

    .line 117
    :cond_1
    new-instance v1, Landroid/hardware/camera2/TotalCaptureResult;

    iget-object v2, p0, Lcom/samsung/android/camerax/advanced/api/ExtensionTotalCaptureResult;->mCameraId:Ljava/lang/String;

    iget-object v3, p0, Lcom/samsung/android/camerax/advanced/api/ExtensionTotalCaptureResult;->mResults:Landroid/hardware/camera2/impl/CameraMetadataNative;

    iget-object v4, p0, Lcom/samsung/android/camerax/advanced/api/ExtensionTotalCaptureResult;->mRequest:Landroid/hardware/camera2/CaptureRequest;

    iget v5, p0, Lcom/samsung/android/camerax/advanced/api/ExtensionTotalCaptureResult;->mSequenceId:I

    iget-wide v6, p0, Lcom/samsung/android/camerax/advanced/api/ExtensionTotalCaptureResult;->mFrameNumber:J

    iget v9, p0, Lcom/samsung/android/camerax/advanced/api/ExtensionTotalCaptureResult;->mSessionId:I

    invoke-direct/range {v1 .. v10}, Landroid/hardware/camera2/TotalCaptureResult;-><init>(Ljava/lang/String;Landroid/hardware/camera2/impl/CameraMetadataNative;Landroid/hardware/camera2/CaptureRequest;IJLjava/util/List;I[Landroid/hardware/camera2/impl/PhysicalCaptureResultInfo;)V

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 97
    iget-object v0, p0, Lcom/samsung/android/camerax/advanced/api/ExtensionTotalCaptureResult;->mCameraId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 98
    iget-object v0, p0, Lcom/samsung/android/camerax/advanced/api/ExtensionTotalCaptureResult;->mResults:Landroid/hardware/camera2/impl/CameraMetadataNative;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 99
    iget-object v0, p0, Lcom/samsung/android/camerax/advanced/api/ExtensionTotalCaptureResult;->mRequest:Landroid/hardware/camera2/CaptureRequest;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 100
    iget v0, p0, Lcom/samsung/android/camerax/advanced/api/ExtensionTotalCaptureResult;->mSequenceId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 101
    iget-wide v0, p0, Lcom/samsung/android/camerax/advanced/api/ExtensionTotalCaptureResult;->mFrameNumber:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 102
    iget-object v0, p0, Lcom/samsung/android/camerax/advanced/api/ExtensionTotalCaptureResult;->mPartialResults:Ljava/util/List;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelableList(Ljava/util/List;I)V

    .line 103
    iget v0, p0, Lcom/samsung/android/camerax/advanced/api/ExtensionTotalCaptureResult;->mSessionId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 104
    iget-object v0, p0, Lcom/samsung/android/camerax/advanced/api/ExtensionTotalCaptureResult;->mPhysicalCaptureResults:Ljava/util/List;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelableList(Ljava/util/List;I)V

    .line 105
    return-void
.end method
