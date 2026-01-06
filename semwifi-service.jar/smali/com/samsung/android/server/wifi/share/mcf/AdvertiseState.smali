.class final enum Lcom/samsung/android/server/wifi/share/mcf/AdvertiseState;
.super Ljava/lang/Enum;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/server/wifi/share/mcf/AdvertiseState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/server/wifi/share/mcf/AdvertiseState;

.field public static final enum ACCEPT:Lcom/samsung/android/server/wifi/share/mcf/AdvertiseState;

.field public static final enum AUTHENTICATION:Lcom/samsung/android/server/wifi/share/mcf/AdvertiseState;

.field public static final enum CLOSE:Lcom/samsung/android/server/wifi/share/mcf/AdvertiseState;

.field public static final enum DEVICE_DETECTED:Lcom/samsung/android/server/wifi/share/mcf/AdvertiseState;

.field public static final enum GATT_CONNECTED:Lcom/samsung/android/server/wifi/share/mcf/AdvertiseState;

.field public static final enum NONE:Lcom/samsung/android/server/wifi/share/mcf/AdvertiseState;

.field public static final enum REJECT:Lcom/samsung/android/server/wifi/share/mcf/AdvertiseState;

.field public static final enum REQUEST:Lcom/samsung/android/server/wifi/share/mcf/AdvertiseState;


