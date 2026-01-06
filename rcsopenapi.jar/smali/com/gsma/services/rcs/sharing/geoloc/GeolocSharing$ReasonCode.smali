.class public final enum Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$ReasonCode;
.super Ljava/lang/Enum;
.source "GeolocSharing.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ReasonCode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$ReasonCode;",
        ">;",
        "Landroid/os/Parcelable;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$ReasonCode;

.field public static final enum ABORTED_BY_REMOTE:Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$ReasonCode;

.field public static final enum ABORTED_BY_SYSTEM:Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$ReasonCode;

.field public static final enum ABORTED_BY_USER:Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$ReasonCode;

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$ReasonCode;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum FAILED_INITIATION:Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$ReasonCode;

.field public static final enum FAILED_SHARING:Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$ReasonCode;

.field public static final enum REJECTED_BY_REMOTE:Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$ReasonCode;

.field public static final enum REJECTED_BY_SECONDARY_DEVICE:Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$ReasonCode;

.field public static final enum REJECTED_BY_SYSTEM:Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$ReasonCode;

.field public static final enum REJECTED_BY_TIMEOUT:Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$ReasonCode;

.field public static final enum REJECTED_BY_USER:Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$ReasonCode;

.field public static final enum REJECTED_MAX_SHARING_SESSIONS:Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$ReasonCode;

.field public static final enum REJECTED_SPAM:Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$ReasonCode;

.field public static final enum UNSPECIFIED:Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$ReasonCode;

.field private static mValueToEnum:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$ReasonCode;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mCode:I


