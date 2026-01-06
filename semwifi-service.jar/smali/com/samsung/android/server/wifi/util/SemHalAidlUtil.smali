.class public Lcom/samsung/android/server/wifi/util/SemHalAidlUtil;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


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

.method private static supplicantMaskValueToWifiConfigurationBitSet(IILjava/util/BitSet;I)I
    .locals 1

    .line 1
    and-int v0, p0, p1

    .line 2
    .line 3
    if-ne v0, p1, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    :goto_0
    invoke-virtual {p2, p3, v0}, Ljava/util/BitSet;->set(IZ)V

    .line 9
    .line 10
    .line 11
    not-int p1, p1

    .line 12
    and-int/2addr p0, p1

    .line 13
    return p0
.end method

.method public static supplicantToWifiConfigurationKeyMgmtMask(I)Ljava/util/BitSet;
    .locals 4

    .line 1
    new-instance v0, Ljava/util/BitSet;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x4

    .line 7
    const/4 v2, 0x0

    .line 8
    invoke-static {p0, v1, v0, v2}, Lcom/samsung/android/server/wifi/util/SemHalAidlUtil;->supplicantMaskValueToWifiConfigurationBitSet(IILjava/util/BitSet;I)I

    .line 9
    .line 10
    .line 11
    move-result p0

    .line 12
    const/4 v1, 0x2

    .line 13
    const/4 v2, 0x1

    .line 14
    invoke-static {p0, v1, v0, v2}, Lcom/samsung/android/server/wifi/util/SemHalAidlUtil;->supplicantMaskValueToWifiConfigurationBitSet(IILjava/util/BitSet;I)I

    .line 15
    .line 16
    .line 17
    move-result p0

    .line 18
    invoke-static {p0, v2, v0, v1}, Lcom/samsung/android/server/wifi/util/SemHalAidlUtil;->supplicantMaskValueToWifiConfigurationBitSet(IILjava/util/BitSet;I)I

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    const/4 v1, 0x3

    .line 23
    const/16 v2, 0x8

    .line 24
    .line 25
    invoke-static {p0, v2, v0, v1}, Lcom/samsung/android/server/wifi/util/SemHalAidlUtil;->supplicantMaskValueToWifiConfigurationBitSet(IILjava/util/BitSet;I)I

    .line 26
    .line 27
    .line 28
    move-result p0

    .line 29
    const v1, 0x8000

    .line 30
    .line 31
    .line 32
    const/4 v3, 0x5

    .line 33
    invoke-static {p0, v1, v0, v3}, Lcom/samsung/android/server/wifi/util/SemHalAidlUtil;->supplicantMaskValueToWifiConfigurationBitSet(IILjava/util/BitSet;I)I

    .line 34
    .line 35
    .line 36
    move-result p0

    .line 37
    const/16 v1, 0x40

    .line 38
    .line 39
    const/4 v3, 0x6

    .line 40
    invoke-static {p0, v1, v0, v3}, Lcom/samsung/android/server/wifi/util/SemHalAidlUtil;->supplicantMaskValueToWifiConfigurationBitSet(IILjava/util/BitSet;I)I

    .line 41
    .line 42
    .line 43
    move-result p0

    .line 44
    const/16 v1, 0x20

    .line 45
    .line 46
    const/4 v3, 0x7

    .line 47
    invoke-static {p0, v1, v0, v3}, Lcom/samsung/android/server/wifi/util/SemHalAidlUtil;->supplicantMaskValueToWifiConfigurationBitSet(IILjava/util/BitSet;I)I

    .line 48
    .line 49
    .line 50
    move-result p0

    .line 51
    const/16 v1, 0x400

    .line 52
    .line 53
    invoke-static {p0, v1, v0, v2}, Lcom/samsung/android/server/wifi/util/SemHalAidlUtil;->supplicantMaskValueToWifiConfigurationBitSet(IILjava/util/BitSet;I)I

    .line 54
    .line 55
    .line 56
    move-result p0

    .line 57
    const/high16 v1, 0x400000

    .line 58
    .line 59
    const/16 v2, 0x9

    .line 60
    .line 61
    invoke-static {p0, v1, v0, v2}, Lcom/samsung/android/server/wifi/util/SemHalAidlUtil;->supplicantMaskValueToWifiConfigurationBitSet(IILjava/util/BitSet;I)I

    .line 62
    .line 63
    .line 64
    move-result p0

    .line 65
    const/high16 v1, 0x20000

    .line 66
    .line 67
    const/16 v2, 0xa

    .line 68
    .line 69
    invoke-static {p0, v1, v0, v2}, Lcom/samsung/android/server/wifi/util/SemHalAidlUtil;->supplicantMaskValueToWifiConfigurationBitSet(IILjava/util/BitSet;I)I

    .line 70
    .line 71
    .line 72
    move-result p0

    .line 73
    const/16 v1, 0x100

    .line 74
    .line 75
    const/16 v2, 0xb

    .line 76
    .line 77
    invoke-static {p0, v1, v0, v2}, Lcom/samsung/android/server/wifi/util/SemHalAidlUtil;->supplicantMaskValueToWifiConfigurationBitSet(IILjava/util/BitSet;I)I

    .line 78
    .line 79
    .line 80
    move-result p0

    .line 81
    const/16 v1, 0x80

    .line 82
    .line 83
    const/16 v2, 0xc

    .line 84
    .line 85
    invoke-static {p0, v1, v0, v2}, Lcom/samsung/android/server/wifi/util/SemHalAidlUtil;->supplicantMaskValueToWifiConfigurationBitSet(IILjava/util/BitSet;I)I

    .line 86
    .line 87
    .line 88
    move-result p0

    .line 89
    const/16 v1, 0x1000

    .line 90
    .line 91
    const/16 v2, 0xd

    .line 92
    .line 93
    invoke-static {p0, v1, v0, v2}, Lcom/samsung/android/server/wifi/util/SemHalAidlUtil;->supplicantMaskValueToWifiConfigurationBitSet(IILjava/util/BitSet;I)I

    .line 94
    .line 95
    .line 96
    move-result p0

    .line 97
    const/16 v1, 0x2000

    .line 98
    .line 99
    const/16 v2, 0xe

    .line 100
    .line 101
    invoke-static {p0, v1, v0, v2}, Lcom/samsung/android/server/wifi/util/SemHalAidlUtil;->supplicantMaskValueToWifiConfigurationBitSet(IILjava/util/BitSet;I)I

    .line 102
    .line 103
    .line 104
    move-result p0

    .line 105
    const/high16 v1, 0x40000

    .line 106
    .line 107
    const/16 v2, 0xf

    .line 108
    .line 109
    invoke-static {p0, v1, v0, v2}, Lcom/samsung/android/server/wifi/util/SemHalAidlUtil;->supplicantMaskValueToWifiConfigurationBitSet(IILjava/util/BitSet;I)I

    .line 110
    .line 111
    .line 112
    move-result p0

    .line 113
    const/high16 v1, 0x80000

    .line 114
    .line 115
    const/16 v2, 0x10

    .line 116
    .line 117
    invoke-static {p0, v1, v0, v2}, Lcom/samsung/android/server/wifi/util/SemHalAidlUtil;->supplicantMaskValueToWifiConfigurationBitSet(IILjava/util/BitSet;I)I

    .line 118
    .line 119
    .line 120
    move-result p0

    .line 121
    const/high16 v1, 0x800000

    .line 122
    .line 123
    const/16 v2, 0x11

    .line 124
    .line 125
    invoke-static {p0, v1, v0, v2}, Lcom/samsung/android/server/wifi/util/SemHalAidlUtil;->supplicantMaskValueToWifiConfigurationBitSet(IILjava/util/BitSet;I)I

    .line 126
    .line 127
    .line 128
    move-result p0

    .line 129
    if-nez p0, :cond_0

    .line 130
    .line 131
    return-object v0

    .line 132
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 133
    .line 134
    const-string v1, "invalid key mgmt mask from supplicant: "

    .line 135
    .line 136
    invoke-static {p0, v1}, Lcom/samsung/android/mcf/continuity/common/VersionUtil$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object p0

    .line 140
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 141
    .line 142
    .line 143
    throw v0
.end method
