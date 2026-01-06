.class public Lorg/codeaurora/internal/SignalStrength;
.super Ljava/lang/Object;
.source "SignalStrength.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lorg/codeaurora/internal/SignalStrength;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist INVALID:I = -0x8000

.field private static final blacklist MAX_NR_RSRP:I = -0x2c

.field private static final blacklist MAX_NR_SNR:I = -0xa0

.field private static final blacklist MIN_NR_RSRP:I = -0x8c

.field private static final blacklist MIN_NR_SNR:I = -0xf0

.field private static final blacklist TAG:Ljava/lang/String; = "SignalStrength"


# instance fields
.field private blacklist mNrRsrp:I

.field private blacklist mNrSnr:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 95
    new-instance v0, Lorg/codeaurora/internal/SignalStrength$1;

    invoke-direct {v0}, Lorg/codeaurora/internal/SignalStrength$1;-><init>()V

    sput-object v0, Lorg/codeaurora/internal/SignalStrength;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 1

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    const/16 v0, -0x8000

    iput v0, p0, Lorg/codeaurora/internal/SignalStrength;->mNrRsrp:I

    .line 59
    iput v0, p0, Lorg/codeaurora/internal/SignalStrength;->mNrSnr:I

    .line 60
    return-void
.end method

.method public constructor blacklist <init>(II)V
    .locals 0
    .param p1, "rsrp"    # I
    .param p2, "snr"    # I

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput p1, p0, Lorg/codeaurora/internal/SignalStrength;->mNrRsrp:I

    .line 64
    iput p2, p0, Lorg/codeaurora/internal/SignalStrength;->mNrSnr:I

    .line 65
    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lorg/codeaurora/internal/SignalStrength;->mNrRsrp:I

    .line 69
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lorg/codeaurora/internal/SignalStrength;->mNrSnr:I

    .line 70
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 87
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getRsrp()I
    .locals 1

    .line 73
    iget v0, p0, Lorg/codeaurora/internal/SignalStrength;->mNrRsrp:I

    return v0
.end method

.method public blacklist getSnr()I
    .locals 1

    .line 77
    iget v0, p0, Lorg/codeaurora/internal/SignalStrength;->mNrSnr:I

    return v0
.end method

.method public blacklist readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 106
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lorg/codeaurora/internal/SignalStrength;->mNrRsrp:I

    .line 107
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lorg/codeaurora/internal/SignalStrength;->mNrSnr:I

    .line 108
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    .line 82
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SignalStrength: Rsrp: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/codeaurora/internal/SignalStrength;->getRsrp()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Snr: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/codeaurora/internal/SignalStrength;->getSnr()I

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

    .line 91
    iget v0, p0, Lorg/codeaurora/internal/SignalStrength;->mNrRsrp:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 92
    iget v0, p0, Lorg/codeaurora/internal/SignalStrength;->mNrSnr:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 93
    return-void
.end method
