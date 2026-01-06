.class public Lcom/samsung/android/camerasdkservice/data/CaptureResultConfig;
.super Ljava/lang/Object;
.source "CaptureResultConfig.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/camerasdkservice/data/CaptureResultConfig;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private metadataNative:Landroid/hardware/camera2/impl/CameraMetadataNative;

.field private sequenceId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 18
    new-instance v0, Lcom/samsung/android/camerasdkservice/data/CaptureResultConfig$1;

    invoke-direct {v0}, Lcom/samsung/android/camerasdkservice/data/CaptureResultConfig$1;-><init>()V

    sput-object v0, Lcom/samsung/android/camerasdkservice/data/CaptureResultConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/camerasdkservice/data/CaptureResultConfig;->sequenceId:I

    .line 52
    const-class v0, Landroid/hardware/camera2/impl/CameraMetadataNative;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/impl/CameraMetadataNative;

    iput-object v0, p0, Lcom/samsung/android/camerasdkservice/data/CaptureResultConfig;->metadataNative:Landroid/hardware/camera2/impl/CameraMetadataNative;

    .line 53
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 98
    const/4 v0, 0x0

    return v0
.end method

.method public getMetadataNative()Landroid/hardware/camera2/impl/CameraMetadataNative;
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/samsung/android/camerasdkservice/data/CaptureResultConfig;->metadataNative:Landroid/hardware/camera2/impl/CameraMetadataNative;

    return-object v0
.end method

.method public getSequenceId()I
    .locals 1

    .line 82
    iget v0, p0, Lcom/samsung/android/camerasdkservice/data/CaptureResultConfig;->sequenceId:I

    return v0
.end method

.method public setMetadataNative(Landroid/hardware/camera2/impl/CameraMetadataNative;)V
    .locals 0
    .param p1, "metadataNative"    # Landroid/hardware/camera2/impl/CameraMetadataNative;

    .line 72
    iput-object p1, p0, Lcom/samsung/android/camerasdkservice/data/CaptureResultConfig;->metadataNative:Landroid/hardware/camera2/impl/CameraMetadataNative;

    .line 73
    return-void
.end method

.method public setSequenceId(I)V
    .locals 0
    .param p1, "sequenceId"    # I

    .line 92
    iput p1, p0, Lcom/samsung/android/camerasdkservice/data/CaptureResultConfig;->sequenceId:I

    .line 93
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 104
    iget v0, p0, Lcom/samsung/android/camerasdkservice/data/CaptureResultConfig;->sequenceId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 105
    iget-object v0, p0, Lcom/samsung/android/camerasdkservice/data/CaptureResultConfig;->metadataNative:Landroid/hardware/camera2/impl/CameraMetadataNative;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 106
    return-void
.end method
