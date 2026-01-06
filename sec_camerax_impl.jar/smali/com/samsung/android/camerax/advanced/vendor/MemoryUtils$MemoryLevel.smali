.class public final enum Lcom/samsung/android/camerax/advanced/vendor/MemoryUtils$MemoryLevel;
.super Ljava/lang/Enum;
.source "MemoryUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/camerax/advanced/vendor/MemoryUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MemoryLevel"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/camerax/advanced/vendor/MemoryUtils$MemoryLevel;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/camerax/advanced/vendor/MemoryUtils$MemoryLevel;

.field public static final enum HIGH:Lcom/samsung/android/camerax/advanced/vendor/MemoryUtils$MemoryLevel;

.field public static final enum LOW:Lcom/samsung/android/camerax/advanced/vendor/MemoryUtils$MemoryLevel;

.field public static final enum MID:Lcom/samsung/android/camerax/advanced/vendor/MemoryUtils$MemoryLevel;

.field public static final enum VERY_HIGH:Lcom/samsung/android/camerax/advanced/vendor/MemoryUtils$MemoryLevel;

.field public static final enum VERY_LOW:Lcom/samsung/android/camerax/advanced/vendor/MemoryUtils$MemoryLevel;


# instance fields
.field private final bufferPoolSize:I

.field private final cutOffThreshold:I

.field private final id:I

.field private final maxRawBufferNum:I

.field private final maxYuvBufferNum:I


