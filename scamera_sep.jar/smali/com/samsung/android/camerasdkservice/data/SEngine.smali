.class public Lcom/samsung/android/camerasdkservice/data/SEngine;
.super Ljava/lang/Object;
.source "SEngine.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/camerasdkservice/data/SEngine;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mEngineId:I

.field private mEngineType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 10
    new-instance v0, Lcom/samsung/android/camerasdkservice/data/SEngine$1;

    invoke-direct {v0}, Lcom/samsung/android/camerasdkservice/data/SEngine$1;-><init>()V

    sput-object v0, Lcom/samsung/android/camerasdkservice/data/SEngine;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/camerasdkservice/data/SEngine;->mEngineId:I

    .line 33
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/camerasdkservice/data/SEngine;->mEngineType:I

    .line 34
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 74
    const/4 v0, 0x0

    return v0
.end method

.method public getEngineId()I
    .locals 1

    .line 42
    iget v0, p0, Lcom/samsung/android/camerasdkservice/data/SEngine;->mEngineId:I

    return v0
.end method

.method public getEngineType()I
    .locals 1

    .line 60
    iget v0, p0, Lcom/samsung/android/camerasdkservice/data/SEngine;->mEngineType:I

    return v0
.end method

.method public setEngineId(I)V
    .locals 0
    .param p1, "mEngineId"    # I

    .line 51
    iput p1, p0, Lcom/samsung/android/camerasdkservice/data/SEngine;->mEngineId:I

    .line 52
    return-void
.end method

.method public setEngineType(I)V
    .locals 0
    .param p1, "mEngineType"    # I

    .line 69
    iput p1, p0, Lcom/samsung/android/camerasdkservice/data/SEngine;->mEngineType:I

    .line 70
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 79
    iget v0, p0, Lcom/samsung/android/camerasdkservice/data/SEngine;->mEngineId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 80
    iget v0, p0, Lcom/samsung/android/camerasdkservice/data/SEngine;->mEngineType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 81
    return-void
.end method
