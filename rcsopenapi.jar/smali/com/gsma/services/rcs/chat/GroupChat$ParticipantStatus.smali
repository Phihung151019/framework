.class public final enum Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus;
.super Ljava/lang/Enum;
.source "GroupChat.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gsma/services/rcs/chat/GroupChat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ParticipantStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus;",
        ">;",
        "Landroid/os/Parcelable;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus;

.field public static final enum CONNECTED:Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus;

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum DECLINED:Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus;

.field public static final enum DEPARTED:Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus;

.field public static final enum DISCONNECTED:Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus;

.field public static final enum FAILED:Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus;

.field public static final enum INVITED:Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus;

.field public static final enum INVITE_QUEUED:Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus;

.field public static final enum INVITING:Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus;

.field public static final enum TIMEOUT:Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus;

.field private static mValueToEnum:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mCode:I


# direct methods
.method private static synthetic $values()[Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus;
    .locals 9

    .line 223
    sget-object v0, Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus;->INVITE_QUEUED:Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus;

    sget-object v1, Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus;->INVITING:Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus;

    sget-object v2, Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus;->INVITED:Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus;

    sget-object v3, Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus;->CONNECTED:Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus;

    sget-object v4, Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus;->DISCONNECTED:Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus;

    sget-object v5, Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus;->DEPARTED:Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus;

    sget-object v6, Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus;->FAILED:Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus;

    sget-object v7, Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus;->DECLINED:Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus;

    sget-object v8, Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus;->TIMEOUT:Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus;

    filled-new-array/range {v0 .. v8}, [Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus;

    move-result-object v0

    return-object v0
.end method

.method static bridge synthetic -$$Nest$fgetmCode(Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus;)I
    .locals 0

    iget p0, p0, Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus;->mCode:I

    return p0
.end method

.method static constructor <clinit>()V
    .locals 6

    .line 224
    new-instance v0, Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus;

    const-string v1, "INVITE_QUEUED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus;->INVITE_QUEUED:Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus;

    new-instance v0, Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus;

    const-string v1, "INVITING"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus;->INVITING:Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus;

    new-instance v0, Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus;

    const-string v1, "INVITED"

    const/4 v3, 0x2

    invoke-direct {v0, v1, v3, v3}, Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus;->INVITED:Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus;

    new-instance v0, Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus;

    const-string v1, "CONNECTED"

    const/4 v3, 0x3

    invoke-direct {v0, v1, v3, v3}, Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus;->CONNECTED:Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus;

    new-instance v0, Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus;

    const-string v1, "DISCONNECTED"

    const/4 v3, 0x4

    invoke-direct {v0, v1, v3, v3}, Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus;->DISCONNECTED:Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus;

    new-instance v0, Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus;

    const-string v1, "DEPARTED"

    const/4 v3, 0x5

    invoke-direct {v0, v1, v3, v3}, Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus;->DEPARTED:Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus;

    new-instance v0, Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus;

    const-string v1, "FAILED"

    const/4 v3, 0x6

    invoke-direct {v0, v1, v3, v3}, Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus;->FAILED:Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus;

    new-instance v0, Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus;

    const-string v1, "DECLINED"

    const/4 v3, 0x7

    invoke-direct {v0, v1, v3, v3}, Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus;->DECLINED:Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus;

    new-instance v0, Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus;

    const-string v1, "TIMEOUT"

    const/16 v3, 0x8

    invoke-direct {v0, v1, v3, v3}, Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus;->TIMEOUT:Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus;

    .line 223
    invoke-static {}, Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus;->$values()[Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus;

    move-result-object v0

    sput-object v0, Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus;->$VALUES:[Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus;

    .line 232
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus;->mValueToEnum:Landroid/util/SparseArray;

    .line 234
    invoke-static {}, Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus;->values()[Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus;

    move-result-object v0

    array-length v1, v0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 235
    .local v3, "entry":Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus;
    sget-object v4, Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus;->mValueToEnum:Landroid/util/SparseArray;

    invoke-virtual {v3}, Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus;->toInt()I

    move-result v5

    invoke-virtual {v4, v5, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 234
    .end local v3    # "entry":Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 271
    :cond_0
    new-instance v0, Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus$1;

    invoke-direct {v0}, Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus$1;-><init>()V

    sput-object v0, Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus;->CREATOR:Landroid/os/Parcelable$Creator;

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

    .line 227
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 228
    iput p3, p0, Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus;->mCode:I

    .line 229
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

    .line 253
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 254
    invoke-virtual {p3}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus;->mCode:I

    .line 255
    return-void
.end method

.method public static final valueOf(I)Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus;
    .locals 4
    .param p0, "value"    # I

    .line 246
    sget-object v0, Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus;->mValueToEnum:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus;

    .line 247
    .local v0, "entry":Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus;
    if-eqz v0, :cond_0

    .line 248
    return-object v0

    .line 250
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "No enum const class "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 251
    const-class v3, Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus;

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

.method public static valueOf(Ljava/lang/String;)Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus;
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

    .line 223
    const-class v0, Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus;

    return-object v0
.end method

.method public static values()[Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus;
    .locals 1

    .line 223
    sget-object v0, Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus;->$VALUES:[Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus;

    invoke-virtual {v0}, [Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus;

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 259
    const/4 v0, 0x0

    return v0
.end method

.method public final toInt()I
    .locals 1

    .line 243
    iget v0, p0, Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus;->mCode:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 291
    iget v0, p0, Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus;->mCode:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 264
    iget v0, p0, Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus;->mCode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 265
    return-void
.end method
