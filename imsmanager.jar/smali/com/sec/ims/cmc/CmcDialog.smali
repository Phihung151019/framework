.class public Lcom/sec/ims/cmc/CmcDialog;
.super Ljava/lang/Object;
.source "CmcDialog.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/ims/cmc/CmcDialog$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/sec/ims/cmc/CmcDialog;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mCallSlot:I

.field private mCallType:I

.field private mCnapName:Ljava/lang/String;

.field private mCnapNamePresentation:I

.field private mDialogId:Ljava/lang/String;

.field private mIsHeld:Z

.field private mIsPullable:Z

.field private mNumberPresentation:I

.field private mPeerUri:Ljava/lang/String;

.field private mState:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 141
    new-instance v0, Lcom/sec/ims/cmc/CmcDialog$1;

    invoke-direct {v0}, Lcom/sec/ims/cmc/CmcDialog$1;-><init>()V

    sput-object v0, Lcom/sec/ims/cmc/CmcDialog;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    const-string v0, ""

    iput-object v0, p0, Lcom/sec/ims/cmc/CmcDialog;->mDialogId:Ljava/lang/String;

    .line 10
    iput-object v0, p0, Lcom/sec/ims/cmc/CmcDialog;->mPeerUri:Ljava/lang/String;

    const/4 v1, 0x1

    .line 11
    iput-boolean v1, p0, Lcom/sec/ims/cmc/CmcDialog;->mIsPullable:Z

    const/4 v2, 0x2

    .line 12
    iput v2, p0, Lcom/sec/ims/cmc/CmcDialog;->mState:I

    .line 13
    iput v1, p0, Lcom/sec/ims/cmc/CmcDialog;->mCallType:I

    const/4 v2, 0x0

    .line 14
    iput-boolean v2, p0, Lcom/sec/ims/cmc/CmcDialog;->mIsHeld:Z

    .line 15
    iput-object v0, p0, Lcom/sec/ims/cmc/CmcDialog;->mCnapName:Ljava/lang/String;

    .line 16
    iput v1, p0, Lcom/sec/ims/cmc/CmcDialog;->mCnapNamePresentation:I

    .line 17
    iput v1, p0, Lcom/sec/ims/cmc/CmcDialog;->mNumberPresentation:I

    .line 18
    iput v2, p0, Lcom/sec/ims/cmc/CmcDialog;->mCallSlot:I

    .line 154
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/ims/cmc/CmcDialog;->mDialogId:Ljava/lang/String;

    .line 155
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/ims/cmc/CmcDialog;->mPeerUri:Ljava/lang/String;

    .line 156
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iput-boolean v0, p0, Lcom/sec/ims/cmc/CmcDialog;->mIsPullable:Z

    .line 157
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/ims/cmc/CmcDialog;->mState:I

    .line 158
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/ims/cmc/CmcDialog;->mCallType:I

    .line 159
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    iput-boolean v1, p0, Lcom/sec/ims/cmc/CmcDialog;->mIsHeld:Z

    .line 160
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/ims/cmc/CmcDialog;->mCnapName:Ljava/lang/String;

    .line 161
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/ims/cmc/CmcDialog;->mCnapNamePresentation:I

    .line 162
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/ims/cmc/CmcDialog;->mNumberPresentation:I

    .line 163
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/sec/ims/cmc/CmcDialog;->mCallSlot:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/sec/ims/cmc/CmcDialog-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/sec/ims/cmc/CmcDialog;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Lcom/sec/ims/cmc/CmcDialog$Builder;)V
    .locals 3

    .line 179
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    const-string v0, ""

    iput-object v0, p0, Lcom/sec/ims/cmc/CmcDialog;->mDialogId:Ljava/lang/String;

    .line 10
    iput-object v0, p0, Lcom/sec/ims/cmc/CmcDialog;->mPeerUri:Ljava/lang/String;

    const/4 v1, 0x1

    .line 11
    iput-boolean v1, p0, Lcom/sec/ims/cmc/CmcDialog;->mIsPullable:Z

    const/4 v2, 0x2

    .line 12
    iput v2, p0, Lcom/sec/ims/cmc/CmcDialog;->mState:I

    .line 13
    iput v1, p0, Lcom/sec/ims/cmc/CmcDialog;->mCallType:I

    const/4 v2, 0x0

    .line 14
    iput-boolean v2, p0, Lcom/sec/ims/cmc/CmcDialog;->mIsHeld:Z

    .line 15
    iput-object v0, p0, Lcom/sec/ims/cmc/CmcDialog;->mCnapName:Ljava/lang/String;

    .line 16
    iput v1, p0, Lcom/sec/ims/cmc/CmcDialog;->mCnapNamePresentation:I

    .line 17
    iput v1, p0, Lcom/sec/ims/cmc/CmcDialog;->mNumberPresentation:I

    .line 18
    iput v2, p0, Lcom/sec/ims/cmc/CmcDialog;->mCallSlot:I

    .line 180
    invoke-static {p1}, Lcom/sec/ims/cmc/CmcDialog$Builder;->-$$Nest$fgetmDialogId(Lcom/sec/ims/cmc/CmcDialog$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/ims/cmc/CmcDialog;->mDialogId:Ljava/lang/String;

    .line 181
    invoke-static {p1}, Lcom/sec/ims/cmc/CmcDialog$Builder;->-$$Nest$fgetmPeerUri(Lcom/sec/ims/cmc/CmcDialog$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/ims/cmc/CmcDialog;->mPeerUri:Ljava/lang/String;

    .line 182
    invoke-static {p1}, Lcom/sec/ims/cmc/CmcDialog$Builder;->-$$Nest$fgetmIsPullable(Lcom/sec/ims/cmc/CmcDialog$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/ims/cmc/CmcDialog;->mIsPullable:Z

    .line 183
    invoke-static {p1}, Lcom/sec/ims/cmc/CmcDialog$Builder;->-$$Nest$fgetmState(Lcom/sec/ims/cmc/CmcDialog$Builder;)I

    move-result v0

    iput v0, p0, Lcom/sec/ims/cmc/CmcDialog;->mState:I

    .line 184
    invoke-static {p1}, Lcom/sec/ims/cmc/CmcDialog$Builder;->-$$Nest$fgetmCallType(Lcom/sec/ims/cmc/CmcDialog$Builder;)I

    move-result v0

    iput v0, p0, Lcom/sec/ims/cmc/CmcDialog;->mCallType:I

    .line 185
    invoke-static {p1}, Lcom/sec/ims/cmc/CmcDialog$Builder;->-$$Nest$fgetmIsHeld(Lcom/sec/ims/cmc/CmcDialog$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/ims/cmc/CmcDialog;->mIsHeld:Z

    .line 186
    invoke-static {p1}, Lcom/sec/ims/cmc/CmcDialog$Builder;->-$$Nest$fgetmCnapName(Lcom/sec/ims/cmc/CmcDialog$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/ims/cmc/CmcDialog;->mCnapName:Ljava/lang/String;

    .line 187
    invoke-static {p1}, Lcom/sec/ims/cmc/CmcDialog$Builder;->-$$Nest$fgetmCnapNamePresentation(Lcom/sec/ims/cmc/CmcDialog$Builder;)I

    move-result v0

    iput v0, p0, Lcom/sec/ims/cmc/CmcDialog;->mCnapNamePresentation:I

    .line 188
    invoke-static {p1}, Lcom/sec/ims/cmc/CmcDialog$Builder;->-$$Nest$fgetmNumberPresentation(Lcom/sec/ims/cmc/CmcDialog$Builder;)I

    move-result v0

    iput v0, p0, Lcom/sec/ims/cmc/CmcDialog;->mNumberPresentation:I

    .line 189
    invoke-static {p1}, Lcom/sec/ims/cmc/CmcDialog$Builder;->-$$Nest$fgetmCallSlot(Lcom/sec/ims/cmc/CmcDialog$Builder;)I

    move-result p1

    iput p1, p0, Lcom/sec/ims/cmc/CmcDialog;->mCallSlot:I

    return-void
.end method

.method public constructor <init>(Lcom/sec/ims/cmc/CmcDialog;)V
    .locals 3

    .line 166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    const-string v0, ""

    iput-object v0, p0, Lcom/sec/ims/cmc/CmcDialog;->mDialogId:Ljava/lang/String;

    .line 10
    iput-object v0, p0, Lcom/sec/ims/cmc/CmcDialog;->mPeerUri:Ljava/lang/String;

    const/4 v1, 0x1

    .line 11
    iput-boolean v1, p0, Lcom/sec/ims/cmc/CmcDialog;->mIsPullable:Z

    const/4 v2, 0x2

    .line 12
    iput v2, p0, Lcom/sec/ims/cmc/CmcDialog;->mState:I

    .line 13
    iput v1, p0, Lcom/sec/ims/cmc/CmcDialog;->mCallType:I

    const/4 v2, 0x0

    .line 14
    iput-boolean v2, p0, Lcom/sec/ims/cmc/CmcDialog;->mIsHeld:Z

    .line 15
    iput-object v0, p0, Lcom/sec/ims/cmc/CmcDialog;->mCnapName:Ljava/lang/String;

    .line 16
    iput v1, p0, Lcom/sec/ims/cmc/CmcDialog;->mCnapNamePresentation:I

    .line 17
    iput v1, p0, Lcom/sec/ims/cmc/CmcDialog;->mNumberPresentation:I

    .line 18
    iput v2, p0, Lcom/sec/ims/cmc/CmcDialog;->mCallSlot:I

    .line 167
    iget-object v0, p1, Lcom/sec/ims/cmc/CmcDialog;->mDialogId:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/ims/cmc/CmcDialog;->mDialogId:Ljava/lang/String;

    .line 168
    iget-object v0, p1, Lcom/sec/ims/cmc/CmcDialog;->mPeerUri:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/ims/cmc/CmcDialog;->mPeerUri:Ljava/lang/String;

    .line 169
    iget-boolean v0, p1, Lcom/sec/ims/cmc/CmcDialog;->mIsPullable:Z

    iput-boolean v0, p0, Lcom/sec/ims/cmc/CmcDialog;->mIsPullable:Z

    .line 170
    iget v0, p1, Lcom/sec/ims/cmc/CmcDialog;->mState:I

    iput v0, p0, Lcom/sec/ims/cmc/CmcDialog;->mState:I

    .line 171
    iget v0, p1, Lcom/sec/ims/cmc/CmcDialog;->mCallType:I

    iput v0, p0, Lcom/sec/ims/cmc/CmcDialog;->mCallType:I

    .line 172
    iget-boolean v0, p1, Lcom/sec/ims/cmc/CmcDialog;->mIsHeld:Z

    iput-boolean v0, p0, Lcom/sec/ims/cmc/CmcDialog;->mIsHeld:Z

    .line 173
    iget-object v0, p1, Lcom/sec/ims/cmc/CmcDialog;->mCnapName:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/ims/cmc/CmcDialog;->mCnapName:Ljava/lang/String;

    .line 174
    iget v0, p1, Lcom/sec/ims/cmc/CmcDialog;->mCnapNamePresentation:I

    iput v0, p0, Lcom/sec/ims/cmc/CmcDialog;->mCnapNamePresentation:I

    .line 175
    iget v0, p1, Lcom/sec/ims/cmc/CmcDialog;->mNumberPresentation:I

    iput v0, p0, Lcom/sec/ims/cmc/CmcDialog;->mNumberPresentation:I

    .line 176
    iget p1, p1, Lcom/sec/ims/cmc/CmcDialog;->mCallSlot:I

    iput p1, p0, Lcom/sec/ims/cmc/CmcDialog;->mCallSlot:I

    return-void
.end method

.method public static getBuilder()Lcom/sec/ims/cmc/CmcDialog$Builder;
    .locals 1

    .line 201
    new-instance v0, Lcom/sec/ims/cmc/CmcDialog$Builder;

    invoke-direct {v0}, Lcom/sec/ims/cmc/CmcDialog$Builder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public getCallSlot()I
    .locals 0

    .line 116
    iget p0, p0, Lcom/sec/ims/cmc/CmcDialog;->mCallSlot:I

    return p0
.end method

.method public getCallType()I
    .locals 0

    .line 71
    iget p0, p0, Lcom/sec/ims/cmc/CmcDialog;->mCallType:I

    return p0
.end method

.method public getCnapName()Ljava/lang/String;
    .locals 0

    .line 89
    iget-object p0, p0, Lcom/sec/ims/cmc/CmcDialog;->mCnapName:Ljava/lang/String;

    return-object p0
.end method

.method public getCnapNamePresentation()I
    .locals 0

    .line 98
    iget p0, p0, Lcom/sec/ims/cmc/CmcDialog;->mCnapNamePresentation:I

    return p0
.end method

.method public getDialogId()Ljava/lang/String;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/sec/ims/cmc/CmcDialog;->mDialogId:Ljava/lang/String;

    return-object p0
.end method

.method public getIsHeld()Z
    .locals 0

    .line 80
    iget-boolean p0, p0, Lcom/sec/ims/cmc/CmcDialog;->mIsHeld:Z

    return p0
.end method

.method public getIsPullable()Z
    .locals 0

    .line 49
    iget-boolean p0, p0, Lcom/sec/ims/cmc/CmcDialog;->mIsPullable:Z

    return p0
.end method

.method public getNumberPresentation()I
    .locals 0

    .line 107
    iget p0, p0, Lcom/sec/ims/cmc/CmcDialog;->mNumberPresentation:I

    return p0
.end method

.method public getPeerUri()Ljava/lang/String;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/sec/ims/cmc/CmcDialog;->mPeerUri:Ljava/lang/String;

    return-object p0
.end method

.method public getState()I
    .locals 0

    .line 61
    iget p0, p0, Lcom/sec/ims/cmc/CmcDialog;->mState:I

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 194
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CmcDialog [mDialogId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/ims/cmc/CmcDialog;->mDialogId:Ljava/lang/String;

    invoke-static {v1}, Lcom/sec/ims/util/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mPeerUri="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/ims/cmc/CmcDialog;->mPeerUri:Ljava/lang/String;

    invoke-static {v1}, Lcom/sec/ims/util/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mIsPullable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/sec/ims/cmc/CmcDialog;->mIsPullable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/ims/cmc/CmcDialog;->mState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mCallType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/ims/cmc/CmcDialog;->mCallType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mIsHeld="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/sec/ims/cmc/CmcDialog;->mIsHeld:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mCnapName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/ims/cmc/CmcDialog;->mCnapName:Ljava/lang/String;

    .line 196
    invoke-static {v1}, Lcom/sec/ims/util/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mCnapNamePresentation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/ims/cmc/CmcDialog;->mCnapNamePresentation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mNumberPresentation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/ims/cmc/CmcDialog;->mNumberPresentation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mCallSlot="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/sec/ims/cmc/CmcDialog;->mCallSlot:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    .line 129
    :cond_0
    iget-object p2, p0, Lcom/sec/ims/cmc/CmcDialog;->mDialogId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 130
    iget-object p2, p0, Lcom/sec/ims/cmc/CmcDialog;->mPeerUri:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 131
    iget-boolean p2, p0, Lcom/sec/ims/cmc/CmcDialog;->mIsPullable:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 132
    iget p2, p0, Lcom/sec/ims/cmc/CmcDialog;->mState:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 133
    iget p2, p0, Lcom/sec/ims/cmc/CmcDialog;->mCallType:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 134
    iget-boolean p2, p0, Lcom/sec/ims/cmc/CmcDialog;->mIsHeld:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 135
    iget-object p2, p0, Lcom/sec/ims/cmc/CmcDialog;->mCnapName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 136
    iget p2, p0, Lcom/sec/ims/cmc/CmcDialog;->mCnapNamePresentation:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 137
    iget p2, p0, Lcom/sec/ims/cmc/CmcDialog;->mNumberPresentation:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 138
    iget p0, p0, Lcom/sec/ims/cmc/CmcDialog;->mCallSlot:I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
