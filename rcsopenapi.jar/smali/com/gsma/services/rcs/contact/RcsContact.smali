.class public Lcom/gsma/services/rcs/contact/RcsContact;
.super Ljava/lang/Object;
.source "RcsContact.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/gsma/services/rcs/contact/RcsContact;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mCapabilities:Lcom/gsma/services/rcs/capability/Capabilities;

.field private final mContact:Lcom/gsma/services/rcs/contact/ContactId;

.field private final mDisplayName:Ljava/lang/String;

.field private final mIsBlocked:Z

.field private final mIsOnline:Z

.field private final rcsStatusTimestamp:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 139
    new-instance v0, Lcom/gsma/services/rcs/contact/RcsContact$1;

    invoke-direct {v0}, Lcom/gsma/services/rcs/contact/RcsContact$1;-><init>()V

    sput-object v0, Lcom/gsma/services/rcs/contact/RcsContact;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 7
    .param p1, "source"    # Landroid/os/Parcel;

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 82
    .local v0, "containsContact":Z
    :goto_0
    const/4 v3, 0x0

    if-eqz v0, :cond_1

    .line 83
    sget-object v4, Lcom/gsma/services/rcs/contact/ContactId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/gsma/services/rcs/contact/ContactId;

    iput-object v4, p0, Lcom/gsma/services/rcs/contact/RcsContact;->mContact:Lcom/gsma/services/rcs/contact/ContactId;

    goto :goto_1

    .line 85
    :cond_1
    iput-object v3, p0, Lcom/gsma/services/rcs/contact/RcsContact;->mContact:Lcom/gsma/services/rcs/contact/ContactId;

    .line 87
    :goto_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_2

    move v4, v1

    goto :goto_2

    :cond_2
    move v4, v2

    :goto_2
    iput-boolean v4, p0, Lcom/gsma/services/rcs/contact/RcsContact;->mIsOnline:Z

    .line 88
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_3

    move v4, v1

    goto :goto_3

    :cond_3
    move v4, v2

    .line 89
    .local v4, "containsCapabilities":Z
    :goto_3
    if-eqz v4, :cond_4

    .line 90
    sget-object v3, Lcom/gsma/services/rcs/capability/Capabilities;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/gsma/services/rcs/capability/Capabilities;

    iput-object v3, p0, Lcom/gsma/services/rcs/contact/RcsContact;->mCapabilities:Lcom/gsma/services/rcs/capability/Capabilities;

    goto :goto_4

    .line 92
    :cond_4
    iput-object v3, p0, Lcom/gsma/services/rcs/contact/RcsContact;->mCapabilities:Lcom/gsma/services/rcs/capability/Capabilities;

    .line 94
    :goto_4
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/gsma/services/rcs/contact/RcsContact;->mDisplayName:Ljava/lang/String;

    .line 95
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/gsma/services/rcs/contact/RcsContact;->rcsStatusTimestamp:J

    .line 96
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_5

    goto :goto_5

    :cond_5
    move v1, v2

    :goto_5
    iput-boolean v1, p0, Lcom/gsma/services/rcs/contact/RcsContact;->mIsBlocked:Z

    .line 97
    return-void
.end method