# direct methods
.method private static synthetic $values()[Lcom/samsung/android/camerax/advanced/vendor/MemoryUtils$MemoryLevel;
    .locals 5

    .line 200
    sget-object v0, Lcom/samsung/android/camerax/advanced/vendor/MemoryUtils$MemoryLevel;->VERY_LOW:Lcom/samsung/android/camerax/advanced/vendor/MemoryUtils$MemoryLevel;

    sget-object v1, Lcom/samsung/android/camerax/advanced/vendor/MemoryUtils$MemoryLevel;->LOW:Lcom/samsung/android/camerax/advanced/vendor/MemoryUtils$MemoryLevel;

    sget-object v2, Lcom/samsung/android/camerax/advanced/vendor/MemoryUtils$MemoryLevel;->MID:Lcom/samsung/android/camerax/advanced/vendor/MemoryUtils$MemoryLevel;

    sget-object v3, Lcom/samsung/android/camerax/advanced/vendor/MemoryUtils$MemoryLevel;->HIGH:Lcom/samsung/android/camerax/advanced/vendor/MemoryUtils$MemoryLevel;

    sget-object v4, Lcom/samsung/android/camerax/advanced/vendor/MemoryUtils$MemoryLevel;->VERY_HIGH:Lcom/samsung/android/camerax/advanced/vendor/MemoryUtils$MemoryLevel;

    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/samsung/android/camerax/advanced/vendor/MemoryUtils$MemoryLevel;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 12

    .line 201
    new-instance v0, Lcom/samsung/android/camerax/advanced/vendor/MemoryUtils$MemoryLevel;

    const/4 v6, 0x7

    const/4 v7, 0x1

    const-string v1, "VERY_LOW"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x5

    invoke-direct/range {v0 .. v7}, Lcom/samsung/android/camerax/advanced/vendor/MemoryUtils$MemoryLevel;-><init>(Ljava/lang/String;IIIIII)V

    sput-object v0, Lcom/samsung/android/camerax/advanced/vendor/MemoryUtils$MemoryLevel;->VERY_LOW:Lcom/samsung/android/camerax/advanced/vendor/MemoryUtils$MemoryLevel;

    .line 202
    new-instance v1, Lcom/samsung/android/camerax/advanced/vendor/MemoryUtils$MemoryLevel;

    const/4 v7, 0x7

    const/4 v8, 0x5

    const-string v2, "LOW"

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/16 v5, 0x12c

    const/4 v6, 0x5

    invoke-direct/range {v1 .. v8}, Lcom/samsung/android/camerax/advanced/vendor/MemoryUtils$MemoryLevel;-><init>(Ljava/lang/String;IIIIII)V

    sput-object v1, Lcom/samsung/android/camerax/advanced/vendor/MemoryUtils$MemoryLevel;->LOW:Lcom/samsung/android/camerax/advanced/vendor/MemoryUtils$MemoryLevel;

    .line 203
    new-instance v2, Lcom/samsung/android/camerax/advanced/vendor/MemoryUtils$MemoryLevel;

    const/16 v8, 0x9

    const/16 v9, 0xa

    const-string v3, "MID"

    const/4 v4, 0x2

    const/4 v5, 0x2

    const/16 v6, 0x190

    invoke-direct/range {v2 .. v9}, Lcom/samsung/android/camerax/advanced/vendor/MemoryUtils$MemoryLevel;-><init>(Ljava/lang/String;IIIIII)V

    sput-object v2, Lcom/samsung/android/camerax/advanced/vendor/MemoryUtils$MemoryLevel;->MID:Lcom/samsung/android/camerax/advanced/vendor/MemoryUtils$MemoryLevel;

    .line 204
    new-instance v3, Lcom/samsung/android/camerax/advanced/vendor/MemoryUtils$MemoryLevel;

    const/16 v9, 0x9

    const/16 v10, 0xf

    const-string v4, "HIGH"

    const/4 v5, 0x3

    const/4 v6, 0x3

    const/16 v7, 0x320

    const/4 v8, 0x7

    invoke-direct/range {v3 .. v10}, Lcom/samsung/android/camerax/advanced/vendor/MemoryUtils$MemoryLevel;-><init>(Ljava/lang/String;IIIIII)V

    sput-object v3, Lcom/samsung/android/camerax/advanced/vendor/MemoryUtils$MemoryLevel;->HIGH:Lcom/samsung/android/camerax/advanced/vendor/MemoryUtils$MemoryLevel;

    .line 205
    new-instance v4, Lcom/samsung/android/camerax/advanced/vendor/MemoryUtils$MemoryLevel;

    const/16 v10, 0x9

    const/16 v11, 0x1e

    const-string v5, "VERY_HIGH"

    const/4 v6, 0x4

    const/4 v7, 0x4

    const/16 v8, 0x4b0

    const/4 v9, 0x7

    invoke-direct/range {v4 .. v11}, Lcom/samsung/android/camerax/advanced/vendor/MemoryUtils$MemoryLevel;-><init>(Ljava/lang/String;IIIIII)V

    sput-object v4, Lcom/samsung/android/camerax/advanced/vendor/MemoryUtils$MemoryLevel;->VERY_HIGH:Lcom/samsung/android/camerax/advanced/vendor/MemoryUtils$MemoryLevel;

    .line 200
    invoke-static {}, Lcom/samsung/android/camerax/advanced/vendor/MemoryUtils$MemoryLevel;->$values()[Lcom/samsung/android/camerax/advanced/vendor/MemoryUtils$MemoryLevel;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/camerax/advanced/vendor/MemoryUtils$MemoryLevel;->$VALUES:[Lcom/samsung/android/camerax/advanced/vendor/MemoryUtils$MemoryLevel;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIIIII)V
    .locals 0
    .param p3, "id"    # I
    .param p4, "cutOffThreshold"    # I
    .param p5, "maxYuvBufferNum"    # I
    .param p6, "maxRawBufferNum"    # I
    .param p7, "bufferPoolSize"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null,
            null,
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIIII)V"
        }
    .end annotation

    .line 214
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 215
    iput p3, p0, Lcom/samsung/android/camerax/advanced/vendor/MemoryUtils$MemoryLevel;->id:I

    .line 216
    iput p4, p0, Lcom/samsung/android/camerax/advanced/vendor/MemoryUtils$MemoryLevel;->cutOffThreshold:I

    .line 217
    iput p5, p0, Lcom/samsung/android/camerax/advanced/vendor/MemoryUtils$MemoryLevel;->maxYuvBufferNum:I

    .line 218
    iput p6, p0, Lcom/samsung/android/camerax/advanced/vendor/MemoryUtils$MemoryLevel;->maxRawBufferNum:I

    .line 219
    iput p7, p0, Lcom/samsung/android/camerax/advanced/vendor/MemoryUtils$MemoryLevel;->bufferPoolSize:I

    .line 220
    return-void
