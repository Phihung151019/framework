.class Lorg/codeaurora/internal/UpperLayerIndInfo$1;
.super Ljava/lang/Object;
.source "UpperLayerIndInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/codeaurora/internal/UpperLayerIndInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .locals 0

    .line 79
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

    .line 79
    invoke-virtual {p0, p1}, Lorg/codeaurora/internal/UpperLayerIndInfo$1;->createFromParcel(Landroid/os/Parcel;)Lorg/codeaurora/internal/UpperLayerIndInfo;

    move-result-object p1

    return-object p1
.end method

.method public blacklist createFromParcel(Landroid/os/Parcel;)Lorg/codeaurora/internal/UpperLayerIndInfo;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 81
    new-instance v0, Lorg/codeaurora/internal/UpperLayerIndInfo;

    invoke-direct {v0, p1}, Lorg/codeaurora/internal/UpperLayerIndInfo;-><init>(Landroid/os/Parcel;)V

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

    .line 79
    invoke-virtual {p0, p1}, Lorg/codeaurora/internal/UpperLayerIndInfo$1;->newArray(I)[Lorg/codeaurora/internal/UpperLayerIndInfo;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Lorg/codeaurora/internal/UpperLayerIndInfo;
    .locals 1
    .param p1, "size"    # I

    .line 85
    new-array v0, p1, [Lorg/codeaurora/internal/UpperLayerIndInfo;

    return-object v0
.end method
