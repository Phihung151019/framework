.class public final enum Lorg/apache/commons/math3/util/ResizableDoubleArray$ExpansionMode;
.super Ljava/lang/Enum;
.source "ResizableDoubleArray.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/math3/util/ResizableDoubleArray;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ExpansionMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/commons/math3/util/ResizableDoubleArray$ExpansionMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/commons/math3/util/ResizableDoubleArray$ExpansionMode;

.field public static final enum ADDITIVE:Lorg/apache/commons/math3/util/ResizableDoubleArray$ExpansionMode;

.field public static final enum MULTIPLICATIVE:Lorg/apache/commons/math3/util/ResizableDoubleArray$ExpansionMode;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 154
    new-instance v0, Lorg/apache/commons/math3/util/ResizableDoubleArray$ExpansionMode;

    const-string v1, "MULTIPLICATIVE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/util/ResizableDoubleArray$ExpansionMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/commons/math3/util/ResizableDoubleArray$ExpansionMode;->MULTIPLICATIVE:Lorg/apache/commons/math3/util/ResizableDoubleArray$ExpansionMode;

    .line 156
    new-instance v0, Lorg/apache/commons/math3/util/ResizableDoubleArray$ExpansionMode;

    const-string v1, "ADDITIVE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/util/ResizableDoubleArray$ExpansionMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/commons/math3/util/ResizableDoubleArray$ExpansionMode;->ADDITIVE:Lorg/apache/commons/math3/util/ResizableDoubleArray$ExpansionMode;

    .line 152
    sget-object v0, Lorg/apache/commons/math3/util/ResizableDoubleArray$ExpansionMode;->MULTIPLICATIVE:Lorg/apache/commons/math3/util/ResizableDoubleArray$ExpansionMode;

    sget-object v1, Lorg/apache/commons/math3/util/ResizableDoubleArray$ExpansionMode;->ADDITIVE:Lorg/apache/commons/math3/util/ResizableDoubleArray$ExpansionMode;

    filled-new-array {v0, v1}, [Lorg/apache/commons/math3/util/ResizableDoubleArray$ExpansionMode;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/math3/util/ResizableDoubleArray$ExpansionMode;->$VALUES:[Lorg/apache/commons/math3/util/ResizableDoubleArray$ExpansionMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 152
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/commons/math3/util/ResizableDoubleArray$ExpansionMode;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 152
    const-class v0, Lorg/apache/commons/math3/util/ResizableDoubleArray$ExpansionMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/util/ResizableDoubleArray$ExpansionMode;

    return-object v0
.end method

.method public static values()[Lorg/apache/commons/math3/util/ResizableDoubleArray$ExpansionMode;
    .locals 1

    .line 152
    sget-object v0, Lorg/apache/commons/math3/util/ResizableDoubleArray$ExpansionMode;->$VALUES:[Lorg/apache/commons/math3/util/ResizableDoubleArray$ExpansionMode;

    invoke-virtual {v0}, [Lorg/apache/commons/math3/util/ResizableDoubleArray$ExpansionMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/commons/math3/util/ResizableDoubleArray$ExpansionMode;

    return-object v0
.end method
