.class public final enum Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter$SelfieToneMode;
.super Ljava/lang/Enum;
.source "SemCameraConfigParameter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SelfieToneMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter$SelfieToneMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter$SelfieToneMode;

.field public static final enum NATURAL:Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter$SelfieToneMode;

.field public static final enum NONE:Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter$SelfieToneMode;

.field public static final enum WARM:Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter$SelfieToneMode;


# direct methods
.method private static synthetic $values()[Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter$SelfieToneMode;
    .locals 3

    .line 62
    sget-object v0, Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter$SelfieToneMode;->NATURAL:Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter$SelfieToneMode;

    sget-object v1, Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter$SelfieToneMode;->WARM:Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter$SelfieToneMode;

    sget-object v2, Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter$SelfieToneMode;->NONE:Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter$SelfieToneMode;

    filled-new-array {v0, v1, v2}, [Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter$SelfieToneMode;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 64
    new-instance v0, Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter$SelfieToneMode;

    const-string v1, "NATURAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter$SelfieToneMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter$SelfieToneMode;->NATURAL:Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter$SelfieToneMode;

    .line 66
    new-instance v0, Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter$SelfieToneMode;

    const-string v1, "WARM"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter$SelfieToneMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter$SelfieToneMode;->WARM:Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter$SelfieToneMode;

    .line 68
    new-instance v0, Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter$SelfieToneMode;

    const-string v1, "NONE"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter$SelfieToneMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter$SelfieToneMode;->NONE:Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter$SelfieToneMode;

    .line 62
    invoke-static {}, Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter$SelfieToneMode;->$values()[Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter$SelfieToneMode;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter$SelfieToneMode;->$VALUES:[Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter$SelfieToneMode;

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

    .line 62
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter$SelfieToneMode;
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

    .line 62
    const-class v0, Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter$SelfieToneMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter$SelfieToneMode;

    return-object v0
.end method

.method public static values()[Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter$SelfieToneMode;
    .locals 1

    .line 62
    sget-object v0, Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter$SelfieToneMode;->$VALUES:[Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter$SelfieToneMode;

    invoke-virtual {v0}, [Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter$SelfieToneMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter$SelfieToneMode;

    return-object v0
.end method
