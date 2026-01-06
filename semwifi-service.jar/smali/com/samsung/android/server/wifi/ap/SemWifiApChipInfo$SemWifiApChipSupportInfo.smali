.class Lcom/samsung/android/server/wifi/ap/SemWifiApChipInfo$SemWifiApChipSupportInfo;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/ap/SemWifiApChipInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SemWifiApChipSupportInfo"
.end annotation


# static fields
.field private static final SOFT_AP_11AX_MASK:B = 0x2t

.field private static final SOFT_AP_POWER_SAVE_MASK:B = 0x8t

.field private static final SOFT_AP_WPA3_MASK:B = 0x4t


# instance fields
.field private final featureArray:[B


# direct methods
.method static bridge synthetic -$$Nest$misSupportedSoftApPowerSave(Lcom/samsung/android/server/wifi/ap/SemWifiApChipInfo$SemWifiApChipSupportInfo;)Z
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApChipInfo$SemWifiApChipSupportInfo;->isSupportedSoftApPowerSave()Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method private constructor <init>([B)V
    .locals 5

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApChipInfo$SemWifiApChipSupportInfo;->featureArray:[B

    .line 4
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 5
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_0

    aget-byte v3, p1, v2

    .line 6
    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    const-string v4, "%02X "

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "SemWifiApChipSupportInfo featureArray : %s"

    invoke-virtual {v0, p0}, Ljava/lang/String;->formatted([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "SemWifiApChipInfo"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    aget-byte p0, p1, v1

    and-int/lit8 p0, p0, 0x2

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v2, "isSupportedSoftAp11ax : %s"

    invoke-virtual {v2, p0}, Ljava/lang/String;->formatted([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    aget-byte p0, p1, v1

    and-int/lit8 p0, p0, 0x4

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v2, "isSupportedSoftApWpa3 : %s"

    invoke-virtual {v2, p0}, Ljava/lang/String;->formatted([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    aget-byte p0, p1, v1

    and-int/lit8 p0, p0, 0x8

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "isSupportedSoftApPowerSave : %s"

    invoke-virtual {p1, p0}, Ljava/lang/String;->formatted([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method synthetic constructor <init>([BI)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApChipInfo$SemWifiApChipSupportInfo;-><init>([B)V

    return-void
.end method

.method private isSupportedSoftAp11ax()Z
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApChipInfo$SemWifiApChipSupportInfo;->featureArray:[B

    .line 2
    .line 3
    const-string v1, "SemWifiApChipInfo"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-eqz v0, :cond_2

    .line 7
    .line 8
    array-length v3, v0

    .line 9
    const/4 v4, 0x2

    .line 10
    if-ge v3, v4, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    aget-byte v0, v0, v2

    .line 14
    .line 15
    and-int/2addr v0, v4

    .line 16
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    const-string v3, "isSupportedSoftAp11ax : %s"

    .line 25
    .line 26
    invoke-virtual {v3, v0}, Ljava/lang/String;->formatted([Ljava/lang/Object;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    .line 32
    .line 33
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApChipInfo$SemWifiApChipSupportInfo;->featureArray:[B

    .line 34
    .line 35
    aget-byte p0, p0, v2

    .line 36
    .line 37
    and-int/2addr p0, v4

    .line 38
    if-ne p0, v4, :cond_1

    .line 39
    .line 40
    const/4 p0, 0x1

    .line 41
    return p0

    .line 42
    :cond_1
    return v2

    .line 43
    :cond_2
    :goto_0
    const-string p0, "isSupportedSoftAp11ax featureArray is null or length is less than 2"

    .line 44
    .line 45
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    .line 47
    .line 48
    return v2
.end method

.method private isSupportedSoftApPowerSave()Z
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApChipInfo$SemWifiApChipSupportInfo;->featureArray:[B

    .line 2
    .line 3
    const-string v1, "SemWifiApChipInfo"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-eqz v0, :cond_2

    .line 7
    .line 8
    array-length v3, v0

    .line 9
    const/4 v4, 0x2

    .line 10
    if-ge v3, v4, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    aget-byte v0, v0, v2

    .line 14
    .line 15
    const/16 v3, 0x8

    .line 16
    .line 17
    and-int/2addr v0, v3

    .line 18
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    const-string v4, "isSupportedSoftApPowerSave : %s"

    .line 27
    .line 28
    invoke-virtual {v4, v0}, Ljava/lang/String;->formatted([Ljava/lang/Object;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    .line 34
    .line 35
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApChipInfo$SemWifiApChipSupportInfo;->featureArray:[B

    .line 36
    .line 37
    aget-byte p0, p0, v2

    .line 38
    .line 39
    and-int/2addr p0, v3

    .line 40
    if-ne p0, v3, :cond_1

    .line 41
    .line 42
    const/4 p0, 0x1

    .line 43
    return p0

    .line 44
    :cond_1
    return v2

    .line 45
    :cond_2
    :goto_0
    const-string p0, "isSupportedSoftApPowerSave featureArray is null or length is less than 2"

    .line 46
    .line 47
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    .line 49
    .line 50
    return v2
.end method

.method private isSupportedSoftApWpa3()Z
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApChipInfo$SemWifiApChipSupportInfo;->featureArray:[B

    .line 2
    .line 3
    const-string v1, "SemWifiApChipInfo"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-eqz v0, :cond_2

    .line 7
    .line 8
    array-length v3, v0

    .line 9
    const/4 v4, 0x2

    .line 10
    if-ge v3, v4, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    aget-byte v0, v0, v2

    .line 14
    .line 15
    const/4 v3, 0x4

    .line 16
    and-int/2addr v0, v3

    .line 17
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    const-string v4, "isSupportedSoftApWpa3 : %s"

    .line 26
    .line 27
    invoke-virtual {v4, v0}, Ljava/lang/String;->formatted([Ljava/lang/Object;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    .line 33
    .line 34
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApChipInfo$SemWifiApChipSupportInfo;->featureArray:[B

    .line 35
    .line 36
    aget-byte p0, p0, v2

    .line 37
    .line 38
    and-int/2addr p0, v3

    .line 39
    if-ne p0, v3, :cond_1

    .line 40
    .line 41
    const/4 p0, 0x1

    .line 42
    return p0

    .line 43
    :cond_1
    return v2

    .line 44
    :cond_2
    :goto_0
    const-string p0, "isSupportedSoftApWpa3 featureArray is null or length is less than 2"

    .line 45
    .line 46
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    .line 48
    .line 49
    return v2
.end method
