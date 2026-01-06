.class final enum Lio/mesalabs/unica/HideAppListUtils$Action;
.super Ljava/lang/Enum;
.source "HideAppListUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/mesalabs/unica/HideAppListUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "Action"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/mesalabs/unica/HideAppListUtils$Action;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Lio/mesalabs/unica/HideAppListUtils$Action;

.field public static final enum blacklist ADD:Lio/mesalabs/unica/HideAppListUtils$Action;

.field public static final enum blacklist REMOVE:Lio/mesalabs/unica/HideAppListUtils$Action;

.field public static final enum blacklist SET:Lio/mesalabs/unica/HideAppListUtils$Action;


# direct methods
.method private static synthetic blacklist $values()[Lio/mesalabs/unica/HideAppListUtils$Action;
    .locals 3

    sget-object v0, Lio/mesalabs/unica/HideAppListUtils$Action;->ADD:Lio/mesalabs/unica/HideAppListUtils$Action;

    sget-object v1, Lio/mesalabs/unica/HideAppListUtils$Action;->REMOVE:Lio/mesalabs/unica/HideAppListUtils$Action;

    sget-object v2, Lio/mesalabs/unica/HideAppListUtils$Action;->SET:Lio/mesalabs/unica/HideAppListUtils$Action;

    filled-new-array {v0, v1, v2}, [Lio/mesalabs/unica/HideAppListUtils$Action;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .locals 3

    new-instance v0, Lio/mesalabs/unica/HideAppListUtils$Action;

    const-string v1, "ADD"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lio/mesalabs/unica/HideAppListUtils$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/mesalabs/unica/HideAppListUtils$Action;->ADD:Lio/mesalabs/unica/HideAppListUtils$Action;

    new-instance v0, Lio/mesalabs/unica/HideAppListUtils$Action;

    const-string v1, "REMOVE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lio/mesalabs/unica/HideAppListUtils$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/mesalabs/unica/HideAppListUtils$Action;->REMOVE:Lio/mesalabs/unica/HideAppListUtils$Action;

    new-instance v0, Lio/mesalabs/unica/HideAppListUtils$Action;

    const-string v1, "SET"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lio/mesalabs/unica/HideAppListUtils$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/mesalabs/unica/HideAppListUtils$Action;->SET:Lio/mesalabs/unica/HideAppListUtils$Action;

    invoke-static {}, Lio/mesalabs/unica/HideAppListUtils$Action;->$values()[Lio/mesalabs/unica/HideAppListUtils$Action;

    move-result-object v0

    sput-object v0, Lio/mesalabs/unica/HideAppListUtils$Action;->$VALUES:[Lio/mesalabs/unica/HideAppListUtils$Action;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;I)V
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

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Lio/mesalabs/unica/HideAppListUtils$Action;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    const-class v0, Lio/mesalabs/unica/HideAppListUtils$Action;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/mesalabs/unica/HideAppListUtils$Action;

    return-object p0
.end method

.method public static blacklist values()[Lio/mesalabs/unica/HideAppListUtils$Action;
    .locals 1

    sget-object v0, Lio/mesalabs/unica/HideAppListUtils$Action;->$VALUES:[Lio/mesalabs/unica/HideAppListUtils$Action;

    invoke-virtual {v0}, [Lio/mesalabs/unica/HideAppListUtils$Action;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/mesalabs/unica/HideAppListUtils$Action;

    return-object v0
.end method
