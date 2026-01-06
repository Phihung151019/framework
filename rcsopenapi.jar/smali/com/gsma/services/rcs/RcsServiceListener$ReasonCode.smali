.class public final enum Lcom/gsma/services/rcs/RcsServiceListener$ReasonCode;
.super Ljava/lang/Enum;
.source "RcsServiceListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gsma/services/rcs/RcsServiceListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ReasonCode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/gsma/services/rcs/RcsServiceListener$ReasonCode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/gsma/services/rcs/RcsServiceListener$ReasonCode;

.field public static final enum CONNECTION_LOST:Lcom/gsma/services/rcs/RcsServiceListener$ReasonCode;

.field public static final enum INTERNAL_ERROR:Lcom/gsma/services/rcs/RcsServiceListener$ReasonCode;

.field public static final enum SERVICE_DISABLED:Lcom/gsma/services/rcs/RcsServiceListener$ReasonCode;

.field private static mValueToEnum:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/gsma/services/rcs/RcsServiceListener$ReasonCode;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mValue:I


# direct methods
.method private static synthetic $values()[Lcom/gsma/services/rcs/RcsServiceListener$ReasonCode;
    .locals 3

    .line 36
    sget-object v0, Lcom/gsma/services/rcs/RcsServiceListener$ReasonCode;->INTERNAL_ERROR:Lcom/gsma/services/rcs/RcsServiceListener$ReasonCode;

    sget-object v1, Lcom/gsma/services/rcs/RcsServiceListener$ReasonCode;->SERVICE_DISABLED:Lcom/gsma/services/rcs/RcsServiceListener$ReasonCode;

    sget-object v2, Lcom/gsma/services/rcs/RcsServiceListener$ReasonCode;->CONNECTION_LOST:Lcom/gsma/services/rcs/RcsServiceListener$ReasonCode;

    filled-new-array {v0, v1, v2}, [Lcom/gsma/services/rcs/RcsServiceListener$ReasonCode;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 6

    .line 40
    new-instance v0, Lcom/gsma/services/rcs/RcsServiceListener$ReasonCode;

    const-string v1, "INTERNAL_ERROR"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/gsma/services/rcs/RcsServiceListener$ReasonCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/gsma/services/rcs/RcsServiceListener$ReasonCode;->INTERNAL_ERROR:Lcom/gsma/services/rcs/RcsServiceListener$ReasonCode;

    .line 45
    new-instance v0, Lcom/gsma/services/rcs/RcsServiceListener$ReasonCode;

    const-string v1, "SERVICE_DISABLED"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lcom/gsma/services/rcs/RcsServiceListener$ReasonCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/gsma/services/rcs/RcsServiceListener$ReasonCode;->SERVICE_DISABLED:Lcom/gsma/services/rcs/RcsServiceListener$ReasonCode;

    .line 50
    new-instance v0, Lcom/gsma/services/rcs/RcsServiceListener$ReasonCode;

    const-string v1, "CONNECTION_LOST"

    const/4 v3, 0x2

    invoke-direct {v0, v1, v3, v3}, Lcom/gsma/services/rcs/RcsServiceListener$ReasonCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/gsma/services/rcs/RcsServiceListener$ReasonCode;->CONNECTION_LOST:Lcom/gsma/services/rcs/RcsServiceListener$ReasonCode;

    .line 36
    invoke-static {}, Lcom/gsma/services/rcs/RcsServiceListener$ReasonCode;->$values()[Lcom/gsma/services/rcs/RcsServiceListener$ReasonCode;

    move-result-object v0

    sput-object v0, Lcom/gsma/services/rcs/RcsServiceListener$ReasonCode;->$VALUES:[Lcom/gsma/services/rcs/RcsServiceListener$ReasonCode;

    .line 54
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/gsma/services/rcs/RcsServiceListener$ReasonCode;->mValueToEnum:Landroid/util/SparseArray;

    .line 56
    invoke-static {}, Lcom/gsma/services/rcs/RcsServiceListener$ReasonCode;->values()[Lcom/gsma/services/rcs/RcsServiceListener$ReasonCode;

    move-result-object v0

    array-length v1, v0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 57
    .local v3, "entry":Lcom/gsma/services/rcs/RcsServiceListener$ReasonCode;
    sget-object v4, Lcom/gsma/services/rcs/RcsServiceListener$ReasonCode;->mValueToEnum:Landroid/util/SparseArray;

    invoke-virtual {v3}, Lcom/gsma/services/rcs/RcsServiceListener$ReasonCode;->toInt()I

    move-result v5

    invoke-virtual {v4, v5, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 56
    .end local v3    # "entry":Lcom/gsma/services/rcs/RcsServiceListener$ReasonCode;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 59
    :cond_0
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "value"    # I
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

    .line 61
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 62
    iput p3, p0, Lcom/gsma/services/rcs/RcsServiceListener$ReasonCode;->mValue:I

    .line 63
    return-void
.end method

.method public static final valueOf(I)Lcom/gsma/services/rcs/RcsServiceListener$ReasonCode;
    .locals 4
    .param p0, "value"    # I

    .line 79
    sget-object v0, Lcom/gsma/services/rcs/RcsServiceListener$ReasonCode;->mValueToEnum:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gsma/services/rcs/RcsServiceListener$ReasonCode;

    .line 80
    .local v0, "entry":Lcom/gsma/services/rcs/RcsServiceListener$ReasonCode;
    if-eqz v0, :cond_0

    .line 81
    return-object v0

    .line 83
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "No enum const class "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 84
    const-class v3, Lcom/gsma/services/rcs/RcsServiceListener$ReasonCode;

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

.method public static valueOf(Ljava/lang/String;)Lcom/gsma/services/rcs/RcsServiceListener$ReasonCode;
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

    .line 36
    const-class v0, Lcom/gsma/services/rcs/RcsServiceListener$ReasonCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/gsma/services/rcs/RcsServiceListener$ReasonCode;

    return-object v0
.end method

.method public static values()[Lcom/gsma/services/rcs/RcsServiceListener$ReasonCode;
    .locals 1

    .line 36
    sget-object v0, Lcom/gsma/services/rcs/RcsServiceListener$ReasonCode;->$VALUES:[Lcom/gsma/services/rcs/RcsServiceListener$ReasonCode;

    invoke-virtual {v0}, [Lcom/gsma/services/rcs/RcsServiceListener$ReasonCode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/gsma/services/rcs/RcsServiceListener$ReasonCode;

    return-object v0
.end method


# virtual methods
.method public final toInt()I
    .locals 1

    .line 70
    iget v0, p0, Lcom/gsma/services/rcs/RcsServiceListener$ReasonCode;->mValue:I

    return v0
.end method
