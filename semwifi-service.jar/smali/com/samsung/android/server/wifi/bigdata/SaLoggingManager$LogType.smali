.class public final enum Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager$LogType;
.super Ljava/lang/Enum;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401c
    name = "LogType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager$LogType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager$LogType;

.field public static final enum Device:Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager$LogType;

.field public static final enum Event:Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager$LogType;

.field public static final enum Setting:Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager$LogType;


# instance fields
.field private final typeString:Ljava/lang/String;


# direct methods
.method private static synthetic $values()[Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager$LogType;
    .locals 3

    .line 1
    sget-object v0, Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager$LogType;->Event:Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager$LogType;

    .line 2
    .line 3
    sget-object v1, Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager$LogType;->Setting:Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager$LogType;

    .line 4
    .line 5
    sget-object v2, Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager$LogType;->Device:Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager$LogType;

    .line 6
    .line 7
    filled-new-array {v0, v1, v2}, [Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager$LogType;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager$LogType;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const-string v2, "ev"

    .line 5
    .line 6
    const-string v3, "Event"

    .line 7
    .line 8
    invoke-direct {v0, v3, v1, v2}, Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager$LogType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sput-object v0, Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager$LogType;->Event:Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager$LogType;

    .line 12
    .line 13
    new-instance v0, Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager$LogType;

    .line 14
    .line 15
    const/4 v1, 0x1

    .line 16
    const-string v2, "st"

    .line 17
    .line 18
    const-string v3, "Setting"

    .line 19
    .line 20
    invoke-direct {v0, v3, v1, v2}, Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager$LogType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 21
    .line 22
    .line 23
    sput-object v0, Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager$LogType;->Setting:Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager$LogType;

    .line 24
    .line 25
    new-instance v0, Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager$LogType;

    .line 26
    .line 27
    const/4 v1, 0x2

    .line 28
    const-string v2, "dl"

    .line 29
    .line 30
    const-string v3, "Device"

    .line 31
    .line 32
    invoke-direct {v0, v3, v1, v2}, Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager$LogType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 33
    .line 34
    .line 35
    sput-object v0, Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager$LogType;->Device:Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager$LogType;

    .line 36
    .line 37
    invoke-static {}, Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager$LogType;->$values()[Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager$LogType;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    sput-object v0, Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager$LogType;->$VALUES:[Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager$LogType;

    .line 42
    .line 43
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
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
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput-object p3, p0, Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager$LogType;->typeString:Ljava/lang/String;

    .line 5
    .line 6
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager$LogType;
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
    const-class v0, Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager$LogType;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager$LogType;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager$LogType;
    .locals 1

    .line 1
    sget-object v0, Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager$LogType;->$VALUES:[Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager$LogType;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager$LogType;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager$LogType;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager$LogType;->typeString:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method
