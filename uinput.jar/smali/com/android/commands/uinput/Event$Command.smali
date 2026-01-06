.class public final enum Lcom/android/commands/uinput/Event$Command;
.super Ljava/lang/Enum;
.source "Event.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/commands/uinput/Event;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Command"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/commands/uinput/Event$Command;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/commands/uinput/Event$Command;

.field public static final enum DELAY:Lcom/android/commands/uinput/Event$Command;

.field public static final enum INJECT:Lcom/android/commands/uinput/Event$Command;

.field public static final enum REGISTER:Lcom/android/commands/uinput/Event$Command;

.field public static final enum SYNC:Lcom/android/commands/uinput/Event$Command;

.field public static final enum UPDATE_TIME_BASE:Lcom/android/commands/uinput/Event$Command;


# direct methods
.method private static synthetic $values()[Lcom/android/commands/uinput/Event$Command;
    .locals 5

    .line 34
    sget-object v0, Lcom/android/commands/uinput/Event$Command;->REGISTER:Lcom/android/commands/uinput/Event$Command;

    sget-object v1, Lcom/android/commands/uinput/Event$Command;->DELAY:Lcom/android/commands/uinput/Event$Command;

    sget-object v2, Lcom/android/commands/uinput/Event$Command;->INJECT:Lcom/android/commands/uinput/Event$Command;

    sget-object v3, Lcom/android/commands/uinput/Event$Command;->SYNC:Lcom/android/commands/uinput/Event$Command;

    sget-object v4, Lcom/android/commands/uinput/Event$Command;->UPDATE_TIME_BASE:Lcom/android/commands/uinput/Event$Command;

    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/android/commands/uinput/Event$Command;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 35
    new-instance v0, Lcom/android/commands/uinput/Event$Command;

    const-string v1, "REGISTER"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/commands/uinput/Event$Command;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/commands/uinput/Event$Command;->REGISTER:Lcom/android/commands/uinput/Event$Command;

    .line 36
    new-instance v0, Lcom/android/commands/uinput/Event$Command;

    const-string v1, "DELAY"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/android/commands/uinput/Event$Command;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/commands/uinput/Event$Command;->DELAY:Lcom/android/commands/uinput/Event$Command;

    .line 37
    new-instance v0, Lcom/android/commands/uinput/Event$Command;

    const-string v1, "INJECT"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/android/commands/uinput/Event$Command;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/commands/uinput/Event$Command;->INJECT:Lcom/android/commands/uinput/Event$Command;

    .line 38
    new-instance v0, Lcom/android/commands/uinput/Event$Command;

    const-string v1, "SYNC"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/android/commands/uinput/Event$Command;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/commands/uinput/Event$Command;->SYNC:Lcom/android/commands/uinput/Event$Command;

    .line 39
    new-instance v0, Lcom/android/commands/uinput/Event$Command;

    const-string v1, "UPDATE_TIME_BASE"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/android/commands/uinput/Event$Command;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/commands/uinput/Event$Command;->UPDATE_TIME_BASE:Lcom/android/commands/uinput/Event$Command;

    .line 34
    invoke-static {}, Lcom/android/commands/uinput/Event$Command;->$values()[Lcom/android/commands/uinput/Event$Command;

    move-result-object v0

    sput-object v0, Lcom/android/commands/uinput/Event$Command;->$VALUES:[Lcom/android/commands/uinput/Event$Command;

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

    .line 34
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/commands/uinput/Event$Command;
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

    .line 34
    const-class v0, Lcom/android/commands/uinput/Event$Command;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/commands/uinput/Event$Command;

    return-object v0
.end method

.method public static values()[Lcom/android/commands/uinput/Event$Command;
    .locals 1

    .line 34
    sget-object v0, Lcom/android/commands/uinput/Event$Command;->$VALUES:[Lcom/android/commands/uinput/Event$Command;

    invoke-virtual {v0}, [Lcom/android/commands/uinput/Event$Command;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/commands/uinput/Event$Command;

    return-object v0
.end method
