.class public final enum Lcom/gsma/services/rcs/sharing/video/VideoSharing$State;
.super Ljava/lang/Enum;
.source "VideoSharing.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gsma/services/rcs/sharing/video/VideoSharing;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/gsma/services/rcs/sharing/video/VideoSharing$State;",
        ">;",
        "Landroid/os/Parcelable;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/gsma/services/rcs/sharing/video/VideoSharing$State;

.field public static final enum ABORTED:Lcom/gsma/services/rcs/sharing/video/VideoSharing$State;

.field public static final enum ACCEPTING:Lcom/gsma/services/rcs/sharing/video/VideoSharing$State;

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/gsma/services/rcs/sharing/video/VideoSharing$State;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum FAILED:Lcom/gsma/services/rcs/sharing/video/VideoSharing$State;

.field public static final enum INITIATING:Lcom/gsma/services/rcs/sharing/video/VideoSharing$State;

.field public static final enum INVITED:Lcom/gsma/services/rcs/sharing/video/VideoSharing$State;

.field public static final enum REJECTED:Lcom/gsma/services/rcs/sharing/video/VideoSharing$State;

.field public static final enum RINGING:Lcom/gsma/services/rcs/sharing/video/VideoSharing$State;

.field public static final enum STARTED:Lcom/gsma/services/rcs/sharing/video/VideoSharing$State;


# instance fields
.field private final stateId:I


