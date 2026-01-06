.class Lcom/samsung/wifi/x/android/hardware/wifi/NanFollowupReceivedInd$1;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/wifi/x/android/hardware/wifi/NanFollowupReceivedInd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/samsung/wifi/x/android/hardware/wifi/NanFollowupReceivedInd;",
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
.method public createFromParcel(Landroid/os/Parcel;)Lcom/samsung/wifi/x/android/hardware/wifi/NanFollowupReceivedInd;
    .locals 0

    .line 2
    new-instance p0, Lcom/samsung/wifi/x/android/hardware/wifi/NanFollowupReceivedInd;

    invoke-direct {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/NanFollowupReceivedInd;-><init>()V

    .line 3
    invoke-virtual {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/NanFollowupReceivedInd;->readFromParcel(Landroid/os/Parcel;)V

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

    .line 1
    invoke-virtual {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/NanFollowupReceivedInd$1;->createFromParcel(Landroid/os/Parcel;)Lcom/samsung/wifi/x/android/hardware/wifi/NanFollowupReceivedInd;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Lcom/samsung/wifi/x/android/hardware/wifi/NanFollowupReceivedInd;
    .locals 0

    .line 2
    new-array p0, p1, [Lcom/samsung/wifi/x/android/hardware/wifi/NanFollowupReceivedInd;

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
    invoke-virtual {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/NanFollowupReceivedInd$1;->newArray(I)[Lcom/samsung/wifi/x/android/hardware/wifi/NanFollowupReceivedInd;

    move-result-object p0

    return-object p0
.end method
