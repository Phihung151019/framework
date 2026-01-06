.class Lcom/samsung/android/mcf/ranging/McfUWBRangingData$1;
.super Ljava/lang/Object;
.source "McfUWBRangingData.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/mcf/ranging/McfUWBRangingData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/samsung/android/mcf/ranging/McfUWBRangingData;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/samsung/android/mcf/ranging/McfUWBRangingData;
    .locals 2
    .param p1, "source"    # Landroid/os/Parcel;

    .line 81
    new-instance v0, Lcom/samsung/android/mcf/ranging/McfUWBRangingData;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/samsung/android/mcf/ranging/McfUWBRangingData;-><init>(Landroid/os/Parcel;Lcom/samsung/android/mcf/ranging/McfUWBRangingData$1;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 78
    invoke-virtual {p0, p1}, Lcom/samsung/android/mcf/ranging/McfUWBRangingData$1;->createFromParcel(Landroid/os/Parcel;)Lcom/samsung/android/mcf/ranging/McfUWBRangingData;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/samsung/android/mcf/ranging/McfUWBRangingData;
    .locals 1
    .param p1, "size"    # I

    .line 86
    new-array v0, p1, [Lcom/samsung/android/mcf/ranging/McfUWBRangingData;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 78
    invoke-virtual {p0, p1}, Lcom/samsung/android/mcf/ranging/McfUWBRangingData$1;->newArray(I)[Lcom/samsung/android/mcf/ranging/McfUWBRangingData;

    move-result-object p1

    return-object p1
.end method
