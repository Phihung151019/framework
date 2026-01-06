.class public final enum Lcom/samsung/android/camerax/advanced/vendor/DynamicShotMode$PicFormat;
.super Ljava/lang/Enum;
.source "DynamicShotMode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/camerax/advanced/vendor/DynamicShotMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PicFormat"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/camerax/advanced/vendor/DynamicShotMode$PicFormat;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/camerax/advanced/vendor/DynamicShotMode$PicFormat;

.field public static final enum COMP:Lcom/samsung/android/camerax/advanced/vendor/DynamicShotMode$PicFormat;

.field public static final enum RAW:Lcom/samsung/android/camerax/advanced/vendor/DynamicShotMode$PicFormat;

.field public static final enum UN_COMP:Lcom/samsung/android/camerax/advanced/vendor/DynamicShotMode$PicFormat;


# direct methods
.method private static synthetic $values()[Lcom/samsung/android/camerax/advanced/vendor/DynamicShotMode$PicFormat;
    .locals 3

    .line 1269
    sget-object v0, Lcom/samsung/android/camerax/advanced/vendor/DynamicShotMode$PicFormat;->COMP:Lcom/samsung/android/camerax/advanced/vendor/DynamicShotMode$PicFormat;

    sget-object v1, Lcom/samsung/android/camerax/advanced/vendor/DynamicShotMode$PicFormat;->UN_COMP:Lcom/samsung/android/camerax/advanced/vendor/DynamicShotMode$PicFormat;

    sget-object v2, Lcom/samsung/android/camerax/advanced/vendor/DynamicShotMode$PicFormat;->RAW:Lcom/samsung/android/camerax/advanced/vendor/DynamicShotMode$PicFormat;

    filled-new-array {v0, v1, v2}, [Lcom/samsung/android/camerax/advanced/vendor/DynamicShotMode$PicFormat;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 1270
    new-instance v0, Lcom/samsung/android/camerax/advanced/vendor/DynamicShotMode$PicFormat;

    const-string v1, "COMP"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/camerax/advanced/vendor/DynamicShotMode$PicFormat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/camerax/advanced/vendor/DynamicShotMode$PicFormat;->COMP:Lcom/samsung/android/camerax/advanced/vendor/DynamicShotMode$PicFormat;

    new-instance v0, Lcom/samsung/android/camerax/advanced/vendor/DynamicShotMode$PicFormat;

    const-string v1, "UN_COMP"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/camerax/advanced/vendor/DynamicShotMode$PicFormat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/camerax/advanced/vendor/DynamicShotMode$PicFormat;->UN_COMP:Lcom/samsung/android/camerax/advanced/vendor/DynamicShotMode$PicFormat;

    new-instance v0, Lcom/samsung/android/camerax/advanced/vendor/DynamicShotMode$PicFormat;

    const-string v1, "RAW"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/camerax/advanced/vendor/DynamicShotMode$PicFormat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/camerax/advanced/vendor/DynamicShotMode$PicFormat;->RAW:Lcom/samsung/android/camerax/advanced/vendor/DynamicShotMode$PicFormat;

    .line 1269
    invoke-static {}, Lcom/samsung/android/camerax/advanced/vendor/DynamicShotMode$PicFormat;->$values()[Lcom/samsung/android/camerax/advanced/vendor/DynamicShotMode$PicFormat;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/camerax/advanced/vendor/DynamicShotMode$PicFormat;->$VALUES:[Lcom/samsung/android/camerax/advanced/vendor/DynamicShotMode$PicFormat;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1269
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/camerax/advanced/vendor/DynamicShotMode$PicFormat;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 1269
    const-class v0, Lcom/samsung/android/camerax/advanced/vendor/DynamicShotMode$PicFormat;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/camerax/advanced/vendor/DynamicShotMode$PicFormat;

    return-object v0
.end method

.method public static values()[Lcom/samsung/android/camerax/advanced/vendor/DynamicShotMode$PicFormat;
    .locals 1

    .line 1269
    sget-object v0, Lcom/samsung/android/camerax/advanced/vendor/DynamicShotMode$PicFormat;->$VALUES:[Lcom/samsung/android/camerax/advanced/vendor/DynamicShotMode$PicFormat;

    invoke-virtual {v0}, [Lcom/samsung/android/camerax/advanced/vendor/DynamicShotMode$PicFormat;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/camerax/advanced/vendor/DynamicShotMode$PicFormat;

    return-object v0
.end method