# direct methods
.method private static synthetic $values()[Lcom/samsung/android/server/wifi/share/mcf/AdvertiseState;
    .locals 8

    .line 1
    sget-object v0, Lcom/samsung/android/server/wifi/share/mcf/AdvertiseState;->NONE:Lcom/samsung/android/server/wifi/share/mcf/AdvertiseState;

    .line 2
    .line 3
    sget-object v1, Lcom/samsung/android/server/wifi/share/mcf/AdvertiseState;->DEVICE_DETECTED:Lcom/samsung/android/server/wifi/share/mcf/AdvertiseState;

    .line 4
    .line 5
    sget-object v2, Lcom/samsung/android/server/wifi/share/mcf/AdvertiseState;->AUTHENTICATION:Lcom/samsung/android/server/wifi/share/mcf/AdvertiseState;

    .line 6
    .line 7
    sget-object v3, Lcom/samsung/android/server/wifi/share/mcf/AdvertiseState;->GATT_CONNECTED:Lcom/samsung/android/server/wifi/share/mcf/AdvertiseState;

    .line 8
    .line 9
    sget-object v4, Lcom/samsung/android/server/wifi/share/mcf/AdvertiseState;->REQUEST:Lcom/samsung/android/server/wifi/share/mcf/AdvertiseState;

    .line 10
    .line 11
    sget-object v5, Lcom/samsung/android/server/wifi/share/mcf/AdvertiseState;->ACCEPT:Lcom/samsung/android/server/wifi/share/mcf/AdvertiseState;

    .line 12
    .line 13
    sget-object v6, Lcom/samsung/android/server/wifi/share/mcf/AdvertiseState;->REJECT:Lcom/samsung/android/server/wifi/share/mcf/AdvertiseState;

    .line 14
    .line 15
    sget-object v7, Lcom/samsung/android/server/wifi/share/mcf/AdvertiseState;->CLOSE:Lcom/samsung/android/server/wifi/share/mcf/AdvertiseState;

    .line 16
    .line 17
    filled-new-array/range {v0 .. v7}, [Lcom/samsung/android/server/wifi/share/mcf/AdvertiseState;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/samsung/android/server/wifi/share/mcf/AdvertiseState;

    .line 2
    .line 3
    const-string v1, "NONE"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Lcom/samsung/android/server/wifi/share/mcf/AdvertiseState;-><init>(Ljava/lang/String;I)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lcom/samsung/android/server/wifi/share/mcf/AdvertiseState;->NONE:Lcom/samsung/android/server/wifi/share/mcf/AdvertiseState;

    .line 10
    .line 11
    new-instance v0, Lcom/samsung/android/server/wifi/share/mcf/AdvertiseState;

    .line 12
    .line 13
    const-string v1, "DEVICE_DETECTED"

    .line 14
    .line 15
    const/4 v2, 0x1

    .line 16
    invoke-direct {v0, v1, v2}, Lcom/samsung/android/server/wifi/share/mcf/AdvertiseState;-><init>(Ljava/lang/String;I)V

    .line 17
    .line 18
    .line 19
    sput-object v0, Lcom/samsung/android/server/wifi/share/mcf/AdvertiseState;->DEVICE_DETECTED:Lcom/samsung/android/server/wifi/share/mcf/AdvertiseState;

    .line 20
    .line 21
    new-instance v0, Lcom/samsung/android/server/wifi/share/mcf/AdvertiseState;

    .line 22
    .line 23
    const-string v1, "AUTHENTICATION"

    .line 24
    .line 25
    const/4 v2, 0x2

    .line 26
    invoke-direct {v0, v1, v2}, Lcom/samsung/android/server/wifi/share/mcf/AdvertiseState;-><init>(Ljava/lang/String;I)V

    .line 27
    .line 28
    .line 29
    sput-object v0, Lcom/samsung/android/server/wifi/share/mcf/AdvertiseState;->AUTHENTICATION:Lcom/samsung/android/server/wifi/share/mcf/AdvertiseState;

    .line 30
    .line 31
    new-instance v0, Lcom/samsung/android/server/wifi/share/mcf/AdvertiseState;

    .line 32
    .line 33
    const-string v1, "GATT_CONNECTED"

    .line 34
    .line 35
    const/4 v2, 0x3

    .line 36
    invoke-direct {v0, v1, v2}, Lcom/samsung/android/server/wifi/share/mcf/AdvertiseState;-><init>(Ljava/lang/String;I)V

    .line 37
    .line 38
    .line 39
    sput-object v0, Lcom/samsung/android/server/wifi/share/mcf/AdvertiseState;->GATT_CONNECTED:Lcom/samsung/android/server/wifi/share/mcf/AdvertiseState;

    .line 40
    .line 41
    new-instance v0, Lcom/samsung/android/server/wifi/share/mcf/AdvertiseState;

    .line 42
    .line 43
    const-string v1, "REQUEST"

    .line 44
    .line 45
    const/4 v2, 0x4

    .line 46
    invoke-direct {v0, v1, v2}, Lcom/samsung/android/server/wifi/share/mcf/AdvertiseState;-><init>(Ljava/lang/String;I)V

    .line 47
    .line 48
    .line 49
    sput-object v0, Lcom/samsung/android/server/wifi/share/mcf/AdvertiseState;->REQUEST:Lcom/samsung/android/server/wifi/share/mcf/AdvertiseState;

    .line 50
    .line 51
    new-instance v0, Lcom/samsung/android/server/wifi/share/mcf/AdvertiseState;

    .line 52
    .line 53
    const-string v1, "ACCEPT"

    .line 54
    .line 55
    const/4 v2, 0x5

    .line 56
    invoke-direct {v0, v1, v2}, Lcom/samsung/android/server/wifi/share/mcf/AdvertiseState;-><init>(Ljava/lang/String;I)V

    .line 57
    .line 58
    .line 59
    sput-object v0, Lcom/samsung/android/server/wifi/share/mcf/AdvertiseState;->ACCEPT:Lcom/samsung/android/server/wifi/share/mcf/AdvertiseState;

    .line 60
    .line 61
    new-instance v0, Lcom/samsung/android/server/wifi/share/mcf/AdvertiseState;

    .line 62
    .line 63
    const-string v1, "REJECT"

    .line 64
    .line 65
    const/4 v2, 0x6

    .line 66
    invoke-direct {v0, v1, v2}, Lcom/samsung/android/server/wifi/share/mcf/AdvertiseState;-><init>(Ljava/lang/String;I)V

    .line 67
    .line 68
    .line 69
    sput-object v0, Lcom/samsung/android/server/wifi/share/mcf/AdvertiseState;->REJECT:Lcom/samsung/android/server/wifi/share/mcf/AdvertiseState;

    .line 70
    .line 71
    new-instance v0, Lcom/samsung/android/server/wifi/share/mcf/AdvertiseState;

    .line 72
    .line 73
    const-string v1, "CLOSE"

    .line 74
    .line 75
    const/4 v2, 0x7

    .line 76
    invoke-direct {v0, v1, v2}, Lcom/samsung/android/server/wifi/share/mcf/AdvertiseState;-><init>(Ljava/lang/String;I)V

    .line 77
    .line 78
    .line 79
    sput-object v0, Lcom/samsung/android/server/wifi/share/mcf/AdvertiseState;->CLOSE:Lcom/samsung/android/server/wifi/share/mcf/AdvertiseState;

    .line 80
    .line 81
    invoke-static {}, Lcom/samsung/android/server/wifi/share/mcf/AdvertiseState;->$values()[Lcom/samsung/android/server/wifi/share/mcf/AdvertiseState;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    sput-object v0, Lcom/samsung/android/server/wifi/share/mcf/AdvertiseState;->$VALUES:[Lcom/samsung/android/server/wifi/share/mcf/AdvertiseState;

    .line 86
    .line 87
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

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/server/wifi/share/mcf/AdvertiseState;
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
    const-class v0, Lcom/samsung/android/server/wifi/share/mcf/AdvertiseState;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/samsung/android/server/wifi/share/mcf/AdvertiseState;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/samsung/android/server/wifi/share/mcf/AdvertiseState;
    .locals 1

    .line 1
    sget-object v0, Lcom/samsung/android/server/wifi/share/mcf/AdvertiseState;->$VALUES:[Lcom/samsung/android/server/wifi/share/mcf/AdvertiseState;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/samsung/android/server/wifi/share/mcf/AdvertiseState;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/samsung/android/server/wifi/share/mcf/AdvertiseState;

    .line 8
    .line 9
    return-object v0
.end method