# direct methods
.method private static synthetic $values()[Lcom/gsma/services/rcs/sharing/video/VideoSharing$State;
    .locals 8

    .line 44
    sget-object v0, Lcom/gsma/services/rcs/sharing/video/VideoSharing$State;->INVITED:Lcom/gsma/services/rcs/sharing/video/VideoSharing$State;

    sget-object v1, Lcom/gsma/services/rcs/sharing/video/VideoSharing$State;->INITIATING:Lcom/gsma/services/rcs/sharing/video/VideoSharing$State;

    sget-object v2, Lcom/gsma/services/rcs/sharing/video/VideoSharing$State;->STARTED:Lcom/gsma/services/rcs/sharing/video/VideoSharing$State;

    sget-object v3, Lcom/gsma/services/rcs/sharing/video/VideoSharing$State;->ABORTED:Lcom/gsma/services/rcs/sharing/video/VideoSharing$State;

    sget-object v4, Lcom/gsma/services/rcs/sharing/video/VideoSharing$State;->FAILED:Lcom/gsma/services/rcs/sharing/video/VideoSharing$State;

    sget-object v5, Lcom/gsma/services/rcs/sharing/video/VideoSharing$State;->REJECTED:Lcom/gsma/services/rcs/sharing/video/VideoSharing$State;

    sget-object v6, Lcom/gsma/services/rcs/sharing/video/VideoSharing$State;->RINGING:Lcom/gsma/services/rcs/sharing/video/VideoSharing$State;

    sget-object v7, Lcom/gsma/services/rcs/sharing/video/VideoSharing$State;->ACCEPTING:Lcom/gsma/services/rcs/sharing/video/VideoSharing$State;

    filled-new-array/range {v0 .. v7}, [Lcom/gsma/services/rcs/sharing/video/VideoSharing$State;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 45
    new-instance v0, Lcom/gsma/services/rcs/sharing/video/VideoSharing$State;

    const-string v1, "INVITED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/gsma/services/rcs/sharing/video/VideoSharing$State;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/gsma/services/rcs/sharing/video/VideoSharing$State;->INVITED:Lcom/gsma/services/rcs/sharing/video/VideoSharing$State;

    new-instance v0, Lcom/gsma/services/rcs/sharing/video/VideoSharing$State;

    const-string v1, "INITIATING"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Lcom/gsma/services/rcs/sharing/video/VideoSharing$State;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/gsma/services/rcs/sharing/video/VideoSharing$State;->INITIATING:Lcom/gsma/services/rcs/sharing/video/VideoSharing$State;

    new-instance v0, Lcom/gsma/services/rcs/sharing/video/VideoSharing$State;

    const-string v1, "STARTED"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v2}, Lcom/gsma/services/rcs/sharing/video/VideoSharing$State;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/gsma/services/rcs/sharing/video/VideoSharing$State;->STARTED:Lcom/gsma/services/rcs/sharing/video/VideoSharing$State;

    new-instance v0, Lcom/gsma/services/rcs/sharing/video/VideoSharing$State;

    const-string v1, "ABORTED"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2, v2}, Lcom/gsma/services/rcs/sharing/video/VideoSharing$State;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/gsma/services/rcs/sharing/video/VideoSharing$State;->ABORTED:Lcom/gsma/services/rcs/sharing/video/VideoSharing$State;

    new-instance v0, Lcom/gsma/services/rcs/sharing/video/VideoSharing$State;

    const-string v1, "FAILED"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2, v2}, Lcom/gsma/services/rcs/sharing/video/VideoSharing$State;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/gsma/services/rcs/sharing/video/VideoSharing$State;->FAILED:Lcom/gsma/services/rcs/sharing/video/VideoSharing$State;

    new-instance v0, Lcom/gsma/services/rcs/sharing/video/VideoSharing$State;

    const-string v1, "REJECTED"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2, v2}, Lcom/gsma/services/rcs/sharing/video/VideoSharing$State;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/gsma/services/rcs/sharing/video/VideoSharing$State;->REJECTED:Lcom/gsma/services/rcs/sharing/video/VideoSharing$State;

    new-instance v0, Lcom/gsma/services/rcs/sharing/video/VideoSharing$State;

    const-string v1, "RINGING"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2, v2}, Lcom/gsma/services/rcs/sharing/video/VideoSharing$State;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/gsma/services/rcs/sharing/video/VideoSharing$State;->RINGING:Lcom/gsma/services/rcs/sharing/video/VideoSharing$State;

    new-instance v0, Lcom/gsma/services/rcs/sharing/video/VideoSharing$State;

    const-string v1, "ACCEPTING"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2, v2}, Lcom/gsma/services/rcs/sharing/video/VideoSharing$State;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/gsma/services/rcs/sharing/video/VideoSharing$State;->ACCEPTING:Lcom/gsma/services/rcs/sharing/video/VideoSharing$State;

    .line 44
    invoke-static {}, Lcom/gsma/services/rcs/sharing/video/VideoSharing$State;->$values()[Lcom/gsma/services/rcs/sharing/video/VideoSharing$State;

    move-result-object v0

    sput-object v0, Lcom/gsma/services/rcs/sharing/video/VideoSharing$State;->$VALUES:[Lcom/gsma/services/rcs/sharing/video/VideoSharing$State;

    .line 93
    new-instance v0, Lcom/gsma/services/rcs/sharing/video/VideoSharing$State$1;

    invoke-direct {v0}, Lcom/gsma/services/rcs/sharing/video/VideoSharing$State$1;-><init>()V

    sput-object v0, Lcom/gsma/services/rcs/sharing/video/VideoSharing$State;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "stateId"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 49
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 50
    iput p3, p0, Lcom/gsma/services/rcs/sharing/video/VideoSharing$State;->stateId:I

    .line 51
    return-void
.end method

.method public static valueOf(I)Lcom/gsma/services/rcs/sharing/video/VideoSharing$State;
    .locals 6
    .param p0, "id"    # I

    .line 54
    const/4 v0, 0x0

    .line 55
    .local v0, "state":Lcom/gsma/services/rcs/sharing/video/VideoSharing$State;
    invoke-static {}, Lcom/gsma/services/rcs/sharing/video/VideoSharing$State;->values()[Lcom/gsma/services/rcs/sharing/video/VideoSharing$State;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 56
    .local v4, "s":Lcom/gsma/services/rcs/sharing/video/VideoSharing$State;
    iget v5, v4, Lcom/gsma/services/rcs/sharing/video/VideoSharing$State;->stateId:I

    if-ne v5, p0, :cond_0

    .line 57
    move-object v0, v4

    .line 58
    goto :goto_1

    .line 55
    .end local v4    # "s":Lcom/gsma/services/rcs/sharing/video/VideoSharing$State;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 61
    :cond_1
    :goto_1
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/gsma/services/rcs/sharing/video/VideoSharing$State;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 44
    const-class v0, Lcom/gsma/services/rcs/sharing/video/VideoSharing$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/gsma/services/rcs/sharing/video/VideoSharing$State;

    return-object v0
.end method

.method public static values()[Lcom/gsma/services/rcs/sharing/video/VideoSharing$State;
    .locals 1

    .line 44
    sget-object v0, Lcom/gsma/services/rcs/sharing/video/VideoSharing$State;->$VALUES:[Lcom/gsma/services/rcs/sharing/video/VideoSharing$State;

    invoke-virtual {v0}, [Lcom/gsma/services/rcs/sharing/video/VideoSharing$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/gsma/services/rcs/sharing/video/VideoSharing$State;

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 75
    const/4 v0, 0x0

    return v0
.end method

.method public toInt()I
    .locals 1

    .line 70
    iget v0, p0, Lcom/gsma/services/rcs/sharing/video/VideoSharing$State;->stateId:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 66
    iget v0, p0, Lcom/gsma/services/rcs/sharing/video/VideoSharing$State;->stateId:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "arg0"    # Landroid/os/Parcel;
    .param p2, "arg1"    # I

    .line 86
    iget v0, p0, Lcom/gsma/services/rcs/sharing/video/VideoSharing$State;->stateId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 87
    return-void
.end method