.end method

.method static synthetic lambda$valueOf$0(ILcom/samsung/android/camerax/advanced/vendor/MemoryUtils$MemoryLevel;)Z
    .locals 1
    .param p0, "level"    # I
    .param p1, "memoryLevel"    # Lcom/samsung/android/camerax/advanced/vendor/MemoryUtils$MemoryLevel;

    .line 224
    invoke-virtual {p1}, Lcom/samsung/android/camerax/advanced/vendor/MemoryUtils$MemoryLevel;->getId()I

    move-result v0

    if-ne v0, p0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic lambda$valueOf$1(I)Ljava/lang/IllegalArgumentException;
    .locals 3
    .param p0, "level"    # I

    .line 225
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "memory level is not valid : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static valueOf(I)Lcom/samsung/android/camerax/advanced/vendor/MemoryUtils$MemoryLevel;
    .locals 2
    .param p0, "level"    # I

    .line 223
    invoke-static {}, Lcom/samsung/android/camerax/advanced/vendor/MemoryUtils$MemoryLevel;->values()[Lcom/samsung/android/camerax/advanced/vendor/MemoryUtils$MemoryLevel;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/camerax/advanced/vendor/MemoryUtils$MemoryLevel$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/samsung/android/camerax/advanced/vendor/MemoryUtils$MemoryLevel$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 224
    invoke-interface {v0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/camerax/advanced/vendor/MemoryUtils$MemoryLevel$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/samsung/android/camerax/advanced/vendor/MemoryUtils$MemoryLevel$$ExternalSyntheticLambda1;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElseThrow(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/camerax/advanced/vendor/MemoryUtils$MemoryLevel;

    .line 223
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/camerax/advanced/vendor/MemoryUtils$MemoryLevel;
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

    .line 200
    const-class v0, Lcom/samsung/android/camerax/advanced/vendor/MemoryUtils$MemoryLevel;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/camerax/advanced/vendor/MemoryUtils$MemoryLevel;

    return-object v0
.end method

.method public static values()[Lcom/samsung/android/camerax/advanced/vendor/MemoryUtils$MemoryLevel;
    .locals 1

    .line 200
    sget-object v0, Lcom/samsung/android/camerax/advanced/vendor/MemoryUtils$MemoryLevel;->$VALUES:[Lcom/samsung/android/camerax/advanced/vendor/MemoryUtils$MemoryLevel;

    invoke-virtual {v0}, [Lcom/samsung/android/camerax/advanced/vendor/MemoryUtils$MemoryLevel;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/camerax/advanced/vendor/MemoryUtils$MemoryLevel;

    return-object v0
.end method


# virtual methods
.method public getBufferPoolSize()I
    .locals 1

    .line 245
    iget v0, p0, Lcom/samsung/android/camerax/advanced/vendor/MemoryUtils$MemoryLevel;->bufferPoolSize:I

    return v0
.end method

.method public getCutOffThreshold()I
    .locals 1

    .line 233
    iget v0, p0, Lcom/samsung/android/camerax/advanced/vendor/MemoryUtils$MemoryLevel;->cutOffThreshold:I

    return v0
.end method

.method public getId()I
    .locals 1

    .line 229
    iget v0, p0, Lcom/samsung/android/camerax/advanced/vendor/MemoryUtils$MemoryLevel;->id:I

    return v0
.end method

.method public getMaxRawBufferNum()I
    .locals 1

    .line 241
    iget v0, p0, Lcom/samsung/android/camerax/advanced/vendor/MemoryUtils$MemoryLevel;->maxRawBufferNum:I

    return v0
.end method

.method public getMaxYuvBufferNum()I
    .locals 1

    .line 237
    iget v0, p0, Lcom/samsung/android/camerax/advanced/vendor/MemoryUtils$MemoryLevel;->maxYuvBufferNum:I

    return v0
.end method
