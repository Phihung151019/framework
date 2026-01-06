.class public final Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_3/Generation;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# static fields
.field public static final WIFI_STANDARD_11AC:I = 0x2

.field public static final WIFI_STANDARD_11AD:I = 0x4

.field public static final WIFI_STANDARD_11AX:I = 0x3

.field public static final WIFI_STANDARD_11N:I = 0x1

.field public static final WIFI_STANDARD_LEGACY:I = 0x0

.field public static final WIFI_STANDARD_UNKNOWN:I = -0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final dumpBitfield(I)Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, -0x1

    .line 7
    if-ne p0, v1, :cond_0

    .line 8
    .line 9
    const-string v2, "WIFI_STANDARD_UNKNOWN"

    .line 10
    .line 11
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 v1, 0x0

    .line 16
    :goto_0
    const-string v2, "WIFI_STANDARD_LEGACY"

    .line 17
    .line 18
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    and-int/lit8 v2, p0, 0x1

    .line 22
    .line 23
    const/4 v3, 0x1

    .line 24
    if-ne v2, v3, :cond_1

    .line 25
    .line 26
    const-string v2, "WIFI_STANDARD_11N"

    .line 27
    .line 28
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    or-int/lit8 v1, v1, 0x1

    .line 32
    .line 33
    :cond_1
    and-int/lit8 v2, p0, 0x2

    .line 34
    .line 35
    const/4 v3, 0x2

    .line 36
    if-ne v2, v3, :cond_2

    .line 37
    .line 38
    const-string v2, "WIFI_STANDARD_11AC"

    .line 39
    .line 40
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    or-int/lit8 v1, v1, 0x2

    .line 44
    .line 45
    :cond_2
    and-int/lit8 v2, p0, 0x3

    .line 46
    .line 47
    const/4 v3, 0x3

    .line 48
    if-ne v2, v3, :cond_3

    .line 49
    .line 50
    const-string v2, "WIFI_STANDARD_11AX"

    .line 51
    .line 52
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    or-int/lit8 v1, v1, 0x3

    .line 56
    .line 57
    :cond_3
    and-int/lit8 v2, p0, 0x4

    .line 58
    .line 59
    const/4 v3, 0x4

    .line 60
    if-ne v2, v3, :cond_4

    .line 61
    .line 62
    const-string v2, "WIFI_STANDARD_11AD"

    .line 63
    .line 64
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    or-int/lit8 v1, v1, 0x4

    .line 68
    .line 69
    :cond_4
    if-eq p0, v1, :cond_5

    .line 70
    .line 71
    new-instance v2, Ljava/lang/StringBuilder;

    .line 72
    .line 73
    const-string v3, "0x"

    .line 74
    .line 75
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    not-int v1, v1

    .line 79
    and-int/2addr p0, v1

    .line 80
    invoke-static {p0, v2, v0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip$Stub$$ExternalSyntheticOutline0;->m(ILjava/lang/StringBuilder;Ljava/util/ArrayList;)V

    .line 81
    .line 82
    .line 83
    :cond_5
    const-string p0, " | "

    .line 84
    .line 85
    invoke-static {p0, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object p0

    .line 89
    return-object p0
.end method

.method public static final toString(I)Ljava/lang/String;
    .locals 2

    .line 1
    const/4 v0, -0x1

    .line 2
    if-ne p0, v0, :cond_0

    .line 3
    .line 4
    const-string p0, "WIFI_STANDARD_UNKNOWN"

    .line 5
    .line 6
    return-object p0

    .line 7
    :cond_0
    if-nez p0, :cond_1

    .line 8
    .line 9
    const-string p0, "WIFI_STANDARD_LEGACY"

    .line 10
    .line 11
    return-object p0

    .line 12
    :cond_1
    const/4 v0, 0x1

    .line 13
    if-ne p0, v0, :cond_2

    .line 14
    .line 15
    const-string p0, "WIFI_STANDARD_11N"

    .line 16
    .line 17
    return-object p0

    .line 18
    :cond_2
    const/4 v0, 0x2

    .line 19
    if-ne p0, v0, :cond_3

    .line 20
    .line 21
    const-string p0, "WIFI_STANDARD_11AC"

    .line 22
    .line 23
    return-object p0

    .line 24
    :cond_3
    const/4 v0, 0x3

    .line 25
    if-ne p0, v0, :cond_4

    .line 26
    .line 27
    const-string p0, "WIFI_STANDARD_11AX"

    .line 28
    .line 29
    return-object p0

    .line 30
    :cond_4
    const/4 v0, 0x4

    .line 31
    if-ne p0, v0, :cond_5

    .line 32
    .line 33
    const-string p0, "WIFI_STANDARD_11AD"

    .line 34
    .line 35
    return-object p0

    .line 36
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 37
    .line 38
    const-string v1, "0x"

    .line 39
    .line 40
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    invoke-static {v0, p0}, Lcom/samsung/android/server/wifi/ap/SemDhcpPacket$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;I)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    return-object p0
.end method
