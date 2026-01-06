.class public final enum Lcom/samsung/vekit/Common/Type/SpeedType;
.super Ljava/lang/Enum;
.source "SpeedType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/vekit/Common/Type/SpeedType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/vekit/Common/Type/SpeedType;

.field public static final enum SPEED_1:Lcom/samsung/vekit/Common/Type/SpeedType;

.field public static final enum SPEED_1_16:Lcom/samsung/vekit/Common/Type/SpeedType;

.field public static final enum SPEED_1_2:Lcom/samsung/vekit/Common/Type/SpeedType;

.field public static final enum SPEED_1_32:Lcom/samsung/vekit/Common/Type/SpeedType;

.field public static final enum SPEED_1_4:Lcom/samsung/vekit/Common/Type/SpeedType;

.field public static final enum SPEED_1_8:Lcom/samsung/vekit/Common/Type/SpeedType;


# instance fields
.field private final value:I


# direct methods
.method private static synthetic $values()[Lcom/samsung/vekit/Common/Type/SpeedType;
    .locals 6

    .line 3
    sget-object v0, Lcom/samsung/vekit/Common/Type/SpeedType;->SPEED_1:Lcom/samsung/vekit/Common/Type/SpeedType;

    sget-object v1, Lcom/samsung/vekit/Common/Type/SpeedType;->SPEED_1_2:Lcom/samsung/vekit/Common/Type/SpeedType;

    sget-object v2, Lcom/samsung/vekit/Common/Type/SpeedType;->SPEED_1_4:Lcom/samsung/vekit/Common/Type/SpeedType;

    sget-object v3, Lcom/samsung/vekit/Common/Type/SpeedType;->SPEED_1_8:Lcom/samsung/vekit/Common/Type/SpeedType;

    sget-object v4, Lcom/samsung/vekit/Common/Type/SpeedType;->SPEED_1_16:Lcom/samsung/vekit/Common/Type/SpeedType;

    sget-object v5, Lcom/samsung/vekit/Common/Type/SpeedType;->SPEED_1_32:Lcom/samsung/vekit/Common/Type/SpeedType;

    filled-new-array/range {v0 .. v5}, [Lcom/samsung/vekit/Common/Type/SpeedType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 4
    new-instance v0, Lcom/samsung/vekit/Common/Type/SpeedType;

    const-string v1, "SPEED_1"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/samsung/vekit/Common/Type/SpeedType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/vekit/Common/Type/SpeedType;->SPEED_1:Lcom/samsung/vekit/Common/Type/SpeedType;

    .line 5
    new-instance v0, Lcom/samsung/vekit/Common/Type/SpeedType;

    const-string v1, "SPEED_1_2"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Lcom/samsung/vekit/Common/Type/SpeedType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/vekit/Common/Type/SpeedType;->SPEED_1_2:Lcom/samsung/vekit/Common/Type/SpeedType;

    .line 6
    new-instance v0, Lcom/samsung/vekit/Common/Type/SpeedType;

    const-string v1, "SPEED_1_4"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v2}, Lcom/samsung/vekit/Common/Type/SpeedType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/vekit/Common/Type/SpeedType;->SPEED_1_4:Lcom/samsung/vekit/Common/Type/SpeedType;

    .line 7
    new-instance v0, Lcom/samsung/vekit/Common/Type/SpeedType;

    const-string v1, "SPEED_1_8"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2, v2}, Lcom/samsung/vekit/Common/Type/SpeedType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/vekit/Common/Type/SpeedType;->SPEED_1_8:Lcom/samsung/vekit/Common/Type/SpeedType;

    .line 8
    new-instance v0, Lcom/samsung/vekit/Common/Type/SpeedType;

    const-string v1, "SPEED_1_16"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2, v2}, Lcom/samsung/vekit/Common/Type/SpeedType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/vekit/Common/Type/SpeedType;->SPEED_1_16:Lcom/samsung/vekit/Common/Type/SpeedType;

    .line 9
    new-instance v0, Lcom/samsung/vekit/Common/Type/SpeedType;

    const-string v1, "SPEED_1_32"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2, v2}, Lcom/samsung/vekit/Common/Type/SpeedType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/vekit/Common/Type/SpeedType;->SPEED_1_32:Lcom/samsung/vekit/Common/Type/SpeedType;

    .line 3
    invoke-static {}, Lcom/samsung/vekit/Common/Type/SpeedType;->$values()[Lcom/samsung/vekit/Common/Type/SpeedType;

    move-result-object v0

    sput-object v0, Lcom/samsung/vekit/Common/Type/SpeedType;->$VALUES:[Lcom/samsung/vekit/Common/Type/SpeedType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "value"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 12
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 13
    iput p3, p0, Lcom/samsung/vekit/Common/Type/SpeedType;->value:I

    .line 14
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/vekit/Common/Type/SpeedType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 3
    const-class v0, Lcom/samsung/vekit/Common/Type/SpeedType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/vekit/Common/Type/SpeedType;

    return-object v0
.end method

.method public static values()[Lcom/samsung/vekit/Common/Type/SpeedType;
    .locals 1

    .line 3
    sget-object v0, Lcom/samsung/vekit/Common/Type/SpeedType;->$VALUES:[Lcom/samsung/vekit/Common/Type/SpeedType;

    invoke-virtual {v0}, [Lcom/samsung/vekit/Common/Type/SpeedType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/vekit/Common/Type/SpeedType;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .line 17
    iget v0, p0, Lcom/samsung/vekit/Common/Type/SpeedType;->value:I

    return v0
.end method
