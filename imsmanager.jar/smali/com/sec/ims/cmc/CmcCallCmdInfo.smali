.class public Lcom/sec/ims/cmc/CmcCallCmdInfo;
.super Ljava/lang/Object;
.source "CmcCallCmdInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/ims/cmc/CmcCallCmdInfo$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/sec/ims/cmc/CmcCallCmdInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final LOG_TAG:Ljava/lang/String; = "CmcCallCmdInfo"


# instance fields
.field private mExternalCallSlotAtPd:I

.field private mPulledDialogId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 50
    new-instance v0, Lcom/sec/ims/cmc/CmcCallCmdInfo$1;

    invoke-direct {v0}, Lcom/sec/ims/cmc/CmcCallCmdInfo$1;-><init>()V

    sput-object v0, Lcom/sec/ims/cmc/CmcCallCmdInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const-string v0, ""

    iput-object v0, p0, Lcom/sec/ims/cmc/CmcCallCmdInfo;->mPulledDialogId:Ljava/lang/String;

    const/4 v0, -0x1

    .line 21
    iput v0, p0, Lcom/sec/ims/cmc/CmcCallCmdInfo;->mExternalCallSlotAtPd:I

    .line 64
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/ims/cmc/CmcCallCmdInfo;->mPulledDialogId:Ljava/lang/String;

    .line 65
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/sec/ims/cmc/CmcCallCmdInfo;->mExternalCallSlotAtPd:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/sec/ims/cmc/CmcCallCmdInfo-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/sec/ims/cmc/CmcCallCmdInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Lcom/sec/ims/cmc/CmcCallCmdInfo$Builder;)V
    .locals 1

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const-string v0, ""

    iput-object v0, p0, Lcom/sec/ims/cmc/CmcCallCmdInfo;->mPulledDialogId:Ljava/lang/String;

    const/4 v0, -0x1

    .line 21
    iput v0, p0, Lcom/sec/ims/cmc/CmcCallCmdInfo;->mExternalCallSlotAtPd:I

    .line 74
    iget-object v0, p1, Lcom/sec/ims/cmc/CmcCallCmdInfo$Builder;->mPulledDialogId:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/ims/cmc/CmcCallCmdInfo;->mPulledDialogId:Ljava/lang/String;

    .line 75
    iget p1, p1, Lcom/sec/ims/cmc/CmcCallCmdInfo$Builder;->mExternalCallSlotAtPd:I

    iput p1, p0, Lcom/sec/ims/cmc/CmcCallCmdInfo;->mExternalCallSlotAtPd:I

    return-void
.end method

.method public constructor <init>(Lcom/sec/ims/cmc/CmcCallCmdInfo;)V
    .locals 1

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const-string v0, ""

    iput-object v0, p0, Lcom/sec/ims/cmc/CmcCallCmdInfo;->mPulledDialogId:Ljava/lang/String;

    const/4 v0, -0x1

    .line 21
    iput v0, p0, Lcom/sec/ims/cmc/CmcCallCmdInfo;->mExternalCallSlotAtPd:I

    .line 69
    iget-object v0, p1, Lcom/sec/ims/cmc/CmcCallCmdInfo;->mPulledDialogId:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/ims/cmc/CmcCallCmdInfo;->mPulledDialogId:Ljava/lang/String;

    .line 70
    iget p1, p1, Lcom/sec/ims/cmc/CmcCallCmdInfo;->mExternalCallSlotAtPd:I

    iput p1, p0, Lcom/sec/ims/cmc/CmcCallCmdInfo;->mExternalCallSlotAtPd:I

    return-void
.end method

.method public static getBuilder()Lcom/sec/ims/cmc/CmcCallCmdInfo$Builder;
    .locals 1

    .line 86
    new-instance v0, Lcom/sec/ims/cmc/CmcCallCmdInfo$Builder;

    invoke-direct {v0}, Lcom/sec/ims/cmc/CmcCallCmdInfo$Builder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public getExternalCallSlotAtPd()I
    .locals 0

    .line 35
    iget p0, p0, Lcom/sec/ims/cmc/CmcCallCmdInfo;->mExternalCallSlotAtPd:I

    return p0
.end method

.method public getPulledDialogId()Ljava/lang/String;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/sec/ims/cmc/CmcCallCmdInfo;->mPulledDialogId:Ljava/lang/String;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CmcCallCmdInfo [mPulledDialogId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/ims/cmc/CmcCallCmdInfo;->mPulledDialogId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mExternalCallSlotAtPd="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/sec/ims/cmc/CmcCallCmdInfo;->mExternalCallSlotAtPd:I

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

    .line 46
    :cond_0
    iget-object p2, p0, Lcom/sec/ims/cmc/CmcCallCmdInfo;->mPulledDialogId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 47
    iget p0, p0, Lcom/sec/ims/cmc/CmcCallCmdInfo;->mExternalCallSlotAtPd:I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
