.class public Lorg/codeaurora/internal/DcParam;
.super Ljava/lang/Object;
.source "DcParam.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lorg/codeaurora/internal/DcParam;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist DCNR_RESTRICTED:I = 0x0

.field public static final blacklist DCNR_UNRESTRICTED:I = 0x1

.field public static final blacklist ENDC_AVAILABLE:I = 0x1

.field public static final blacklist ENDC_UNAVAILABLE:I = 0x0

.field public static final blacklist INVALID:I = -0x1

.field private static final blacklist TAG:Ljava/lang/String; = "DcParam"


# instance fields
.field private blacklist mDcnr:I

.field private blacklist mEndc:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 85
    new-instance v0, Lorg/codeaurora/internal/DcParam$1;

    invoke-direct {v0}, Lorg/codeaurora/internal/DcParam$1;-><init>()V

    sput-object v0, Lorg/codeaurora/internal/DcParam;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(II)V
    .locals 1
    .param p1, "endc"    # I
    .param p2, "dcnr"    # I

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    const/4 v0, 0x0

    iput v0, p0, Lorg/codeaurora/internal/DcParam;->mEndc:I

    .line 55
    iput v0, p0, Lorg/codeaurora/internal/DcParam;->mDcnr:I

    .line 58
    iput p1, p0, Lorg/codeaurora/internal/DcParam;->mEndc:I

    .line 59
    iput p2, p0, Lorg/codeaurora/internal/DcParam;->mDcnr:I

    .line 60
    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    const/4 v0, 0x0

    iput v0, p0, Lorg/codeaurora/internal/DcParam;->mEndc:I

    .line 55
    iput v0, p0, Lorg/codeaurora/internal/DcParam;->mDcnr:I

    .line 63
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lorg/codeaurora/internal/DcParam;->mEndc:I

    .line 64
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lorg/codeaurora/internal/DcParam;->mDcnr:I

    .line 65
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 77
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getDcnr()I
    .locals 1

    .line 72
    iget v0, p0, Lorg/codeaurora/internal/DcParam;->mDcnr:I

    return v0
.end method

.method public blacklist getEndc()I
    .locals 1

    .line 68
    iget v0, p0, Lorg/codeaurora/internal/DcParam;->mEndc:I

    return v0
.end method

.method public blacklist readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 96
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lorg/codeaurora/internal/DcParam;->mEndc:I

    .line 97
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lorg/codeaurora/internal/DcParam;->mDcnr:I

    .line 98
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    .line 102
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DcParam: Endc: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/codeaurora/internal/DcParam;->getEndc()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Dcnr: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/codeaurora/internal/DcParam;->getDcnr()I

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

    .line 81
    iget v0, p0, Lorg/codeaurora/internal/DcParam;->mEndc:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 82
    iget v0, p0, Lorg/codeaurora/internal/DcParam;->mDcnr:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 83
    return-void
.end method
