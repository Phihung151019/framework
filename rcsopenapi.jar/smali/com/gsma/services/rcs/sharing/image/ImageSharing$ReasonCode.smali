.class public final enum Lcom/gsma/services/rcs/sharing/image/ImageSharing$ReasonCode;
.super Ljava/lang/Enum;
.source "ImageSharing.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gsma/services/rcs/sharing/image/ImageSharing;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ReasonCode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/gsma/services/rcs/sharing/image/ImageSharing$ReasonCode;",
        ">;",
        "Landroid/os/Parcelable;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/gsma/services/rcs/sharing/image/ImageSharing$ReasonCode;

.field public static final enum ABORTED_BY_REMOTE:Lcom/gsma/services/rcs/sharing/image/ImageSharing$ReasonCode;

.field public static final enum ABORTED_BY_SYSTEM:Lcom/gsma/services/rcs/sharing/image/ImageSharing$ReasonCode;

.field public static final enum ABORTED_BY_USER:Lcom/gsma/services/rcs/sharing/image/ImageSharing$ReasonCode;

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/gsma/services/rcs/sharing/image/ImageSharing$ReasonCode;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum FAILED_INITIATION:Lcom/gsma/services/rcs/sharing/image/ImageSharing$ReasonCode;

.field public static final enum FAILED_SAVING:Lcom/gsma/services/rcs/sharing/image/ImageSharing$ReasonCode;

.field public static final enum FAILED_SHARING:Lcom/gsma/services/rcs/sharing/image/ImageSharing$ReasonCode;

.field public static final enum REJECTED_BY_REMOTE:Lcom/gsma/services/rcs/sharing/image/ImageSharing$ReasonCode;

.field public static final enum REJECTED_BY_SECONDARY_DEVICE:Lcom/gsma/services/rcs/sharing/image/ImageSharing$ReasonCode;

.field public static final enum REJECTED_BY_SYSTEM:Lcom/gsma/services/rcs/sharing/image/ImageSharing$ReasonCode;

.field public static final enum REJECTED_BY_TIMEOUT:Lcom/gsma/services/rcs/sharing/image/ImageSharing$ReasonCode;

.field public static final enum REJECTED_BY_USER:Lcom/gsma/services/rcs/sharing/image/ImageSharing$ReasonCode;

.field public static final enum REJECTED_LOW_SPACE:Lcom/gsma/services/rcs/sharing/image/ImageSharing$ReasonCode;

.field public static final enum REJECTED_MAX_SHARING_SESSIONS:Lcom/gsma/services/rcs/sharing/image/ImageSharing$ReasonCode;

.field public static final enum REJECTED_MAX_SIZE:Lcom/gsma/services/rcs/sharing/image/ImageSharing$ReasonCode;

.field public static final enum REJECTED_SPAM:Lcom/gsma/services/rcs/sharing/image/ImageSharing$ReasonCode;

.field public static final enum UNSPECIFIED:Lcom/gsma/services/rcs/sharing/image/ImageSharing$ReasonCode;

.field private static mValueToEnum:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/gsma/services/rcs/sharing/image/ImageSharing$ReasonCode;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mCode:I


