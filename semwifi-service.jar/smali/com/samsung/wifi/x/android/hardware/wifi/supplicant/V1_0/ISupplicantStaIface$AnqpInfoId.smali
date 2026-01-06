.class public final Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIface$AnqpInfoId;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AnqpInfoId"
.end annotation


# static fields
.field public static final ANQP_3GPP_CELLULAR_NETWORK:S = 0x108s

.field public static final DOMAIN_NAME:S = 0x10cs

.field public static final IP_ADDR_TYPE_AVAILABILITY:S = 0x106s

.field public static final NAI_REALM:S = 0x107s

.field public static final ROAMING_CONSORTIUM:S = 0x105s

.field public static final VENUE_NAME:S = 0x102s


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

.method public static final dumpBitfield(S)Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    and-int/lit16 v1, p0, 0x102

    .line 7
    .line 8
    const/16 v2, 0x102

    .line 9
    .line 10
    if-ne v1, v2, :cond_0

    .line 11
    .line 12
    const-string v1, "VENUE_NAME"

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    int-to-short v1, v2

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 v1, 0x0

    .line 20
    :goto_0
    and-int/lit16 v2, p0, 0x105

    .line 21
    .line 22
    const/16 v3, 0x105

    .line 23
    .line 24
    if-ne v2, v3, :cond_1

    .line 25
    .line 26
    const-string v2, "ROAMING_CONSORTIUM"

    .line 27
    .line 28
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    or-int/lit16 v1, v1, 0x105

    .line 32
    .line 33
    int-to-short v1, v1

    .line 34
    :cond_1
    and-int/lit16 v2, p0, 0x106

    .line 35
    .line 36
    const/16 v3, 0x106

    .line 37
    .line 38
    if-ne v2, v3, :cond_2

    .line 39
    .line 40
    const-string v2, "IP_ADDR_TYPE_AVAILABILITY"

    .line 41
    .line 42
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    or-int/lit16 v1, v1, 0x106

    .line 46
    .line 47
    int-to-short v1, v1

    .line 48
    :cond_2
    and-int/lit16 v2, p0, 0x107

    .line 49
    .line 50
    const/16 v3, 0x107

    .line 51
    .line 52
    if-ne v2, v3, :cond_3

    .line 53
    .line 54
    const-string v2, "NAI_REALM"

    .line 55
    .line 56
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    or-int/lit16 v1, v1, 0x107

    .line 60
    .line 61
    int-to-short v1, v1

    .line 62
    :cond_3
    and-int/lit16 v2, p0, 0x108

    .line 63
    .line 64
    const/16 v3, 0x108

    .line 65
    .line 66
    if-ne v2, v3, :cond_4

    .line 67
    .line 68
    const-string v2, "ANQP_3GPP_CELLULAR_NETWORK"

    .line 69
    .line 70
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 71
    .line 72
    .line 73
    or-int/lit16 v1, v1, 0x108

    .line 74
    .line 75
    int-to-short v1, v1

    .line 76
    :cond_4
    and-int/lit16 v2, p0, 0x10c

    .line 77
    .line 78
    const/16 v3, 0x10c

    .line 79
    .line 80
    if-ne v2, v3, :cond_5

    .line 81
    .line 82
    const-string v2, "DOMAIN_NAME"

    .line 83
    .line 84
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 85
    .line 86
    .line 87
    or-int/lit16 v1, v1, 0x10c

    .line 88
    .line 89
    int-to-short v1, v1

    .line 90
    :cond_5
    if-eq p0, v1, :cond_6

    .line 91
    .line 92
    new-instance v2, Ljava/lang/StringBuilder;

    .line 93
    .line 94
    const-string v3, "0x"

    .line 95
    .line 96
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    not-int v1, v1

    .line 100
    and-int/2addr p0, v1

    .line 101
    int-to-short p0, p0

    .line 102
    invoke-static {p0}, Ljava/lang/Short;->toUnsignedInt(S)I

    .line 103
    .line 104
    .line 105
    move-result p0

    .line 106
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object p0

    .line 110
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object p0

    .line 117
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 118
    .line 119
    .line 120
    :cond_6
    const-string p0, " | "

    .line 121
    .line 122
    invoke-static {p0, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object p0

    .line 126
    return-object p0
.end method

.method public static final toString(S)Ljava/lang/String;
    .locals 2

    .line 1
    const/16 v0, 0x102

    .line 2
    .line 3
    if-ne p0, v0, :cond_0

    .line 4
    .line 5
    const-string p0, "VENUE_NAME"

    .line 6
    .line 7
    return-object p0

    .line 8
    :cond_0
    const/16 v0, 0x105

    .line 9
    .line 10
    if-ne p0, v0, :cond_1

    .line 11
    .line 12
    const-string p0, "ROAMING_CONSORTIUM"

    .line 13
    .line 14
    return-object p0

    .line 15
    :cond_1
    const/16 v0, 0x106

    .line 16
    .line 17
    if-ne p0, v0, :cond_2

    .line 18
    .line 19
    const-string p0, "IP_ADDR_TYPE_AVAILABILITY"

    .line 20
    .line 21
    return-object p0

    .line 22
    :cond_2
    const/16 v0, 0x107

    .line 23
    .line 24
    if-ne p0, v0, :cond_3

    .line 25
    .line 26
    const-string p0, "NAI_REALM"

    .line 27
    .line 28
    return-object p0

    .line 29
    :cond_3
    const/16 v0, 0x108

    .line 30
    .line 31
    if-ne p0, v0, :cond_4

    .line 32
    .line 33
    const-string p0, "ANQP_3GPP_CELLULAR_NETWORK"

    .line 34
    .line 35
    return-object p0

    .line 36
    :cond_4
    const/16 v0, 0x10c

    .line 37
    .line 38
    if-ne p0, v0, :cond_5

    .line 39
    .line 40
    const-string p0, "DOMAIN_NAME"

    .line 41
    .line 42
    return-object p0

    .line 43
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 44
    .line 45
    const-string v1, "0x"

    .line 46
    .line 47
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    invoke-static {p0}, Ljava/lang/Short;->toUnsignedInt(S)I

    .line 51
    .line 52
    .line 53
    move-result p0

    .line 54
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object p0

    .line 58
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object p0

    .line 65
    return-object p0
.end method
