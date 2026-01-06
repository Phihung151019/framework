.class final enum Lcom/samsung/android/sep/camera/SemCameraConfig$ExposureControlDisabledFromApp;
.super Ljava/lang/Enum;
.source "SemCameraConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sep/camera/SemCameraConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "ExposureControlDisabledFromApp"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/sep/camera/SemCameraConfig$ExposureControlDisabledFromApp;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/sep/camera/SemCameraConfig$ExposureControlDisabledFromApp;

.field public static final enum DISABLED:Lcom/samsung/android/sep/camera/SemCameraConfig$ExposureControlDisabledFromApp;

.field public static final enum ENABLED:Lcom/samsung/android/sep/camera/SemCameraConfig$ExposureControlDisabledFromApp;

.field public static final enum NOT_CALLED:Lcom/samsung/android/sep/camera/SemCameraConfig$ExposureControlDisabledFromApp;


# direct methods
.method private static synthetic $values()[Lcom/samsung/android/sep/camera/SemCameraConfig$ExposureControlDisabledFromApp;
    .locals 3

    .line 35
    sget-object v0, Lcom/samsung/android/sep/camera/SemCameraConfig$ExposureControlDisabledFromApp;->NOT_CALLED:Lcom/samsung/android/sep/camera/SemCameraConfig$ExposureControlDisabledFromApp;

    sget-object v1, Lcom/samsung/android/sep/camera/SemCameraConfig$ExposureControlDisabledFromApp;->DISABLED:Lcom/samsung/android/sep/camera/SemCameraConfig$ExposureControlDisabledFromApp;

    sget-object v2, Lcom/samsung/android/sep/camera/SemCameraConfig$ExposureControlDisabledFromApp;->ENABLED:Lcom/samsung/android/sep/camera/SemCameraConfig$ExposureControlDisabledFromApp;

    filled-new-array {v0, v1, v2}, [Lcom/samsung/android/sep/camera/SemCameraConfig$ExposureControlDisabledFromApp;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 36
    new-instance v0, Lcom/samsung/android/sep/camera/SemCameraConfig$ExposureControlDisabledFromApp;

    const-string v1, "NOT_CALLED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/sep/camera/SemCameraConfig$ExposureControlDisabledFromApp;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/sep/camera/SemCameraConfig$ExposureControlDisabledFromApp;->NOT_CALLED:Lcom/samsung/android/sep/camera/SemCameraConfig$ExposureControlDisabledFromApp;

    .line 37
    new-instance v0, Lcom/samsung/android/sep/camera/SemCameraConfig$ExposureControlDisabledFromApp;

    const-string v1, "DISABLED"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/sep/camera/SemCameraConfig$ExposureControlDisabledFromApp;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/sep/camera/SemCameraConfig$ExposureControlDisabledFromApp;->DISABLED:Lcom/samsung/android/sep/camera/SemCameraConfig$ExposureControlDisabledFromApp;

    .line 38
    new-instance v0, Lcom/samsung/android/sep/camera/SemCameraConfig$ExposureControlDisabledFromApp;

    const-string v1, "ENABLED"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/sep/camera/SemCameraConfig$ExposureControlDisabledFromApp;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/sep/camera/SemCameraConfig$ExposureControlDisabledFromApp;->ENABLED:Lcom/samsung/android/sep/camera/SemCameraConfig$ExposureControlDisabledFromApp;

    .line 35
    invoke-static {}, Lcom/samsung/android/sep/camera/SemCameraConfig$ExposureControlDisabledFromApp;->$values()[Lcom/samsung/android/sep/camera/SemCameraConfig$ExposureControlDisabledFromApp;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sep/camera/SemCameraConfig$ExposureControlDisabledFromApp;->$VALUES:[Lcom/samsung/android/sep/camera/SemCameraConfig$ExposureControlDisabledFromApp;

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

    .line 35
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/sep/camera/SemCameraConfig$ExposureControlDisabledFromApp;
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

    .line 35
    const-class v0, Lcom/samsung/android/sep/camera/SemCameraConfig$ExposureControlDisabledFromApp;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sep/camera/SemCameraConfig$ExposureControlDisabledFromApp;

    return-object v0
.end method

.method public static values()[Lcom/samsung/android/sep/camera/SemCameraConfig$ExposureControlDisabledFromApp;
    .locals 1

    .line 35
    sget-object v0, Lcom/samsung/android/sep/camera/SemCameraConfig$ExposureControlDisabledFromApp;->$VALUES:[Lcom/samsung/android/sep/camera/SemCameraConfig$ExposureControlDisabledFromApp;

    invoke-virtual {v0}, [Lcom/samsung/android/sep/camera/SemCameraConfig$ExposureControlDisabledFromApp;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/sep/camera/SemCameraConfig$ExposureControlDisabledFromApp;

    return-object v0
.end method
