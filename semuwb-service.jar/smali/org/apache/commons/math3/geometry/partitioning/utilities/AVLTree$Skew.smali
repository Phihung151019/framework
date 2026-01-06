.class final enum Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;
.super Ljava/lang/Enum;
.source "AVLTree.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "Skew"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

.field public static final enum BALANCED:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

.field public static final enum LEFT_HIGH:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

.field public static final enum RIGHT_HIGH:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 206
    new-instance v0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    const-string v1, "LEFT_HIGH"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;->LEFT_HIGH:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    .line 209
    new-instance v0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    const-string v1, "RIGHT_HIGH"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;->RIGHT_HIGH:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    .line 212
    new-instance v0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    const-string v1, "BALANCED"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;->BALANCED:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    .line 204
    sget-object v0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;->LEFT_HIGH:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    sget-object v1, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;->RIGHT_HIGH:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    sget-object v2, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;->BALANCED:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    filled-new-array {v0, v1, v2}, [Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;->$VALUES:[Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 204
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 204
    const-class v0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    return-object v0
.end method

.method public static values()[Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;
    .locals 1

    .line 204
    sget-object v0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;->$VALUES:[Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    invoke-virtual {v0}, [Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    return-object v0
.end method
