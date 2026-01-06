.class public final enum Lcom/android/uiautomator/core/Tracer$Mode;
.super Ljava/lang/Enum;
.source "Tracer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/uiautomator/core/Tracer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Mode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/uiautomator/core/Tracer$Mode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/uiautomator/core/Tracer$Mode;

.field public static final enum ALL:Lcom/android/uiautomator/core/Tracer$Mode;

.field public static final enum FILE:Lcom/android/uiautomator/core/Tracer$Mode;

.field public static final enum LOGCAT:Lcom/android/uiautomator/core/Tracer$Mode;

.field public static final enum NONE:Lcom/android/uiautomator/core/Tracer$Mode;


# direct methods
.method private static synthetic $values()[Lcom/android/uiautomator/core/Tracer$Mode;
    .locals 4

    .line 49
    sget-object v0, Lcom/android/uiautomator/core/Tracer$Mode;->NONE:Lcom/android/uiautomator/core/Tracer$Mode;

    sget-object v1, Lcom/android/uiautomator/core/Tracer$Mode;->FILE:Lcom/android/uiautomator/core/Tracer$Mode;

    sget-object v2, Lcom/android/uiautomator/core/Tracer$Mode;->LOGCAT:Lcom/android/uiautomator/core/Tracer$Mode;

    sget-object v3, Lcom/android/uiautomator/core/Tracer$Mode;->ALL:Lcom/android/uiautomator/core/Tracer$Mode;

    filled-new-array {v0, v1, v2, v3}, [Lcom/android/uiautomator/core/Tracer$Mode;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 50
    new-instance v0, Lcom/android/uiautomator/core/Tracer$Mode;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/uiautomator/core/Tracer$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/uiautomator/core/Tracer$Mode;->NONE:Lcom/android/uiautomator/core/Tracer$Mode;

    .line 51
    new-instance v0, Lcom/android/uiautomator/core/Tracer$Mode;

    const-string v1, "FILE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/android/uiautomator/core/Tracer$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/uiautomator/core/Tracer$Mode;->FILE:Lcom/android/uiautomator/core/Tracer$Mode;

    .line 52
    new-instance v0, Lcom/android/uiautomator/core/Tracer$Mode;

    const-string v1, "LOGCAT"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/android/uiautomator/core/Tracer$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/uiautomator/core/Tracer$Mode;->LOGCAT:Lcom/android/uiautomator/core/Tracer$Mode;

    .line 53
    new-instance v0, Lcom/android/uiautomator/core/Tracer$Mode;

    const-string v1, "ALL"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/android/uiautomator/core/Tracer$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/uiautomator/core/Tracer$Mode;->ALL:Lcom/android/uiautomator/core/Tracer$Mode;

    .line 49
    invoke-static {}, Lcom/android/uiautomator/core/Tracer$Mode;->$values()[Lcom/android/uiautomator/core/Tracer$Mode;

    move-result-object v0

    sput-object v0, Lcom/android/uiautomator/core/Tracer$Mode;->$VALUES:[Lcom/android/uiautomator/core/Tracer$Mode;

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

    .line 49
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/uiautomator/core/Tracer$Mode;
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

    .line 49
    const-class v0, Lcom/android/uiautomator/core/Tracer$Mode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/uiautomator/core/Tracer$Mode;

    return-object v0
.end method

.method public static values()[Lcom/android/uiautomator/core/Tracer$Mode;
    .locals 1

    .line 49
    sget-object v0, Lcom/android/uiautomator/core/Tracer$Mode;->$VALUES:[Lcom/android/uiautomator/core/Tracer$Mode;

    invoke-virtual {v0}, [Lcom/android/uiautomator/core/Tracer$Mode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/uiautomator/core/Tracer$Mode;

    return-object v0
.end method
