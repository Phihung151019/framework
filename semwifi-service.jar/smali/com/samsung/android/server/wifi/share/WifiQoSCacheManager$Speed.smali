.class final enum Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager$Speed;
.super Ljava/lang/Enum;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "Speed"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager$Speed;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager$Speed;

.field public static final enum FAST:Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager$Speed;

.field public static final enum NORMAL:Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager$Speed;

.field public static final enum SLOW:Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager$Speed;

.field public static final enum UNKNOWN:Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager$Speed;

.field public static final enum VERY_FAST:Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager$Speed;


# instance fields
.field final bitValue:I

.field final score:I


# direct methods
.method private static synthetic $values()[Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager$Speed;
    .locals 5

    .line 1
    sget-object v0, Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager$Speed;->UNKNOWN:Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager$Speed;

    .line 2
    .line 3
    sget-object v1, Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager$Speed;->SLOW:Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager$Speed;

    .line 4
    .line 5
    sget-object v2, Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager$Speed;->NORMAL:Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager$Speed;

    .line 6
    .line 7
    sget-object v3, Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager$Speed;->FAST:Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager$Speed;

    .line 8
    .line 9
    sget-object v4, Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager$Speed;->VERY_FAST:Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager$Speed;

    .line 10
    .line 11
    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager$Speed;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager$Speed;

    .line 2
    .line 3
    const-string v1, "UNKNOWN"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2, v2, v2}, Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager$Speed;-><init>(Ljava/lang/String;III)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager$Speed;->UNKNOWN:Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager$Speed;

    .line 10
    .line 11
    new-instance v0, Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager$Speed;

    .line 12
    .line 13
    const/4 v1, 0x1

    .line 14
    const/4 v2, 0x5

    .line 15
    const-string v3, "SLOW"

    .line 16
    .line 17
    invoke-direct {v0, v3, v1, v1, v2}, Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager$Speed;-><init>(Ljava/lang/String;III)V

    .line 18
    .line 19
    .line 20
    sput-object v0, Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager$Speed;->SLOW:Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager$Speed;

    .line 21
    .line 22
    new-instance v0, Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager$Speed;

    .line 23
    .line 24
    const/4 v1, 0x2

    .line 25
    const/16 v2, 0xa

    .line 26
    .line 27
    const-string v3, "NORMAL"

    .line 28
    .line 29
    invoke-direct {v0, v3, v1, v1, v2}, Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager$Speed;-><init>(Ljava/lang/String;III)V

    .line 30
    .line 31
    .line 32
    sput-object v0, Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager$Speed;->NORMAL:Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager$Speed;

    .line 33
    .line 34
    new-instance v0, Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager$Speed;

    .line 35
    .line 36
    const/4 v1, 0x3

    .line 37
    const/16 v2, 0x14

    .line 38
    .line 39
    const-string v3, "FAST"

    .line 40
    .line 41
    invoke-direct {v0, v3, v1, v1, v2}, Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager$Speed;-><init>(Ljava/lang/String;III)V

    .line 42
    .line 43
    .line 44
    sput-object v0, Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager$Speed;->FAST:Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager$Speed;

    .line 45
    .line 46
    new-instance v0, Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager$Speed;

    .line 47
    .line 48
    const/4 v1, 0x4

    .line 49
    const/16 v2, 0x1e

    .line 50
    .line 51
    const-string v3, "VERY_FAST"

    .line 52
    .line 53
    invoke-direct {v0, v3, v1, v1, v2}, Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager$Speed;-><init>(Ljava/lang/String;III)V

    .line 54
    .line 55
    .line 56
    sput-object v0, Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager$Speed;->VERY_FAST:Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager$Speed;

    .line 57
    .line 58
    invoke-static {}, Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager$Speed;->$values()[Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager$Speed;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    sput-object v0, Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager$Speed;->$VALUES:[Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager$Speed;

    .line 63
    .line 64
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput p3, p0, Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager$Speed;->bitValue:I

    .line 5
    .line 6
    iput p4, p0, Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager$Speed;->score:I

    .line 7
    .line 8
    return-void
.end method

.method static from(I)Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager$Speed;
    .locals 5

    .line 1
    if-gtz p0, :cond_0

    .line 2
    .line 3
    sget-object p0, Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager$Speed;->UNKNOWN:Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager$Speed;

    .line 4
    .line 5
    return-object p0

    .line 6
    :cond_0
    invoke-static {}, Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager$Speed;->values()[Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager$Speed;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    array-length v1, v0

    .line 11
    const/4 v2, 0x0

    .line 12
    :goto_0
    if-ge v2, v1, :cond_2

    .line 13
    .line 14
    aget-object v3, v0, v2

    .line 15
    .line 16
    iget v4, v3, Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager$Speed;->bitValue:I

    .line 17
    .line 18
    if-ne v4, p0, :cond_1

    .line 19
    .line 20
    return-object v3

    .line 21
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_2
    sget-object p0, Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager$Speed;->UNKNOWN:Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager$Speed;

    .line 25
    .line 26
    return-object p0
.end method

.method static fromScore(I)Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager$Speed;
    .locals 5

    .line 1
    sget-object v0, Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager$Speed;->UNKNOWN:Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager$Speed;

    .line 2
    .line 3
    iget v1, v0, Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager$Speed;->score:I

    .line 4
    .line 5
    if-ne p0, v1, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    sget-object v1, Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager$Speed;->VERY_FAST:Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager$Speed;

    .line 9
    .line 10
    iget v2, v1, Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager$Speed;->score:I

    .line 11
    .line 12
    sget-object v3, Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager$Speed;->FAST:Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager$Speed;

    .line 13
    .line 14
    iget v4, v3, Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager$Speed;->score:I

    .line 15
    .line 16
    sub-int/2addr v2, v4

    .line 17
    div-int/lit8 v2, v2, 0x2

    .line 18
    .line 19
    add-int/2addr v2, v4

    .line 20
    if-lt p0, v2, :cond_1

    .line 21
    .line 22
    return-object v1

    .line 23
    :cond_1
    sget-object v1, Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager$Speed;->NORMAL:Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager$Speed;

    .line 24
    .line 25
    iget v2, v1, Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager$Speed;->score:I

    .line 26
    .line 27
    sub-int/2addr v4, v2

    .line 28
    div-int/lit8 v4, v4, 0x2

    .line 29
    .line 30
    add-int/2addr v4, v2

    .line 31
    if-lt p0, v4, :cond_2

    .line 32
    .line 33
    return-object v3

    .line 34
    :cond_2
    sget-object v3, Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager$Speed;->SLOW:Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager$Speed;

    .line 35
    .line 36
    iget v4, v3, Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager$Speed;->score:I

    .line 37
    .line 38
    sub-int/2addr v2, v4

    .line 39
    div-int/lit8 v2, v2, 0x2

    .line 40
    .line 41
    add-int/2addr v2, v4

    .line 42
    if-lt p0, v2, :cond_3

    .line 43
    .line 44
    return-object v1

    .line 45
    :cond_3
    div-int/lit8 v4, v4, 0x2

    .line 46
    .line 47
    if-lt p0, v4, :cond_4

    .line 48
    .line 49
    return-object v3

    .line 50
    :cond_4
    :goto_0
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager$Speed;
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
    const-class v0, Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager$Speed;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager$Speed;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager$Speed;
    .locals 1

    .line 1
    sget-object v0, Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager$Speed;->$VALUES:[Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager$Speed;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager$Speed;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager$Speed;

    .line 8
    .line 9
    return-object v0
.end method
