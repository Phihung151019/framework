.class public final enum Lcom/samsung/android/server/wifi/share/mcf/QoSNetworkType;
.super Ljava/lang/Enum;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/server/wifi/share/mcf/QoSNetworkType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/server/wifi/share/mcf/QoSNetworkType;

.field public static final enum CAPTIVE_PORTAL:Lcom/samsung/android/server/wifi/share/mcf/QoSNetworkType;

.field public static final enum NORMAL:Lcom/samsung/android/server/wifi/share/mcf/QoSNetworkType;

.field public static final enum NO_INTERNET:Lcom/samsung/android/server/wifi/share/mcf/QoSNetworkType;

.field public static final enum SUSPICIOUS:Lcom/samsung/android/server/wifi/share/mcf/QoSNetworkType;


# direct methods
.method private static synthetic $values()[Lcom/samsung/android/server/wifi/share/mcf/QoSNetworkType;
    .locals 4

    .line 1
    sget-object v0, Lcom/samsung/android/server/wifi/share/mcf/QoSNetworkType;->NORMAL:Lcom/samsung/android/server/wifi/share/mcf/QoSNetworkType;

    .line 2
    .line 3
    sget-object v1, Lcom/samsung/android/server/wifi/share/mcf/QoSNetworkType;->CAPTIVE_PORTAL:Lcom/samsung/android/server/wifi/share/mcf/QoSNetworkType;

    .line 4
    .line 5
    sget-object v2, Lcom/samsung/android/server/wifi/share/mcf/QoSNetworkType;->NO_INTERNET:Lcom/samsung/android/server/wifi/share/mcf/QoSNetworkType;

    .line 6
    .line 7
    sget-object v3, Lcom/samsung/android/server/wifi/share/mcf/QoSNetworkType;->SUSPICIOUS:Lcom/samsung/android/server/wifi/share/mcf/QoSNetworkType;

    .line 8
    .line 9
    filled-new-array {v0, v1, v2, v3}, [Lcom/samsung/android/server/wifi/share/mcf/QoSNetworkType;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/samsung/android/server/wifi/share/mcf/QoSNetworkType;

    .line 2
    .line 3
    const-string v1, "NORMAL"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Lcom/samsung/android/server/wifi/share/mcf/QoSNetworkType;-><init>(Ljava/lang/String;I)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lcom/samsung/android/server/wifi/share/mcf/QoSNetworkType;->NORMAL:Lcom/samsung/android/server/wifi/share/mcf/QoSNetworkType;

    .line 10
    .line 11
    new-instance v0, Lcom/samsung/android/server/wifi/share/mcf/QoSNetworkType;

    .line 12
    .line 13
    const-string v1, "CAPTIVE_PORTAL"

    .line 14
    .line 15
    const/4 v2, 0x1

    .line 16
    invoke-direct {v0, v1, v2}, Lcom/samsung/android/server/wifi/share/mcf/QoSNetworkType;-><init>(Ljava/lang/String;I)V

    .line 17
    .line 18
    .line 19
    sput-object v0, Lcom/samsung/android/server/wifi/share/mcf/QoSNetworkType;->CAPTIVE_PORTAL:Lcom/samsung/android/server/wifi/share/mcf/QoSNetworkType;

    .line 20
    .line 21
    new-instance v0, Lcom/samsung/android/server/wifi/share/mcf/QoSNetworkType;

    .line 22
    .line 23
    const-string v1, "NO_INTERNET"

    .line 24
    .line 25
    const/4 v2, 0x2

    .line 26
    invoke-direct {v0, v1, v2}, Lcom/samsung/android/server/wifi/share/mcf/QoSNetworkType;-><init>(Ljava/lang/String;I)V

    .line 27
    .line 28
    .line 29
    sput-object v0, Lcom/samsung/android/server/wifi/share/mcf/QoSNetworkType;->NO_INTERNET:Lcom/samsung/android/server/wifi/share/mcf/QoSNetworkType;

    .line 30
    .line 31
    new-instance v0, Lcom/samsung/android/server/wifi/share/mcf/QoSNetworkType;

    .line 32
    .line 33
    const-string v1, "SUSPICIOUS"

    .line 34
    .line 35
    const/4 v2, 0x3

    .line 36
    invoke-direct {v0, v1, v2}, Lcom/samsung/android/server/wifi/share/mcf/QoSNetworkType;-><init>(Ljava/lang/String;I)V

    .line 37
    .line 38
    .line 39
    sput-object v0, Lcom/samsung/android/server/wifi/share/mcf/QoSNetworkType;->SUSPICIOUS:Lcom/samsung/android/server/wifi/share/mcf/QoSNetworkType;

    .line 40
    .line 41
    invoke-static {}, Lcom/samsung/android/server/wifi/share/mcf/QoSNetworkType;->$values()[Lcom/samsung/android/server/wifi/share/mcf/QoSNetworkType;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    sput-object v0, Lcom/samsung/android/server/wifi/share/mcf/QoSNetworkType;->$VALUES:[Lcom/samsung/android/server/wifi/share/mcf/QoSNetworkType;

    .line 46
    .line 47
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

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static from(I)Lcom/samsung/android/server/wifi/share/mcf/QoSNetworkType;
    .locals 5

    .line 1
    invoke-static {}, Lcom/samsung/android/server/wifi/share/mcf/QoSNetworkType;->values()[Lcom/samsung/android/server/wifi/share/mcf/QoSNetworkType;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    array-length v1, v0

    .line 6
    const/4 v2, 0x0

    .line 7
    :goto_0
    if-ge v2, v1, :cond_1

    .line 8
    .line 9
    aget-object v3, v0, v2

    .line 10
    .line 11
    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    .line 12
    .line 13
    .line 14
    move-result v4

    .line 15
    if-ne v4, p0, :cond_0

    .line 16
    .line 17
    return-object v3

    .line 18
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_1
    sget-object p0, Lcom/samsung/android/server/wifi/share/mcf/QoSNetworkType;->NORMAL:Lcom/samsung/android/server/wifi/share/mcf/QoSNetworkType;

    .line 22
    .line 23
    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/server/wifi/share/mcf/QoSNetworkType;
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
    const-class v0, Lcom/samsung/android/server/wifi/share/mcf/QoSNetworkType;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/samsung/android/server/wifi/share/mcf/QoSNetworkType;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/samsung/android/server/wifi/share/mcf/QoSNetworkType;
    .locals 1

    .line 1
    sget-object v0, Lcom/samsung/android/server/wifi/share/mcf/QoSNetworkType;->$VALUES:[Lcom/samsung/android/server/wifi/share/mcf/QoSNetworkType;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/samsung/android/server/wifi/share/mcf/QoSNetworkType;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/samsung/android/server/wifi/share/mcf/QoSNetworkType;

    .line 8
    .line 9
    return-object v0
.end method
