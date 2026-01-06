.class Lorg/codeaurora/internal/Status$1;
.super Ljava/lang/Object;
.source "Status.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/codeaurora/internal/Status;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .locals 0

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic whitelist createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 73
    invoke-virtual {p0, p1}, Lorg/codeaurora/internal/Status$1;->createFromParcel(Landroid/os/Parcel;)Lorg/codeaurora/internal/Status;

    move-result-object p1

    return-object p1
.end method

.method public blacklist createFromParcel(Landroid/os/Parcel;)Lorg/codeaurora/internal/Status;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 75
    new-instance v0, Lorg/codeaurora/internal/Status;

    invoke-direct {v0, p1}, Lorg/codeaurora/internal/Status;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic whitelist newArray(I)[Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 73
    invoke-virtual {p0, p1}, Lorg/codeaurora/internal/Status$1;->newArray(I)[Lorg/codeaurora/internal/Status;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Lorg/codeaurora/internal/Status;
    .locals 1
    .param p1, "size"    # I

    .line 79
    new-array v0, p1, [Lorg/codeaurora/internal/Status;

    return-object v0
.end method
