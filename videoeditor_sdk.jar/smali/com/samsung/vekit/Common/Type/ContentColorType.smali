.class public final enum Lcom/samsung/vekit/Common/Type/ContentColorType;
.super Ljava/lang/Enum;
.source "ContentColorType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/vekit/Common/Type/ContentColorType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/vekit/Common/Type/ContentColorType;

.field public static final enum HDR:Lcom/samsung/vekit/Common/Type/ContentColorType;

.field public static final enum HLG:Lcom/samsung/vekit/Common/Type/ContentColorType;

.field public static final enum SDR:Lcom/samsung/vekit/Common/Type/ContentColorType;


# direct methods
.method private static synthetic $values()[Lcom/samsung/vekit/Common/Type/ContentColorType;
    .locals 3

    .line 17
    sget-object v0, Lcom/samsung/vekit/Common/Type/ContentColorType;->SDR:Lcom/samsung/vekit/Common/Type/ContentColorType;

    sget-object v1, Lcom/samsung/vekit/Common/Type/ContentColorType;->HDR:Lcom/samsung/vekit/Common/Type/ContentColorType;

    sget-object v2, Lcom/samsung/vekit/Common/Type/ContentColorType;->HLG:Lcom/samsung/vekit/Common/Type/ContentColorType;

    filled-new-array {v0, v1, v2}, [Lcom/samsung/vekit/Common/Type/ContentColorType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 18
    new-instance v0, Lcom/samsung/vekit/Common/Type/ContentColorType;

    const-string v1, "SDR"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/vekit/Common/Type/ContentColorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/vekit/Common/Type/ContentColorType;->SDR:Lcom/samsung/vekit/Common/Type/ContentColorType;

    .line 19
    new-instance v0, Lcom/samsung/vekit/Common/Type/ContentColorType;

    const-string v1, "HDR"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/samsung/vekit/Common/Type/ContentColorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/vekit/Common/Type/ContentColorType;->HDR:Lcom/samsung/vekit/Common/Type/ContentColorType;

    .line 20
    new-instance v0, Lcom/samsung/vekit/Common/Type/ContentColorType;

    const-string v1, "HLG"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/samsung/vekit/Common/Type/ContentColorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/vekit/Common/Type/ContentColorType;->HLG:Lcom/samsung/vekit/Common/Type/ContentColorType;

    .line 17
    invoke-static {}, Lcom/samsung/vekit/Common/Type/ContentColorType;->$values()[Lcom/samsung/vekit/Common/Type/ContentColorType;

    move-result-object v0

    sput-object v0, Lcom/samsung/vekit/Common/Type/ContentColorType;->$VALUES:[Lcom/samsung/vekit/Common/Type/ContentColorType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 17
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/vekit/Common/Type/ContentColorType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 17
    const-class v0, Lcom/samsung/vekit/Common/Type/ContentColorType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/vekit/Common/Type/ContentColorType;

    return-object v0
.end method

.method public static values()[Lcom/samsung/vekit/Common/Type/ContentColorType;
    .locals 1

    .line 17
    sget-object v0, Lcom/samsung/vekit/Common/Type/ContentColorType;->$VALUES:[Lcom/samsung/vekit/Common/Type/ContentColorType;

    invoke-virtual {v0}, [Lcom/samsung/vekit/Common/Type/ContentColorType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/vekit/Common/Type/ContentColorType;

    return-object v0
.end method
