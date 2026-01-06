.class Lvendor/samsung/frameworks/codecsolution/SehVideoRecordingParameter$1;
.super Ljava/lang/Object;
.source "qb/104190634 8f28b0c0f0c31eb03af3bb61eb930c39e4f7c5f0b56428f61295e887e863ee7f"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvendor/samsung/frameworks/codecsolution/SehVideoRecordingParameter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lvendor/samsung/frameworks/codecsolution/SehVideoRecordingParameter;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
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

    .line 1
    invoke-virtual {p0, p1}, Lvendor/samsung/frameworks/codecsolution/SehVideoRecordingParameter$1;->createFromParcel(Landroid/os/Parcel;)Lvendor/samsung/frameworks/codecsolution/SehVideoRecordingParameter;

    move-result-object p0

    return-object p0
.end method

.method public createFromParcel(Landroid/os/Parcel;)Lvendor/samsung/frameworks/codecsolution/SehVideoRecordingParameter;
    .locals 0

    .line 2
    new-instance p0, Lvendor/samsung/frameworks/codecsolution/SehVideoRecordingParameter;

    invoke-direct {p0}, Lvendor/samsung/frameworks/codecsolution/SehVideoRecordingParameter;-><init>()V

    .line 3
    invoke-virtual {p0, p1}, Lvendor/samsung/frameworks/codecsolution/SehVideoRecordingParameter;->readFromParcel(Landroid/os/Parcel;)V

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

    .line 1
    invoke-virtual {p0, p1}, Lvendor/samsung/frameworks/codecsolution/SehVideoRecordingParameter$1;->newArray(I)[Lvendor/samsung/frameworks/codecsolution/SehVideoRecordingParameter;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Lvendor/samsung/frameworks/codecsolution/SehVideoRecordingParameter;
    .locals 0

    .line 2
    new-array p0, p1, [Lvendor/samsung/frameworks/codecsolution/SehVideoRecordingParameter;

    return-object p0
.end method
