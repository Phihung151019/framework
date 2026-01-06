.class public final enum Lcom/samsung/android/media/vision/SemSegmentation$Mode;
.super Ljava/lang/Enum;
.source "SemSegmentation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/media/vision/SemSegmentation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Mode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/media/vision/SemSegmentation$Mode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/media/vision/SemSegmentation$Mode;

.field public static final enum AUTO_WITH_BG_LOOP_MARKER:Lcom/samsung/android/media/vision/SemSegmentation$Mode;

.field public static final enum AUTO_WITH_BG_STROKE_MARKER:Lcom/samsung/android/media/vision/SemSegmentation$Mode;

.field public static final enum AUTO_WITH_FG_LOOP_MARKER:Lcom/samsung/android/media/vision/SemSegmentation$Mode;

.field public static final enum AUTO_WITH_FG_STROKE_MARKER:Lcom/samsung/android/media/vision/SemSegmentation$Mode;

.field public static final enum MANUAL_WITH_BG_LOOP_MARKER:Lcom/samsung/android/media/vision/SemSegmentation$Mode;

.field public static final enum MANUAL_WITH_BG_STROKE_MARKER:Lcom/samsung/android/media/vision/SemSegmentation$Mode;

.field public static final enum MANUAL_WITH_FG_LOOP_MARKER:Lcom/samsung/android/media/vision/SemSegmentation$Mode;

.field public static final enum MANUAL_WITH_FG_STROKE_MARKER:Lcom/samsung/android/media/vision/SemSegmentation$Mode;

.field public static final enum NONE:Lcom/samsung/android/media/vision/SemSegmentation$Mode;