# direct methods
.method private static synthetic $values()[Lcom/gsma/services/rcs/sharing/image/ImageSharing$ReasonCode;
    .locals 17

    .line 142
    sget-object v1, Lcom/gsma/services/rcs/sharing/image/ImageSharing$ReasonCode;->UNSPECIFIED:Lcom/gsma/services/rcs/sharing/image/ImageSharing$ReasonCode;

    sget-object v2, Lcom/gsma/services/rcs/sharing/image/ImageSharing$ReasonCode;->ABORTED_BY_USER:Lcom/gsma/services/rcs/sharing/image/ImageSharing$ReasonCode;

    sget-object v3, Lcom/gsma/services/rcs/sharing/image/ImageSharing$ReasonCode;->ABORTED_BY_REMOTE:Lcom/gsma/services/rcs/sharing/image/ImageSharing$ReasonCode;

    sget-object v4, Lcom/gsma/services/rcs/sharing/image/ImageSharing$ReasonCode;->ABORTED_BY_SYSTEM:Lcom/gsma/services/rcs/sharing/image/ImageSharing$ReasonCode;

    sget-object v5, Lcom/gsma/services/rcs/sharing/image/ImageSharing$ReasonCode;->REJECTED_BY_SECONDARY_DEVICE:Lcom/gsma/services/rcs/sharing/image/ImageSharing$ReasonCode;

    sget-object v6, Lcom/gsma/services/rcs/sharing/image/ImageSharing$ReasonCode;->REJECTED_SPAM:Lcom/gsma/services/rcs/sharing/image/ImageSharing$ReasonCode;

    sget-object v7, Lcom/gsma/services/rcs/sharing/image/ImageSharing$ReasonCode;->REJECTED_BY_TIMEOUT:Lcom/gsma/services/rcs/sharing/image/ImageSharing$ReasonCode;

    sget-object v8, Lcom/gsma/services/rcs/sharing/image/ImageSharing$ReasonCode;->REJECTED_LOW_SPACE:Lcom/gsma/services/rcs/sharing/image/ImageSharing$ReasonCode;

    sget-object v9, Lcom/gsma/services/rcs/sharing/image/ImageSharing$ReasonCode;->REJECTED_MAX_SIZE:Lcom/gsma/services/rcs/sharing/image/ImageSharing$ReasonCode;

    sget-object v10, Lcom/gsma/services/rcs/sharing/image/ImageSharing$ReasonCode;->REJECTED_MAX_SHARING_SESSIONS:Lcom/gsma/services/rcs/sharing/image/ImageSharing$ReasonCode;

    sget-object v11, Lcom/gsma/services/rcs/sharing/image/ImageSharing$ReasonCode;->REJECTED_BY_USER:Lcom/gsma/services/rcs/sharing/image/ImageSharing$ReasonCode;

    sget-object v12, Lcom/gsma/services/rcs/sharing/image/ImageSharing$ReasonCode;->REJECTED_BY_REMOTE:Lcom/gsma/services/rcs/sharing/image/ImageSharing$ReasonCode;

    sget-object v13, Lcom/gsma/services/rcs/sharing/image/ImageSharing$ReasonCode;->REJECTED_BY_SYSTEM:Lcom/gsma/services/rcs/sharing/image/ImageSharing$ReasonCode;

    sget-object v14, Lcom/gsma/services/rcs/sharing/image/ImageSharing$ReasonCode;->FAILED_INITIATION:Lcom/gsma/services/rcs/sharing/image/ImageSharing$ReasonCode;

    sget-object v15, Lcom/gsma/services/rcs/sharing/image/ImageSharing$ReasonCode;->FAILED_SHARING:Lcom/gsma/services/rcs/sharing/image/ImageSharing$ReasonCode;

    sget-object v16, Lcom/gsma/services/rcs/sharing/image/ImageSharing$ReasonCode;->FAILED_SAVING:Lcom/gsma/services/rcs/sharing/image/ImageSharing$ReasonCode;

    filled-new-array/range {v1 .. v16}, [Lcom/gsma/services/rcs/sharing/image/ImageSharing$ReasonCode;

    move-result-object v0

    return-object v0
.end method

.method static bridge synthetic -$$Nest$fgetmCode(Lcom/gsma/services/rcs/sharing/image/ImageSharing$ReasonCode;)I
    .locals 0

    iget p0, p0, Lcom/gsma/services/rcs/sharing/image/ImageSharing$ReasonCode;->mCode:I

    return p0
.end method

.method static constructor <clinit>()V
    .locals 6

    .line 146
    new-instance v0, Lcom/gsma/services/rcs/sharing/image/ImageSharing$ReasonCode;

    const-string v1, "UNSPECIFIED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/gsma/services/rcs/sharing/image/ImageSharing$ReasonCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/gsma/services/rcs/sharing/image/ImageSharing$ReasonCode;->UNSPECIFIED:Lcom/gsma/services/rcs/sharing/image/ImageSharing$ReasonCode;

    .line 151
    new-instance v0, Lcom/gsma/services/rcs/sharing/image/ImageSharing$ReasonCode;

    const-string v1, "ABORTED_BY_USER"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lcom/gsma/services/rcs/sharing/image/ImageSharing$ReasonCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/gsma/services/rcs/sharing/image/ImageSharing$ReasonCode;->ABORTED_BY_USER:Lcom/gsma/services/rcs/sharing/image/ImageSharing$ReasonCode;

    .line 156
    new-instance v0, Lcom/gsma/services/rcs/sharing/image/ImageSharing$ReasonCode;

    const-string v1, "ABORTED_BY_REMOTE"

    const/4 v3, 0x2

    invoke-direct {v0, v1, v3, v3}, Lcom/gsma/services/rcs/sharing/image/ImageSharing$ReasonCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/gsma/services/rcs/sharing/image/ImageSharing$ReasonCode;->ABORTED_BY_REMOTE:Lcom/gsma/services/rcs/sharing/image/ImageSharing$ReasonCode;

    .line 161
    new-instance v0, Lcom/gsma/services/rcs/sharing/image/ImageSharing$ReasonCode;

    const-string v1, "ABORTED_BY_SYSTEM"

    const/4 v3, 0x3

    invoke-direct {v0, v1, v3, v3}, Lcom/gsma/services/rcs/sharing/image/ImageSharing$ReasonCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/gsma/services/rcs/sharing/image/ImageSharing$ReasonCode;->ABORTED_BY_SYSTEM:Lcom/gsma/services/rcs/sharing/image/ImageSharing$ReasonCode;

    .line 166
    new-instance v0, Lcom/gsma/services/rcs/sharing/image/ImageSharing$ReasonCode;

    const-string v1, "REJECTED_BY_SECONDARY_DEVICE"

    const/4 v3, 0x4

    invoke-direct {v0, v1, v3, v3}, Lcom/gsma/services/rcs/sharing/image/ImageSharing$ReasonCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/gsma/services/rcs/sharing/image/ImageSharing$ReasonCode;->REJECTED_BY_SECONDARY_DEVICE:Lcom/gsma/services/rcs/sharing/image/ImageSharing$ReasonCode;

    .line 171
    new-instance v0, Lcom/gsma/services/rcs/sharing/image/ImageSharing$ReasonCode;

    const-string v1, "REJECTED_SPAM"

    const/4 v3, 0x5

    invoke-direct {v0, v1, v3, v3}, Lcom/gsma/services/rcs/sharing/image/ImageSharing$ReasonCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/gsma/services/rcs/sharing/image/ImageSharing$ReasonCode;->REJECTED_SPAM:Lcom/gsma/services/rcs/sharing/image/ImageSharing$ReasonCode;

    .line 176
    new-instance v0, Lcom/gsma/services/rcs/sharing/image/ImageSharing$ReasonCode;

    const-string v1, "REJECTED_BY_TIMEOUT"

    const/4 v3, 0x6

    invoke-direct {v0, v1, v3, v3}, Lcom/gsma/services/rcs/sharing/image/ImageSharing$ReasonCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/gsma/services/rcs/sharing/image/ImageSharing$ReasonCode;->REJECTED_BY_TIMEOUT:Lcom/gsma/services/rcs/sharing/image/ImageSharing$ReasonCode;

    .line 181
    new-instance v0, Lcom/gsma/services/rcs/sharing/image/ImageSharing$ReasonCode;

    const-string v1, "REJECTED_LOW_SPACE"

    const/4 v3, 0x7

    invoke-direct {v0, v1, v3, v3}, Lcom/gsma/services/rcs/sharing/image/ImageSharing$ReasonCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/gsma/services/rcs/sharing/image/ImageSharing$ReasonCode;->REJECTED_LOW_SPACE:Lcom/gsma/services/rcs/sharing/image/ImageSharing$ReasonCode;

    .line 186
    new-instance v0, Lcom/gsma/services/rcs/sharing/image/ImageSharing$ReasonCode;

    const-string v1, "REJECTED_MAX_SIZE"

    const/16 v3, 0x8

    invoke-direct {v0, v1, v3, v3}, Lcom/gsma/services/rcs/sharing/image/ImageSharing$ReasonCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/gsma/services/rcs/sharing/image/ImageSharing$ReasonCode;->REJECTED_MAX_SIZE:Lcom/gsma/services/rcs/sharing/image/ImageSharing$ReasonCode;

    .line 191
    new-instance v0, Lcom/gsma/services/rcs/sharing/image/ImageSharing$ReasonCode;

    const-string v1, "REJECTED_MAX_SHARING_SESSIONS"

    const/16 v3, 0x9

    invoke-direct {v0, v1, v3, v3}, Lcom/gsma/services/rcs/sharing/image/ImageSharing$ReasonCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/gsma/services/rcs/sharing/image/ImageSharing$ReasonCode;->REJECTED_MAX_SHARING_SESSIONS:Lcom/gsma/services/rcs/sharing/image/ImageSharing$ReasonCode;

    .line 196
    new-instance v0, Lcom/gsma/services/rcs/sharing/image/ImageSharing$ReasonCode;

    const-string v1, "REJECTED_BY_USER"

    const/16 v3, 0xa

    invoke-direct {v0, v1, v3, v3}, Lcom/gsma/services/rcs/sharing/image/ImageSharing$ReasonCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/gsma/services/rcs/sharing/image/ImageSharing$ReasonCode;->REJECTED_BY_USER:Lcom/gsma/services/rcs/sharing/image/ImageSharing$ReasonCode;

    .line 201
    new-instance v0, Lcom/gsma/services/rcs/sharing/image/ImageSharing$ReasonCode;

    const-string v1, "REJECTED_BY_REMOTE"

    const/16 v3, 0xb

    invoke-direct {v0, v1, v3, v3}, Lcom/gsma/services/rcs/sharing/image/ImageSharing$ReasonCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/gsma/services/rcs/sharing/image/ImageSharing$ReasonCode;->REJECTED_BY_REMOTE:Lcom/gsma/services/rcs/sharing/image/ImageSharing$ReasonCode;

    .line 206
    new-instance v0, Lcom/gsma/services/rcs/sharing/image/ImageSharing$ReasonCode;

    const-string v1, "REJECTED_BY_SYSTEM"

    const/16 v3, 0xc

    invoke-direct {v0, v1, v3, v3}, Lcom/gsma/services/rcs/sharing/image/ImageSharing$ReasonCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/gsma/services/rcs/sharing/image/ImageSharing$ReasonCode;->REJECTED_BY_SYSTEM:Lcom/gsma/services/rcs/sharing/image/ImageSharing$ReasonCode;

    .line 211
    new-instance v0, Lcom/gsma/services/rcs/sharing/image/ImageSharing$ReasonCode;

    const-string v1, "FAILED_INITIATION"

    const/16 v3, 0xd

    invoke-direct {v0, v1, v3, v3}, Lcom/gsma/services/rcs/sharing/image/ImageSharing$ReasonCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/gsma/services/rcs/sharing/image/ImageSharing$ReasonCode;->FAILED_INITIATION:Lcom/gsma/services/rcs/sharing/image/ImageSharing$ReasonCode;

    .line 216
    new-instance v0, Lcom/gsma/services/rcs/sharing/image/ImageSharing$ReasonCode;

    const-string v1, "FAILED_SHARING"

    const/16 v3, 0xe

    invoke-direct {v0, v1, v3, v3}, Lcom/gsma/services/rcs/sharing/image/ImageSharing$ReasonCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/gsma/services/rcs/sharing/image/ImageSharing$ReasonCode;->FAILED_SHARING:Lcom/gsma/services/rcs/sharing/image/ImageSharing$ReasonCode;

    .line 221
    new-instance v0, Lcom/gsma/services/rcs/sharing/image/ImageSharing$ReasonCode;

    const-string v1, "FAILED_SAVING"

    const/16 v3, 0xf

    invoke-direct {v0, v1, v3, v3}, Lcom/gsma/services/rcs/sharing/image/ImageSharing$ReasonCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/gsma/services/rcs/sharing/image/ImageSharing$ReasonCode;->FAILED_SAVING:Lcom/gsma/services/rcs/sharing/image/ImageSharing$ReasonCode;

    .line 142
    invoke-static {}, Lcom/gsma/services/rcs/sharing/image/ImageSharing$ReasonCode;->$values()[Lcom/gsma/services/rcs/sharing/image/ImageSharing$ReasonCode;

    move-result-object v0

    sput-object v0, Lcom/gsma/services/rcs/sharing/image/ImageSharing$ReasonCode;->$VALUES:[Lcom/gsma/services/rcs/sharing/image/ImageSharing$ReasonCode;

    .line 224
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/gsma/services/rcs/sharing/image/ImageSharing$ReasonCode;->mValueToEnum:Landroid/util/SparseArray;

    .line 226
    invoke-static {}, Lcom/gsma/services/rcs/sharing/image/ImageSharing$ReasonCode;->values()[Lcom/gsma/services/rcs/sharing/image/ImageSharing$ReasonCode;

    move-result-object v0

    array-length v1, v0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 227
    .local v3, "entry":Lcom/gsma/services/rcs/sharing/image/ImageSharing$ReasonCode;
    sget-object v4, Lcom/gsma/services/rcs/sharing/image/ImageSharing$ReasonCode;->mValueToEnum:Landroid/util/SparseArray;

    invoke-virtual {v3}, Lcom/gsma/services/rcs/sharing/image/ImageSharing$ReasonCode;->toInt()I

    move-result v5

    invoke-virtual {v4, v5, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 226
    .end local v3    # "entry":Lcom/gsma/services/rcs/sharing/image/ImageSharing$ReasonCode;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 287
    :cond_0
    new-instance v0, Lcom/gsma/services/rcs/sharing/image/ImageSharing$ReasonCode$1;

    invoke-direct {v0}, Lcom/gsma/services/rcs/sharing/image/ImageSharing$ReasonCode$1;-><init>()V

    sput-object v0, Lcom/gsma/services/rcs/sharing/image/ImageSharing$ReasonCode;->CREATOR:Landroid/os/Parcelable$Creator;

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

    .line 230
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 231
    iput p3, p0, Lcom/gsma/services/rcs/sharing/image/ImageSharing$ReasonCode;->mCode:I

    .line 232
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILandroid/os/Parcel;)V
    .locals 0
    .param p3, "in"    # Landroid/os/Parcel;
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
            "(",
            "Landroid/os/Parcel;",
            ")V"
        }
    .end annotation

    .line 234
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 235
    invoke-virtual {p3}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/gsma/services/rcs/sharing/image/ImageSharing$ReasonCode;->mCode:I

    .line 236
    return-void
.end method

.method public static final valueOf(I)Lcom/gsma/services/rcs/sharing/image/ImageSharing$ReasonCode;
    .locals 4
    .param p0, "value"    # I

    .line 252
    sget-object v0, Lcom/gsma/services/rcs/sharing/image/ImageSharing$ReasonCode;->mValueToEnum:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gsma/services/rcs/sharing/image/ImageSharing$ReasonCode;

    .line 253
    .local v0, "entry":Lcom/gsma/services/rcs/sharing/image/ImageSharing$ReasonCode;
    if-eqz v0, :cond_0

    .line 254
    return-object v0

    .line 256
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "No enum const class "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 257
    const-class v3, Lcom/gsma/services/rcs/sharing/image/ImageSharing$ReasonCode;

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

.method public static valueOf(Ljava/lang/String;)Lcom/gsma/services/rcs/sharing/image/ImageSharing$ReasonCode;
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
    const-class v0, Lcom/gsma/services/rcs/sharing/image/ImageSharing$ReasonCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/gsma/services/rcs/sharing/image/ImageSharing$ReasonCode;

    return-object v0
.end method

.method public static values()[Lcom/gsma/services/rcs/sharing/image/ImageSharing$ReasonCode;
    .locals 1

    .line 142
    sget-object v0, Lcom/gsma/services/rcs/sharing/image/ImageSharing$ReasonCode;->$VALUES:[Lcom/gsma/services/rcs/sharing/image/ImageSharing$ReasonCode;

    invoke-virtual {v0}, [Lcom/gsma/services/rcs/sharing/image/ImageSharing$ReasonCode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/gsma/services/rcs/sharing/image/ImageSharing$ReasonCode;

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 267
    const/4 v0, 0x0

    return v0
.end method

.method public final toInt()I
    .locals 1

    .line 243
    iget v0, p0, Lcom/gsma/services/rcs/sharing/image/ImageSharing$ReasonCode;->mCode:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 310
    iget v0, p0, Lcom/gsma/services/rcs/sharing/image/ImageSharing$ReasonCode;->mCode:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 280
    iget v0, p0, Lcom/gsma/services/rcs/sharing/image/ImageSharing$ReasonCode;->mCode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 281
    return-void
.end method
