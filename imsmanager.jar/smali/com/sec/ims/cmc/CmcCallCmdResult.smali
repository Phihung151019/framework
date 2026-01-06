.class public Lcom/sec/ims/cmc/CmcCallCmdResult;
.super Ljava/lang/Object;
.source "CmcCallCmdResult.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/ims/cmc/CmcCallCmdResult$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/sec/ims/cmc/CmcCallCmdResult;",
            ">;"
        }
    .end annotation
.end field

.field public static final IMS_NOT_READY:I = 0x3

.field public static final INVALID_INPUT:I = 0x1

.field private static final LOG_TAG:Ljava/lang/String; = "CmcCallCmdResult"

.field public static final NOT_REGISTERED:I = 0x5

.field public static final NOT_SUPPORTED:I = 0x4

.field public static final OPERTION_NOT_ALLOWED:I = 0x2

.field public static final SUCCESS:I


# instance fields
.field private mCallId:I

.field private mCmdResult:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 86
    new-instance v0, Lcom/sec/ims/cmc/CmcCallCmdResult$1;

    invoke-direct {v0}, Lcom/sec/ims/cmc/CmcCallCmdResult$1;-><init>()V

    sput-object v0, Lcom/sec/ims/cmc/CmcCallCmdResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 51
    iput v0, p0, Lcom/sec/ims/cmc/CmcCallCmdResult;->mCallId:I

    .line 100
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/ims/cmc/CmcCallCmdResult;->mCallId:I

    .line 101
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/sec/ims/cmc/CmcCallCmdResult;->mCmdResult:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/sec/ims/cmc/CmcCallCmdResult-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/sec/ims/cmc/CmcCallCmdResult;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Lcom/sec/ims/cmc/CmcCallCmdResult$Builder;)V
    .locals 1

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 51
    iput v0, p0, Lcom/sec/ims/cmc/CmcCallCmdResult;->mCallId:I

    .line 110
    iget v0, p1, Lcom/sec/ims/cmc/CmcCallCmdResult$Builder;->mCallId:I

    iput v0, p0, Lcom/sec/ims/cmc/CmcCallCmdResult;->mCallId:I

    .line 111
    iget p1, p1, Lcom/sec/ims/cmc/CmcCallCmdResult$Builder;->mCmdResult:I

    iput p1, p0, Lcom/sec/ims/cmc/CmcCallCmdResult;->mCmdResult:I

    return-void
.end method

.method public constructor <init>(Lcom/sec/ims/cmc/CmcCallCmdResult;)V
    .locals 1

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 51
    iput v0, p0, Lcom/sec/ims/cmc/CmcCallCmdResult;->mCallId:I

    .line 105
    iget v0, p1, Lcom/sec/ims/cmc/CmcCallCmdResult;->mCallId:I

    iput v0, p0, Lcom/sec/ims/cmc/CmcCallCmdResult;->mCallId:I

    .line 106
    iget p1, p1, Lcom/sec/ims/cmc/CmcCallCmdResult;->mCmdResult:I

    iput p1, p0, Lcom/sec/ims/cmc/CmcCallCmdResult;->mCmdResult:I

    return-void
.end method

.method public static getBuilder()Lcom/sec/ims/cmc/CmcCallCmdResult$Builder;
    .locals 1

    .line 122
    new-instance v0, Lcom/sec/ims/cmc/CmcCallCmdResult$Builder;

    invoke-direct {v0}, Lcom/sec/ims/cmc/CmcCallCmdResult$Builder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public getCallId()I
    .locals 0

    .line 60
    iget p0, p0, Lcom/sec/ims/cmc/CmcCallCmdResult;->mCallId:I

    return p0
.end method

.method public getCmdResult()I
    .locals 0

    .line 69
    iget p0, p0, Lcom/sec/ims/cmc/CmcCallCmdResult;->mCmdResult:I

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 116
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CmcCallCmdResult [mCallId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/ims/cmc/CmcCallCmdResult;->mCallId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mCmdResult="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/sec/ims/cmc/CmcCallCmdResult;->mCmdResult:I

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

    .line 82
    :cond_0
    iget p2, p0, Lcom/sec/ims/cmc/CmcCallCmdResult;->mCallId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 83
    iget p0, p0, Lcom/sec/ims/cmc/CmcCallCmdResult;->mCmdResult:I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
