.class public final enum Lcom/samsung/android/game/ActionLogger$ActionLogTag;
.super Ljava/lang/Enum;
.source "ActionLogger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/game/ActionLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ActionLogTag"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/game/ActionLogger$ActionLogTag;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/game/ActionLogger$ActionLogTag;

.field public static final enum DEL_VRR:Lcom/samsung/android/game/ActionLogger$ActionLogTag;

.field public static final enum INI_GMS:Lcom/samsung/android/game/ActionLogger$ActionLogTag;

.field public static final enum SET_DFS:Lcom/samsung/android/game/ActionLogger$ActionLogTag;

.field public static final enum SET_GLO:Lcom/samsung/android/game/ActionLogger$ActionLogTag;

.field public static final enum SET_PKG:Lcom/samsung/android/game/ActionLogger$ActionLogTag;

.field public static final enum SET_VRR:Lcom/samsung/android/game/ActionLogger$ActionLogTag;


# direct methods
.method private static synthetic $values()[Lcom/samsung/android/game/ActionLogger$ActionLogTag;
    .locals 6

    .line 11
    sget-object v0, Lcom/samsung/android/game/ActionLogger$ActionLogTag;->SET_GLO:Lcom/samsung/android/game/ActionLogger$ActionLogTag;

    sget-object v1, Lcom/samsung/android/game/ActionLogger$ActionLogTag;->SET_PKG:Lcom/samsung/android/game/ActionLogger$ActionLogTag;

    sget-object v2, Lcom/samsung/android/game/ActionLogger$ActionLogTag;->INI_GMS:Lcom/samsung/android/game/ActionLogger$ActionLogTag;

    sget-object v3, Lcom/samsung/android/game/ActionLogger$ActionLogTag;->SET_DFS:Lcom/samsung/android/game/ActionLogger$ActionLogTag;

    sget-object v4, Lcom/samsung/android/game/ActionLogger$ActionLogTag;->SET_VRR:Lcom/samsung/android/game/ActionLogger$ActionLogTag;

    sget-object v5, Lcom/samsung/android/game/ActionLogger$ActionLogTag;->DEL_VRR:Lcom/samsung/android/game/ActionLogger$ActionLogTag;

    filled-new-array/range {v0 .. v5}, [Lcom/samsung/android/game/ActionLogger$ActionLogTag;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 12
    new-instance v0, Lcom/samsung/android/game/ActionLogger$ActionLogTag;

    const-string v1, "SET_GLO"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/game/ActionLogger$ActionLogTag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/game/ActionLogger$ActionLogTag;->SET_GLO:Lcom/samsung/android/game/ActionLogger$ActionLogTag;

    .line 13
    new-instance v0, Lcom/samsung/android/game/ActionLogger$ActionLogTag;

    const-string v1, "SET_PKG"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/game/ActionLogger$ActionLogTag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/game/ActionLogger$ActionLogTag;->SET_PKG:Lcom/samsung/android/game/ActionLogger$ActionLogTag;

    .line 14
    new-instance v0, Lcom/samsung/android/game/ActionLogger$ActionLogTag;

    const-string v1, "INI_GMS"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/game/ActionLogger$ActionLogTag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/game/ActionLogger$ActionLogTag;->INI_GMS:Lcom/samsung/android/game/ActionLogger$ActionLogTag;

    .line 15
    new-instance v0, Lcom/samsung/android/game/ActionLogger$ActionLogTag;

    const-string v1, "SET_DFS"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/game/ActionLogger$ActionLogTag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/game/ActionLogger$ActionLogTag;->SET_DFS:Lcom/samsung/android/game/ActionLogger$ActionLogTag;

    .line 16
    new-instance v0, Lcom/samsung/android/game/ActionLogger$ActionLogTag;

    const-string v1, "SET_VRR"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/game/ActionLogger$ActionLogTag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/game/ActionLogger$ActionLogTag;->SET_VRR:Lcom/samsung/android/game/ActionLogger$ActionLogTag;

    .line 17
    new-instance v0, Lcom/samsung/android/game/ActionLogger$ActionLogTag;

    const-string v1, "DEL_VRR"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/game/ActionLogger$ActionLogTag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/game/ActionLogger$ActionLogTag;->DEL_VRR:Lcom/samsung/android/game/ActionLogger$ActionLogTag;

    .line 11
    invoke-static {}, Lcom/samsung/android/game/ActionLogger$ActionLogTag;->$values()[Lcom/samsung/android/game/ActionLogger$ActionLogTag;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/game/ActionLogger$ActionLogTag;->$VALUES:[Lcom/samsung/android/game/ActionLogger$ActionLogTag;

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

    .line 11
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/game/ActionLogger$ActionLogTag;
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

    .line 11
    const-class v0, Lcom/samsung/android/game/ActionLogger$ActionLogTag;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/game/ActionLogger$ActionLogTag;

    return-object v0
.end method

.method public static values()[Lcom/samsung/android/game/ActionLogger$ActionLogTag;
    .locals 1

    .line 11
    sget-object v0, Lcom/samsung/android/game/ActionLogger$ActionLogTag;->$VALUES:[Lcom/samsung/android/game/ActionLogger$ActionLogTag;

    invoke-virtual {v0}, [Lcom/samsung/android/game/ActionLogger$ActionLogTag;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/game/ActionLogger$ActionLogTag;

    return-object v0
.end method
