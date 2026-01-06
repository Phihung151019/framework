.class public final enum Lcom/samsung/android/sep/camera/SemCamera$PhysicalCameraType;
.super Ljava/lang/Enum;
.source "SemCamera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sep/camera/SemCamera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PhysicalCameraType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/sep/camera/SemCamera$PhysicalCameraType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/sep/camera/SemCamera$PhysicalCameraType;

.field public static final enum TELE:Lcom/samsung/android/sep/camera/SemCamera$PhysicalCameraType;

.field public static final enum TELE_2:Lcom/samsung/android/sep/camera/SemCamera$PhysicalCameraType;


# direct methods
.method private static synthetic $values()[Lcom/samsung/android/sep/camera/SemCamera$PhysicalCameraType;
    .locals 2

    .line 144
    sget-object v0, Lcom/samsung/android/sep/camera/SemCamera$PhysicalCameraType;->TELE:Lcom/samsung/android/sep/camera/SemCamera$PhysicalCameraType;

    sget-object v1, Lcom/samsung/android/sep/camera/SemCamera$PhysicalCameraType;->TELE_2:Lcom/samsung/android/sep/camera/SemCamera$PhysicalCameraType;

    filled-new-array {v0, v1}, [Lcom/samsung/android/sep/camera/SemCamera$PhysicalCameraType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 146
    new-instance v0, Lcom/samsung/android/sep/camera/SemCamera$PhysicalCameraType;

    const-string v1, "TELE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/sep/camera/SemCamera$PhysicalCameraType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/sep/camera/SemCamera$PhysicalCameraType;->TELE:Lcom/samsung/android/sep/camera/SemCamera$PhysicalCameraType;

    .line 148
    new-instance v0, Lcom/samsung/android/sep/camera/SemCamera$PhysicalCameraType;

    const-string v1, "TELE_2"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/sep/camera/SemCamera$PhysicalCameraType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/sep/camera/SemCamera$PhysicalCameraType;->TELE_2:Lcom/samsung/android/sep/camera/SemCamera$PhysicalCameraType;

    .line 144
    invoke-static {}, Lcom/samsung/android/sep/camera/SemCamera$PhysicalCameraType;->$values()[Lcom/samsung/android/sep/camera/SemCamera$PhysicalCameraType;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sep/camera/SemCamera$PhysicalCameraType;->$VALUES:[Lcom/samsung/android/sep/camera/SemCamera$PhysicalCameraType;

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

    .line 144
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/sep/camera/SemCamera$PhysicalCameraType;
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

    .line 144
    const-class v0, Lcom/samsung/android/sep/camera/SemCamera$PhysicalCameraType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sep/camera/SemCamera$PhysicalCameraType;

    return-object v0
.end method

.method public static values()[Lcom/samsung/android/sep/camera/SemCamera$PhysicalCameraType;
    .locals 1

    .line 144
    sget-object v0, Lcom/samsung/android/sep/camera/SemCamera$PhysicalCameraType;->$VALUES:[Lcom/samsung/android/sep/camera/SemCamera$PhysicalCameraType;

    invoke-virtual {v0}, [Lcom/samsung/android/sep/camera/SemCamera$PhysicalCameraType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/sep/camera/SemCamera$PhysicalCameraType;

    return-object v0
.end method
