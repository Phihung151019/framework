.class public Lcom/sec/ims/LastEndedImsCallInfo;
.super Ljava/lang/Object;
.source "LastEndedImsCallInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/ims/LastEndedImsCallInfo$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/sec/ims/LastEndedImsCallInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mErrorCode:I

.field private mErrorMessage:Ljava/lang/String;

.field private mIsCallDrop:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 49
    new-instance v0, Lcom/sec/ims/LastEndedImsCallInfo$1;

    invoke-direct {v0}, Lcom/sec/ims/LastEndedImsCallInfo$1;-><init>()V

    sput-object v0, Lcom/sec/ims/LastEndedImsCallInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/sec/ims/LastEndedImsCallInfo;->mIsCallDrop:Z

    .line 15
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/ims/LastEndedImsCallInfo;->mErrorCode:I

    .line 16
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/ims/LastEndedImsCallInfo;->mErrorMessage:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Lcom/sec/ims/LastEndedImsCallInfo$Builder;)V
    .locals 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iget-boolean v0, p1, Lcom/sec/ims/LastEndedImsCallInfo$Builder;->mIsCallDrop:Z

    iput-boolean v0, p0, Lcom/sec/ims/LastEndedImsCallInfo;->mIsCallDrop:Z

    .line 21
    iget v0, p1, Lcom/sec/ims/LastEndedImsCallInfo$Builder;->mErrorCode:I

    iput v0, p0, Lcom/sec/ims/LastEndedImsCallInfo;->mErrorCode:I

    .line 22
    iget-object p1, p1, Lcom/sec/ims/LastEndedImsCallInfo$Builder;->mErrorMessage:Ljava/lang/String;

    iput-object p1, p0, Lcom/sec/ims/LastEndedImsCallInfo;->mErrorMessage:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public getLastEndedErrorCode()I
    .locals 0

    .line 30
    iget p0, p0, Lcom/sec/ims/LastEndedImsCallInfo;->mErrorCode:I

    return p0
.end method

.method public getLastEndedErrorMessage()Ljava/lang/String;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/sec/ims/LastEndedImsCallInfo;->mErrorMessage:Ljava/lang/String;

    return-object p0
.end method

.method public isIsLastEndedCallDrop()Z
    .locals 0

    .line 26
    iget-boolean p0, p0, Lcom/sec/ims/LastEndedImsCallInfo;->mIsCallDrop:Z

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LastEndedImsCallInfo [mIsCallDrop="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/sec/ims/LastEndedImsCallInfo;->mIsCallDrop:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mErrorCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/ims/LastEndedImsCallInfo;->mErrorCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mErrorMessage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sec/ims/LastEndedImsCallInfo;->mErrorMessage:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 39
    iget-boolean p2, p0, Lcom/sec/ims/LastEndedImsCallInfo;->mIsCallDrop:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 40
    iget p2, p0, Lcom/sec/ims/LastEndedImsCallInfo;->mErrorCode:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 41
    iget-object p0, p0, Lcom/sec/ims/LastEndedImsCallInfo;->mErrorMessage:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
