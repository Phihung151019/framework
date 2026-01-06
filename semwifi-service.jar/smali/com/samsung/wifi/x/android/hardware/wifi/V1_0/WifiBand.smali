.class public final Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiBand;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# static fields
.field public static final BAND_24GHZ:I = 0x1

.field public static final BAND_24GHZ_5GHZ:I = 0x3

.field public static final BAND_24GHZ_5GHZ_WITH_DFS:I = 0x7

.field public static final BAND_5GHZ:I = 0x2

.field public static final BAND_5GHZ_DFS:I = 0x4

.field public static final BAND_5GHZ_WITH_DFS:I = 0x6

.field public static final BAND_UNSPECIFIED:I


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
    const-string v0, "BAND_UNSPECIFIED"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IfaceType$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    and-int/lit8 v1, p0, 0x1

    .line 8
    .line 9
    const/4 v2, 0x1

    .line 10
    if-ne v1, v2, :cond_0

    .line 11
    .line 12
    const-string v1, "BAND_24GHZ"

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 v2, 0x0

    .line 19
    :goto_0
    and-int/lit8 v1, p0, 0x2

    .line 20
    .line 21
    const/4 v3, 0x2

    .line 22
    if-ne v1, v3, :cond_1

    .line 23
    .line 24
    const-string v1, "BAND_5GHZ"

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    or-int/lit8 v2, v2, 0x2

    .line 30
    .line 31
    :cond_1
    and-int/lit8 v1, p0, 0x4

    .line 32
    .line 33
    const/4 v3, 0x4

    .line 34
    if-ne v1, v3, :cond_2

    .line 35
    .line 36
    const-string v1, "BAND_5GHZ_DFS"

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    or-int/lit8 v2, v2, 0x4

    .line 42
    .line 43
    :cond_2
    and-int/lit8 v1, p0, 0x6

    .line 44
    .line 45
    const/4 v3, 0x6

    .line 46
    if-ne v1, v3, :cond_3

    .line 47
    .line 48
    const-string v1, "BAND_5GHZ_WITH_DFS"

    .line 49
    .line 50
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    or-int/lit8 v2, v2, 0x6

    .line 54
    .line 55
    :cond_3
    and-int/lit8 v1, p0, 0x3

    .line 56
    .line 57
    const/4 v3, 0x3

    .line 58
    if-ne v1, v3, :cond_4

    .line 59
    .line 60
    const-string v1, "BAND_24GHZ_5GHZ"

    .line 61
    .line 62
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    or-int/lit8 v2, v2, 0x3

    .line 66
    .line 67
    :cond_4
    and-int/lit8 v1, p0, 0x7

    .line 68
    .line 69
    const/4 v3, 0x7

    .line 70
    if-ne v1, v3, :cond_5

    .line 71
    .line 72
    const-string v1, "BAND_24GHZ_5GHZ_WITH_DFS"

    .line 73
    .line 74
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 75
    .line 76
    .line 77
    move v2, v3

    .line 78
    :cond_5
    if-eq p0, v2, :cond_6

    .line 79
    .line 80
    new-instance v1, Ljava/lang/StringBuilder;

    .line 81
    .line 82
    const-string v3, "0x"

    .line 83
    .line 84
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    not-int v2, v2

    .line 88
    and-int/2addr p0, v2

    .line 89
    invoke-static {p0, v1, v0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip$Stub$$ExternalSyntheticOutline0;->m(ILjava/lang/StringBuilder;Ljava/util/ArrayList;)V

    .line 90
    .line 91
    .line 92
    :cond_6
    const-string p0, " | "

    .line 93
    .line 94
    invoke-static {p0, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object p0

    .line 98
    return-object p0
.end method

.method public static final toString(I)Ljava/lang/String;
    .locals 2

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    const-string p0, "BAND_UNSPECIFIED"

    .line 4
    .line 5
    return-object p0

    .line 6
    :cond_0
    const/4 v0, 0x1

    .line 7
    if-ne p0, v0, :cond_1

    .line 8
    .line 9
    const-string p0, "BAND_24GHZ"

    .line 10
    .line 11
    return-object p0

    .line 12
    :cond_1
    const/4 v0, 0x2

    .line 13
    if-ne p0, v0, :cond_2

    .line 14
    .line 15
    const-string p0, "BAND_5GHZ"

    .line 16
    .line 17
    return-object p0

    .line 18
    :cond_2
    const/4 v0, 0x4

    .line 19
    if-ne p0, v0, :cond_3

    .line 20
    .line 21
    const-string p0, "BAND_5GHZ_DFS"

    .line 22
    .line 23
    return-object p0

    .line 24
    :cond_3
    const/4 v0, 0x6

    .line 25
    if-ne p0, v0, :cond_4

    .line 26
    .line 27
    const-string p0, "BAND_5GHZ_WITH_DFS"

    .line 28
    .line 29
    return-object p0

    .line 30
    :cond_4
    const/4 v0, 0x3

    .line 31
    if-ne p0, v0, :cond_5

    .line 32
    .line 33
    const-string p0, "BAND_24GHZ_5GHZ"

    .line 34
    .line 35
    return-object p0

    .line 36
    :cond_5
    const/4 v0, 0x7

    .line 37
    if-ne p0, v0, :cond_6

    .line 38
    .line 39
    const-string p0, "BAND_24GHZ_5GHZ_WITH_DFS"

    .line 40
    .line 41
    return-object p0

    .line 42
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    .line 43
    .line 44
    const-string v1, "0x"

    .line 45
    .line 46
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    invoke-static {v0, p0}, Lcom/samsung/android/server/wifi/ap/SemDhcpPacket$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;I)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    return-object p0
.end method
