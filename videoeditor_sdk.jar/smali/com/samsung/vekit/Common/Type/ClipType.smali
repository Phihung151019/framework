.class public final enum Lcom/samsung/vekit/Common/Type/ClipType;
.super Ljava/lang/Enum;
.source "ClipType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/vekit/Common/Type/ClipType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/vekit/Common/Type/ClipType;

.field public static final enum HORIZONTAL_FROM_CENTER:Lcom/samsung/vekit/Common/Type/ClipType;

.field public static final enum SQUARE_FROM_CENTER:Lcom/samsung/vekit/Common/Type/ClipType;

.field public static final enum VERTICAL_FROM_CENTER:Lcom/samsung/vekit/Common/Type/ClipType;


# direct methods
.method private static synthetic $values()[Lcom/samsung/vekit/Common/Type/ClipType;
    .locals 3

    .line 3
    sget-object v0, Lcom/samsung/vekit/Common/Type/ClipType;->HORIZONTAL_FROM_CENTER:Lcom/samsung/vekit/Common/Type/ClipType;

    sget-object v1, Lcom/samsung/vekit/Common/Type/ClipType;->VERTICAL_FROM_CENTER:Lcom/samsung/vekit/Common/Type/ClipType;

    sget-object v2, Lcom/samsung/vekit/Common/Type/ClipType;->SQUARE_FROM_CENTER:Lcom/samsung/vekit/Common/Type/ClipType;

    filled-new-array {v0, v1, v2}, [Lcom/samsung/vekit/Common/Type/ClipType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 4
    new-instance v0, Lcom/samsung/vekit/Common/Type/ClipType;

    const-string v1, "HORIZONTAL_FROM_CENTER"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/vekit/Common/Type/ClipType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/vekit/Common/Type/ClipType;->HORIZONTAL_FROM_CENTER:Lcom/samsung/vekit/Common/Type/ClipType;

    .line 5
    new-instance v0, Lcom/samsung/vekit/Common/Type/ClipType;

    const-string v1, "VERTICAL_FROM_CENTER"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/samsung/vekit/Common/Type/ClipType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/vekit/Common/Type/ClipType;->VERTICAL_FROM_CENTER:Lcom/samsung/vekit/Common/Type/ClipType;

    .line 6
    new-instance v0, Lcom/samsung/vekit/Common/Type/ClipType;

    const-string v1, "SQUARE_FROM_CENTER"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/samsung/vekit/Common/Type/ClipType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/vekit/Common/Type/ClipType;->SQUARE_FROM_CENTER:Lcom/samsung/vekit/Common/Type/ClipType;

    .line 3
    invoke-static {}, Lcom/samsung/vekit/Common/Type/ClipType;->$values()[Lcom/samsung/vekit/Common/Type/ClipType;

    move-result-object v0

    sput-object v0, Lcom/samsung/vekit/Common/Type/ClipType;->$VALUES:[Lcom/samsung/vekit/Common/Type/ClipType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/vekit/Common/Type/ClipType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 3
    const-class v0, Lcom/samsung/vekit/Common/Type/ClipType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/vekit/Common/Type/ClipType;

    return-object v0
.end method

.method public static values()[Lcom/samsung/vekit/Common/Type/ClipType;
    .locals 1

    .line 3
    sget-object v0, Lcom/samsung/vekit/Common/Type/ClipType;->$VALUES:[Lcom/samsung/vekit/Common/Type/ClipType;

    invoke-virtual {v0}, [Lcom/samsung/vekit/Common/Type/ClipType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/vekit/Common/Type/ClipType;

    return-object v0
.end method
