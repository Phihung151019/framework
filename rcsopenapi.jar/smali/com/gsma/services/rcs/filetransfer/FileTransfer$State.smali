.class public final enum Lcom/gsma/services/rcs/filetransfer/FileTransfer$State;
.super Ljava/lang/Enum;
.source "FileTransfer.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gsma/services/rcs/filetransfer/FileTransfer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/gsma/services/rcs/filetransfer/FileTransfer$State;",
        ">;",
        "Landroid/os/Parcelable;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/gsma/services/rcs/filetransfer/FileTransfer$State;

.field public static final enum ABORTED:Lcom/gsma/services/rcs/filetransfer/FileTransfer$State;

.field public static final enum ACCEPTING:Lcom/gsma/services/rcs/filetransfer/FileTransfer$State;

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/gsma/services/rcs/filetransfer/FileTransfer$State;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum DELIVERED:Lcom/gsma/services/rcs/filetransfer/FileTransfer$State;

.field public static final enum DISPLAYED:Lcom/gsma/services/rcs/filetransfer/FileTransfer$State;

.field public static final enum FAILED:Lcom/gsma/services/rcs/filetransfer/FileTransfer$State;

.field public static final enum INITIATING:Lcom/gsma/services/rcs/filetransfer/FileTransfer$State;

.field public static final enum INVITED:Lcom/gsma/services/rcs/filetransfer/FileTransfer$State;

.field public static final enum PAUSED:Lcom/gsma/services/rcs/filetransfer/FileTransfer$State;

.field public static final enum QUEUED:Lcom/gsma/services/rcs/filetransfer/FileTransfer$State;

.field public static final enum REJECTED:Lcom/gsma/services/rcs/filetransfer/FileTransfer$State;

.field public static final enum STARTED:Lcom/gsma/services/rcs/filetransfer/FileTransfer$State;

.field public static final enum TRANSFERRED:Lcom/gsma/services/rcs/filetransfer/FileTransfer$State;

.field private static mValueToEnum:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/gsma/services/rcs/filetransfer/FileTransfer$State;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final state:I


