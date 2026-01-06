.class public final enum Lcom/samsung/android/media/face/SemFaceDetection$ProcessingMode;
.super Ljava/lang/Enum;
.source "SemFaceDetection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/media/face/SemFaceDetection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ProcessingMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/media/face/SemFaceDetection$ProcessingMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/media/face/SemFaceDetection$ProcessingMode;

.field public static final enum FAST_SPEED_MODE:Lcom/samsung/android/media/face/SemFaceDetection$ProcessingMode;

.field public static final enum HIGH_DETECTION_RATE_MODE:Lcom/samsung/android/media/face/SemFaceDetection$ProcessingMode;


# instance fields
.field private mValue:I


# direct methods
.method private static synthetic $values()[Lcom/samsung/android/media/face/SemFaceDetection$ProcessingMode;
    .locals 2

    .line 248
    sget-object v0, Lcom/samsung/android/media/face/SemFaceDetection$ProcessingMode;->HIGH_DETECTION_RATE_MODE:Lcom/samsung/android/media/face/SemFaceDetection$ProcessingMode;

    sget-object v1, Lcom/samsung/android/media/face/SemFaceDetection$ProcessingMode;->FAST_SPEED_MODE:Lcom/samsung/android/media/face/SemFaceDetection$ProcessingMode;

    filled-new-array {v0, v1}, [Lcom/samsung/android/media/face/SemFaceDetection$ProcessingMode;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 253
    new-instance v0, Lcom/samsung/android/media/face/SemFaceDetection$ProcessingMode;

    const-string v1, "HIGH_DETECTION_RATE_MODE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/samsung/android/media/face/SemFaceDetection$ProcessingMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/media/face/SemFaceDetection$ProcessingMode;->HIGH_DETECTION_RATE_MODE:Lcom/samsung/android/media/face/SemFaceDetection$ProcessingMode;

    .line 258
    new-instance v0, Lcom/samsung/android/media/face/SemFaceDetection$ProcessingMode;

    const-string v1, "FAST_SPEED_MODE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Lcom/samsung/android/media/face/SemFaceDetection$ProcessingMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/media/face/SemFaceDetection$ProcessingMode;->FAST_SPEED_MODE:Lcom/samsung/android/media/face/SemFaceDetection$ProcessingMode;

    .line 248
    invoke-static {}, Lcom/samsung/android/media/face/SemFaceDetection$ProcessingMode;->$values()[Lcom/samsung/android/media/face/SemFaceDetection$ProcessingMode;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/media/face/SemFaceDetection$ProcessingMode;->$VALUES:[Lcom/samsung/android/media/face/SemFaceDetection$ProcessingMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "value"    # I
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

    .line 262
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 263
    iput p3, p0, Lcom/samsung/android/media/face/SemFaceDetection$ProcessingMode;->mValue:I

    .line 264
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/media/face/SemFaceDetection$ProcessingMode;
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

    .line 248
    const-class v0, Lcom/samsung/android/media/face/SemFaceDetection$ProcessingMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/media/face/SemFaceDetection$ProcessingMode;

    return-object v0
.end method

.method public static values()[Lcom/samsung/android/media/face/SemFaceDetection$ProcessingMode;
    .locals 1

    .line 248
    sget-object v0, Lcom/samsung/android/media/face/SemFaceDetection$ProcessingMode;->$VALUES:[Lcom/samsung/android/media/face/SemFaceDetection$ProcessingMode;

    invoke-virtual {v0}, [Lcom/samsung/android/media/face/SemFaceDetection$ProcessingMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/media/face/SemFaceDetection$ProcessingMode;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .line 272
    iget v0, p0, Lcom/samsung/android/media/face/SemFaceDetection$ProcessingMode;->mValue:I

    return v0
.end method
