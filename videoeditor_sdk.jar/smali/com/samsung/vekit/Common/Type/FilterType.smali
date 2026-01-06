.class public final enum Lcom/samsung/vekit/Common/Type/FilterType;
.super Ljava/lang/Enum;
.source "FilterType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/vekit/Common/Type/FilterType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/vekit/Common/Type/FilterType;

.field public static final enum AI_MY_FILTER:Lcom/samsung/vekit/Common/Type/FilterType;

.field public static final enum LUT:Lcom/samsung/vekit/Common/Type/FilterType;

.field public static final enum MY_FILTER:Lcom/samsung/vekit/Common/Type/FilterType;

.field public static final enum NOISE:Lcom/samsung/vekit/Common/Type/FilterType;


# direct methods
.method private static synthetic $values()[Lcom/samsung/vekit/Common/Type/FilterType;
    .locals 4

    .line 3
    sget-object v0, Lcom/samsung/vekit/Common/Type/FilterType;->LUT:Lcom/samsung/vekit/Common/Type/FilterType;

    sget-object v1, Lcom/samsung/vekit/Common/Type/FilterType;->NOISE:Lcom/samsung/vekit/Common/Type/FilterType;

    sget-object v2, Lcom/samsung/vekit/Common/Type/FilterType;->MY_FILTER:Lcom/samsung/vekit/Common/Type/FilterType;

    sget-object v3, Lcom/samsung/vekit/Common/Type/FilterType;->AI_MY_FILTER:Lcom/samsung/vekit/Common/Type/FilterType;

    filled-new-array {v0, v1, v2, v3}, [Lcom/samsung/vekit/Common/Type/FilterType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 4
    new-instance v0, Lcom/samsung/vekit/Common/Type/FilterType;

    const-string v1, "LUT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/vekit/Common/Type/FilterType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/vekit/Common/Type/FilterType;->LUT:Lcom/samsung/vekit/Common/Type/FilterType;

    .line 5
    new-instance v0, Lcom/samsung/vekit/Common/Type/FilterType;

    const-string v1, "NOISE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/samsung/vekit/Common/Type/FilterType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/vekit/Common/Type/FilterType;->NOISE:Lcom/samsung/vekit/Common/Type/FilterType;

    .line 6
    new-instance v0, Lcom/samsung/vekit/Common/Type/FilterType;

    const-string v1, "MY_FILTER"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/samsung/vekit/Common/Type/FilterType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/vekit/Common/Type/FilterType;->MY_FILTER:Lcom/samsung/vekit/Common/Type/FilterType;

    .line 7
    new-instance v0, Lcom/samsung/vekit/Common/Type/FilterType;

    const-string v1, "AI_MY_FILTER"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/samsung/vekit/Common/Type/FilterType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/vekit/Common/Type/FilterType;->AI_MY_FILTER:Lcom/samsung/vekit/Common/Type/FilterType;

    .line 3
    invoke-static {}, Lcom/samsung/vekit/Common/Type/FilterType;->$values()[Lcom/samsung/vekit/Common/Type/FilterType;

    move-result-object v0

    sput-object v0, Lcom/samsung/vekit/Common/Type/FilterType;->$VALUES:[Lcom/samsung/vekit/Common/Type/FilterType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/vekit/Common/Type/FilterType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 3
    const-class v0, Lcom/samsung/vekit/Common/Type/FilterType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/vekit/Common/Type/FilterType;

    return-object v0
.end method

.method public static values()[Lcom/samsung/vekit/Common/Type/FilterType;
    .locals 1

    .line 3
    sget-object v0, Lcom/samsung/vekit/Common/Type/FilterType;->$VALUES:[Lcom/samsung/vekit/Common/Type/FilterType;

    invoke-virtual {v0}, [Lcom/samsung/vekit/Common/Type/FilterType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/vekit/Common/Type/FilterType;

    return-object v0
.end method
