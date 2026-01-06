.class public final Lcom/samsung/android/server/wifi/share/mcf/McfDataFactory;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# static fields
.field private static final DBG:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-string v0, "ro.product_ship"

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    xor-int/2addr v0, v1

    .line 9
    sput-boolean v0, Lcom/samsung/android/server/wifi/share/mcf/McfDataFactory;->DBG:Z

    .line 10
    .line 11
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static createPasswordCancelData(Ljava/lang/String;)Lcom/samsung/android/server/wifi/share/mcf/McfData;
    .locals 3

    .line 1
    new-instance v0, Lcom/samsung/android/server/wifi/share/mcf/McfData;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const-string v2, ""

    .line 5
    .line 6
    invoke-direct {v0, v1, p0, v2}, Lcom/samsung/android/server/wifi/share/mcf/McfData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    return-object v0
.end method

.method public static createPasswordData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/server/wifi/share/mcf/McfData;
    .locals 1

    .line 5
    new-instance v0, Lcom/samsung/android/server/wifi/share/mcf/McfData;

    invoke-direct {v0, p0, p1, p2}, Lcom/samsung/android/server/wifi/share/mcf/McfData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method static createPasswordData(Lorg/json/JSONObject;)Lcom/samsung/android/server/wifi/share/mcf/McfData;
    .locals 1

    .line 3
    :try_start_0
    new-instance v0, Lcom/samsung/android/server/wifi/share/mcf/McfData;

    invoke-direct {v0, p0}, Lcom/samsung/android/server/wifi/share/mcf/McfData;-><init>(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    .line 4
    sget-boolean v0, Lcom/samsung/android/server/wifi/share/mcf/McfDataFactory;->DBG:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method static createPasswordData([B)Lcom/samsung/android/server/wifi/share/mcf/McfData;
    .locals 2

    if-eqz p0, :cond_0

    .line 1
    array-length v0, p0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 2
    new-instance v0, Lcom/samsung/android/server/wifi/share/mcf/McfData;

    sget-object v1, Lcom/samsung/android/server/wifi/share/mcf/McfDataType;->PASSWORD:Lcom/samsung/android/server/wifi/share/mcf/McfDataType;

    invoke-direct {v0, v1, p0}, Lcom/samsung/android/server/wifi/share/mcf/McfData;-><init>(Lcom/samsung/android/server/wifi/share/mcf/McfDataType;[B)V

    return-object v0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method static createQoSData([B)Lcom/samsung/android/server/wifi/share/mcf/McfData;
    .locals 2

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    array-length v0, p0

    .line 4
    const/4 v1, 0x4

    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    new-instance v0, Lcom/samsung/android/server/wifi/share/mcf/McfData;

    .line 8
    .line 9
    sget-object v1, Lcom/samsung/android/server/wifi/share/mcf/McfDataType;->QOS:Lcom/samsung/android/server/wifi/share/mcf/McfDataType;

    .line 10
    .line 11
    invoke-direct {v0, v1, p0}, Lcom/samsung/android/server/wifi/share/mcf/McfData;-><init>(Lcom/samsung/android/server/wifi/share/mcf/McfDataType;[B)V

    .line 12
    .line 13
    .line 14
    return-object v0

    .line 15
    :cond_0
    const/4 p0, 0x0

    .line 16
    return-object p0
.end method

.method public static createQosData(Ljava/lang/String;[I)Lcom/samsung/android/server/wifi/share/mcf/McfData;
    .locals 2

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    array-length v0, p1

    .line 4
    const/4 v1, 0x4

    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    new-instance v0, Lcom/samsung/android/server/wifi/share/mcf/McfData;

    .line 8
    .line 9
    invoke-direct {v0, p0, p1}, Lcom/samsung/android/server/wifi/share/mcf/McfData;-><init>(Ljava/lang/String;[I)V

    .line 10
    .line 11
    .line 12
    return-object v0

    .line 13
    :cond_0
    const/4 p0, 0x0

    .line 14
    return-object p0
.end method
