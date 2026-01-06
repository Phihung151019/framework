.class public final Lcom/samsung/android/telephony/cdma/SemLmsTokenCTC;
.super Ljava/lang/Object;
.source "SemLmsTokenCTC.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/telephony/cdma/SemLmsTokenCTC;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist LMS_STATUS_COMPLETE:I = 0x0

.field public static final blacklist LMS_STATUS_FIRST_DISPLAY_TIMEOUT:I = 0x1

.field public static final blacklist LMS_STATUS_MAXIMAL_CONNECTION_TIMEOUT:I = 0x2


# instance fields
.field public final whitelist address:Ljava/lang/String;

.field public final blacklist format:Ljava/lang/String;

.field public final blacklist msgCount:I

.field public final whitelist refNumber:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 142
    new-instance v0, Lcom/samsung/android/telephony/cdma/SemLmsTokenCTC$1;

    invoke-direct {v0}, Lcom/samsung/android/telephony/cdma/SemLmsTokenCTC$1;-><init>()V

    sput-object v0, Lcom/samsung/android/telephony/cdma/SemLmsTokenCTC;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/telephony/cdma/SemLmsTokenCTC;->address:Ljava/lang/String;

    .line 76
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/telephony/cdma/SemLmsTokenCTC;->refNumber:I

    .line 77
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/telephony/cdma/SemLmsTokenCTC;->msgCount:I

    .line 78
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/telephony/cdma/SemLmsTokenCTC;->format:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Lcom/samsung/android/telephony/cdma/SemLmsTokenCTC-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/samsung/android/telephony/cdma/SemLmsTokenCTC;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor blacklist <init>(Lcom/samsung/android/telephony/cdma/SemLmsTokenCTC;)V
    .locals 1

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iget-object v0, p1, Lcom/samsung/android/telephony/cdma/SemLmsTokenCTC;->address:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/telephony/cdma/SemLmsTokenCTC;->address:Ljava/lang/String;

    .line 66
    iget v0, p1, Lcom/samsung/android/telephony/cdma/SemLmsTokenCTC;->refNumber:I

    iput v0, p0, Lcom/samsung/android/telephony/cdma/SemLmsTokenCTC;->refNumber:I

    .line 67
    iget v0, p1, Lcom/samsung/android/telephony/cdma/SemLmsTokenCTC;->msgCount:I

    iput v0, p0, Lcom/samsung/android/telephony/cdma/SemLmsTokenCTC;->msgCount:I

    .line 68
    iget-object p1, p1, Lcom/samsung/android/telephony/cdma/SemLmsTokenCTC;->format:Ljava/lang/String;

    iput-object p1, p0, Lcom/samsung/android/telephony/cdma/SemLmsTokenCTC;->format:Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Lcom/samsung/android/telephony/cdma/SemLmsTokenCTC;->address:Ljava/lang/String;

    .line 56
    iput p2, p0, Lcom/samsung/android/telephony/cdma/SemLmsTokenCTC;->refNumber:I

    .line 57
    iput p3, p0, Lcom/samsung/android/telephony/cdma/SemLmsTokenCTC;->msgCount:I

    .line 58
    iput-object p4, p0, Lcom/samsung/android/telephony/cdma/SemLmsTokenCTC;->format:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 87
    :cond_0
    instance-of v1, p1, Lcom/samsung/android/telephony/cdma/SemLmsTokenCTC;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 88
    :cond_1
    check-cast p1, Lcom/samsung/android/telephony/cdma/SemLmsTokenCTC;

    .line 89
    iget v1, p0, Lcom/samsung/android/telephony/cdma/SemLmsTokenCTC;->refNumber:I

    iget v3, p1, Lcom/samsung/android/telephony/cdma/SemLmsTokenCTC;->refNumber:I

    if-ne v1, v3, :cond_2

    iget v1, p0, Lcom/samsung/android/telephony/cdma/SemLmsTokenCTC;->msgCount:I

    iget v3, p1, Lcom/samsung/android/telephony/cdma/SemLmsTokenCTC;->msgCount:I

    if-ne v1, v3, :cond_2

    iget-object v1, p0, Lcom/samsung/android/telephony/cdma/SemLmsTokenCTC;->format:Ljava/lang/String;

    iget-object v3, p1, Lcom/samsung/android/telephony/cdma/SemLmsTokenCTC;->format:Ljava/lang/String;

    if-ne v1, v3, :cond_2

    iget-object p0, p0, Lcom/samsung/android/telephony/cdma/SemLmsTokenCTC;->address:Ljava/lang/String;

    iget-object p1, p1, Lcom/samsung/android/telephony/cdma/SemLmsTokenCTC;->address:Ljava/lang/String;

    .line 92
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public whitelist test-api hashCode()I
    .locals 2

    .line 101
    iget-object v0, p0, Lcom/samsung/android/telephony/cdma/SemLmsTokenCTC;->address:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0x20f

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 102
    iget v0, p0, Lcom/samsung/android/telephony/cdma/SemLmsTokenCTC;->refNumber:I

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 103
    iget v0, p0, Lcom/samsung/android/telephony/cdma/SemLmsTokenCTC;->msgCount:I

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 104
    iget-object p0, p0, Lcom/samsung/android/telephony/cdma/SemLmsTokenCTC;->format:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    add-int/2addr v1, p0

    return v1
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 3

    .line 113
    iget-object v0, p0, Lcom/samsung/android/telephony/cdma/SemLmsTokenCTC;->address:Ljava/lang/String;

    iget v1, p0, Lcom/samsung/android/telephony/cdma/SemLmsTokenCTC;->refNumber:I

    .line 115
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/telephony/cdma/SemLmsTokenCTC;->msgCount:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object p0, p0, Lcom/samsung/android/telephony/cdma/SemLmsTokenCTC;->format:Ljava/lang/String;

    filled-new-array {v0, v1, v2, p0}, [Ljava/lang/Object;

    move-result-object p0

    .line 113
    const-string v0, "<address=%s; refNumber=%d, msgCount=%d, format=%s>"

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 132
    iget-object p2, p0, Lcom/samsung/android/telephony/cdma/SemLmsTokenCTC;->address:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 133
    iget p2, p0, Lcom/samsung/android/telephony/cdma/SemLmsTokenCTC;->refNumber:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 134
    iget p2, p0, Lcom/samsung/android/telephony/cdma/SemLmsTokenCTC;->msgCount:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 135
    iget-object p0, p0, Lcom/samsung/android/telephony/cdma/SemLmsTokenCTC;->format:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
