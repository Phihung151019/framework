.class public final Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/WifiIfaceMode;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# static fields
.field public static final IFACE_MODE_IBSS:I = 0x4

.field public static final IFACE_MODE_MESH:I = 0x40

.field public static final IFACE_MODE_NAN:I = 0x20

.field public static final IFACE_MODE_P2P_CLIENT:I = 0x8

.field public static final IFACE_MODE_P2P_GO:I = 0x10

.field public static final IFACE_MODE_SOFTAP:I = 0x2

.field public static final IFACE_MODE_STA:I = 0x1

.field public static final IFACE_MODE_TDLS:I = 0x80


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
    and-int/lit8 v1, p0, 0x1

    .line 7
    .line 8
    const/4 v2, 0x1

    .line 9
    if-ne v1, v2, :cond_0

    .line 10
    .line 11
    const-string v1, "IFACE_MODE_STA"

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 v2, 0x0

    .line 18
    :goto_0
    and-int/lit8 v1, p0, 0x2

    .line 19
    .line 20
    const/4 v3, 0x2

    .line 21
    if-ne v1, v3, :cond_1

    .line 22
    .line 23
    const-string v1, "IFACE_MODE_SOFTAP"

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    or-int/lit8 v2, v2, 0x2

    .line 29
    .line 30
    :cond_1
    and-int/lit8 v1, p0, 0x4

    .line 31
    .line 32
    const/4 v3, 0x4

    .line 33
    if-ne v1, v3, :cond_2

    .line 34
    .line 35
    const-string v1, "IFACE_MODE_IBSS"

    .line 36
    .line 37
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    or-int/lit8 v2, v2, 0x4

    .line 41
    .line 42
    :cond_2
    and-int/lit8 v1, p0, 0x8

    .line 43
    .line 44
    const/16 v3, 0x8

    .line 45
    .line 46
    if-ne v1, v3, :cond_3

    .line 47
    .line 48
    const-string v1, "IFACE_MODE_P2P_CLIENT"

    .line 49
    .line 50
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    or-int/lit8 v2, v2, 0x8

    .line 54
    .line 55
    :cond_3
    and-int/lit8 v1, p0, 0x10

    .line 56
    .line 57
    const/16 v3, 0x10

    .line 58
    .line 59
    if-ne v1, v3, :cond_4

    .line 60
    .line 61
    const-string v1, "IFACE_MODE_P2P_GO"

    .line 62
    .line 63
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    or-int/lit8 v2, v2, 0x10

    .line 67
    .line 68
    :cond_4
    and-int/lit8 v1, p0, 0x20

    .line 69
    .line 70
    const/16 v3, 0x20

    .line 71
    .line 72
    if-ne v1, v3, :cond_5

    .line 73
    .line 74
    const-string v1, "IFACE_MODE_NAN"

    .line 75
    .line 76
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 77
    .line 78
    .line 79
    or-int/lit8 v2, v2, 0x20

    .line 80
    .line 81
    :cond_5
    and-int/lit8 v1, p0, 0x40

    .line 82
    .line 83
    const/16 v3, 0x40

    .line 84
    .line 85
    if-ne v1, v3, :cond_6

    .line 86
    .line 87
    const-string v1, "IFACE_MODE_MESH"

    .line 88
    .line 89
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 90
    .line 91
    .line 92
    or-int/lit8 v2, v2, 0x40

    .line 93
    .line 94
    :cond_6
    and-int/lit16 v1, p0, 0x80

    .line 95
    .line 96
    const/16 v3, 0x80

    .line 97
    .line 98
    if-ne v1, v3, :cond_7

    .line 99
    .line 100
    const-string v1, "IFACE_MODE_TDLS"

    .line 101
    .line 102
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 103
    .line 104
    .line 105
    or-int/lit16 v2, v2, 0x80

    .line 106
    .line 107
    :cond_7
    if-eq p0, v2, :cond_8

    .line 108
    .line 109
    new-instance v1, Ljava/lang/StringBuilder;

    .line 110
    .line 111
    const-string v3, "0x"

    .line 112
    .line 113
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    not-int v2, v2

    .line 117
    and-int/2addr p0, v2

    .line 118
    invoke-static {p0, v1, v0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip$Stub$$ExternalSyntheticOutline0;->m(ILjava/lang/StringBuilder;Ljava/util/ArrayList;)V

    .line 119
    .line 120
    .line 121
    :cond_8
    const-string p0, " | "

    .line 122
    .line 123
    invoke-static {p0, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object p0

    .line 127
    return-object p0
.end method

.method public static final toString(I)Ljava/lang/String;
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, v0, :cond_0

    .line 3
    .line 4
    const-string p0, "IFACE_MODE_STA"

    .line 5
    .line 6
    return-object p0

    .line 7
    :cond_0
    const/4 v0, 0x2

    .line 8
    if-ne p0, v0, :cond_1

    .line 9
    .line 10
    const-string p0, "IFACE_MODE_SOFTAP"

    .line 11
    .line 12
    return-object p0

    .line 13
    :cond_1
    const/4 v0, 0x4

    .line 14
    if-ne p0, v0, :cond_2

    .line 15
    .line 16
    const-string p0, "IFACE_MODE_IBSS"

    .line 17
    .line 18
    return-object p0

    .line 19
    :cond_2
    const/16 v0, 0x8

    .line 20
    .line 21
    if-ne p0, v0, :cond_3

    .line 22
    .line 23
    const-string p0, "IFACE_MODE_P2P_CLIENT"

    .line 24
    .line 25
    return-object p0

    .line 26
    :cond_3
    const/16 v0, 0x10

    .line 27
    .line 28
    if-ne p0, v0, :cond_4

    .line 29
    .line 30
    const-string p0, "IFACE_MODE_P2P_GO"

    .line 31
    .line 32
    return-object p0

    .line 33
    :cond_4
    const/16 v0, 0x20

    .line 34
    .line 35
    if-ne p0, v0, :cond_5

    .line 36
    .line 37
    const-string p0, "IFACE_MODE_NAN"

    .line 38
    .line 39
    return-object p0

    .line 40
    :cond_5
    const/16 v0, 0x40

    .line 41
    .line 42
    if-ne p0, v0, :cond_6

    .line 43
    .line 44
    const-string p0, "IFACE_MODE_MESH"

    .line 45
    .line 46
    return-object p0

    .line 47
    :cond_6
    const/16 v0, 0x80

    .line 48
    .line 49
    if-ne p0, v0, :cond_7

    .line 50
    .line 51
    const-string p0, "IFACE_MODE_TDLS"

    .line 52
    .line 53
    return-object p0

    .line 54
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    .line 55
    .line 56
    const-string v1, "0x"

    .line 57
    .line 58
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    invoke-static {v0, p0}, Lcom/samsung/android/server/wifi/ap/SemDhcpPacket$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;I)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object p0

    .line 65
    return-object p0
.end method
