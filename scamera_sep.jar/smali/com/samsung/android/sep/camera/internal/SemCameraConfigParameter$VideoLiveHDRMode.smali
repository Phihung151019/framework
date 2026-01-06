.class public final enum Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter$VideoLiveHDRMode;
.super Ljava/lang/Enum;
.source "SemCameraConfigParameter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "VideoLiveHDRMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter$VideoLiveHDRMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter$VideoLiveHDRMode;

.field public static final enum VIDEO_HDR_OFF:Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter$VideoLiveHDRMode;

.field public static final enum VIDEO_HDR_ON:Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter$VideoLiveHDRMode;


# direct methods
.method private static synthetic $values()[Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter$VideoLiveHDRMode;
    .locals 2

    .line 23
    sget-object v0, Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter$VideoLiveHDRMode;->VIDEO_HDR_OFF:Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter$VideoLiveHDRMode;

    sget-object v1, Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter$VideoLiveHDRMode;->VIDEO_HDR_ON:Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter$VideoLiveHDRMode;

    filled-new-array {v0, v1}, [Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter$VideoLiveHDRMode;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 25
    new-instance v0, Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter$VideoLiveHDRMode;

    const-string v1, "VIDEO_HDR_OFF"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter$VideoLiveHDRMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter$VideoLiveHDRMode;->VIDEO_HDR_OFF:Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter$VideoLiveHDRMode;

    .line 27
    new-instance v0, Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter$VideoLiveHDRMode;

    const-string v1, "VIDEO_HDR_ON"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter$VideoLiveHDRMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter$VideoLiveHDRMode;->VIDEO_HDR_ON:Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter$VideoLiveHDRMode;

    .line 23
    invoke-static {}, Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter$VideoLiveHDRMode;->$values()[Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter$VideoLiveHDRMode;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter$VideoLiveHDRMode;->$VALUES:[Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter$VideoLiveHDRMode;

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

    .line 23
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter$VideoLiveHDRMode;
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

    .line 23
    const-class v0, Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter$VideoLiveHDRMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter$VideoLiveHDRMode;

    return-object v0
.end method

.method public static values()[Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter$VideoLiveHDRMode;
    .locals 1

    .line 23
    sget-object v0, Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter$VideoLiveHDRMode;->$VALUES:[Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter$VideoLiveHDRMode;

    invoke-virtual {v0}, [Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter$VideoLiveHDRMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter$VideoLiveHDRMode;

    return-object v0
.end method
