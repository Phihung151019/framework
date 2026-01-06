.class Lcom/samsung/android/psitrackersdk/framework/SemPSIAvailableMem$1;
.super Ljava/lang/Object;
.source "SemPSIAvailableMem.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/psitrackersdk/framework/SemPSIAvailableMem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/samsung/android/psitrackersdk/framework/SemPSIAvailableMem;
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .line 24
    new-instance v0, Lcom/samsung/android/psitrackersdk/framework/SemPSIAvailableMem;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/samsung/android/psitrackersdk/framework/SemPSIAvailableMem;-><init>(Landroid/os/Parcel;Lcom/samsung/android/psitrackersdk/framework/SemPSIAvailableMem-IA;)V

    return-object v0
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

    .line 22
    invoke-virtual {p0, p1}, Lcom/samsung/android/psitrackersdk/framework/SemPSIAvailableMem$1;->createFromParcel(Landroid/os/Parcel;)Lcom/samsung/android/psitrackersdk/framework/SemPSIAvailableMem;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/samsung/android/psitrackersdk/framework/SemPSIAvailableMem;
    .locals 1
    .param p1, "size"    # I

    .line 28
    new-array v0, p1, [Lcom/samsung/android/psitrackersdk/framework/SemPSIAvailableMem;

    return-object v0
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

    .line 22
    invoke-virtual {p0, p1}, Lcom/samsung/android/psitrackersdk/framework/SemPSIAvailableMem$1;->newArray(I)[Lcom/samsung/android/psitrackersdk/framework/SemPSIAvailableMem;

    move-result-object p1

    return-object p1
.end method
