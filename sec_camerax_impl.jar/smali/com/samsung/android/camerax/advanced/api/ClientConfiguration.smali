.class public Lcom/samsung/android/camerax/advanced/api/ClientConfiguration;
.super Ljava/lang/Object;
.source "ClientConfiguration.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/camerax/advanced/api/ClientConfiguration$ExtensionId;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/camerax/advanced/api/ClientConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mCameraId:Ljava/lang/String;

.field private final mCaptureFormat:I

.field private final mCaptureSize:Landroid/util/Size;

.field private final mCaptureSurface:Landroid/view/Surface;

.field private final mExtensionId:I

.field private final mPreviewFormat:I

.field private final mPreviewSize:Landroid/util/Size;

.field private final mPreviewSurface:Landroid/view/Surface;

.field private final mToken:Landroid/os/IBinder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 33
    const-class v0, Lcom/samsung/android/camerax/advanced/api/ClientConfiguration;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/camerax/advanced/api/ClientConfiguration;->TAG:Ljava/lang/String;

    .line 83
    new-instance v0, Lcom/samsung/android/camerax/advanced/api/ClientConfiguration$1;

    invoke-direct {v0}, Lcom/samsung/android/camerax/advanced/api/ClientConfiguration$1;-><init>()V

    sput-object v0, Lcom/samsung/android/camerax/advanced/api/ClientConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/camerax/advanced/api/ClientConfiguration;->mToken:Landroid/os/IBinder;

    .line 73
    const-class v0, Landroid/view/Surface;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-class v1, Landroid/view/Surface;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/Surface;

    iput-object v0, p0, Lcom/samsung/android/camerax/advanced/api/ClientConfiguration;->mPreviewSurface:Landroid/view/Surface;

    .line 74
    const-class v0, Landroid/view/Surface;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-class v1, Landroid/view/Surface;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/Surface;

    iput-object v0, p0, Lcom/samsung/android/camerax/advanced/api/ClientConfiguration;->mCaptureSurface:Landroid/view/Surface;

    .line 75
    invoke-virtual {p1}, Landroid/os/Parcel;->readSize()Landroid/util/Size;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/camerax/advanced/api/ClientConfiguration;->mPreviewSize:Landroid/util/Size;

    .line 76
    invoke-virtual {p1}, Landroid/os/Parcel;->readSize()Landroid/util/Size;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/camerax/advanced/api/ClientConfiguration;->mCaptureSize:Landroid/util/Size;

    .line 77
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/camerax/advanced/api/ClientConfiguration;->mPreviewFormat:I

    .line 78
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/camerax/advanced/api/ClientConfiguration;->mCaptureFormat:I

    .line 79
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/camerax/advanced/api/ClientConfiguration;->mExtensionId:I

    .line 80
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/camerax/advanced/api/ClientConfiguration;->mCameraId:Ljava/lang/String;

    .line 81
    return-void
.end method

.method public constructor <init>(Landroid/view/Surface;Landroid/util/Size;ILandroid/view/Surface;Landroid/util/Size;IILjava/lang/String;)V
    .locals 1
    .param p1, "previewSurface"    # Landroid/view/Surface;
    .param p2, "previewSize"    # Landroid/util/Size;
    .param p3, "previewFormat"    # I
    .param p4, "captureSurface"    # Landroid/view/Surface;
    .param p5, "captureSize"    # Landroid/util/Size;
    .param p6, "captureFormat"    # I
    .param p7, "extensionId"    # I
    .param p8, "cameraId"    # Ljava/lang/String;

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/camerax/advanced/api/ClientConfiguration;->mToken:Landroid/os/IBinder;

    .line 61
    iput-object p1, p0, Lcom/samsung/android/camerax/advanced/api/ClientConfiguration;->mPreviewSurface:Landroid/view/Surface;

    .line 62
    iput-object p4, p0, Lcom/samsung/android/camerax/advanced/api/ClientConfiguration;->mCaptureSurface:Landroid/view/Surface;

    .line 63
    iput-object p2, p0, Lcom/samsung/android/camerax/advanced/api/ClientConfiguration;->mPreviewSize:Landroid/util/Size;

    .line 64
    iput-object p5, p0, Lcom/samsung/android/camerax/advanced/api/ClientConfiguration;->mCaptureSize:Landroid/util/Size;

    .line 65
    iput p3, p0, Lcom/samsung/android/camerax/advanced/api/ClientConfiguration;->mPreviewFormat:I

    .line 66
    iput p6, p0, Lcom/samsung/android/camerax/advanced/api/ClientConfiguration;->mCaptureFormat:I

    .line 67
    iput p7, p0, Lcom/samsung/android/camerax/advanced/api/ClientConfiguration;->mExtensionId:I

    .line 68
    iput-object p8, p0, Lcom/samsung/android/camerax/advanced/api/ClientConfiguration;->mCameraId:Ljava/lang/String;

    .line 69
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 97
    const/4 v0, 0x0

    return v0
