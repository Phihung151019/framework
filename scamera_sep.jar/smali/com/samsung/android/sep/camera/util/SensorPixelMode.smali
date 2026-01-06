.class public final enum Lcom/samsung/android/sep/camera/util/SensorPixelMode;
.super Ljava/lang/Enum;
.source "SensorPixelMode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/sep/camera/util/SensorPixelMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/sep/camera/util/SensorPixelMode;

.field public static final enum MODE_DEFAULT:Lcom/samsung/android/sep/camera/util/SensorPixelMode;

.field public static final enum MODE_MAXIMUM_RESOLUTION:Lcom/samsung/android/sep/camera/util/SensorPixelMode;

.field public static final enum MODE_MINIMUM_RESOLUTION:Lcom/samsung/android/sep/camera/util/SensorPixelMode;

.field public static final enum MODE_TETRA_CROP:Lcom/samsung/android/sep/camera/util/SensorPixelMode;


# instance fields
.field private final sensorPixelMode:I


# direct methods
.method private static synthetic $values()[Lcom/samsung/android/sep/camera/util/SensorPixelMode;
    .locals 4

    .line 13
    sget-object v0, Lcom/samsung/android/sep/camera/util/SensorPixelMode;->MODE_DEFAULT:Lcom/samsung/android/sep/camera/util/SensorPixelMode;

    sget-object v1, Lcom/samsung/android/sep/camera/util/SensorPixelMode;->MODE_MAXIMUM_RESOLUTION:Lcom/samsung/android/sep/camera/util/SensorPixelMode;

    sget-object v2, Lcom/samsung/android/sep/camera/util/SensorPixelMode;->MODE_MINIMUM_RESOLUTION:Lcom/samsung/android/sep/camera/util/SensorPixelMode;

    sget-object v3, Lcom/samsung/android/sep/camera/util/SensorPixelMode;->MODE_TETRA_CROP:Lcom/samsung/android/sep/camera/util/SensorPixelMode;

    filled-new-array {v0, v1, v2, v3}, [Lcom/samsung/android/sep/camera/util/SensorPixelMode;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 14
    new-instance v0, Lcom/samsung/android/sep/camera/util/SensorPixelMode;

    const-string v1, "MODE_DEFAULT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/samsung/android/sep/camera/util/SensorPixelMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/sep/camera/util/SensorPixelMode;->MODE_DEFAULT:Lcom/samsung/android/sep/camera/util/SensorPixelMode;

    .line 15
    new-instance v0, Lcom/samsung/android/sep/camera/util/SensorPixelMode;

    const-string v1, "MODE_MAXIMUM_RESOLUTION"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Lcom/samsung/android/sep/camera/util/SensorPixelMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/sep/camera/util/SensorPixelMode;->MODE_MAXIMUM_RESOLUTION:Lcom/samsung/android/sep/camera/util/SensorPixelMode;

    .line 16
    new-instance v0, Lcom/samsung/android/sep/camera/util/SensorPixelMode;

    const-string v1, "MODE_MINIMUM_RESOLUTION"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v2}, Lcom/samsung/android/sep/camera/util/SensorPixelMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/sep/camera/util/SensorPixelMode;->MODE_MINIMUM_RESOLUTION:Lcom/samsung/android/sep/camera/util/SensorPixelMode;

    .line 17
    new-instance v0, Lcom/samsung/android/sep/camera/util/SensorPixelMode;

    const-string v1, "MODE_TETRA_CROP"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2, v2}, Lcom/samsung/android/sep/camera/util/SensorPixelMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/sep/camera/util/SensorPixelMode;->MODE_TETRA_CROP:Lcom/samsung/android/sep/camera/util/SensorPixelMode;

    .line 13
    invoke-static {}, Lcom/samsung/android/sep/camera/util/SensorPixelMode;->$values()[Lcom/samsung/android/sep/camera/util/SensorPixelMode;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sep/camera/util/SensorPixelMode;->$VALUES:[Lcom/samsung/android/sep/camera/util/SensorPixelMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "sensorPixelMode"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 30
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 31
    iput p3, p0, Lcom/samsung/android/sep/camera/util/SensorPixelMode;->sensorPixelMode:I

    .line 32
    return-void
.end method

.method public static find(I)Lcom/samsung/android/sep/camera/util/SensorPixelMode;
    .locals 2
    .param p0, "pixelMode"    # I

    .line 35
    invoke-static {}, Lcom/samsung/android/sep/camera/util/SensorPixelMode;->values()[Lcom/samsung/android/sep/camera/util/SensorPixelMode;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sep/camera/util/SensorPixelMode$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/samsung/android/sep/camera/util/SensorPixelMode$$ExternalSyntheticLambda0;-><init>(I)V

    .line 36
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 37
    invoke-interface {v0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/sep/camera/util/SensorPixelMode;->MODE_DEFAULT:Lcom/samsung/android/sep/camera/util/SensorPixelMode;

    .line 38
    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sep/camera/util/SensorPixelMode;

    .line 35
    return-object v0
.end method

.method static synthetic lambda$find$0(ILcom/samsung/android/sep/camera/util/SensorPixelMode;)Z
    .locals 1
    .param p0, "pixelMode"    # I
    .param p1, "sensorPixelMode"    # Lcom/samsung/android/sep/camera/util/SensorPixelMode;

    .line 36
    iget v0, p1, Lcom/samsung/android/sep/camera/util/SensorPixelMode;->sensorPixelMode:I

    if-ne v0, p0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/sep/camera/util/SensorPixelMode;
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

    .line 13
    const-class v0, Lcom/samsung/android/sep/camera/util/SensorPixelMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sep/camera/util/SensorPixelMode;

    return-object v0
.end method

.method public static values()[Lcom/samsung/android/sep/camera/util/SensorPixelMode;
    .locals 1

    .line 13
    sget-object v0, Lcom/samsung/android/sep/camera/util/SensorPixelMode;->$VALUES:[Lcom/samsung/android/sep/camera/util/SensorPixelMode;

    invoke-virtual {v0}, [Lcom/samsung/android/sep/camera/util/SensorPixelMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/sep/camera/util/SensorPixelMode;

    return-object v0
.end method
