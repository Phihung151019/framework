.class public final enum Lcom/samsung/vekit/Common/Type/ItemType;
.super Ljava/lang/Enum;
.source "ItemType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/vekit/Common/Type/ItemType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/vekit/Common/Type/ItemType;

.field public static final enum AUDIO:Lcom/samsung/vekit/Common/Type/ItemType;

.field public static final enum CAPTION:Lcom/samsung/vekit/Common/Type/ItemType;

.field public static final enum COLOR:Lcom/samsung/vekit/Common/Type/ItemType;

.field public static final enum DOODLE:Lcom/samsung/vekit/Common/Type/ItemType;

.field public static final enum EMPTY:Lcom/samsung/vekit/Common/Type/ItemType;

.field public static final enum FRAGMENT_AUDIO:Lcom/samsung/vekit/Common/Type/ItemType;

.field public static final enum IMAGE:Lcom/samsung/vekit/Common/Type/ItemType;

.field public static final enum PORTRAIT_VIDEO:Lcom/samsung/vekit/Common/Type/ItemType;

.field public static final enum VIDEO:Lcom/samsung/vekit/Common/Type/ItemType;


# direct methods
.method private static synthetic $values()[Lcom/samsung/vekit/Common/Type/ItemType;
    .locals 9

    .line 3
    sget-object v0, Lcom/samsung/vekit/Common/Type/ItemType;->VIDEO:Lcom/samsung/vekit/Common/Type/ItemType;

    sget-object v1, Lcom/samsung/vekit/Common/Type/ItemType;->IMAGE:Lcom/samsung/vekit/Common/Type/ItemType;

    sget-object v2, Lcom/samsung/vekit/Common/Type/ItemType;->CAPTION:Lcom/samsung/vekit/Common/Type/ItemType;

    sget-object v3, Lcom/samsung/vekit/Common/Type/ItemType;->DOODLE:Lcom/samsung/vekit/Common/Type/ItemType;

    sget-object v4, Lcom/samsung/vekit/Common/Type/ItemType;->AUDIO:Lcom/samsung/vekit/Common/Type/ItemType;

    sget-object v5, Lcom/samsung/vekit/Common/Type/ItemType;->FRAGMENT_AUDIO:Lcom/samsung/vekit/Common/Type/ItemType;

    sget-object v6, Lcom/samsung/vekit/Common/Type/ItemType;->COLOR:Lcom/samsung/vekit/Common/Type/ItemType;

    sget-object v7, Lcom/samsung/vekit/Common/Type/ItemType;->EMPTY:Lcom/samsung/vekit/Common/Type/ItemType;

    sget-object v8, Lcom/samsung/vekit/Common/Type/ItemType;->PORTRAIT_VIDEO:Lcom/samsung/vekit/Common/Type/ItemType;

    filled-new-array/range {v0 .. v8}, [Lcom/samsung/vekit/Common/Type/ItemType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 4
    new-instance v0, Lcom/samsung/vekit/Common/Type/ItemType;

    const-string v1, "VIDEO"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/vekit/Common/Type/ItemType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/vekit/Common/Type/ItemType;->VIDEO:Lcom/samsung/vekit/Common/Type/ItemType;

    .line 5
    new-instance v0, Lcom/samsung/vekit/Common/Type/ItemType;

    const-string v1, "IMAGE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/samsung/vekit/Common/Type/ItemType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/vekit/Common/Type/ItemType;->IMAGE:Lcom/samsung/vekit/Common/Type/ItemType;

    .line 6
    new-instance v0, Lcom/samsung/vekit/Common/Type/ItemType;

    const-string v1, "CAPTION"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/samsung/vekit/Common/Type/ItemType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/vekit/Common/Type/ItemType;->CAPTION:Lcom/samsung/vekit/Common/Type/ItemType;

    .line 7
    new-instance v0, Lcom/samsung/vekit/Common/Type/ItemType;

    const-string v1, "DOODLE"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/samsung/vekit/Common/Type/ItemType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/vekit/Common/Type/ItemType;->DOODLE:Lcom/samsung/vekit/Common/Type/ItemType;

    .line 8
    new-instance v0, Lcom/samsung/vekit/Common/Type/ItemType;

    const-string v1, "AUDIO"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/samsung/vekit/Common/Type/ItemType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/vekit/Common/Type/ItemType;->AUDIO:Lcom/samsung/vekit/Common/Type/ItemType;

    .line 9
    new-instance v0, Lcom/samsung/vekit/Common/Type/ItemType;

    const-string v1, "FRAGMENT_AUDIO"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/samsung/vekit/Common/Type/ItemType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/vekit/Common/Type/ItemType;->FRAGMENT_AUDIO:Lcom/samsung/vekit/Common/Type/ItemType;

    .line 10
    new-instance v0, Lcom/samsung/vekit/Common/Type/ItemType;

    const-string v1, "COLOR"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/samsung/vekit/Common/Type/ItemType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/vekit/Common/Type/ItemType;->COLOR:Lcom/samsung/vekit/Common/Type/ItemType;

    .line 11
    new-instance v0, Lcom/samsung/vekit/Common/Type/ItemType;

    const-string v1, "EMPTY"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/samsung/vekit/Common/Type/ItemType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/vekit/Common/Type/ItemType;->EMPTY:Lcom/samsung/vekit/Common/Type/ItemType;

    .line 12
    new-instance v0, Lcom/samsung/vekit/Common/Type/ItemType;

    const-string v1, "PORTRAIT_VIDEO"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/samsung/vekit/Common/Type/ItemType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/vekit/Common/Type/ItemType;->PORTRAIT_VIDEO:Lcom/samsung/vekit/Common/Type/ItemType;

    .line 3
    invoke-static {}, Lcom/samsung/vekit/Common/Type/ItemType;->$values()[Lcom/samsung/vekit/Common/Type/ItemType;

    move-result-object v0

    sput-object v0, Lcom/samsung/vekit/Common/Type/ItemType;->$VALUES:[Lcom/samsung/vekit/Common/Type/ItemType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/vekit/Common/Type/ItemType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 3
    const-class v0, Lcom/samsung/vekit/Common/Type/ItemType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/vekit/Common/Type/ItemType;

    return-object v0
.end method

.method public static values()[Lcom/samsung/vekit/Common/Type/ItemType;
    .locals 1

    .line 3
    sget-object v0, Lcom/samsung/vekit/Common/Type/ItemType;->$VALUES:[Lcom/samsung/vekit/Common/Type/ItemType;

    invoke-virtual {v0}, [Lcom/samsung/vekit/Common/Type/ItemType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/vekit/Common/Type/ItemType;

    return-object v0
.end method