# direct methods
.method private static synthetic $values()[Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$ReasonCode;
    .locals 13

    .line 142
    sget-object v0, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$ReasonCode;->UNSPECIFIED:Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$ReasonCode;

    sget-object v1, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$ReasonCode;->ABORTED_BY_USER:Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$ReasonCode;

    sget-object v2, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$ReasonCode;->ABORTED_BY_REMOTE:Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$ReasonCode;

    sget-object v3, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$ReasonCode;->ABORTED_BY_SYSTEM:Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$ReasonCode;

    sget-object v4, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$ReasonCode;->REJECTED_BY_SECONDARY_DEVICE:Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$ReasonCode;

    sget-object v5, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$ReasonCode;->REJECTED_SPAM:Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$ReasonCode;

    sget-object v6, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$ReasonCode;->REJECTED_MAX_SHARING_SESSIONS:Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$ReasonCode;

    sget-object v7, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$ReasonCode;->REJECTED_BY_USER:Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$ReasonCode;

    sget-object v8, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$ReasonCode;->REJECTED_BY_REMOTE:Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$ReasonCode;

    sget-object v9, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$ReasonCode;->REJECTED_BY_TIMEOUT:Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$ReasonCode;

    sget-object v10, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$ReasonCode;->REJECTED_BY_SYSTEM:Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$ReasonCode;

    sget-object v11, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$ReasonCode;->FAILED_INITIATION:Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$ReasonCode;

    sget-object v12, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$ReasonCode;->FAILED_SHARING:Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$ReasonCode;

    filled-new-array/range {v0 .. v12}, [Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$ReasonCode;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 6

    .line 147
    new-instance v0, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$ReasonCode;

    const-string v1, "UNSPECIFIED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$ReasonCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$ReasonCode;->UNSPECIFIED:Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$ReasonCode;

    .line 152
    new-instance v0, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$ReasonCode;

    const-string v1, "ABORTED_BY_USER"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$ReasonCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$ReasonCode;->ABORTED_BY_USER:Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$ReasonCode;

    .line 157
    new-instance v0, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$ReasonCode;

    const-string v1, "ABORTED_BY_REMOTE"

    const/4 v3, 0x2

    invoke-direct {v0, v1, v3, v3}, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$ReasonCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$ReasonCode;->ABORTED_BY_REMOTE:Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$ReasonCode;

    .line 162
    new-instance v0, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$ReasonCode;

    const-string v1, "ABORTED_BY_SYSTEM"

    const/4 v3, 0x3

    invoke-direct {v0, v1, v3, v3}, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$ReasonCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$ReasonCode;->ABORTED_BY_SYSTEM:Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$ReasonCode;

    .line 167
    new-instance v0, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$ReasonCode;

    const-string v1, "REJECTED_BY_SECONDARY_DEVICE"

    const/4 v3, 0x4

    invoke-direct {v0, v1, v3, v3}, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$ReasonCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$ReasonCode;->REJECTED_BY_SECONDARY_DEVICE:Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$ReasonCode;

    .line 172
    new-instance v0, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$ReasonCode;

    const-string v1, "REJECTED_SPAM"

    const/4 v3, 0x5

    invoke-direct {v0, v1, v3, v3}, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$ReasonCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$ReasonCode;->REJECTED_SPAM:Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$ReasonCode;

    .line 177
    new-instance v0, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$ReasonCode;

    const-string v1, "REJECTED_MAX_SHARING_SESSIONS"

    const/4 v3, 0x6

    invoke-direct {v0, v1, v3, v3}, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$ReasonCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$ReasonCode;->REJECTED_MAX_SHARING_SESSIONS:Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$ReasonCode;

    .line 182
    new-instance v0, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$ReasonCode;

    const-string v1, "REJECTED_BY_USER"

    const/4 v3, 0x7

    invoke-direct {v0, v1, v3, v3}, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$ReasonCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$ReasonCode;->REJECTED_BY_USER:Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$ReasonCode;

    .line 187
    new-instance v0, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$ReasonCode;

    const-string v1, "REJECTED_BY_REMOTE"

    const/16 v3, 0x8

    invoke-direct {v0, v1, v3, v3}, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$ReasonCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$ReasonCode;->REJECTED_BY_REMOTE:Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$ReasonCode;

    .line 192
    new-instance v0, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$ReasonCode;

    const-string v1, "REJECTED_BY_TIMEOUT"

    const/16 v3, 0x9

    invoke-direct {v0, v1, v3, v3}, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$ReasonCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$ReasonCode;->REJECTED_BY_TIMEOUT:Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$ReasonCode;

    .line 197
    new-instance v0, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$ReasonCode;

    const-string v1, "REJECTED_BY_SYSTEM"

    const/16 v3, 0xa

    invoke-direct {v0, v1, v3, v3}, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$ReasonCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$ReasonCode;->REJECTED_BY_SYSTEM:Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$ReasonCode;

    .line 202
    new-instance v0, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$ReasonCode;

    const-string v1, "FAILED_INITIATION"

    const/16 v3, 0xb

    invoke-direct {v0, v1, v3, v3}, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$ReasonCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$ReasonCode;->FAILED_INITIATION:Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$ReasonCode;

    .line 207
    new-instance v0, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$ReasonCode;

    const-string v1, "FAILED_SHARING"

    const/16 v3, 0xc

    invoke-direct {v0, v1, v3, v3}, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$ReasonCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$ReasonCode;->FAILED_SHARING:Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$ReasonCode;

    .line 142
    invoke-static {}, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$ReasonCode;->$values()[Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$ReasonCode;

    move-result-object v0

    sput-object v0, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$ReasonCode;->$VALUES:[Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$ReasonCode;

    .line 211
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$ReasonCode;->mValueToEnum:Landroid/util/SparseArray;

    .line 213
    invoke-static {}, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$ReasonCode;->values()[Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$ReasonCode;

    move-result-object v0

    array-length v1, v0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 214
    .local v3, "entry":Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$ReasonCode;
    sget-object v4, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$ReasonCode;->mValueToEnum:Landroid/util/SparseArray;

    invoke-virtual {v3}, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$ReasonCode;->toInt()I

    move-result v5

    invoke-virtual {v4, v5, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 213
    .end local v3    # "entry":Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$ReasonCode;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 252
    :cond_0
    new-instance v0, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$ReasonCode$1;

    invoke-direct {v0}, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$ReasonCode$1;-><init>()V

    sput-object v0, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$ReasonCode;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "code"    # I
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

    .line 218
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 219
    iput p3, p0, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$ReasonCode;->mCode:I

    .line 220
    return-void
.end method

.method public static final valueOf(I)Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$ReasonCode;
    .locals 4
    .param p0, "value"    # I

    .line 230
    sget-object v0, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$ReasonCode;->mValueToEnum:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$ReasonCode;

    .line 231
    .local v0, "entry":Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$ReasonCode;
    if-eqz v0, :cond_0

    .line 232
    return-object v0

    .line 234
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "No enum const class "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 235
    const-class v3, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$ReasonCode;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$ReasonCode;
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

    .line 142
    const-class v0, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$ReasonCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$ReasonCode;

    return-object v0
.end method

.method public static values()[Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$ReasonCode;
    .locals 1

    .line 142
    sget-object v0, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$ReasonCode;->$VALUES:[Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$ReasonCode;

    invoke-virtual {v0}, [Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$ReasonCode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$ReasonCode;

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 239
    const/4 v0, 0x0

    return v0
.end method

.method public final toInt()I
    .locals 1

    .line 227
    iget v0, p0, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$ReasonCode;->mCode:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 244
    iget v0, p0, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$ReasonCode;->mCode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 245
    return-void
.end method
