.class public final enum Lcom/samsung/vekit/Common/Type/PVObjectType;
.super Ljava/lang/Enum;
.source "PVObjectType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/vekit/Common/Type/PVObjectType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/vekit/Common/Type/PVObjectType;

.field public static final enum FACE:Lcom/samsung/vekit/Common/Type/PVObjectType;

.field public static final enum HEAD:Lcom/samsung/vekit/Common/Type/PVObjectType;

.field public static final enum HUMAN:Lcom/samsung/vekit/Common/Type/PVObjectType;

.field public static final enum OT:Lcom/samsung/vekit/Common/Type/PVObjectType;

.field public static final enum PET:Lcom/samsung/vekit/Common/Type/PVObjectType;

.field public static final enum PET_BODY:Lcom/samsung/vekit/Common/Type/PVObjectType;

.field public static final enum UNDEFINED:Lcom/samsung/vekit/Common/Type/PVObjectType;


# direct methods
.method private static synthetic $values()[Lcom/samsung/vekit/Common/Type/PVObjectType;
    .locals 7

    .line 3
    sget-object v0, Lcom/samsung/vekit/Common/Type/PVObjectType;->FACE:Lcom/samsung/vekit/Common/Type/PVObjectType;

    sget-object v1, Lcom/samsung/vekit/Common/Type/PVObjectType;->PET:Lcom/samsung/vekit/Common/Type/PVObjectType;

    sget-object v2, Lcom/samsung/vekit/Common/Type/PVObjectType;->HUMAN:Lcom/samsung/vekit/Common/Type/PVObjectType;

    sget-object v3, Lcom/samsung/vekit/Common/Type/PVObjectType;->OT:Lcom/samsung/vekit/Common/Type/PVObjectType;

    sget-object v4, Lcom/samsung/vekit/Common/Type/PVObjectType;->PET_BODY:Lcom/samsung/vekit/Common/Type/PVObjectType;

    sget-object v5, Lcom/samsung/vekit/Common/Type/PVObjectType;->HEAD:Lcom/samsung/vekit/Common/Type/PVObjectType;

    sget-object v6, Lcom/samsung/vekit/Common/Type/PVObjectType;->UNDEFINED:Lcom/samsung/vekit/Common/Type/PVObjectType;

    filled-new-array/range {v0 .. v6}, [Lcom/samsung/vekit/Common/Type/PVObjectType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 4
    new-instance v0, Lcom/samsung/vekit/Common/Type/PVObjectType;

    const-string v1, "FACE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/vekit/Common/Type/PVObjectType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/vekit/Common/Type/PVObjectType;->FACE:Lcom/samsung/vekit/Common/Type/PVObjectType;

    .line 5
    new-instance v0, Lcom/samsung/vekit/Common/Type/PVObjectType;

    const-string v1, "PET"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/samsung/vekit/Common/Type/PVObjectType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/vekit/Common/Type/PVObjectType;->PET:Lcom/samsung/vekit/Common/Type/PVObjectType;

    .line 6
    new-instance v0, Lcom/samsung/vekit/Common/Type/PVObjectType;

    const-string v1, "HUMAN"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/samsung/vekit/Common/Type/PVObjectType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/vekit/Common/Type/PVObjectType;->HUMAN:Lcom/samsung/vekit/Common/Type/PVObjectType;

    .line 7
    new-instance v0, Lcom/samsung/vekit/Common/Type/PVObjectType;

    const-string v1, "OT"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/samsung/vekit/Common/Type/PVObjectType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/vekit/Common/Type/PVObjectType;->OT:Lcom/samsung/vekit/Common/Type/PVObjectType;

    .line 8
    new-instance v0, Lcom/samsung/vekit/Common/Type/PVObjectType;

    const-string v1, "PET_BODY"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/samsung/vekit/Common/Type/PVObjectType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/vekit/Common/Type/PVObjectType;->PET_BODY:Lcom/samsung/vekit/Common/Type/PVObjectType;

    .line 9
    new-instance v0, Lcom/samsung/vekit/Common/Type/PVObjectType;

    const-string v1, "HEAD"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/samsung/vekit/Common/Type/PVObjectType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/vekit/Common/Type/PVObjectType;->HEAD:Lcom/samsung/vekit/Common/Type/PVObjectType;

    .line 10
    new-instance v0, Lcom/samsung/vekit/Common/Type/PVObjectType;

    const-string v1, "UNDEFINED"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/samsung/vekit/Common/Type/PVObjectType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/vekit/Common/Type/PVObjectType;->UNDEFINED:Lcom/samsung/vekit/Common/Type/PVObjectType;

    .line 3
    invoke-static {}, Lcom/samsung/vekit/Common/Type/PVObjectType;->$values()[Lcom/samsung/vekit/Common/Type/PVObjectType;

    move-result-object v0

    sput-object v0, Lcom/samsung/vekit/Common/Type/PVObjectType;->$VALUES:[Lcom/samsung/vekit/Common/Type/PVObjectType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/vekit/Common/Type/PVObjectType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 3
    const-class v0, Lcom/samsung/vekit/Common/Type/PVObjectType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/vekit/Common/Type/PVObjectType;

    return-object v0
.end method

.method public static values()[Lcom/samsung/vekit/Common/Type/PVObjectType;
    .locals 1

    .line 3
    sget-object v0, Lcom/samsung/vekit/Common/Type/PVObjectType;->$VALUES:[Lcom/samsung/vekit/Common/Type/PVObjectType;

    invoke-virtual {v0}, [Lcom/samsung/vekit/Common/Type/PVObjectType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/vekit/Common/Type/PVObjectType;

    return-object v0
.end method
