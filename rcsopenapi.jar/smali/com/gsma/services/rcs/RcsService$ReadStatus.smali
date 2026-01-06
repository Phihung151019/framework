.class public final enum Lcom/gsma/services/rcs/RcsService$ReadStatus;
.super Ljava/lang/Enum;
.source "RcsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gsma/services/rcs/RcsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ReadStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/gsma/services/rcs/RcsService$ReadStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/gsma/services/rcs/RcsService$ReadStatus;

.field public static final enum READ:Lcom/gsma/services/rcs/RcsService$ReadStatus;

.field public static final enum UNREAD:Lcom/gsma/services/rcs/RcsService$ReadStatus;

.field private static mValueToEnum:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/gsma/services/rcs/RcsService$ReadStatus;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mCode:I


# direct methods
.method private static synthetic $values()[Lcom/gsma/services/rcs/RcsService$ReadStatus;
    .locals 2

    .line 123
    sget-object v0, Lcom/gsma/services/rcs/RcsService$ReadStatus;->UNREAD:Lcom/gsma/services/rcs/RcsService$ReadStatus;

    sget-object v1, Lcom/gsma/services/rcs/RcsService$ReadStatus;->READ:Lcom/gsma/services/rcs/RcsService$ReadStatus;

    filled-new-array {v0, v1}, [Lcom/gsma/services/rcs/RcsService$ReadStatus;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 6

    .line 124
    new-instance v0, Lcom/gsma/services/rcs/RcsService$ReadStatus;

    const-string v1, "UNREAD"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/gsma/services/rcs/RcsService$ReadStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/gsma/services/rcs/RcsService$ReadStatus;->UNREAD:Lcom/gsma/services/rcs/RcsService$ReadStatus;

    new-instance v0, Lcom/gsma/services/rcs/RcsService$ReadStatus;

    const-string v1, "READ"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lcom/gsma/services/rcs/RcsService$ReadStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/gsma/services/rcs/RcsService$ReadStatus;->READ:Lcom/gsma/services/rcs/RcsService$ReadStatus;

    .line 123
    invoke-static {}, Lcom/gsma/services/rcs/RcsService$ReadStatus;->$values()[Lcom/gsma/services/rcs/RcsService$ReadStatus;

    move-result-object v0

    sput-object v0, Lcom/gsma/services/rcs/RcsService$ReadStatus;->$VALUES:[Lcom/gsma/services/rcs/RcsService$ReadStatus;

    .line 127
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/gsma/services/rcs/RcsService$ReadStatus;->mValueToEnum:Landroid/util/SparseArray;

    .line 129
    invoke-static {}, Lcom/gsma/services/rcs/RcsService$ReadStatus;->values()[Lcom/gsma/services/rcs/RcsService$ReadStatus;

    move-result-object v0

    array-length v1, v0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 130
    .local v3, "entry":Lcom/gsma/services/rcs/RcsService$ReadStatus;
    sget-object v4, Lcom/gsma/services/rcs/RcsService$ReadStatus;->mValueToEnum:Landroid/util/SparseArray;

    invoke-virtual {v3}, Lcom/gsma/services/rcs/RcsService$ReadStatus;->toInt()I

    move-result v5

    invoke-virtual {v4, v5, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 129
    .end local v3    # "entry":Lcom/gsma/services/rcs/RcsService$ReadStatus;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 132
    :cond_0
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

    .line 133
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 134
    iput p3, p0, Lcom/gsma/services/rcs/RcsService$ReadStatus;->mCode:I

    .line 135
    return-void
.end method

.method public static final valueOf(I)Lcom/gsma/services/rcs/RcsService$ReadStatus;
    .locals 4
    .param p0, "value"    # I

    .line 138
    sget-object v0, Lcom/gsma/services/rcs/RcsService$ReadStatus;->mValueToEnum:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gsma/services/rcs/RcsService$ReadStatus;

    .line 139
    .local v0, "entry":Lcom/gsma/services/rcs/RcsService$ReadStatus;
    if-eqz v0, :cond_0

    .line 140
    return-object v0

    .line 142
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "No enum const class "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 143
    const-class v3, Lcom/gsma/services/rcs/RcsService$ReadStatus;

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

.method public static valueOf(Ljava/lang/String;)Lcom/gsma/services/rcs/RcsService$ReadStatus;
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

    .line 123
    const-class v0, Lcom/gsma/services/rcs/RcsService$ReadStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/gsma/services/rcs/RcsService$ReadStatus;

    return-object v0
.end method

.method public static values()[Lcom/gsma/services/rcs/RcsService$ReadStatus;
    .locals 1

    .line 123
    sget-object v0, Lcom/gsma/services/rcs/RcsService$ReadStatus;->$VALUES:[Lcom/gsma/services/rcs/RcsService$ReadStatus;

    invoke-virtual {v0}, [Lcom/gsma/services/rcs/RcsService$ReadStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/gsma/services/rcs/RcsService$ReadStatus;

    return-object v0
.end method


# virtual methods
.method public final toInt()I
    .locals 1

    .line 150
    iget v0, p0, Lcom/gsma/services/rcs/RcsService$ReadStatus;->mCode:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 154
    iget v0, p0, Lcom/gsma/services/rcs/RcsService$ReadStatus;->mCode:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
