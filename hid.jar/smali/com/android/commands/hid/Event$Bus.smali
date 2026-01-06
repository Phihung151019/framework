.class final enum Lcom/android/commands/hid/Event$Bus;
.super Ljava/lang/Enum;
.source "Event.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/commands/hid/Event;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "Bus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/commands/hid/Event$Bus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/commands/hid/Event$Bus;

.field public static final enum BLUETOOTH:Lcom/android/commands/hid/Event$Bus;

.field public static final enum USB:Lcom/android/commands/hid/Event$Bus;


# instance fields
.field private mValue:I


# direct methods
.method private static synthetic $values()[Lcom/android/commands/hid/Event$Bus;
    .locals 2

    .line 42
    sget-object v0, Lcom/android/commands/hid/Event$Bus;->USB:Lcom/android/commands/hid/Event$Bus;

    sget-object v1, Lcom/android/commands/hid/Event$Bus;->BLUETOOTH:Lcom/android/commands/hid/Event$Bus;

    filled-new-array {v0, v1}, [Lcom/android/commands/hid/Event$Bus;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 43
    new-instance v0, Lcom/android/commands/hid/Event$Bus;

    const/4 v1, 0x0

    const/4 v2, 0x3

    const-string v3, "USB"

    invoke-direct {v0, v3, v1, v2}, Lcom/android/commands/hid/Event$Bus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/commands/hid/Event$Bus;->USB:Lcom/android/commands/hid/Event$Bus;

    new-instance v0, Lcom/android/commands/hid/Event$Bus;

    const/4 v1, 0x1

    const/4 v2, 0x5

    const-string v3, "BLUETOOTH"

    invoke-direct {v0, v3, v1, v2}, Lcom/android/commands/hid/Event$Bus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/commands/hid/Event$Bus;->BLUETOOTH:Lcom/android/commands/hid/Event$Bus;

    .line 42
    invoke-static {}, Lcom/android/commands/hid/Event$Bus;->$values()[Lcom/android/commands/hid/Event$Bus;

    move-result-object v0

    sput-object v0, Lcom/android/commands/hid/Event$Bus;->$VALUES:[Lcom/android/commands/hid/Event$Bus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "value"    # I
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
            "(I)V"
        }
    .end annotation

    .line 45
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 46
    iput p3, p0, Lcom/android/commands/hid/Event$Bus;->mValue:I

    .line 47
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/commands/hid/Event$Bus;
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

    .line 42
    const-class v0, Lcom/android/commands/hid/Event$Bus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/commands/hid/Event$Bus;

    return-object v0
.end method

.method public static values()[Lcom/android/commands/hid/Event$Bus;
    .locals 1

    .line 42
    sget-object v0, Lcom/android/commands/hid/Event$Bus;->$VALUES:[Lcom/android/commands/hid/Event$Bus;

    invoke-virtual {v0}, [Lcom/android/commands/hid/Event$Bus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/commands/hid/Event$Bus;

    return-object v0
.end method


# virtual methods
.method getValue()I
    .locals 1

    .line 50
    iget v0, p0, Lcom/android/commands/hid/Event$Bus;->mValue:I

    return v0
.end method