.end method

.method public getCameraId()Ljava/lang/String;
    .locals 1

    .line 153
    iget-object v0, p0, Lcom/samsung/android/camerax/advanced/api/ClientConfiguration;->mCameraId:Ljava/lang/String;

    return-object v0
.end method

.method public getCaptureFormat()I
    .locals 1

    .line 143
    iget v0, p0, Lcom/samsung/android/camerax/advanced/api/ClientConfiguration;->mCaptureFormat:I

    return v0
.end method

.method public getCaptureSize()Landroid/util/Size;
    .locals 1

    .line 135
    iget-object v0, p0, Lcom/samsung/android/camerax/advanced/api/ClientConfiguration;->mCaptureSize:Landroid/util/Size;

    return-object v0
.end method

.method public getCaptureSurface()Landroid/view/Surface;
    .locals 1

    .line 125
    iget-object v0, p0, Lcom/samsung/android/camerax/advanced/api/ClientConfiguration;->mCaptureSurface:Landroid/view/Surface;

    return-object v0
.end method

.method public getExtensionId()I
    .locals 1

    .line 148
    iget v0, p0, Lcom/samsung/android/camerax/advanced/api/ClientConfiguration;->mExtensionId:I

    return v0
.end method

.method public getPreviewFormat()I
    .locals 1

    .line 139
    iget v0, p0, Lcom/samsung/android/camerax/advanced/api/ClientConfiguration;->mPreviewFormat:I

    return v0
.end method

.method public getPreviewSize()Landroid/util/Size;
    .locals 1

    .line 130
    iget-object v0, p0, Lcom/samsung/android/camerax/advanced/api/ClientConfiguration;->mPreviewSize:Landroid/util/Size;

    return-object v0
.end method

.method public getPreviewSurface()Landroid/view/Surface;
    .locals 1

    .line 120
    iget-object v0, p0, Lcom/samsung/android/camerax/advanced/api/ClientConfiguration;->mPreviewSurface:Landroid/view/Surface;

    return-object v0
.end method

.method public getToken()Landroid/os/IBinder;
    .locals 1

    .line 115
    iget-object v0, p0, Lcom/samsung/android/camerax/advanced/api/ClientConfiguration;->mToken:Landroid/os/IBinder;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 158
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ClientConfiguration extension = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/camerax/advanced/api/ClientConfiguration;->mExtensionId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", camera = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/camerax/advanced/api/ClientConfiguration;->mCameraId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", preview = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/camerax/advanced/api/ClientConfiguration;->mPreviewSurface:Landroid/view/Surface;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " (size = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/camerax/advanced/api/ClientConfiguration;->mPreviewSize:Landroid/util/Size;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", format = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, p0, Lcom/samsung/android/camerax/advanced/api/ClientConfiguration;->mPreviewFormat:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "), capture = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/samsung/android/camerax/advanced/api/ClientConfiguration;->mCaptureSurface:Landroid/view/Surface;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/camerax/advanced/api/ClientConfiguration;->mCaptureSize:Landroid/util/Size;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/camerax/advanced/api/ClientConfiguration;->mCaptureFormat:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 102
    iget-object v0, p0, Lcom/samsung/android/camerax/advanced/api/ClientConfiguration;->mToken:Landroid/os/IBinder;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 103
    iget-object v0, p0, Lcom/samsung/android/camerax/advanced/api/ClientConfiguration;->mPreviewSurface:Landroid/view/Surface;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 104
    iget-object v0, p0, Lcom/samsung/android/camerax/advanced/api/ClientConfiguration;->mCaptureSurface:Landroid/view/Surface;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 105
    iget-object v0, p0, Lcom/samsung/android/camerax/advanced/api/ClientConfiguration;->mPreviewSize:Landroid/util/Size;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSize(Landroid/util/Size;)V

    .line 106
    iget-object v0, p0, Lcom/samsung/android/camerax/advanced/api/ClientConfiguration;->mCaptureSize:Landroid/util/Size;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSize(Landroid/util/Size;)V

    .line 107
    iget v0, p0, Lcom/samsung/android/camerax/advanced/api/ClientConfiguration;->mPreviewFormat:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 108
    iget v0, p0, Lcom/samsung/android/camerax/advanced/api/ClientConfiguration;->mCaptureFormat:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 109
    iget v0, p0, Lcom/samsung/android/camerax/advanced/api/ClientConfiguration;->mExtensionId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 110
    iget-object v0, p0, Lcom/samsung/android/camerax/advanced/api/ClientConfiguration;->mCameraId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 111
    return-void
.end method
