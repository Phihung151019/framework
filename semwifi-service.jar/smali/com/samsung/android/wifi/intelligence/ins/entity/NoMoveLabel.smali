.class public final enum Lcom/samsung/android/wifi/intelligence/ins/entity/NoMoveLabel;
.super Ljava/lang/Enum;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/wifi/intelligence/ins/entity/NoMoveLabel;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/wifi/intelligence/ins/entity/NoMoveLabel;

.field public static final enum CONSIDERED:Lcom/samsung/android/wifi/intelligence/ins/entity/NoMoveLabel;

.field public static final enum NOT_CONSIDERED:Lcom/samsung/android/wifi/intelligence/ins/entity/NoMoveLabel;


# instance fields
.field private final value:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lcom/samsung/android/wifi/intelligence/ins/entity/NoMoveLabel;

    .line 2
    .line 3
    const-string v1, "CONSIDERED"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x1

    .line 7
    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/wifi/intelligence/ins/entity/NoMoveLabel;-><init>(Ljava/lang/String;IZ)V

    .line 8
    .line 9
    .line 10
    sput-object v0, Lcom/samsung/android/wifi/intelligence/ins/entity/NoMoveLabel;->CONSIDERED:Lcom/samsung/android/wifi/intelligence/ins/entity/NoMoveLabel;

    .line 11
    .line 12
    new-instance v1, Lcom/samsung/android/wifi/intelligence/ins/entity/NoMoveLabel;

    .line 13
    .line 14
    const-string v4, "NOT_CONSIDERED"

    .line 15
    .line 16
    invoke-direct {v1, v4, v3, v2}, Lcom/samsung/android/wifi/intelligence/ins/entity/NoMoveLabel;-><init>(Ljava/lang/String;IZ)V

    .line 17
    .line 18
    .line 19
    sput-object v1, Lcom/samsung/android/wifi/intelligence/ins/entity/NoMoveLabel;->NOT_CONSIDERED:Lcom/samsung/android/wifi/intelligence/ins/entity/NoMoveLabel;

    .line 20
    .line 21
    filled-new-array {v0, v1}, [Lcom/samsung/android/wifi/intelligence/ins/entity/NoMoveLabel;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    sput-object v0, Lcom/samsung/android/wifi/intelligence/ins/entity/NoMoveLabel;->$VALUES:[Lcom/samsung/android/wifi/intelligence/ins/entity/NoMoveLabel;

    .line 26
    .line 27
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZ)V
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
            "(Z)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput-boolean p3, p0, Lcom/samsung/android/wifi/intelligence/ins/entity/NoMoveLabel;->value:Z

    .line 5
    .line 6
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/wifi/intelligence/ins/entity/NoMoveLabel;
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
    const-class v0, Lcom/samsung/android/wifi/intelligence/ins/entity/NoMoveLabel;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/samsung/android/wifi/intelligence/ins/entity/NoMoveLabel;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/samsung/android/wifi/intelligence/ins/entity/NoMoveLabel;
    .locals 1

    .line 1
    sget-object v0, Lcom/samsung/android/wifi/intelligence/ins/entity/NoMoveLabel;->$VALUES:[Lcom/samsung/android/wifi/intelligence/ins/entity/NoMoveLabel;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/samsung/android/wifi/intelligence/ins/entity/NoMoveLabel;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/samsung/android/wifi/intelligence/ins/entity/NoMoveLabel;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public final getIntValue()I
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/samsung/android/wifi/intelligence/ins/entity/NoMoveLabel;->value:Z

    .line 2
    .line 3
    return p0
.end method
