.class public Lcom/samsung/android/server/wifi/share/mcf/McfData;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# static fields
.field private static final EMPTY_BSSID:Ljava/lang/String; = "00:00:00:00:00:00"

.field public static final JSON_CONFIGKEY:Ljava/lang/String; = "configKey"

.field public static final JSON_CONFIGKEY_HOTSPOT:Ljava/lang/String; = "configKey_hotspot"

.field public static final JSON_PASSWORD:Ljava/lang/String; = "password"

.field public static final JSON_PBSSID:Ljava/lang/String; = "pBssid"

.field public static final JSON_START_AT:Ljava/lang/String; = "startAt"

.field public static final JSON_STATE:Ljava/lang/String; = "state"

.field private static final PBSSID_LENGTH:I = 0x3

.field private static final QOS_BYTE_DATA_NO_INTERNET:B = -0x6t

.field private static final QOS_BYTE_DATA_UNSECURED:B = -0x5t

.field static final QOS_BYTE_LENGTH:I = 0x4


# instance fields
.field private final configKey:Ljava/lang/String;

.field private final pBssid:[B

.field private pBssidRoam:B

.field private final password:Ljava/lang/String;

.field private qosByteData:B

.field private final type:Lcom/samsung/android/server/wifi/share/mcf/McfDataType;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/share/mcf/McfDataType;[B)V
    .locals 4

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 18
    iput-byte v0, p0, Lcom/samsung/android/server/wifi/share/mcf/McfData;->qosByteData:B

    .line 19
    iput-byte v0, p0, Lcom/samsung/android/server/wifi/share/mcf/McfData;->pBssidRoam:B

    .line 20
    iput-object p1, p0, Lcom/samsung/android/server/wifi/share/mcf/McfData;->type:Lcom/samsung/android/server/wifi/share/mcf/McfDataType;

    const/4 v1, 0x3

    .line 21
    new-array v2, v1, [B

    iput-object v2, p0, Lcom/samsung/android/server/wifi/share/mcf/McfData;->pBssid:[B

    .line 22
    aget-byte v3, p2, v0

    aput-byte v3, v2, v0

    const/4 v0, 0x1

    .line 23
    aget-byte v3, p2, v0

    aput-byte v3, v2, v0

    const/4 v0, 0x2

    .line 24
    aget-byte v3, p2, v0

    aput-byte v3, v2, v0

    .line 25
    sget-object v0, Lcom/samsung/android/server/wifi/share/mcf/McfDataType;->QOS:Lcom/samsung/android/server/wifi/share/mcf/McfDataType;

    if-ne p1, v0, :cond_0

    .line 26
    aget-byte p1, p2, v1

    iput-byte p1, p0, Lcom/samsung/android/server/wifi/share/mcf/McfData;->qosByteData:B

    goto :goto_0

    .line 27
    :cond_0
    aget-byte p1, p2, v1

    iput-byte p1, p0, Lcom/samsung/android/server/wifi/share/mcf/McfData;->pBssidRoam:B

    :goto_0
    const/4 p1, 0x0

    .line 28
    iput-object p1, p0, Lcom/samsung/android/server/wifi/share/mcf/McfData;->configKey:Ljava/lang/String;

    .line 29
    iput-object p1, p0, Lcom/samsung/android/server/wifi/share/mcf/McfData;->password:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 11
    iput-byte v0, p0, Lcom/samsung/android/server/wifi/share/mcf/McfData;->qosByteData:B

    .line 12
    iput-byte v0, p0, Lcom/samsung/android/server/wifi/share/mcf/McfData;->pBssidRoam:B

    .line 13
    sget-object v0, Lcom/samsung/android/server/wifi/share/mcf/McfDataType;->PASSWORD:Lcom/samsung/android/server/wifi/share/mcf/McfDataType;

    iput-object v0, p0, Lcom/samsung/android/server/wifi/share/mcf/McfData;->type:Lcom/samsung/android/server/wifi/share/mcf/McfDataType;

    .line 14
    invoke-static {p1}, Lcom/samsung/android/server/wifi/share/mcf/McfData;->generatePBssid(Ljava/lang/String;)[B

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/server/wifi/share/mcf/McfData;->pBssid:[B

    .line 15
    iput-object p2, p0, Lcom/samsung/android/server/wifi/share/mcf/McfData;->configKey:Ljava/lang/String;

    .line 16
    iput-object p3, p0, Lcom/samsung/android/server/wifi/share/mcf/McfData;->password:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;[I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-byte v0, p0, Lcom/samsung/android/server/wifi/share/mcf/McfData;->qosByteData:B

    .line 3
    iput-byte v0, p0, Lcom/samsung/android/server/wifi/share/mcf/McfData;->pBssidRoam:B

    .line 4
    sget-object v0, Lcom/samsung/android/server/wifi/share/mcf/McfDataType;->QOS:Lcom/samsung/android/server/wifi/share/mcf/McfDataType;

    iput-object v0, p0, Lcom/samsung/android/server/wifi/share/mcf/McfData;->type:Lcom/samsung/android/server/wifi/share/mcf/McfDataType;

    .line 5
    invoke-static {p1}, Lcom/samsung/android/server/wifi/share/mcf/McfData;->generatePBssid(Ljava/lang/String;)[B

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/server/wifi/share/mcf/McfData;->pBssid:[B

    if-eqz p2, :cond_0

    .line 6
    array-length p1, p2

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 7
    invoke-static {p2}, Lcom/samsung/android/server/wifi/share/mcf/McfData;->getQoSByte([I)B

    move-result p1

    iput-byte p1, p0, Lcom/samsung/android/server/wifi/share/mcf/McfData;->qosByteData:B

    :cond_0
    const/4 p1, 0x0

    .line 8
    iput-object p1, p0, Lcom/samsung/android/server/wifi/share/mcf/McfData;->configKey:Ljava/lang/String;

    .line 9
    iput-object p1, p0, Lcom/samsung/android/server/wifi/share/mcf/McfData;->password:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lorg/json/JSONObject;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 31
    iput-byte v0, p0, Lcom/samsung/android/server/wifi/share/mcf/McfData;->qosByteData:B

    .line 32
    iput-byte v0, p0, Lcom/samsung/android/server/wifi/share/mcf/McfData;->pBssidRoam:B

    .line 33
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/share/mcf/McfData;->parsePasswordData(Lorg/json/JSONObject;)[Ljava/lang/String;

    move-result-object p1

    .line 34
    aget-object v1, p1, v0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    .line 35
    sget-object v1, Lcom/samsung/android/server/wifi/share/mcf/McfDataType;->PASSWORD:Lcom/samsung/android/server/wifi/share/mcf/McfDataType;

    iput-object v1, p0, Lcom/samsung/android/server/wifi/share/mcf/McfData;->type:Lcom/samsung/android/server/wifi/share/mcf/McfDataType;

    .line 36
    aget-object v1, p1, v0

    invoke-static {v1}, Lcom/samsung/android/server/wifi/share/mcf/McfData;->generatePBssid(Ljava/lang/String;)[B

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/server/wifi/share/mcf/McfData;->pBssid:[B

    .line 37
    iput-byte v0, p0, Lcom/samsung/android/server/wifi/share/mcf/McfData;->qosByteData:B

    const/4 v0, 0x1

    .line 38
    aget-object v0, p1, v0

    iput-object v0, p0, Lcom/samsung/android/server/wifi/share/mcf/McfData;->configKey:Ljava/lang/String;

    const/4 v0, 0x2

    .line 39
    aget-object p1, p1, v0

    iput-object p1, p0, Lcom/samsung/android/server/wifi/share/mcf/McfData;->password:Ljava/lang/String;

    return-void

    .line 40
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "wrong pBssid value "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object p1, p1, v0

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private byteArrayToMacString([B)Ljava/lang/String;
    .locals 6

    .line 1
    new-instance p0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    array-length v0, p1

    .line 7
    const/4 v1, 0x1

    .line 8
    const/4 v2, 0x0

    .line 9
    move v3, v2

    .line 10
    :goto_0
    if-ge v3, v0, :cond_1

    .line 11
    .line 12
    aget-byte v4, p1, v3

    .line 13
    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    move v1, v2

    .line 17
    goto :goto_1

    .line 18
    :cond_0
    const-string v5, ":"

    .line 19
    .line 20
    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    :goto_1
    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 24
    .line 25
    .line 26
    move-result-object v4

    .line 27
    filled-new-array {v4}, [Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v4

    .line 31
    const-string v5, "%02x"

    .line 32
    .line 33
    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v4

    .line 37
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    add-int/lit8 v3, v3, 0x1

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_1
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    return-object p0
.end method

.method static byteArrayToString([B)Ljava/lang/String;
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    array-length v1, p0

    .line 7
    const/4 v2, 0x0

    .line 8
    :goto_0
    if-ge v2, v1, :cond_0

    .line 9
    .line 10
    aget-byte v3, p0, v2

    .line 11
    .line 12
    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 13
    .line 14
    .line 15
    move-result-object v3

    .line 16
    filled-new-array {v3}, [Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v3

    .line 20
    const-string v4, "%02x"

    .line 21
    .line 22
    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    add-int/lit8 v2, v2, 0x1

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    return-object p0
.end method

.method public static generatePBssid(Ljava/lang/String;)[B
    .locals 6

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const-string p0, "00:00:00:00:00:00"

    .line 8
    .line 9
    :cond_0
    const-string v0, ":"

    .line 10
    .line 11
    const-string v1, ""

    .line 12
    .line 13
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    invoke-static {p0}, Lcom/samsung/android/server/wifi/share/mcf/McfData;->hexStringToByteArray(Ljava/lang/String;)[B

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    array-length v0, p0

    .line 22
    const/4 v1, 0x3

    .line 23
    if-ne v0, v1, :cond_1

    .line 24
    .line 25
    invoke-static {p0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    return-object p0

    .line 30
    :cond_1
    array-length v0, p0

    .line 31
    const/4 v2, 0x6

    .line 32
    if-ne v0, v2, :cond_2

    .line 33
    .line 34
    new-array v0, v1, [B

    .line 35
    .line 36
    const/4 v2, 0x1

    .line 37
    aget-byte v3, p0, v2

    .line 38
    .line 39
    aget-byte v1, p0, v1

    .line 40
    .line 41
    xor-int/2addr v1, v3

    .line 42
    int-to-byte v1, v1

    .line 43
    const/4 v3, 0x0

    .line 44
    aput-byte v1, v0, v3

    .line 45
    .line 46
    const/4 v1, 0x2

    .line 47
    aget-byte v4, p0, v1

    .line 48
    .line 49
    const/4 v5, 0x4

    .line 50
    aget-byte v5, p0, v5

    .line 51
    .line 52
    xor-int/2addr v4, v5

    .line 53
    int-to-byte v4, v4

    .line 54
    aput-byte v4, v0, v2

    .line 55
    .line 56
    aget-byte v2, p0, v3

    .line 57
    .line 58
    const/4 v3, 0x5

    .line 59
    aget-byte p0, p0, v3

    .line 60
    .line 61
    xor-int/2addr p0, v2

    .line 62
    int-to-byte p0, p0

    .line 63
    aput-byte p0, v0, v1

    .line 64
    .line 65
    return-object v0

    .line 66
    :cond_2
    const/4 p0, 0x0

    .line 67
    return-object p0
.end method

.method static getQoSByte([I)B
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p0, :cond_3

    .line 3
    .line 4
    array-length v1, p0

    .line 5
    const/4 v2, 0x4

    .line 6
    if-eq v1, v2, :cond_0

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    aget v1, p0, v0

    .line 10
    .line 11
    sget-object v2, Lcom/samsung/android/server/wifi/share/mcf/QoSNetworkType;->NO_INTERNET:Lcom/samsung/android/server/wifi/share/mcf/QoSNetworkType;

    .line 12
    .line 13
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    if-ne v1, v2, :cond_1

    .line 18
    .line 19
    const/4 p0, -0x6

    .line 20
    return p0

    .line 21
    :cond_1
    aget v1, p0, v0

    .line 22
    .line 23
    sget-object v2, Lcom/samsung/android/server/wifi/share/mcf/QoSNetworkType;->SUSPICIOUS:Lcom/samsung/android/server/wifi/share/mcf/QoSNetworkType;

    .line 24
    .line 25
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    if-lt v1, v2, :cond_2

    .line 30
    .line 31
    const/4 p0, -0x5

    .line 32
    return p0

    .line 33
    :cond_2
    aget v0, p0, v0

    .line 34
    .line 35
    int-to-byte v0, v0

    .line 36
    mul-int/lit8 v0, v0, 0x7d

    .line 37
    .line 38
    const/4 v1, 0x1

    .line 39
    aget v1, p0, v1

    .line 40
    .line 41
    int-to-byte v1, v1

    .line 42
    mul-int/lit8 v1, v1, 0x19

    .line 43
    .line 44
    add-int/2addr v1, v0

    .line 45
    const/4 v0, 0x2

    .line 46
    aget v0, p0, v0

    .line 47
    .line 48
    int-to-byte v0, v0

    .line 49
    mul-int/lit8 v0, v0, 0x5

    .line 50
    .line 51
    add-int/2addr v0, v1

    .line 52
    const/4 v1, 0x3

    .line 53
    aget p0, p0, v1

    .line 54
    .line 55
    int-to-byte p0, p0

    .line 56
    add-int/2addr v0, p0

    .line 57
    int-to-byte p0, v0

    .line 58
    return p0

    .line 59
    :cond_3
    :goto_0
    return v0
.end method

.method private getRoamBssid()[B
    .locals 2

    .line 1
    iget-byte v0, p0, Lcom/samsung/android/server/wifi/share/mcf/McfData;->pBssidRoam:B

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/samsung/android/server/wifi/share/mcf/McfData;->pBssid:[B

    .line 6
    .line 7
    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, [B

    .line 12
    .line 13
    array-length v1, v0

    .line 14
    add-int/lit8 v1, v1, -0x1

    .line 15
    .line 16
    iget-byte p0, p0, Lcom/samsung/android/server/wifi/share/mcf/McfData;->pBssidRoam:B

    .line 17
    .line 18
    aput-byte p0, v0, v1

    .line 19
    .line 20
    return-object v0

    .line 21
    :cond_0
    const/4 p0, 0x0

    .line 22
    return-object p0
.end method

.method private static hexStringToByteArray(Ljava/lang/String;)[B
    .locals 7

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    div-int/lit8 v1, v0, 0x2

    .line 6
    .line 7
    new-array v1, v1, [B

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    :goto_0
    if-ge v2, v0, :cond_0

    .line 11
    .line 12
    div-int/lit8 v3, v2, 0x2

    .line 13
    .line 14
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    .line 15
    .line 16
    .line 17
    move-result v4

    .line 18
    const/16 v5, 0x10

    .line 19
    .line 20
    invoke-static {v4, v5}, Ljava/lang/Character;->digit(CI)I

    .line 21
    .line 22
    .line 23
    move-result v4

    .line 24
    shl-int/lit8 v4, v4, 0x4

    .line 25
    .line 26
    add-int/lit8 v6, v2, 0x1

    .line 27
    .line 28
    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    .line 29
    .line 30
    .line 31
    move-result v6

    .line 32
    invoke-static {v6, v5}, Ljava/lang/Character;->digit(CI)I

    .line 33
    .line 34
    .line 35
    move-result v5

    .line 36
    add-int/2addr v5, v4

    .line 37
    int-to-byte v4, v5

    .line 38
    aput-byte v4, v1, v3

    .line 39
    .line 40
    add-int/lit8 v2, v2, 0x2

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_0
    return-object v1
.end method

.method private isSameBssid([B)Z
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    :goto_0
    iget-object v2, p0, Lcom/samsung/android/server/wifi/share/mcf/McfData;->pBssid:[B

    .line 4
    .line 5
    array-length v3, v2

    .line 6
    if-ge v1, v3, :cond_1

    .line 7
    .line 8
    array-length v3, p1

    .line 9
    if-ge v1, v3, :cond_1

    .line 10
    .line 11
    aget-byte v2, v2, v1

    .line 12
    .line 13
    aget-byte v3, p1, v1

    .line 14
    .line 15
    if-eq v2, v3, :cond_0

    .line 16
    .line 17
    return v0

    .line 18
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_1
    const/4 p0, 0x1

    .line 22
    return p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    instance-of v0, p1, Lcom/samsung/android/server/wifi/share/mcf/McfData;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_6

    .line 5
    .line 6
    check-cast p1, Lcom/samsung/android/server/wifi/share/mcf/McfData;

    .line 7
    .line 8
    iget-object v0, p0, Lcom/samsung/android/server/wifi/share/mcf/McfData;->type:Lcom/samsung/android/server/wifi/share/mcf/McfDataType;

    .line 9
    .line 10
    iget-object v2, p1, Lcom/samsung/android/server/wifi/share/mcf/McfData;->type:Lcom/samsung/android/server/wifi/share/mcf/McfDataType;

    .line 11
    .line 12
    if-eq v0, v2, :cond_0

    .line 13
    .line 14
    return v1

    .line 15
    :cond_0
    iget-object v0, p1, Lcom/samsung/android/server/wifi/share/mcf/McfData;->pBssid:[B

    .line 16
    .line 17
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/share/mcf/McfData;->isSameBssid([B)Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-nez v0, :cond_1

    .line 22
    .line 23
    return v1

    .line 24
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/share/mcf/McfData;->type:Lcom/samsung/android/server/wifi/share/mcf/McfDataType;

    .line 25
    .line 26
    sget-object v2, Lcom/samsung/android/server/wifi/share/mcf/McfDataType;->QOS:Lcom/samsung/android/server/wifi/share/mcf/McfDataType;

    .line 27
    .line 28
    const/4 v3, 0x1

    .line 29
    if-ne v0, v2, :cond_3

    .line 30
    .line 31
    iget-byte p0, p0, Lcom/samsung/android/server/wifi/share/mcf/McfData;->qosByteData:B

    .line 32
    .line 33
    iget-byte p1, p1, Lcom/samsung/android/server/wifi/share/mcf/McfData;->qosByteData:B

    .line 34
    .line 35
    if-ne p0, p1, :cond_2

    .line 36
    .line 37
    return v3

    .line 38
    :cond_2
    return v1

    .line 39
    :cond_3
    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/mcf/McfData;->configKey:Ljava/lang/String;

    .line 40
    .line 41
    if-nez p0, :cond_5

    .line 42
    .line 43
    iget-object p0, p1, Lcom/samsung/android/server/wifi/share/mcf/McfData;->configKey:Ljava/lang/String;

    .line 44
    .line 45
    if-nez p0, :cond_4

    .line 46
    .line 47
    return v3

    .line 48
    :cond_4
    return v1

    .line 49
    :cond_5
    iget-object p1, p1, Lcom/samsung/android/server/wifi/share/mcf/McfData;->configKey:Ljava/lang/String;

    .line 50
    .line 51
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    move-result p0

    .line 55
    return p0

    .line 56
    :cond_6
    return v1
.end method

.method getByteArrayForSharing()[B
    .locals 4

    .line 1
    const/4 v0, 0x4

    .line 2
    new-array v0, v0, [B

    .line 3
    .line 4
    iget-object v1, p0, Lcom/samsung/android/server/wifi/share/mcf/McfData;->pBssid:[B

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    aget-byte v3, v1, v2

    .line 8
    .line 9
    aput-byte v3, v0, v2

    .line 10
    .line 11
    const/4 v2, 0x1

    .line 12
    aget-byte v3, v1, v2

    .line 13
    .line 14
    aput-byte v3, v0, v2

    .line 15
    .line 16
    const/4 v2, 0x2

    .line 17
    aget-byte v1, v1, v2

    .line 18
    .line 19
    aput-byte v1, v0, v2

    .line 20
    .line 21
    iget-object v1, p0, Lcom/samsung/android/server/wifi/share/mcf/McfData;->type:Lcom/samsung/android/server/wifi/share/mcf/McfDataType;

    .line 22
    .line 23
    sget-object v2, Lcom/samsung/android/server/wifi/share/mcf/McfDataType;->QOS:Lcom/samsung/android/server/wifi/share/mcf/McfDataType;

    .line 24
    .line 25
    const/4 v3, 0x3

    .line 26
    if-ne v1, v2, :cond_0

    .line 27
    .line 28
    iget-byte p0, p0, Lcom/samsung/android/server/wifi/share/mcf/McfData;->qosByteData:B

    .line 29
    .line 30
    aput-byte p0, v0, v3

    .line 31
    .line 32
    return-object v0

    .line 33
    :cond_0
    iget-byte p0, p0, Lcom/samsung/android/server/wifi/share/mcf/McfData;->pBssidRoam:B

    .line 34
    .line 35
    aput-byte p0, v0, v3

    .line 36
    .line 37
    return-object v0
.end method

.method public getConfigKey()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/mcf/McfData;->configKey:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public getPartOfBssid()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/share/mcf/McfData;->pBssid:[B

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/share/mcf/McfData;->byteArrayToMacString([B)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public getPassword()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/mcf/McfData;->password:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method getPasswordJsonData(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 3

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    .line 1
    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/samsung/android/server/wifi/share/mcf/McfData;->getPasswordJsonData(Ljava/lang/String;ZJ)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method

.method getPasswordJsonData(Ljava/lang/String;ZJ)Lorg/json/JSONObject;
    .locals 2

    .line 2
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 3
    :try_start_0
    const-string v1, "state"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 4
    const-string p1, "pBssid"

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/share/mcf/McfData;->getPartOfBssid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 5
    const-string p1, "configKey"

    iget-object v1, p0, Lcom/samsung/android/server/wifi/share/mcf/McfData;->configKey:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    if-eqz p2, :cond_0

    .line 6
    const-string p1, "password"

    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/mcf/McfData;->password:Ljava/lang/String;

    invoke-virtual {v0, p1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    const-wide/16 p0, 0x0

    cmp-long p0, p3, p0

    if-eqz p0, :cond_1

    .line 7
    const-string p0, "startAt"

    invoke-virtual {v0, p0, p3, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 8
    :goto_1
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    :cond_1
    return-object v0
.end method

.method public getSpeedArray()[I
    .locals 1

    .line 1
    iget-byte v0, p0, Lcom/samsung/android/server/wifi/share/mcf/McfData;->qosByteData:B

    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/share/mcf/McfData;->getSpeedArray(B)[I

    move-result-object p0

    return-object p0
.end method

.method getSpeedArray(B)[I
    .locals 5

    const/4 p0, 0x4

    .line 2
    new-array p0, p0, [I

    const/4 v0, 0x0

    aput v0, p0, v0

    const/4 v1, 0x1

    aput v0, p0, v1

    const/4 v2, 0x2

    aput v0, p0, v2

    const/4 v3, 0x3

    aput v0, p0, v3

    const/4 v4, -0x6

    if-ne p1, v4, :cond_0

    .line 3
    sget-object p1, Lcom/samsung/android/server/wifi/share/mcf/QoSNetworkType;->NO_INTERNET:Lcom/samsung/android/server/wifi/share/mcf/QoSNetworkType;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aput p1, p0, v0

    return-object p0

    :cond_0
    const/4 v4, -0x5

    if-ne p1, v4, :cond_1

    .line 4
    sget-object p1, Lcom/samsung/android/server/wifi/share/mcf/QoSNetworkType;->SUSPICIOUS:Lcom/samsung/android/server/wifi/share/mcf/QoSNetworkType;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aput p1, p0, v0

    return-object p0

    .line 5
    :cond_1
    invoke-static {p1}, Ljava/lang/Byte;->toUnsignedInt(B)I

    move-result p1

    .line 6
    div-int/lit8 v4, p1, 0x7d

    aput v4, p0, v0

    mul-int/lit8 v4, v4, 0x7d

    sub-int/2addr p1, v4

    .line 7
    div-int/lit8 v0, p1, 0x19

    aput v0, p0, v1

    mul-int/lit8 v0, v0, 0x19

    sub-int/2addr p1, v0

    .line 8
    div-int/lit8 v0, p1, 0x5

    aput v0, p0, v2

    mul-int/lit8 v0, v0, 0x5

    sub-int/2addr p1, v0

    .line 9
    aput p1, p0, v3

    return-object p0
.end method

.method public hashCode()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/share/mcf/McfData;->type:Lcom/samsung/android/server/wifi/share/mcf/McfDataType;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    mul-int/lit8 v0, v0, 0xd

    .line 8
    .line 9
    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/mcf/McfData;->pBssid:[B

    .line 10
    .line 11
    invoke-static {p0}, Ljava/util/Arrays;->hashCode([B)I

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    add-int/2addr p0, v0

    .line 16
    return p0
.end method

.method isPasswordCancelData()Z
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/share/mcf/McfData;->type:Lcom/samsung/android/server/wifi/share/mcf/McfDataType;

    .line 2
    .line 3
    sget-object v1, Lcom/samsung/android/server/wifi/share/mcf/McfDataType;->PASSWORD:Lcom/samsung/android/server/wifi/share/mcf/McfDataType;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-eq v0, v1, :cond_0

    .line 7
    .line 8
    return v2

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/server/wifi/share/mcf/McfData;->pBssid:[B

    .line 10
    .line 11
    array-length v1, v0

    .line 12
    move v3, v2

    .line 13
    :goto_0
    if-ge v3, v1, :cond_2

    .line 14
    .line 15
    aget-byte v4, v0, v3

    .line 16
    .line 17
    if-eqz v4, :cond_1

    .line 18
    .line 19
    return v2

    .line 20
    :cond_1
    add-int/lit8 v3, v3, 0x1

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_2
    iget-byte p0, p0, Lcom/samsung/android/server/wifi/share/mcf/McfData;->pBssidRoam:B

    .line 24
    .line 25
    if-nez p0, :cond_3

    .line 26
    .line 27
    const/4 p0, 0x1

    .line 28
    return p0

    .line 29
    :cond_3
    return v2
.end method

.method matches(Lcom/samsung/android/server/wifi/share/mcf/McfData;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/share/mcf/McfData;->type:Lcom/samsung/android/server/wifi/share/mcf/McfDataType;

    .line 2
    .line 3
    iget-object v1, p1, Lcom/samsung/android/server/wifi/share/mcf/McfData;->type:Lcom/samsung/android/server/wifi/share/mcf/McfDataType;

    .line 4
    .line 5
    if-eq v0, v1, :cond_0

    .line 6
    .line 7
    const/4 p0, 0x0

    .line 8
    return p0

    .line 9
    :cond_0
    iget-object p1, p1, Lcom/samsung/android/server/wifi/share/mcf/McfData;->pBssid:[B

    .line 10
    .line 11
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/share/mcf/McfData;->isSameBssid([B)Z

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    return p0
.end method

.method maybeRoaming(Lcom/samsung/android/server/wifi/share/mcf/McfData;)Z
    .locals 0

    .line 1
    invoke-direct {p1}, Lcom/samsung/android/server/wifi/share/mcf/McfData;->getRoamBssid()[B

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/share/mcf/McfData;->isSameBssid([B)Z

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    return p0

    .line 12
    :cond_0
    const/4 p0, 0x0

    .line 13
    return p0
.end method

.method parsePasswordData(Lorg/json/JSONObject;)[Ljava/lang/String;
    .locals 5

    .line 1
    const-string p0, "state"

    .line 2
    .line 3
    const-string v0, "password"

    .line 4
    .line 5
    const-string v1, "configKey"

    .line 6
    .line 7
    const-string v2, "pBssid"

    .line 8
    .line 9
    const/4 v3, 0x4

    .line 10
    new-array v3, v3, [Ljava/lang/String;

    .line 11
    .line 12
    :try_start_0
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 13
    .line 14
    .line 15
    move-result v4

    .line 16
    if-eqz v4, :cond_0

    .line 17
    .line 18
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    const/4 v4, 0x0

    .line 23
    aput-object v2, v3, v4

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :catch_0
    move-exception p0

    .line 27
    goto :goto_1

    .line 28
    :cond_0
    :goto_0
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    if-eqz v2, :cond_1

    .line 33
    .line 34
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    const/4 v2, 0x1

    .line 39
    aput-object v1, v3, v2

    .line 40
    .line 41
    :cond_1
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    if-eqz v1, :cond_2

    .line 46
    .line 47
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    const/4 v1, 0x2

    .line 52
    aput-object v0, v3, v1

    .line 53
    .line 54
    :cond_2
    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    if-eqz v0, :cond_3

    .line 59
    .line 60
    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object p0

    .line 64
    const/4 p1, 0x3

    .line 65
    aput-object p0, v3, p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    .line 67
    return-object v3

    .line 68
    :goto_1
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    .line 69
    .line 70
    .line 71
    :cond_3
    return-object v3
.end method

.method public setRoamBssid(Ljava/lang/String;)V
    .locals 2

    .line 1
    const-string v0, ":"

    .line 2
    .line 3
    const-string v1, ""

    .line 4
    .line 5
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-static {p1}, Lcom/samsung/android/server/wifi/share/mcf/McfData;->hexStringToByteArray(Ljava/lang/String;)[B

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    const/4 v0, 0x0

    .line 14
    aget-byte v0, p1, v0

    .line 15
    .line 16
    array-length v1, p1

    .line 17
    add-int/lit8 v1, v1, -0x1

    .line 18
    .line 19
    aget-byte p1, p1, v1

    .line 20
    .line 21
    xor-int/2addr p1, v0

    .line 22
    int-to-byte p1, p1

    .line 23
    iput-byte p1, p0, Lcom/samsung/android/server/wifi/share/mcf/McfData;->pBssidRoam:B

    .line 24
    .line 25
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "type:"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lcom/samsung/android/server/wifi/share/mcf/McfData;->type:Lcom/samsung/android/server/wifi/share/mcf/McfDataType;

    .line 9
    .line 10
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const-string v1, ", pBssid:"

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    iget-object v1, p0, Lcom/samsung/android/server/wifi/share/mcf/McfData;->pBssid:[B

    .line 23
    .line 24
    const/4 v2, 0x0

    .line 25
    aget-byte v1, v1, v2

    .line 26
    .line 27
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget-object v2, p0, Lcom/samsung/android/server/wifi/share/mcf/McfData;->pBssid:[B

    .line 32
    .line 33
    const/4 v3, 0x1

    .line 34
    aget-byte v2, v2, v3

    .line 35
    .line 36
    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    iget-object v3, p0, Lcom/samsung/android/server/wifi/share/mcf/McfData;->pBssid:[B

    .line 41
    .line 42
    const/4 v4, 0x2

    .line 43
    aget-byte v3, v3, v4

    .line 44
    .line 45
    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 46
    .line 47
    .line 48
    move-result-object v3

    .line 49
    filled-new-array {v1, v2, v3}, [Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    const-string v2, "%02x:%02x:%02x"

    .line 54
    .line 55
    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    iget-object v1, p0, Lcom/samsung/android/server/wifi/share/mcf/McfData;->type:Lcom/samsung/android/server/wifi/share/mcf/McfDataType;

    .line 63
    .line 64
    sget-object v2, Lcom/samsung/android/server/wifi/share/mcf/McfDataType;->QOS:Lcom/samsung/android/server/wifi/share/mcf/McfDataType;

    .line 65
    .line 66
    const-string v3, "%02x"

    .line 67
    .line 68
    if-ne v1, v2, :cond_0

    .line 69
    .line 70
    const-string v1, ", qosData:"

    .line 71
    .line 72
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    iget-byte p0, p0, Lcom/samsung/android/server/wifi/share/mcf/McfData;->qosByteData:B

    .line 76
    .line 77
    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 78
    .line 79
    .line 80
    move-result-object p0

    .line 81
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object p0

    .line 85
    invoke-static {v3, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object p0

    .line 89
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    goto :goto_0

    .line 93
    :cond_0
    const-string v1, ", pBssidRoam:"

    .line 94
    .line 95
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    iget-byte v1, p0, Lcom/samsung/android/server/wifi/share/mcf/McfData;->pBssidRoam:B

    .line 99
    .line 100
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 101
    .line 102
    .line 103
    move-result-object v1

    .line 104
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    move-result-object v1

    .line 108
    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v1

    .line 112
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    iget-object v1, p0, Lcom/samsung/android/server/wifi/share/mcf/McfData;->configKey:Ljava/lang/String;

    .line 116
    .line 117
    if-eqz v1, :cond_1

    .line 118
    .line 119
    const-string v1, ", configKey:"

    .line 120
    .line 121
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/mcf/McfData;->configKey:Ljava/lang/String;

    .line 125
    .line 126
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    :cond_1
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object p0

    .line 133
    return-object p0
.end method
