.class public final enum Lcom/samsung/vekit/Common/Type/ImageDecoderType;
.super Ljava/lang/Enum;
.source "ImageDecoderType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/vekit/Common/Type/ImageDecoderType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/vekit/Common/Type/ImageDecoderType;

.field public static final enum DEFAULT:Lcom/samsung/vekit/Common/Type/ImageDecoderType;

.field public static final enum GOOGLE:Lcom/samsung/vekit/Common/Type/ImageDecoderType;


# direct methods
.method private static synthetic $values()[Lcom/samsung/vekit/Common/Type/ImageDecoderType;
    .locals 2

    .line 3
    sget-object v0, Lcom/samsung/vekit/Common/Type/ImageDecoderType;->DEFAULT:Lcom/samsung/vekit/Common/Type/ImageDecoderType;

    sget-object v1, Lcom/samsung/vekit/Common/Type/ImageDecoderType;->GOOGLE:Lcom/samsung/vekit/Common/Type/ImageDecoderType;

    filled-new-array {v0, v1}, [Lcom/samsung/vekit/Common/Type/ImageDecoderType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 4
    new-instance v0, Lcom/samsung/vekit/Common/Type/ImageDecoderType;

    const-string v1, "DEFAULT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/vekit/Common/Type/ImageDecoderType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/vekit/Common/Type/ImageDecoderType;->DEFAULT:Lcom/samsung/vekit/Common/Type/ImageDecoderType;

    .line 5
    new-instance v0, Lcom/samsung/vekit/Common/Type/ImageDecoderType;

    const-string v1, "GOOGLE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/samsung/vekit/Common/Type/ImageDecoderType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/vekit/Common/Type/ImageDecoderType;->GOOGLE:Lcom/samsung/vekit/Common/Type/ImageDecoderType;

    .line 3
    invoke-static {}, Lcom/samsung/vekit/Common/Type/ImageDecoderType;->$values()[Lcom/samsung/vekit/Common/Type/ImageDecoderType;

    move-result-object v0

    sput-object v0, Lcom/samsung/vekit/Common/Type/ImageDecoderType;->$VALUES:[Lcom/samsung/vekit/Common/Type/ImageDecoderType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/vekit/Common/Type/ImageDecoderType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 3
    const-class v0, Lcom/samsung/vekit/Common/Type/ImageDecoderType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/vekit/Common/Type/ImageDecoderType;

    return-object v0
.end method

.method public static values()[Lcom/samsung/vekit/Common/Type/ImageDecoderType;
    .locals 1

    .line 3
    sget-object v0, Lcom/samsung/vekit/Common/Type/ImageDecoderType;->$VALUES:[Lcom/samsung/vekit/Common/Type/ImageDecoderType;

    invoke-virtual {v0}, [Lcom/samsung/vekit/Common/Type/ImageDecoderType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/vekit/Common/Type/ImageDecoderType;

    return-object v0
.end method