.method public constructor <init>(Lcom/gsma/services/rcs/contact/ContactId;ZLcom/gsma/services/rcs/capability/Capabilities;Ljava/lang/String;JZ)V
    .locals 0
    .param p1, "contact"    # Lcom/gsma/services/rcs/contact/ContactId;
    .param p2, "registered"    # Z
    .param p3, "capabilities"    # Lcom/gsma/services/rcs/capability/Capabilities;
    .param p4, "displayName"    # Ljava/lang/String;
    .param p5, "rcsStatusTimestamp"    # J
    .param p7, "blocked"    # Z

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-object p1, p0, Lcom/gsma/services/rcs/contact/RcsContact;->mContact:Lcom/gsma/services/rcs/contact/ContactId;

    .line 68
    iput-boolean p2, p0, Lcom/gsma/services/rcs/contact/RcsContact;->mIsOnline:Z

    .line 69
    iput-object p3, p0, Lcom/gsma/services/rcs/contact/RcsContact;->mCapabilities:Lcom/gsma/services/rcs/capability/Capabilities;

    .line 70
    iput-object p4, p0, Lcom/gsma/services/rcs/contact/RcsContact;->mDisplayName:Ljava/lang/String;

    .line 71
    iput-wide p5, p0, Lcom/gsma/services/rcs/contact/RcsContact;->rcsStatusTimestamp:J

    .line 72
    iput-boolean p7, p0, Lcom/gsma/services/rcs/contact/RcsContact;->mIsBlocked:Z

    .line 73
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 106
    const/4 v0, 0x0

    return v0
.end method

.method public getBlockingTimestamp()J
    .locals 2

    .line 194
    iget-wide v0, p0, Lcom/gsma/services/rcs/contact/RcsContact;->rcsStatusTimestamp:J

    return-wide v0
.end method

.method public getCapabilities()Lcom/gsma/services/rcs/capability/Capabilities;
    .locals 1

    .line 170
    iget-object v0, p0, Lcom/gsma/services/rcs/contact/RcsContact;->mCapabilities:Lcom/gsma/services/rcs/capability/Capabilities;

    return-object v0
.end method

.method public getContactId()Lcom/gsma/services/rcs/contact/ContactId;
    .locals 1

    .line 154
    iget-object v0, p0, Lcom/gsma/services/rcs/contact/RcsContact;->mContact:Lcom/gsma/services/rcs/contact/ContactId;

    return-object v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 1

    .line 162
    iget-object v0, p0, Lcom/gsma/services/rcs/contact/RcsContact;->mDisplayName:Ljava/lang/String;

    return-object v0
.end method

.method public isBlocked()Z
    .locals 1

    .line 185
    iget-boolean v0, p0, Lcom/gsma/services/rcs/contact/RcsContact;->mIsBlocked:Z

    return v0
.end method

.method public isOnline()Z
    .locals 1

    .line 178
    iget-boolean v0, p0, Lcom/gsma/services/rcs/contact/RcsContact;->mIsOnline:Z

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 116
    iget-object v0, p0, Lcom/gsma/services/rcs/contact/RcsContact;->mContact:Lcom/gsma/services/rcs/contact/ContactId;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 117
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 118
    iget-object v0, p0, Lcom/gsma/services/rcs/contact/RcsContact;->mContact:Lcom/gsma/services/rcs/contact/ContactId;

    invoke-virtual {v0, p1, p2}, Lcom/gsma/services/rcs/contact/ContactId;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 120
    :cond_0
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 122
    :goto_0
    iget-boolean v0, p0, Lcom/gsma/services/rcs/contact/RcsContact;->mIsOnline:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 123
    iget-object v0, p0, Lcom/gsma/services/rcs/contact/RcsContact;->mCapabilities:Lcom/gsma/services/rcs/capability/Capabilities;

    if-eqz v0, :cond_1

    .line 124
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 125
    iget-object v0, p0, Lcom/gsma/services/rcs/contact/RcsContact;->mCapabilities:Lcom/gsma/services/rcs/capability/Capabilities;

    invoke-virtual {v0, p1, p2}, Lcom/gsma/services/rcs/capability/Capabilities;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1

    .line 127
    :cond_1
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 129
    :goto_1
    iget-object v0, p0, Lcom/gsma/services/rcs/contact/RcsContact;->mDisplayName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 130
    iget-wide v0, p0, Lcom/gsma/services/rcs/contact/RcsContact;->rcsStatusTimestamp:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 131
    iget-boolean v0, p0, Lcom/gsma/services/rcs/contact/RcsContact;->mIsBlocked:Z

    .line 132
    .local v0, "num":I
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 133
    return-void
.end method
