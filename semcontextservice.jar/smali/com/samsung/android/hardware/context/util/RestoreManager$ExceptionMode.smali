.class public final enum Lcom/samsung/android/hardware/context/util/RestoreManager$ExceptionMode;
.super Ljava/lang/Enum;
.source "RestoreManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/hardware/context/util/RestoreManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ExceptionMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/hardware/context/util/RestoreManager$ExceptionMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/hardware/context/util/RestoreManager$ExceptionMode;

.field public static final enum KILL:Lcom/samsung/android/hardware/context/util/RestoreManager$ExceptionMode;

.field public static final enum NORMAL:Lcom/samsung/android/hardware/context/util/RestoreManager$ExceptionMode;

.field public static final enum RESUME:Lcom/samsung/android/hardware/context/util/RestoreManager$ExceptionMode;


# direct methods
.method private static synthetic $values()[Lcom/samsung/android/hardware/context/util/RestoreManager$ExceptionMode;
    .locals 3

    .line 81
    sget-object v0, Lcom/samsung/android/hardware/context/util/RestoreManager$ExceptionMode;->NORMAL:Lcom/samsung/android/hardware/context/util/RestoreManager$ExceptionMode;

    sget-object v1, Lcom/samsung/android/hardware/context/util/RestoreManager$ExceptionMode;->KILL:Lcom/samsung/android/hardware/context/util/RestoreManager$ExceptionMode;

    sget-object v2, Lcom/samsung/android/hardware/context/util/RestoreManager$ExceptionMode;->RESUME:Lcom/samsung/android/hardware/context/util/RestoreManager$ExceptionMode;

    filled-new-array {v0, v1, v2}, [Lcom/samsung/android/hardware/context/util/RestoreManager$ExceptionMode;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 82
    new-instance v0, Lcom/samsung/android/hardware/context/util/RestoreManager$ExceptionMode;

    const-string v1, "NORMAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/hardware/context/util/RestoreManager$ExceptionMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/hardware/context/util/RestoreManager$ExceptionMode;->NORMAL:Lcom/samsung/android/hardware/context/util/RestoreManager$ExceptionMode;

    new-instance v0, Lcom/samsung/android/hardware/context/util/RestoreManager$ExceptionMode;

    const-string v1, "KILL"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/hardware/context/util/RestoreManager$ExceptionMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/hardware/context/util/RestoreManager$ExceptionMode;->KILL:Lcom/samsung/android/hardware/context/util/RestoreManager$ExceptionMode;

    new-instance v0, Lcom/samsung/android/hardware/context/util/RestoreManager$ExceptionMode;

    const-string v1, "RESUME"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/hardware/context/util/RestoreManager$ExceptionMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/hardware/context/util/RestoreManager$ExceptionMode;->RESUME:Lcom/samsung/android/hardware/context/util/RestoreManager$ExceptionMode;

    .line 81
    invoke-static {}, Lcom/samsung/android/hardware/context/util/RestoreManager$ExceptionMode;->$values()[Lcom/samsung/android/hardware/context/util/RestoreManager$ExceptionMode;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/hardware/context/util/RestoreManager$ExceptionMode;->$VALUES:[Lcom/samsung/android/hardware/context/util/RestoreManager$ExceptionMode;

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

    .line 81
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/hardware/context/util/RestoreManager$ExceptionMode;
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

    .line 81
    const-class v0, Lcom/samsung/android/hardware/context/util/RestoreManager$ExceptionMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/hardware/context/util/RestoreManager$ExceptionMode;

    return-object v0
.end method

.method public static values()[Lcom/samsung/android/hardware/context/util/RestoreManager$ExceptionMode;
    .locals 1

    .line 81
    sget-object v0, Lcom/samsung/android/hardware/context/util/RestoreManager$ExceptionMode;->$VALUES:[Lcom/samsung/android/hardware/context/util/RestoreManager$ExceptionMode;

    invoke-virtual {v0}, [Lcom/samsung/android/hardware/context/util/RestoreManager$ExceptionMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/hardware/context/util/RestoreManager$ExceptionMode;

    return-object v0
.end method
