.class public final enum Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo$Status;
.super Ljava/lang/Enum;
.source "GroupDeliveryInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Status"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo$Status;",
        ">;",
        "Landroid/os/Parcelable;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo$Status;

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo$Status;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum DELIVERED:Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo$Status;

.field public static final enum DISPLAYED:Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo$Status;

.field public static final enum FAILED:Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo$Status;

.field public static final enum NOT_DELIVERED:Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo$Status;

.field public static final enum UNSUPPORTED:Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo$Status;

.field private static mValueToEnum:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo$Status;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final status:I


# direct methods
.method private static synthetic $values()[Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo$Status;
    .locals 5

    .line 12
    sget-object v0, Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo$Status;->UNSUPPORTED:Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo$Status;

    sget-object v1, Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo$Status;->NOT_DELIVERED:Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo$Status;

    sget-object v2, Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo$Status;->DELIVERED:Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo$Status;

    sget-object v3, Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo$Status;->DISPLAYED:Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo$Status;

    sget-object v4, Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo$Status;->FAILED:Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo$Status;

    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo$Status;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 6

    .line 13
    new-instance v0, Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo$Status;

    const-string v1, "UNSUPPORTED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo$Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo$Status;->UNSUPPORTED:Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo$Status;

    new-instance v0, Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo$Status;

    const-string v1, "NOT_DELIVERED"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo$Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo$Status;->NOT_DELIVERED:Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo$Status;

    new-instance v0, Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo$Status;

    const-string v1, "DELIVERED"

    const/4 v3, 0x2

    invoke-direct {v0, v1, v3, v3}, Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo$Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo$Status;->DELIVERED:Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo$Status;

    new-instance v0, Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo$Status;

    const-string v1, "DISPLAYED"

    const/4 v3, 0x3

    invoke-direct {v0, v1, v3, v3}, Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo$Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo$Status;->DISPLAYED:Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo$Status;

    new-instance v0, Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo$Status;

    const-string v1, "FAILED"

    const/4 v3, 0x4

    invoke-direct {v0, v1, v3, v3}, Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo$Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo$Status;->FAILED:Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo$Status;

    .line 12
    invoke-static {}, Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo$Status;->$values()[Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo$Status;

    move-result-object v0

    sput-object v0, Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo$Status;->$VALUES:[Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo$Status;

    .line 23
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo$Status;->mValueToEnum:Landroid/util/SparseArray;

    .line 25
    invoke-static {}, Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo$Status;->values()[Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo$Status;

    move-result-object v0

    array-length v1, v0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 26
    .local v3, "entry":Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo$Status;
    sget-object v4, Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo$Status;->mValueToEnum:Landroid/util/SparseArray;

    invoke-virtual {v3}, Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo$Status;->toInt()I

    move-result v5

    invoke-virtual {v4, v5, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 25
    .end local v3    # "entry":Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo$Status;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 73
    :cond_0
    new-instance v0, Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo$Status$1;

    invoke-direct {v0}, Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo$Status$1;-><init>()V

    sput-object v0, Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo$Status;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "status"    # I
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

    .line 14
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 15
    iput p3, p0, Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo$Status;->status:I

    .line 16
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

    .line 18
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 19
    invoke-virtual {p3}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo$Status;->status:I

    .line 20
    return-void
.end method

.method public static final valueOf(I)Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo$Status;
    .locals 4
    .param p0, "value"    # I

    .line 39
    sget-object v0, Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo$Status;->mValueToEnum:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo$Status;

    .line 40
    .local v0, "entry":Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo$Status;
    if-eqz v0, :cond_0

    .line 41
    return-object v0

    .line 43
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "No enum const class "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-class v3, Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo$Status;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 44
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

.method public static valueOf(Ljava/lang/String;)Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo$Status;
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

    .line 12
    const-class v0, Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo$Status;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo$Status;

    return-object v0
.end method

.method public static values()[Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo$Status;
    .locals 1

    .line 12
    sget-object v0, Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo$Status;->$VALUES:[Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo$Status;

    invoke-virtual {v0}, [Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo$Status;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo$Status;

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 55
    const/4 v0, 0x0

    return v0
.end method

.method public final toInt()I
    .locals 1

    .line 35
    iget v0, p0, Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo$Status;->status:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 66
    iget v0, p0, Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo$Status;->status:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 67
    return-void
.end method
