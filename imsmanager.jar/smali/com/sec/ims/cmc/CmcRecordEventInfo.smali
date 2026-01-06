.class public Lcom/sec/ims/cmc/CmcRecordEventInfo;
.super Ljava/lang/Object;
.source "CmcRecordEventInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/ims/cmc/CmcRecordEventInfo$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/sec/ims/cmc/CmcRecordEventInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final LOG_TAG:Ljava/lang/String; = "CmcCallEventInfo"


# instance fields
.field private mCallId:I

.field private mRecordEvent:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 27
    new-instance v0, Lcom/sec/ims/cmc/CmcRecordEventInfo$1;

    invoke-direct {v0}, Lcom/sec/ims/cmc/CmcRecordEventInfo$1;-><init>()V

    sput-object v0, Lcom/sec/ims/cmc/CmcRecordEventInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 9
    iput v0, p0, Lcom/sec/ims/cmc/CmcRecordEventInfo;->mCallId:I

    .line 10
    iput v0, p0, Lcom/sec/ims/cmc/CmcRecordEventInfo;->mRecordEvent:I

    .line 54
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/ims/cmc/CmcRecordEventInfo;->mCallId:I

    .line 55
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/sec/ims/cmc/CmcRecordEventInfo;->mRecordEvent:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/sec/ims/cmc/CmcRecordEventInfo-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/sec/ims/cmc/CmcRecordEventInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Lcom/sec/ims/cmc/CmcRecordEventInfo$Builder;)V
    .locals 1

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 9
    iput v0, p0, Lcom/sec/ims/cmc/CmcRecordEventInfo;->mCallId:I

    .line 10
    iput v0, p0, Lcom/sec/ims/cmc/CmcRecordEventInfo;->mRecordEvent:I

    .line 64
    iget v0, p1, Lcom/sec/ims/cmc/CmcRecordEventInfo$Builder;->mCallId:I

    iput v0, p0, Lcom/sec/ims/cmc/CmcRecordEventInfo;->mCallId:I

    .line 65
    iget p1, p1, Lcom/sec/ims/cmc/CmcRecordEventInfo$Builder;->mRecordEvent:I

    iput p1, p0, Lcom/sec/ims/cmc/CmcRecordEventInfo;->mRecordEvent:I

    return-void
.end method

.method public constructor <init>(Lcom/sec/ims/cmc/CmcRecordEventInfo;)V
    .locals 1

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 9
    iput v0, p0, Lcom/sec/ims/cmc/CmcRecordEventInfo;->mCallId:I

    .line 10
    iput v0, p0, Lcom/sec/ims/cmc/CmcRecordEventInfo;->mRecordEvent:I

    .line 59
    iget v0, p1, Lcom/sec/ims/cmc/CmcRecordEventInfo;->mCallId:I

    iput v0, p0, Lcom/sec/ims/cmc/CmcRecordEventInfo;->mCallId:I

    .line 60
    iget p1, p1, Lcom/sec/ims/cmc/CmcRecordEventInfo;->mRecordEvent:I

    iput p1, p0, Lcom/sec/ims/cmc/CmcRecordEventInfo;->mRecordEvent:I

    return-void
.end method

.method public static getBuilder()Lcom/sec/ims/cmc/CmcRecordEventInfo$Builder;
    .locals 1

    .line 76
    new-instance v0, Lcom/sec/ims/cmc/CmcRecordEventInfo$Builder;

    invoke-direct {v0}, Lcom/sec/ims/cmc/CmcRecordEventInfo$Builder;-><init>()V

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

    .line 17
    iget p0, p0, Lcom/sec/ims/cmc/CmcRecordEventInfo;->mCallId:I

    return p0
.end method

.method public getRecordEvent()I
    .locals 0

    .line 25
    iget p0, p0, Lcom/sec/ims/cmc/CmcRecordEventInfo;->mRecordEvent:I

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CmcRecordEventInfo [mCallId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/ims/cmc/CmcRecordEventInfo;->mCallId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mRecordEvent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/sec/ims/cmc/CmcRecordEventInfo;->mRecordEvent:I

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

    .line 49
    :cond_0
    iget p2, p0, Lcom/sec/ims/cmc/CmcRecordEventInfo;->mCallId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 50
    iget p0, p0, Lcom/sec/ims/cmc/CmcRecordEventInfo;->mRecordEvent:I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
