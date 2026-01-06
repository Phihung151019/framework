.class public final enum Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$SendImageType;
.super Ljava/lang/Enum;
.source "SemCameraEffectProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401c
    name = "SendImageType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$SendImageType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$SendImageType;

.field public static final enum BURST:Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$SendImageType;

.field public static final enum JPEG:Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$SendImageType;

.field public static final enum PREVIEW:Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$SendImageType;

.field public static final enum SINGLE_YUV:Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$SendImageType;


# direct methods
.method private static synthetic $values()[Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$SendImageType;
    .locals 4

    .line 317
    sget-object v0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$SendImageType;->BURST:Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$SendImageType;

    sget-object v1, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$SendImageType;->SINGLE_YUV:Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$SendImageType;

    sget-object v2, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$SendImageType;->JPEG:Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$SendImageType;

    sget-object v3, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$SendImageType;->PREVIEW:Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$SendImageType;

    filled-new-array {v0, v1, v2, v3}, [Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$SendImageType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 318
    new-instance v0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$SendImageType;

    const-string v1, "BURST"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$SendImageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$SendImageType;->BURST:Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$SendImageType;

    .line 319
    new-instance v0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$SendImageType;

    const-string v1, "SINGLE_YUV"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$SendImageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$SendImageType;->SINGLE_YUV:Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$SendImageType;

    .line 320
    new-instance v0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$SendImageType;

    const-string v1, "JPEG"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$SendImageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$SendImageType;->JPEG:Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$SendImageType;

    .line 321
    new-instance v0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$SendImageType;

    const-string v1, "PREVIEW"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$SendImageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$SendImageType;->PREVIEW:Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$SendImageType;

    .line 317
    invoke-static {}, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$SendImageType;->$values()[Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$SendImageType;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$SendImageType;->$VALUES:[Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$SendImageType;

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

    .line 317
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$SendImageType;
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

    .line 317
    const-class v0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$SendImageType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$SendImageType;

    return-object v0
.end method

.method public static values()[Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$SendImageType;
    .locals 1

    .line 317
    sget-object v0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$SendImageType;->$VALUES:[Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$SendImageType;

    invoke-virtual {v0}, [Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$SendImageType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$SendImageType;

    return-object v0
.end method