# direct methods
.method private static synthetic $values()[Lcom/samsung/android/media/vision/SemSegmentation$Mode;
    .locals 9

    .line 25
    sget-object v0, Lcom/samsung/android/media/vision/SemSegmentation$Mode;->AUTO_WITH_FG_LOOP_MARKER:Lcom/samsung/android/media/vision/SemSegmentation$Mode;

    sget-object v1, Lcom/samsung/android/media/vision/SemSegmentation$Mode;->AUTO_WITH_BG_LOOP_MARKER:Lcom/samsung/android/media/vision/SemSegmentation$Mode;

    sget-object v2, Lcom/samsung/android/media/vision/SemSegmentation$Mode;->AUTO_WITH_FG_STROKE_MARKER:Lcom/samsung/android/media/vision/SemSegmentation$Mode;

    sget-object v3, Lcom/samsung/android/media/vision/SemSegmentation$Mode;->AUTO_WITH_BG_STROKE_MARKER:Lcom/samsung/android/media/vision/SemSegmentation$Mode;

    sget-object v4, Lcom/samsung/android/media/vision/SemSegmentation$Mode;->MANUAL_WITH_FG_LOOP_MARKER:Lcom/samsung/android/media/vision/SemSegmentation$Mode;

    sget-object v5, Lcom/samsung/android/media/vision/SemSegmentation$Mode;->MANUAL_WITH_BG_LOOP_MARKER:Lcom/samsung/android/media/vision/SemSegmentation$Mode;

    sget-object v6, Lcom/samsung/android/media/vision/SemSegmentation$Mode;->MANUAL_WITH_FG_STROKE_MARKER:Lcom/samsung/android/media/vision/SemSegmentation$Mode;

    sget-object v7, Lcom/samsung/android/media/vision/SemSegmentation$Mode;->MANUAL_WITH_BG_STROKE_MARKER:Lcom/samsung/android/media/vision/SemSegmentation$Mode;

    sget-object v8, Lcom/samsung/android/media/vision/SemSegmentation$Mode;->NONE:Lcom/samsung/android/media/vision/SemSegmentation$Mode;

    filled-new-array/range {v0 .. v8}, [Lcom/samsung/android/media/vision/SemSegmentation$Mode;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 29
    new-instance v0, Lcom/samsung/android/media/vision/SemSegmentation$Mode;

    const-string v1, "AUTO_WITH_FG_LOOP_MARKER"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/media/vision/SemSegmentation$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/media/vision/SemSegmentation$Mode;->AUTO_WITH_FG_LOOP_MARKER:Lcom/samsung/android/media/vision/SemSegmentation$Mode;

    .line 33
    new-instance v0, Lcom/samsung/android/media/vision/SemSegmentation$Mode;

    const-string v1, "AUTO_WITH_BG_LOOP_MARKER"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/media/vision/SemSegmentation$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/media/vision/SemSegmentation$Mode;->AUTO_WITH_BG_LOOP_MARKER:Lcom/samsung/android/media/vision/SemSegmentation$Mode;

    .line 37
    new-instance v0, Lcom/samsung/android/media/vision/SemSegmentation$Mode;

    const-string v1, "AUTO_WITH_FG_STROKE_MARKER"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/media/vision/SemSegmentation$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/media/vision/SemSegmentation$Mode;->AUTO_WITH_FG_STROKE_MARKER:Lcom/samsung/android/media/vision/SemSegmentation$Mode;

    .line 41
    new-instance v0, Lcom/samsung/android/media/vision/SemSegmentation$Mode;

    const-string v1, "AUTO_WITH_BG_STROKE_MARKER"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/media/vision/SemSegmentation$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/media/vision/SemSegmentation$Mode;->AUTO_WITH_BG_STROKE_MARKER:Lcom/samsung/android/media/vision/SemSegmentation$Mode;

    .line 45
    new-instance v0, Lcom/samsung/android/media/vision/SemSegmentation$Mode;

    const-string v1, "MANUAL_WITH_FG_LOOP_MARKER"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/media/vision/SemSegmentation$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/media/vision/SemSegmentation$Mode;->MANUAL_WITH_FG_LOOP_MARKER:Lcom/samsung/android/media/vision/SemSegmentation$Mode;

    .line 49
    new-instance v0, Lcom/samsung/android/media/vision/SemSegmentation$Mode;

    const-string v1, "MANUAL_WITH_BG_LOOP_MARKER"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/media/vision/SemSegmentation$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/media/vision/SemSegmentation$Mode;->MANUAL_WITH_BG_LOOP_MARKER:Lcom/samsung/android/media/vision/SemSegmentation$Mode;

    .line 53
    new-instance v0, Lcom/samsung/android/media/vision/SemSegmentation$Mode;

    const-string v1, "MANUAL_WITH_FG_STROKE_MARKER"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/media/vision/SemSegmentation$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/media/vision/SemSegmentation$Mode;->MANUAL_WITH_FG_STROKE_MARKER:Lcom/samsung/android/media/vision/SemSegmentation$Mode;

    .line 57
    new-instance v0, Lcom/samsung/android/media/vision/SemSegmentation$Mode;

    const-string v1, "MANUAL_WITH_BG_STROKE_MARKER"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/media/vision/SemSegmentation$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/media/vision/SemSegmentation$Mode;->MANUAL_WITH_BG_STROKE_MARKER:Lcom/samsung/android/media/vision/SemSegmentation$Mode;

    .line 61
    new-instance v0, Lcom/samsung/android/media/vision/SemSegmentation$Mode;

    const-string v1, "NONE"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/media/vision/SemSegmentation$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/media/vision/SemSegmentation$Mode;->NONE:Lcom/samsung/android/media/vision/SemSegmentation$Mode;

    .line 25
    invoke-static {}, Lcom/samsung/android/media/vision/SemSegmentation$Mode;->$values()[Lcom/samsung/android/media/vision/SemSegmentation$Mode;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/media/vision/SemSegmentation$Mode;->$VALUES:[Lcom/samsung/android/media/vision/SemSegmentation$Mode;

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

    .line 25
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/media/vision/SemSegmentation$Mode;
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

    .line 25
    const-class v0, Lcom/samsung/android/media/vision/SemSegmentation$Mode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/media/vision/SemSegmentation$Mode;

    return-object v0
.end method

.method public static values()[Lcom/samsung/android/media/vision/SemSegmentation$Mode;
    .locals 1

    .line 25
    sget-object v0, Lcom/samsung/android/media/vision/SemSegmentation$Mode;->$VALUES:[Lcom/samsung/android/media/vision/SemSegmentation$Mode;

    invoke-virtual {v0}, [Lcom/samsung/android/media/vision/SemSegmentation$Mode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/media/vision/SemSegmentation$Mode;

    return-object v0
.end method
