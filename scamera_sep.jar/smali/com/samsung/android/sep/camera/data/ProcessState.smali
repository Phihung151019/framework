.class public final enum Lcom/samsung/android/sep/camera/data/ProcessState;
.super Ljava/lang/Enum;
.source "ProcessState.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/sep/camera/data/ProcessState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/sep/camera/data/ProcessState;

.field public static final enum DEINITIALIZING:Lcom/samsung/android/sep/camera/data/ProcessState;

.field public static final enum IDLE:Lcom/samsung/android/sep/camera/data/ProcessState;

.field public static final enum INITIALIZED:Lcom/samsung/android/sep/camera/data/ProcessState;

.field public static final enum INITIALIZING:Lcom/samsung/android/sep/camera/data/ProcessState;

.field public static final enum PROCESS:Lcom/samsung/android/sep/camera/data/ProcessState;


# instance fields
.field private final mName:Ljava/lang/String;


# direct methods
.method private static synthetic $values()[Lcom/samsung/android/sep/camera/data/ProcessState;
    .locals 5

    .line 4
    sget-object v0, Lcom/samsung/android/sep/camera/data/ProcessState;->IDLE:Lcom/samsung/android/sep/camera/data/ProcessState;

    sget-object v1, Lcom/samsung/android/sep/camera/data/ProcessState;->INITIALIZED:Lcom/samsung/android/sep/camera/data/ProcessState;

    sget-object v2, Lcom/samsung/android/sep/camera/data/ProcessState;->PROCESS:Lcom/samsung/android/sep/camera/data/ProcessState;

    sget-object v3, Lcom/samsung/android/sep/camera/data/ProcessState;->DEINITIALIZING:Lcom/samsung/android/sep/camera/data/ProcessState;

    sget-object v4, Lcom/samsung/android/sep/camera/data/ProcessState;->INITIALIZING:Lcom/samsung/android/sep/camera/data/ProcessState;

    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/samsung/android/sep/camera/data/ProcessState;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 6
    new-instance v0, Lcom/samsung/android/sep/camera/data/ProcessState;

    const-string v1, "IDLE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v1}, Lcom/samsung/android/sep/camera/data/ProcessState;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/sep/camera/data/ProcessState;->IDLE:Lcom/samsung/android/sep/camera/data/ProcessState;

    .line 9
    new-instance v0, Lcom/samsung/android/sep/camera/data/ProcessState;

    const-string v1, "INITIALIZED"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v1}, Lcom/samsung/android/sep/camera/data/ProcessState;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/sep/camera/data/ProcessState;->INITIALIZED:Lcom/samsung/android/sep/camera/data/ProcessState;

    .line 12
    new-instance v0, Lcom/samsung/android/sep/camera/data/ProcessState;

    const-string v1, "PROCESS"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v1}, Lcom/samsung/android/sep/camera/data/ProcessState;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/sep/camera/data/ProcessState;->PROCESS:Lcom/samsung/android/sep/camera/data/ProcessState;

    .line 15
    new-instance v0, Lcom/samsung/android/sep/camera/data/ProcessState;

    const-string v1, "DEINITIALIZING"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2, v1}, Lcom/samsung/android/sep/camera/data/ProcessState;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/sep/camera/data/ProcessState;->DEINITIALIZING:Lcom/samsung/android/sep/camera/data/ProcessState;

    .line 18
    new-instance v0, Lcom/samsung/android/sep/camera/data/ProcessState;

    const-string v1, "INITIALIZING"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2, v1}, Lcom/samsung/android/sep/camera/data/ProcessState;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/sep/camera/data/ProcessState;->INITIALIZING:Lcom/samsung/android/sep/camera/data/ProcessState;

    .line 4
    invoke-static {}, Lcom/samsung/android/sep/camera/data/ProcessState;->$values()[Lcom/samsung/android/sep/camera/data/ProcessState;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sep/camera/data/ProcessState;->$VALUES:[Lcom/samsung/android/sep/camera/data/ProcessState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p3, "name"    # Ljava/lang/String;
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
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 22
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 23
    iput-object p3, p0, Lcom/samsung/android/sep/camera/data/ProcessState;->mName:Ljava/lang/String;

    .line 24
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/sep/camera/data/ProcessState;
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

    .line 4
    const-class v0, Lcom/samsung/android/sep/camera/data/ProcessState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sep/camera/data/ProcessState;

    return-object v0
.end method

.method public static values()[Lcom/samsung/android/sep/camera/data/ProcessState;
    .locals 1

    .line 4
    sget-object v0, Lcom/samsung/android/sep/camera/data/ProcessState;->$VALUES:[Lcom/samsung/android/sep/camera/data/ProcessState;

    invoke-virtual {v0}, [Lcom/samsung/android/sep/camera/data/ProcessState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/sep/camera/data/ProcessState;

    return-object v0
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/samsung/android/sep/camera/data/ProcessState;->mName:Ljava/lang/String;

    return-object v0
.end method
