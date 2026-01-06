.class public Lcom/samsung/android/camerax/advanced/api/ExtensionCaptureResult;
.super Ljava/lang/Object;
.source "ExtensionCaptureResult.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/camerax/advanced/api/ExtensionCaptureResult;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mCameraId:Ljava/lang/String;

.field private final mFrameNumber:J

.field private final mRequest:Landroid/hardware/camera2/CaptureRequest;

.field private final mResults:Landroid/hardware/camera2/impl/CameraMetadataNative;

.field private final mSequenceId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 26
    const-class v0, Lcom/samsung/android/camerax/advanced/api/ExtensionCaptureResult;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/camerax/advanced/api/ExtensionCaptureResult;->TAG:Ljava/lang/String;

    .line 52
    new-instance v0, Lcom/samsung/android/camerax/advanced/api/ExtensionCaptureResult$1;

    invoke-direct {v0}, Lcom/samsung/android/camerax/advanced/api/ExtensionCaptureResult$1;-><init>()V

    sput-object v0, Lcom/samsung/android/camerax/advanced/api/ExtensionCaptureResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/hardware/camera2/CaptureResult;)V
    .locals 2
    .param p1, "captureResult"    # Landroid/hardware/camera2/CaptureResult;

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    invoke-virtual {p1}, Landroid/hardware/camera2/CaptureResult;->getCameraId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/camerax/advanced/api/ExtensionCaptureResult;->mCameraId:Ljava/lang/String;

    .line 36
    invoke-virtual {p1}, Landroid/hardware/camera2/CaptureResult;->getNativeMetadata()Landroid/hardware/camera2/impl/CameraMetadataNative;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/camerax/advanced/api/ExtensionCaptureResult;->mResults:Landroid/hardware/camera2/impl/CameraMetadataNative;

    .line 37
    invoke-virtual {p1}, Landroid/hardware/camera2/CaptureResult;->getRequest()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/camerax/advanced/api/ExtensionCaptureResult;->mRequest:Landroid/hardware/camera2/CaptureRequest;

    .line 38
    invoke-virtual {p1}, Landroid/hardware/camera2/CaptureResult;->getSequenceId()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/camerax/advanced/api/ExtensionCaptureResult;->mSequenceId:I

    .line 39
    invoke-virtual {p1}, Landroid/hardware/camera2/CaptureResult;->getFrameNumber()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/camerax/advanced/api/ExtensionCaptureResult;->mFrameNumber:J

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "parcel"    # Landroid/os/Parcel;

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/camerax/advanced/api/ExtensionCaptureResult;->mCameraId:Ljava/lang/String;

    .line 44
    const-class v0, Landroid/hardware/camera2/impl/CameraMetadataNative;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-class v1, Landroid/hardware/camera2/impl/CameraMetadataNative;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/impl/CameraMetadataNative;

    iput-object v0, p0, Lcom/samsung/android/camerax/advanced/api/ExtensionCaptureResult;->mResults:Landroid/hardware/camera2/impl/CameraMetadataNative;

    .line 46
    const-class v0, Landroid/hardware/camera2/CaptureRequest;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-class v1, Landroid/hardware/camera2/CaptureRequest;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/CaptureRequest;

    iput-object v0, p0, Lcom/samsung/android/camerax/advanced/api/ExtensionCaptureResult;->mRequest:Landroid/hardware/camera2/CaptureRequest;

    .line 48
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/camerax/advanced/api/ExtensionCaptureResult;->mSequenceId:I

    .line 49
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/camerax/advanced/api/ExtensionCaptureResult;->mFrameNumber:J

    .line 50
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 67
    const/4 v0, 0x0

    return v0
.end method

.method public getCaptureResult()Landroid/hardware/camera2/CaptureResult;
    .locals 7

    .line 80
    new-instance v0, Landroid/hardware/camera2/CaptureResult;

    iget-object v1, p0, Lcom/samsung/android/camerax/advanced/api/ExtensionCaptureResult;->mCameraId:Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/android/camerax/advanced/api/ExtensionCaptureResult;->mResults:Landroid/hardware/camera2/impl/CameraMetadataNative;

    iget-object v3, p0, Lcom/samsung/android/camerax/advanced/api/ExtensionCaptureResult;->mRequest:Landroid/hardware/camera2/CaptureRequest;

    iget v4, p0, Lcom/samsung/android/camerax/advanced/api/ExtensionCaptureResult;->mSequenceId:I

    iget-wide v5, p0, Lcom/samsung/android/camerax/advanced/api/ExtensionCaptureResult;->mFrameNumber:J

    invoke-direct/range {v0 .. v6}, Landroid/hardware/camera2/CaptureResult;-><init>(Ljava/lang/String;Landroid/hardware/camera2/impl/CameraMetadataNative;Landroid/hardware/camera2/CaptureRequest;IJ)V

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 72
    iget-object v0, p0, Lcom/samsung/android/camerax/advanced/api/ExtensionCaptureResult;->mCameraId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 73
    iget-object v0, p0, Lcom/samsung/android/camerax/advanced/api/ExtensionCaptureResult;->mResults:Landroid/hardware/camera2/impl/CameraMetadataNative;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 74
    iget-object v0, p0, Lcom/samsung/android/camerax/advanced/api/ExtensionCaptureResult;->mRequest:Landroid/hardware/camera2/CaptureRequest;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 75
    iget v0, p0, Lcom/samsung/android/camerax/advanced/api/ExtensionCaptureResult;->mSequenceId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 76
    iget-wide v0, p0, Lcom/samsung/android/camerax/advanced/api/ExtensionCaptureResult;->mFrameNumber:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 77
    return-void
.end method
