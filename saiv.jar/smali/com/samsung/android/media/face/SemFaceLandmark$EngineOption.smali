.class public final enum Lcom/samsung/android/media/face/SemFaceLandmark$EngineOption;
.super Ljava/lang/Enum;
.source "SemFaceLandmark.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/media/face/SemFaceLandmark;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "EngineOption"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/media/face/SemFaceLandmark$EngineOption;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/media/face/SemFaceLandmark$EngineOption;

.field public static final enum LANDMARK_13_KEYPOINTS:Lcom/samsung/android/media/face/SemFaceLandmark$EngineOption;

.field public static final enum LANDMARK_35_KEYPOINTS:Lcom/samsung/android/media/face/SemFaceLandmark$EngineOption;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final enum LANDMARK_38_KEYPOINTS:Lcom/samsung/android/media/face/SemFaceLandmark$EngineOption;


# instance fields
.field private mValue:I


# direct methods
.method private static synthetic $values()[Lcom/samsung/android/media/face/SemFaceLandmark$EngineOption;
    .locals 3

    .line 307
    sget-object v0, Lcom/samsung/android/media/face/SemFaceLandmark$EngineOption;->LANDMARK_13_KEYPOINTS:Lcom/samsung/android/media/face/SemFaceLandmark$EngineOption;

    sget-object v1, Lcom/samsung/android/media/face/SemFaceLandmark$EngineOption;->LANDMARK_35_KEYPOINTS:Lcom/samsung/android/media/face/SemFaceLandmark$EngineOption;

    sget-object v2, Lcom/samsung/android/media/face/SemFaceLandmark$EngineOption;->LANDMARK_38_KEYPOINTS:Lcom/samsung/android/media/face/SemFaceLandmark$EngineOption;

    filled-new-array {v0, v1, v2}, [Lcom/samsung/android/media/face/SemFaceLandmark$EngineOption;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 312
    new-instance v0, Lcom/samsung/android/media/face/SemFaceLandmark$EngineOption;

    const-string v1, "LANDMARK_13_KEYPOINTS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/samsung/android/media/face/SemFaceLandmark$EngineOption;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/media/face/SemFaceLandmark$EngineOption;->LANDMARK_13_KEYPOINTS:Lcom/samsung/android/media/face/SemFaceLandmark$EngineOption;

    .line 318
    new-instance v0, Lcom/samsung/android/media/face/SemFaceLandmark$EngineOption;

    const-string v1, "LANDMARK_35_KEYPOINTS"

    const/4 v2, 0x1

    const/4 v3, 0x2

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/media/face/SemFaceLandmark$EngineOption;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/media/face/SemFaceLandmark$EngineOption;->LANDMARK_35_KEYPOINTS:Lcom/samsung/android/media/face/SemFaceLandmark$EngineOption;

    .line 324
    new-instance v0, Lcom/samsung/android/media/face/SemFaceLandmark$EngineOption;

    const-string v1, "LANDMARK_38_KEYPOINTS"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v3, v2}, Lcom/samsung/android/media/face/SemFaceLandmark$EngineOption;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/media/face/SemFaceLandmark$EngineOption;->LANDMARK_38_KEYPOINTS:Lcom/samsung/android/media/face/SemFaceLandmark$EngineOption;

    .line 307
    invoke-static {}, Lcom/samsung/android/media/face/SemFaceLandmark$EngineOption;->$values()[Lcom/samsung/android/media/face/SemFaceLandmark$EngineOption;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/media/face/SemFaceLandmark$EngineOption;->$VALUES:[Lcom/samsung/android/media/face/SemFaceLandmark$EngineOption;

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

    .line 328
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 329
    iput p3, p0, Lcom/samsung/android/media/face/SemFaceLandmark$EngineOption;->mValue:I

    .line 330
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/media/face/SemFaceLandmark$EngineOption;
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

    .line 307
    const-class v0, Lcom/samsung/android/media/face/SemFaceLandmark$EngineOption;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/media/face/SemFaceLandmark$EngineOption;

    return-object v0
.end method

.method public static values()[Lcom/samsung/android/media/face/SemFaceLandmark$EngineOption;
    .locals 1

    .line 307
    sget-object v0, Lcom/samsung/android/media/face/SemFaceLandmark$EngineOption;->$VALUES:[Lcom/samsung/android/media/face/SemFaceLandmark$EngineOption;

    invoke-virtual {v0}, [Lcom/samsung/android/media/face/SemFaceLandmark$EngineOption;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/media/face/SemFaceLandmark$EngineOption;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .line 338
    iget v0, p0, Lcom/samsung/android/media/face/SemFaceLandmark$EngineOption;->mValue:I

    return v0
.end method
