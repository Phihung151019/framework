.class public final enum Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter$OperationMode;
.super Ljava/lang/Enum;
.source "SemCameraConfigParameter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "OperationMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter$OperationMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter$OperationMode;

.field public static final enum FULL:Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter$OperationMode;

.field public static final enum HDR_ONLY:Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter$OperationMode;

.field public static final enum LOW_LIGHT_ONLY:Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter$OperationMode;

.field public static final enum SINGLE_FRAME:Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter$OperationMode;


# direct methods
.method private static synthetic $values()[Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter$OperationMode;
    .locals 4

    .line 12
    sget-object v0, Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter$OperationMode;->FULL:Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter$OperationMode;

    sget-object v1, Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter$OperationMode;->HDR_ONLY:Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter$OperationMode;

    sget-object v2, Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter$OperationMode;->LOW_LIGHT_ONLY:Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter$OperationMode;

    sget-object v3, Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter$OperationMode;->SINGLE_FRAME:Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter$OperationMode;

    filled-new-array {v0, v1, v2, v3}, [Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter$OperationMode;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 14
    new-instance v0, Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter$OperationMode;

    const-string v1, "FULL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter$OperationMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter$OperationMode;->FULL:Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter$OperationMode;

    .line 16
    new-instance v0, Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter$OperationMode;

    const-string v1, "HDR_ONLY"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter$OperationMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter$OperationMode;->HDR_ONLY:Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter$OperationMode;

    .line 18
    new-instance v0, Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter$OperationMode;

    const-string v1, "LOW_LIGHT_ONLY"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter$OperationMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter$OperationMode;->LOW_LIGHT_ONLY:Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter$OperationMode;

    .line 20
    new-instance v0, Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter$OperationMode;

    const-string v1, "SINGLE_FRAME"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter$OperationMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter$OperationMode;->SINGLE_FRAME:Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter$OperationMode;

    .line 12
    invoke-static {}, Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter$OperationMode;->$values()[Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter$OperationMode;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter$OperationMode;->$VALUES:[Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter$OperationMode;

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

    .line 12
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter$OperationMode;
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

    .line 12
    const-class v0, Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter$OperationMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter$OperationMode;

    return-object v0
.end method

.method public static values()[Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter$OperationMode;
    .locals 1

    .line 12
    sget-object v0, Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter$OperationMode;->$VALUES:[Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter$OperationMode;

    invoke-virtual {v0}, [Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter$OperationMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter$OperationMode;

    return-object v0
.end method