# direct methods
.method private static synthetic $values()[Lcom/gsma/services/rcs/filetransfer/FileTransfer$State;
    .locals 12

    .line 117
    sget-object v0, Lcom/gsma/services/rcs/filetransfer/FileTransfer$State;->INVITED:Lcom/gsma/services/rcs/filetransfer/FileTransfer$State;

    sget-object v1, Lcom/gsma/services/rcs/filetransfer/FileTransfer$State;->ACCEPTING:Lcom/gsma/services/rcs/filetransfer/FileTransfer$State;

    sget-object v2, Lcom/gsma/services/rcs/filetransfer/FileTransfer$State;->REJECTED:Lcom/gsma/services/rcs/filetransfer/FileTransfer$State;

    sget-object v3, Lcom/gsma/services/rcs/filetransfer/FileTransfer$State;->QUEUED:Lcom/gsma/services/rcs/filetransfer/FileTransfer$State;

    sget-object v4, Lcom/gsma/services/rcs/filetransfer/FileTransfer$State;->INITIATING:Lcom/gsma/services/rcs/filetransfer/FileTransfer$State;

    sget-object v5, Lcom/gsma/services/rcs/filetransfer/FileTransfer$State;->STARTED:Lcom/gsma/services/rcs/filetransfer/FileTransfer$State;

    sget-object v6, Lcom/gsma/services/rcs/filetransfer/FileTransfer$State;->PAUSED:Lcom/gsma/services/rcs/filetransfer/FileTransfer$State;

    sget-object v7, Lcom/gsma/services/rcs/filetransfer/FileTransfer$State;->ABORTED:Lcom/gsma/services/rcs/filetransfer/FileTransfer$State;

    sget-object v8, Lcom/gsma/services/rcs/filetransfer/FileTransfer$State;->TRANSFERRED:Lcom/gsma/services/rcs/filetransfer/FileTransfer$State;

    sget-object v9, Lcom/gsma/services/rcs/filetransfer/FileTransfer$State;->FAILED:Lcom/gsma/services/rcs/filetransfer/FileTransfer$State;

    sget-object v10, Lcom/gsma/services/rcs/filetransfer/FileTransfer$State;->DELIVERED:Lcom/gsma/services/rcs/filetransfer/FileTransfer$State;

    sget-object v11, Lcom/gsma/services/rcs/filetransfer/FileTransfer$State;->DISPLAYED:Lcom/gsma/services/rcs/filetransfer/FileTransfer$State;

    filled-new-array/range {v0 .. v11}, [Lcom/gsma/services/rcs/filetransfer/FileTransfer$State;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 6

    .line 118
    new-instance v0, Lcom/gsma/services/rcs/filetransfer/FileTransfer$State;

    const-string v1, "INVITED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/gsma/services/rcs/filetransfer/FileTransfer$State;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/gsma/services/rcs/filetransfer/FileTransfer$State;->INVITED:Lcom/gsma/services/rcs/filetransfer/FileTransfer$State;

    new-instance v0, Lcom/gsma/services/rcs/filetransfer/FileTransfer$State;

    const-string v1, "ACCEPTING"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lcom/gsma/services/rcs/filetransfer/FileTransfer$State;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/gsma/services/rcs/filetransfer/FileTransfer$State;->ACCEPTING:Lcom/gsma/services/rcs/filetransfer/FileTransfer$State;

    new-instance v0, Lcom/gsma/services/rcs/filetransfer/FileTransfer$State;

    const-string v1, "REJECTED"

    const/4 v3, 0x2

    invoke-direct {v0, v1, v3, v3}, Lcom/gsma/services/rcs/filetransfer/FileTransfer$State;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/gsma/services/rcs/filetransfer/FileTransfer$State;->REJECTED:Lcom/gsma/services/rcs/filetransfer/FileTransfer$State;

    new-instance v0, Lcom/gsma/services/rcs/filetransfer/FileTransfer$State;

    const-string v1, "QUEUED"

    const/4 v3, 0x3

    invoke-direct {v0, v1, v3, v3}, Lcom/gsma/services/rcs/filetransfer/FileTransfer$State;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/gsma/services/rcs/filetransfer/FileTransfer$State;->QUEUED:Lcom/gsma/services/rcs/filetransfer/FileTransfer$State;

    new-instance v0, Lcom/gsma/services/rcs/filetransfer/FileTransfer$State;

    const-string v1, "INITIATING"

    const/4 v3, 0x4

    invoke-direct {v0, v1, v3, v3}, Lcom/gsma/services/rcs/filetransfer/FileTransfer$State;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/gsma/services/rcs/filetransfer/FileTransfer$State;->INITIATING:Lcom/gsma/services/rcs/filetransfer/FileTransfer$State;

    new-instance v0, Lcom/gsma/services/rcs/filetransfer/FileTransfer$State;

    const-string v1, "STARTED"

    const/4 v3, 0x5

    invoke-direct {v0, v1, v3, v3}, Lcom/gsma/services/rcs/filetransfer/FileTransfer$State;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/gsma/services/rcs/filetransfer/FileTransfer$State;->STARTED:Lcom/gsma/services/rcs/filetransfer/FileTransfer$State;

    new-instance v0, Lcom/gsma/services/rcs/filetransfer/FileTransfer$State;

    const-string v1, "PAUSED"

    const/4 v3, 0x6

    invoke-direct {v0, v1, v3, v3}, Lcom/gsma/services/rcs/filetransfer/FileTransfer$State;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/gsma/services/rcs/filetransfer/FileTransfer$State;->PAUSED:Lcom/gsma/services/rcs/filetransfer/FileTransfer$State;

    .line 119
    new-instance v0, Lcom/gsma/services/rcs/filetransfer/FileTransfer$State;

    const-string v1, "ABORTED"

    const/4 v3, 0x7

    invoke-direct {v0, v1, v3, v3}, Lcom/gsma/services/rcs/filetransfer/FileTransfer$State;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/gsma/services/rcs/filetransfer/FileTransfer$State;->ABORTED:Lcom/gsma/services/rcs/filetransfer/FileTransfer$State;

    new-instance v0, Lcom/gsma/services/rcs/filetransfer/FileTransfer$State;

    const-string v1, "TRANSFERRED"

    const/16 v3, 0x8

    invoke-direct {v0, v1, v3, v3}, Lcom/gsma/services/rcs/filetransfer/FileTransfer$State;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/gsma/services/rcs/filetransfer/FileTransfer$State;->TRANSFERRED:Lcom/gsma/services/rcs/filetransfer/FileTransfer$State;

    new-instance v0, Lcom/gsma/services/rcs/filetransfer/FileTransfer$State;

    const-string v1, "FAILED"

    const/16 v3, 0x9

    invoke-direct {v0, v1, v3, v3}, Lcom/gsma/services/rcs/filetransfer/FileTransfer$State;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/gsma/services/rcs/filetransfer/FileTransfer$State;->FAILED:Lcom/gsma/services/rcs/filetransfer/FileTransfer$State;

    new-instance v0, Lcom/gsma/services/rcs/filetransfer/FileTransfer$State;

    const-string v1, "DELIVERED"

    const/16 v3, 0xa

    invoke-direct {v0, v1, v3, v3}, Lcom/gsma/services/rcs/filetransfer/FileTransfer$State;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/gsma/services/rcs/filetransfer/FileTransfer$State;->DELIVERED:Lcom/gsma/services/rcs/filetransfer/FileTransfer$State;

    new-instance v0, Lcom/gsma/services/rcs/filetransfer/FileTransfer$State;

    const-string v1, "DISPLAYED"

    const/16 v3, 0xb

    invoke-direct {v0, v1, v3, v3}, Lcom/gsma/services/rcs/filetransfer/FileTransfer$State;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/gsma/services/rcs/filetransfer/FileTransfer$State;->DISPLAYED:Lcom/gsma/services/rcs/filetransfer/FileTransfer$State;

    .line 117
    invoke-static {}, Lcom/gsma/services/rcs/filetransfer/FileTransfer$State;->$values()[Lcom/gsma/services/rcs/filetransfer/FileTransfer$State;

    move-result-object v0

    sput-object v0, Lcom/gsma/services/rcs/filetransfer/FileTransfer$State;->$VALUES:[Lcom/gsma/services/rcs/filetransfer/FileTransfer$State;

    .line 130
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/gsma/services/rcs/filetransfer/FileTransfer$State;->mValueToEnum:Landroid/util/SparseArray;

    .line 133
    invoke-static {}, Lcom/gsma/services/rcs/filetransfer/FileTransfer$State;->values()[Lcom/gsma/services/rcs/filetransfer/FileTransfer$State;

    move-result-object v0

    array-length v1, v0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 134
    .local v3, "entry":Lcom/gsma/services/rcs/filetransfer/FileTransfer$State;
    sget-object v4, Lcom/gsma/services/rcs/filetransfer/FileTransfer$State;->mValueToEnum:Landroid/util/SparseArray;

    invoke-virtual {v3}, Lcom/gsma/services/rcs/filetransfer/FileTransfer$State;->toInt()I

    move-result v5

    invoke-virtual {v4, v5, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 133
    .end local v3    # "entry":Lcom/gsma/services/rcs/filetransfer/FileTransfer$State;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 186
    :cond_0
    new-instance v0, Lcom/gsma/services/rcs/filetransfer/FileTransfer$State$1;

    invoke-direct {v0}, Lcom/gsma/services/rcs/filetransfer/FileTransfer$State$1;-><init>()V

    sput-object v0, Lcom/gsma/services/rcs/filetransfer/FileTransfer$State;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "state"    # I
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

    .line 121
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 122
    iput p3, p0, Lcom/gsma/services/rcs/filetransfer/FileTransfer$State;->state:I

    .line 123
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

    .line 125
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 126
    invoke-virtual {p3}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/gsma/services/rcs/filetransfer/FileTransfer$State;->state:I

    .line 127
    return-void
.end method

.method public static final valueOf(I)Lcom/gsma/services/rcs/filetransfer/FileTransfer$State;
    .locals 4
    .param p0, "value"    # I

    .line 148
    sget-object v0, Lcom/gsma/services/rcs/filetransfer/FileTransfer$State;->mValueToEnum:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gsma/services/rcs/filetransfer/FileTransfer$State;

    .line 149
    .local v0, "entry":Lcom/gsma/services/rcs/filetransfer/FileTransfer$State;
    if-eqz v0, :cond_0

    .line 150
    return-object v0

    .line 152
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "No enum const class "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 153
    const-class v3, Lcom/gsma/services/rcs/filetransfer/FileTransfer$State;

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

    .line 154
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/gsma/services/rcs/filetransfer/FileTransfer$State;
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

    .line 117
    const-class v0, Lcom/gsma/services/rcs/filetransfer/FileTransfer$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/gsma/services/rcs/filetransfer/FileTransfer$State;

    return-object v0
.end method

.method public static values()[Lcom/gsma/services/rcs/filetransfer/FileTransfer$State;
    .locals 1

    .line 117
    sget-object v0, Lcom/gsma/services/rcs/filetransfer/FileTransfer$State;->$VALUES:[Lcom/gsma/services/rcs/filetransfer/FileTransfer$State;

    invoke-virtual {v0}, [Lcom/gsma/services/rcs/filetransfer/FileTransfer$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/gsma/services/rcs/filetransfer/FileTransfer$State;

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 166
    const/4 v0, 0x0

    return v0
.end method

.method public final toInt()I
    .locals 1

    .line 144
    iget v0, p0, Lcom/gsma/services/rcs/filetransfer/FileTransfer$State;->state:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 178
    iget v0, p0, Lcom/gsma/services/rcs/filetransfer/FileTransfer$State;->state:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 179
    return-void
.end method
