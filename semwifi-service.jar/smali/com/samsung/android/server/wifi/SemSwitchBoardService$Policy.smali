.class final enum Lcom/samsung/android/server/wifi/SemSwitchBoardService$Policy;
.super Ljava/lang/Enum;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/SemSwitchBoardService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "Policy"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/server/wifi/SemSwitchBoardService$Policy;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/server/wifi/SemSwitchBoardService$Policy;

.field public static final enum AlwaysDisabled:Lcom/samsung/android/server/wifi/SemSwitchBoardService$Policy;

.field public static final enum AlwaysEnabled:Lcom/samsung/android/server/wifi/SemSwitchBoardService$Policy;

.field public static final enum Default:Lcom/samsung/android/server/wifi/SemSwitchBoardService$Policy;


# instance fields
.field private final val:I


# direct methods
.method private static synthetic $values()[Lcom/samsung/android/server/wifi/SemSwitchBoardService$Policy;
    .locals 3

    .line 1
    sget-object v0, Lcom/samsung/android/server/wifi/SemSwitchBoardService$Policy;->Default:Lcom/samsung/android/server/wifi/SemSwitchBoardService$Policy;

    .line 2
    .line 3
    sget-object v1, Lcom/samsung/android/server/wifi/SemSwitchBoardService$Policy;->AlwaysEnabled:Lcom/samsung/android/server/wifi/SemSwitchBoardService$Policy;

    .line 4
    .line 5
    sget-object v2, Lcom/samsung/android/server/wifi/SemSwitchBoardService$Policy;->AlwaysDisabled:Lcom/samsung/android/server/wifi/SemSwitchBoardService$Policy;

    .line 6
    .line 7
    filled-new-array {v0, v1, v2}, [Lcom/samsung/android/server/wifi/SemSwitchBoardService$Policy;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/samsung/android/server/wifi/SemSwitchBoardService$Policy;

    .line 2
    .line 3
    const-string v1, "Default"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2, v2}, Lcom/samsung/android/server/wifi/SemSwitchBoardService$Policy;-><init>(Ljava/lang/String;II)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lcom/samsung/android/server/wifi/SemSwitchBoardService$Policy;->Default:Lcom/samsung/android/server/wifi/SemSwitchBoardService$Policy;

    .line 10
    .line 11
    new-instance v0, Lcom/samsung/android/server/wifi/SemSwitchBoardService$Policy;

    .line 12
    .line 13
    const-string v1, "AlwaysEnabled"

    .line 14
    .line 15
    const/4 v2, 0x1

    .line 16
    invoke-direct {v0, v1, v2, v2}, Lcom/samsung/android/server/wifi/SemSwitchBoardService$Policy;-><init>(Ljava/lang/String;II)V

    .line 17
    .line 18
    .line 19
    sput-object v0, Lcom/samsung/android/server/wifi/SemSwitchBoardService$Policy;->AlwaysEnabled:Lcom/samsung/android/server/wifi/SemSwitchBoardService$Policy;

    .line 20
    .line 21
    new-instance v0, Lcom/samsung/android/server/wifi/SemSwitchBoardService$Policy;

    .line 22
    .line 23
    const-string v1, "AlwaysDisabled"

    .line 24
    .line 25
    const/4 v2, 0x2

    .line 26
    invoke-direct {v0, v1, v2, v2}, Lcom/samsung/android/server/wifi/SemSwitchBoardService$Policy;-><init>(Ljava/lang/String;II)V

    .line 27
    .line 28
    .line 29
    sput-object v0, Lcom/samsung/android/server/wifi/SemSwitchBoardService$Policy;->AlwaysDisabled:Lcom/samsung/android/server/wifi/SemSwitchBoardService$Policy;

    .line 30
    .line 31
    invoke-static {}, Lcom/samsung/android/server/wifi/SemSwitchBoardService$Policy;->$values()[Lcom/samsung/android/server/wifi/SemSwitchBoardService$Policy;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    sput-object v0, Lcom/samsung/android/server/wifi/SemSwitchBoardService$Policy;->$VALUES:[Lcom/samsung/android/server/wifi/SemSwitchBoardService$Policy;

    .line 36
    .line 37
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
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

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput p3, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService$Policy;->val:I

    .line 5
    .line 6
    return-void
.end method

.method static valueOf(I)Lcom/samsung/android/server/wifi/SemSwitchBoardService$Policy;
    .locals 5

    .line 2
    invoke-static {}, Lcom/samsung/android/server/wifi/SemSwitchBoardService$Policy;->values()[Lcom/samsung/android/server/wifi/SemSwitchBoardService$Policy;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 3
    iget v4, v3, Lcom/samsung/android/server/wifi/SemSwitchBoardService$Policy;->val:I

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4
    :cond_1
    sget-object p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService$Policy;->Default:Lcom/samsung/android/server/wifi/SemSwitchBoardService$Policy;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/server/wifi/SemSwitchBoardService$Policy;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 1
    const-class v0, Lcom/samsung/android/server/wifi/SemSwitchBoardService$Policy;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService$Policy;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/server/wifi/SemSwitchBoardService$Policy;
    .locals 1

    .line 1
    sget-object v0, Lcom/samsung/android/server/wifi/SemSwitchBoardService$Policy;->$VALUES:[Lcom/samsung/android/server/wifi/SemSwitchBoardService$Policy;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/samsung/android/server/wifi/SemSwitchBoardService$Policy;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/samsung/android/server/wifi/SemSwitchBoardService$Policy;

    .line 8
    .line 9
    return-object v0
.end method
