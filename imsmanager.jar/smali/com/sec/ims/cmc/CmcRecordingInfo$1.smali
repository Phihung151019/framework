.class Lcom/sec/ims/cmc/CmcRecordingInfo$1;
.super Ljava/lang/Object;
.source "CmcRecordingInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/ims/cmc/CmcRecordingInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/sec/ims/cmc/CmcRecordingInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/sec/ims/cmc/CmcRecordingInfo;
    .locals 0

    .line 165
    new-instance p0, Lcom/sec/ims/cmc/CmcRecordingInfo;

    invoke-direct {p0, p1}, Lcom/sec/ims/cmc/CmcRecordingInfo;-><init>(Landroid/os/Parcel;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 163
    invoke-virtual {p0, p1}, Lcom/sec/ims/cmc/CmcRecordingInfo$1;->createFromParcel(Landroid/os/Parcel;)Lcom/sec/ims/cmc/CmcRecordingInfo;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Lcom/sec/ims/cmc/CmcRecordingInfo;
    .locals 0

    .line 169
    new-array p0, p1, [Lcom/sec/ims/cmc/CmcRecordingInfo;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 163
    invoke-virtual {p0, p1}, Lcom/sec/ims/cmc/CmcRecordingInfo$1;->newArray(I)[Lcom/sec/ims/cmc/CmcRecordingInfo;

    move-result-object p0

    return-object p0
.end method
