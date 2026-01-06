.class public Lcom/sec/ims/im/ImParticipantData;
.super Ljava/lang/Object;
.source "ImParticipantData.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/sec/ims/im/ImParticipantData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mChatId:Ljava/lang/String;

.field private mId:I

.field private mStatus:I

.field private mUriString:Ljava/lang/String;

.field private mUserAlias:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 169
    new-instance v0, Lcom/sec/ims/im/ImParticipantData$1;

    invoke-direct {v0}, Lcom/sec/ims/im/ImParticipantData$1;-><init>()V

    sput-object v0, Lcom/sec/ims/im/ImParticipantData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 159
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/ims/im/ImParticipantData;->mChatId:Ljava/lang/String;

    .line 160
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/ims/im/ImParticipantData;->mUriString:Ljava/lang/String;

    .line 161
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/ims/im/ImParticipantData;->mId:I

    .line 162
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/ims/im/ImParticipantData;->mStatus:I

    .line 163
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/ims/im/ImParticipantData;->mUserAlias:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/sec/ims/im/ImParticipantData-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/sec/ims/im/ImParticipantData;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/sec/ims/im/ImParticipantData;->mChatId:Ljava/lang/String;

    .line 39
    iput-object p2, p0, Lcom/sec/ims/im/ImParticipantData;->mUriString:Ljava/lang/String;

    .line 40
    iput p3, p0, Lcom/sec/ims/im/ImParticipantData;->mId:I

    .line 41
    iput p4, p0, Lcom/sec/ims/im/ImParticipantData;->mStatus:I

    .line 42
    iput-object p5, p0, Lcom/sec/ims/im/ImParticipantData;->mUserAlias:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public getChatId()Ljava/lang/String;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/sec/ims/im/ImParticipantData;->mChatId:Ljava/lang/String;

    return-object p0
.end method

.method public getId()I
    .locals 0

    .line 66
    iget p0, p0, Lcom/sec/ims/im/ImParticipantData;->mId:I

    return p0
.end method

.method public getStatus()I
    .locals 0

    .line 74
    iget p0, p0, Lcom/sec/ims/im/ImParticipantData;->mStatus:I

    return p0
.end method

.method public getUriString()Ljava/lang/String;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/sec/ims/im/ImParticipantData;->mUriString:Ljava/lang/String;

    return-object p0
.end method

.method public getUserAlias()Ljava/lang/String;
    .locals 0

    .line 82
    iget-object p0, p0, Lcom/sec/ims/im/ImParticipantData;->mUserAlias:Ljava/lang/String;

    return-object p0
.end method

.method public setChatId(Ljava/lang/String;)V
    .locals 0

    .line 91
    iput-object p1, p0, Lcom/sec/ims/im/ImParticipantData;->mChatId:Ljava/lang/String;

    return-void
.end method

.method public setId(I)V
    .locals 0

    .line 109
    iput p1, p0, Lcom/sec/ims/im/ImParticipantData;->mId:I

    return-void
.end method

.method public setStatus(I)V
    .locals 0

    .line 118
    iput p1, p0, Lcom/sec/ims/im/ImParticipantData;->mStatus:I

    return-void
.end method

.method public setUriString(Ljava/lang/String;)V
    .locals 0

    .line 100
    iput-object p1, p0, Lcom/sec/ims/im/ImParticipantData;->mUriString:Ljava/lang/String;

    return-void
.end method

.method public setUserAlias(Ljava/lang/String;)V
    .locals 0

    .line 126
    iput-object p1, p0, Lcom/sec/ims/im/ImParticipantData;->mUserAlias:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 198
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ImParticipant [mChatId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/ims/im/ImParticipantData;->mChatId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mUriString="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/ims/im/ImParticipantData;->mUriString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/ims/im/ImParticipantData;->mId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/ims/im/ImParticipantData;->mStatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mUserAlias="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sec/ims/im/ImParticipantData;->mUserAlias:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 147
    iget-object p2, p0, Lcom/sec/ims/im/ImParticipantData;->mChatId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 148
    iget-object p2, p0, Lcom/sec/ims/im/ImParticipantData;->mUriString:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 149
    iget p2, p0, Lcom/sec/ims/im/ImParticipantData;->mId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 150
    iget p2, p0, Lcom/sec/ims/im/ImParticipantData;->mStatus:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 151
    iget-object p0, p0, Lcom/sec/ims/im/ImParticipantData;->mUserAlias:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
