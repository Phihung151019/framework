.class public Lorg/codeaurora/internal/UpperLayerIndInfo;
.super Ljava/lang/Object;
.source "UpperLayerIndInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lorg/codeaurora/internal/UpperLayerIndInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist INVALID:I = -0x1

.field public static final blacklist PLMN_INFO_LIST_AVAILABLE:I = 0x1

.field public static final blacklist PLMN_INFO_LIST_UNAVAILABLE:I = 0x0

.field private static final blacklist TAG:Ljava/lang/String; = "UpperLayerIndInfo"

.field public static final blacklist UPPER_LAYER_IND_INFO_AVAILABLE:I = 0x1

.field public static final blacklist UPPER_LAYER_IND_INFO_UNAVAILABLE:I


# instance fields
.field private blacklist mPlmnInfoListAvailable:I

.field private blacklist mUpperLayerIndInfoAvailable:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 79
    new-instance v0, Lorg/codeaurora/internal/UpperLayerIndInfo$1;

    invoke-direct {v0}, Lorg/codeaurora/internal/UpperLayerIndInfo$1;-><init>()V

    sput-object v0, Lorg/codeaurora/internal/UpperLayerIndInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(II)V
    .locals 1
    .param p1, "plmn"    # I
    .param p2, "ulinfo"    # I

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const/4 v0, 0x0

    iput v0, p0, Lorg/codeaurora/internal/UpperLayerIndInfo;->mPlmnInfoListAvailable:I

    .line 49
    iput v0, p0, Lorg/codeaurora/internal/UpperLayerIndInfo;->mUpperLayerIndInfoAvailable:I

    .line 52
    iput p1, p0, Lorg/codeaurora/internal/UpperLayerIndInfo;->mPlmnInfoListAvailable:I

    .line 53
    iput p2, p0, Lorg/codeaurora/internal/UpperLayerIndInfo;->mUpperLayerIndInfoAvailable:I

    .line 54
    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const/4 v0, 0x0

    iput v0, p0, Lorg/codeaurora/internal/UpperLayerIndInfo;->mPlmnInfoListAvailable:I

    .line 49
    iput v0, p0, Lorg/codeaurora/internal/UpperLayerIndInfo;->mUpperLayerIndInfoAvailable:I

    .line 57
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lorg/codeaurora/internal/UpperLayerIndInfo;->mPlmnInfoListAvailable:I

    .line 58
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lorg/codeaurora/internal/UpperLayerIndInfo;->mUpperLayerIndInfoAvailable:I

    .line 59
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 71
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getPlmnInfoListAvailable()I
    .locals 1

    .line 62
    iget v0, p0, Lorg/codeaurora/internal/UpperLayerIndInfo;->mPlmnInfoListAvailable:I

    return v0
.end method

.method public blacklist getUpperLayerIndInfoAvailable()I
    .locals 1

    .line 66
    iget v0, p0, Lorg/codeaurora/internal/UpperLayerIndInfo;->mUpperLayerIndInfoAvailable:I

    return v0
.end method

.method public blacklist readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 90
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lorg/codeaurora/internal/UpperLayerIndInfo;->mPlmnInfoListAvailable:I

    .line 91
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lorg/codeaurora/internal/UpperLayerIndInfo;->mUpperLayerIndInfoAvailable:I

    .line 92
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    .line 96
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UpperLayerIndInfo: PLMN: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/codeaurora/internal/UpperLayerIndInfo;->getPlmnInfoListAvailable()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " UpperLayerIndInfo: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/codeaurora/internal/UpperLayerIndInfo;->getUpperLayerIndInfoAvailable()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 75
    iget v0, p0, Lorg/codeaurora/internal/UpperLayerIndInfo;->mPlmnInfoListAvailable:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 76
    iget v0, p0, Lorg/codeaurora/internal/UpperLayerIndInfo;->mUpperLayerIndInfoAvailable:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 77
    return-void
.end method
