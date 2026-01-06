.class public final enum Lorg/apache/commons/math3/util/MathArrays$Position;
.super Ljava/lang/Enum;
.source "MathArrays.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/math3/util/MathArrays;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Position"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/commons/math3/util/MathArrays$Position;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/commons/math3/util/MathArrays$Position;

.field public static final enum HEAD:Lorg/apache/commons/math3/util/MathArrays$Position;

.field public static final enum TAIL:Lorg/apache/commons/math3/util/MathArrays$Position;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1569
    new-instance v0, Lorg/apache/commons/math3/util/MathArrays$Position;

    const-string v1, "HEAD"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/util/MathArrays$Position;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/commons/math3/util/MathArrays$Position;->HEAD:Lorg/apache/commons/math3/util/MathArrays$Position;

    .line 1571
    new-instance v0, Lorg/apache/commons/math3/util/MathArrays$Position;

    const-string v1, "TAIL"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/util/MathArrays$Position;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/commons/math3/util/MathArrays$Position;->TAIL:Lorg/apache/commons/math3/util/MathArrays$Position;

    .line 1567
    sget-object v0, Lorg/apache/commons/math3/util/MathArrays$Position;->HEAD:Lorg/apache/commons/math3/util/MathArrays$Position;

    sget-object v1, Lorg/apache/commons/math3/util/MathArrays$Position;->TAIL:Lorg/apache/commons/math3/util/MathArrays$Position;

    filled-new-array {v0, v1}, [Lorg/apache/commons/math3/util/MathArrays$Position;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/math3/util/MathArrays$Position;->$VALUES:[Lorg/apache/commons/math3/util/MathArrays$Position;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1567
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/commons/math3/util/MathArrays$Position;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 1567
    const-class v0, Lorg/apache/commons/math3/util/MathArrays$Position;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/util/MathArrays$Position;

    return-object v0
.end method

.method public static values()[Lorg/apache/commons/math3/util/MathArrays$Position;
    .locals 1

    .line 1567
    sget-object v0, Lorg/apache/commons/math3/util/MathArrays$Position;->$VALUES:[Lorg/apache/commons/math3/util/MathArrays$Position;

    invoke-virtual {v0}, [Lorg/apache/commons/math3/util/MathArrays$Position;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/commons/math3/util/MathArrays$Position;

    return-object v0
.end method
