.class public final enum Lcom/samsung/vekit/Common/Type/SeekType;
.super Ljava/lang/Enum;
.source "SeekType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/vekit/Common/Type/SeekType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/vekit/Common/Type/SeekType;

.field public static final enum CLOSEST:Lcom/samsung/vekit/Common/Type/SeekType;

.field public static final enum CLOSEST_SYNC:Lcom/samsung/vekit/Common/Type/SeekType;

.field public static final enum NEXT_SYNC:Lcom/samsung/vekit/Common/Type/SeekType;

.field public static final enum PREVIOUS_SYNC:Lcom/samsung/vekit/Common/Type/SeekType;


# direct methods
.method private static synthetic $values()[Lcom/samsung/vekit/Common/Type/SeekType;
    .locals 4

    .line 3
    sget-object v0, Lcom/samsung/vekit/Common/Type/SeekType;->PREVIOUS_SYNC:Lcom/samsung/vekit/Common/Type/SeekType;

    sget-object v1, Lcom/samsung/vekit/Common/Type/SeekType;->NEXT_SYNC:Lcom/samsung/vekit/Common/Type/SeekType;

    sget-object v2, Lcom/samsung/vekit/Common/Type/SeekType;->CLOSEST_SYNC:Lcom/samsung/vekit/Common/Type/SeekType;

    sget-object v3, Lcom/samsung/vekit/Common/Type/SeekType;->CLOSEST:Lcom/samsung/vekit/Common/Type/SeekType;

    filled-new-array {v0, v1, v2, v3}, [Lcom/samsung/vekit/Common/Type/SeekType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 4
    new-instance v0, Lcom/samsung/vekit/Common/Type/SeekType;

    const-string v1, "PREVIOUS_SYNC"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/vekit/Common/Type/SeekType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/vekit/Common/Type/SeekType;->PREVIOUS_SYNC:Lcom/samsung/vekit/Common/Type/SeekType;

    .line 5
    new-instance v0, Lcom/samsung/vekit/Common/Type/SeekType;

    const-string v1, "NEXT_SYNC"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/samsung/vekit/Common/Type/SeekType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/vekit/Common/Type/SeekType;->NEXT_SYNC:Lcom/samsung/vekit/Common/Type/SeekType;

    .line 6
    new-instance v0, Lcom/samsung/vekit/Common/Type/SeekType;

    const-string v1, "CLOSEST_SYNC"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/samsung/vekit/Common/Type/SeekType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/vekit/Common/Type/SeekType;->CLOSEST_SYNC:Lcom/samsung/vekit/Common/Type/SeekType;

    .line 7
    new-instance v0, Lcom/samsung/vekit/Common/Type/SeekType;

    const-string v1, "CLOSEST"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/samsung/vekit/Common/Type/SeekType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/vekit/Common/Type/SeekType;->CLOSEST:Lcom/samsung/vekit/Common/Type/SeekType;

    .line 3
    invoke-static {}, Lcom/samsung/vekit/Common/Type/SeekType;->$values()[Lcom/samsung/vekit/Common/Type/SeekType;

    move-result-object v0

    sput-object v0, Lcom/samsung/vekit/Common/Type/SeekType;->$VALUES:[Lcom/samsung/vekit/Common/Type/SeekType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/vekit/Common/Type/SeekType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 3
    const-class v0, Lcom/samsung/vekit/Common/Type/SeekType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/vekit/Common/Type/SeekType;

    return-object v0
.end method

.method public static values()[Lcom/samsung/vekit/Common/Type/SeekType;
    .locals 1

    .line 3
    sget-object v0, Lcom/samsung/vekit/Common/Type/SeekType;->$VALUES:[Lcom/samsung/vekit/Common/Type/SeekType;

    invoke-virtual {v0}, [Lcom/samsung/vekit/Common/Type/SeekType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/vekit/Common/Type/SeekType;

    return-object v0
.end method
