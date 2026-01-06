.class public final Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_3/ISupplicantStaIfaceCallback$MboTransitionReasonCode;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_3/ISupplicantStaIfaceCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MboTransitionReasonCode"
.end annotation


# static fields
.field public static final EXCESSIVE_FRAME_LOSS:B = 0x1t

.field public static final EXCESSIVE_TRAFFIC_DELAY:B = 0x2t

.field public static final GRAY_ZONE:B = 0x8t

.field public static final HIGH_INTERFERENCE:B = 0x7t

.field public static final INSUFFICIENT_BANDWIDTH:B = 0x3t

.field public static final LOAD_BALANCING:B = 0x4t

.field public static final LOW_RSSI:B = 0x5t

.field public static final RX_EXCESSIVE_RETRIES:B = 0x6t

.field public static final TRANSITION_TO_PREMIUM_AP:B = 0x9t

.field public static final UNSPECIFIED:B


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

.method public static final dumpBitfield(B)Ljava/lang/String;
    .locals 4

    .line 1
    const-string v0, "UNSPECIFIED"

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
    const-string v1, "EXCESSIVE_FRAME_LOSS"

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    int-to-byte v1, v2

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 v1, 0x0

    .line 20
    :goto_0
    and-int/lit8 v2, p0, 0x2

    .line 21
    .line 22
    const/4 v3, 0x2

    .line 23
    if-ne v2, v3, :cond_1

    .line 24
    .line 25
    const-string v2, "EXCESSIVE_TRAFFIC_DELAY"

    .line 26
    .line 27
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    or-int/lit8 v1, v1, 0x2

    .line 31
    .line 32
    int-to-byte v1, v1

    .line 33
    :cond_1
    and-int/lit8 v2, p0, 0x3

    .line 34
    .line 35
    const/4 v3, 0x3

    .line 36
    if-ne v2, v3, :cond_2

    .line 37
    .line 38
    const-string v2, "INSUFFICIENT_BANDWIDTH"

    .line 39
    .line 40
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    or-int/lit8 v1, v1, 0x3

    .line 44
    .line 45
    int-to-byte v1, v1

    .line 46
    :cond_2
    and-int/lit8 v2, p0, 0x4

    .line 47
    .line 48
    const/4 v3, 0x4

    .line 49
    if-ne v2, v3, :cond_3

    .line 50
    .line 51
    const-string v2, "LOAD_BALANCING"

    .line 52
    .line 53
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    or-int/lit8 v1, v1, 0x4

    .line 57
    .line 58
    int-to-byte v1, v1

    .line 59
    :cond_3
    and-int/lit8 v2, p0, 0x5

    .line 60
    .line 61
    const/4 v3, 0x5

    .line 62
    if-ne v2, v3, :cond_4

    .line 63
    .line 64
    const-string v2, "LOW_RSSI"

    .line 65
    .line 66
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 67
    .line 68
    .line 69
    or-int/lit8 v1, v1, 0x5

    .line 70
    .line 71
    int-to-byte v1, v1

    .line 72
    :cond_4
    and-int/lit8 v2, p0, 0x6

    .line 73
    .line 74
    const/4 v3, 0x6

    .line 75
    if-ne v2, v3, :cond_5

    .line 76
    .line 77
    const-string v2, "RX_EXCESSIVE_RETRIES"

    .line 78
    .line 79
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 80
    .line 81
    .line 82
    or-int/lit8 v1, v1, 0x6

    .line 83
    .line 84
    int-to-byte v1, v1

    .line 85
    :cond_5
    and-int/lit8 v2, p0, 0x7

    .line 86
    .line 87
    const/4 v3, 0x7

    .line 88
    if-ne v2, v3, :cond_6

    .line 89
    .line 90
    const-string v2, "HIGH_INTERFERENCE"

    .line 91
    .line 92
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 93
    .line 94
    .line 95
    or-int/lit8 v1, v1, 0x7

    .line 96
    .line 97
    int-to-byte v1, v1

    .line 98
    :cond_6
    and-int/lit8 v2, p0, 0x8

    .line 99
    .line 100
    const/16 v3, 0x8

    .line 101
    .line 102
    if-ne v2, v3, :cond_7

    .line 103
    .line 104
    const-string v2, "GRAY_ZONE"

    .line 105
    .line 106
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 107
    .line 108
    .line 109
    or-int/lit8 v1, v1, 0x8

    .line 110
    .line 111
    int-to-byte v1, v1

    .line 112
    :cond_7
    and-int/lit8 v2, p0, 0x9

    .line 113
    .line 114
    const/16 v3, 0x9

    .line 115
    .line 116
    if-ne v2, v3, :cond_8

    .line 117
    .line 118
    const-string v2, "TRANSITION_TO_PREMIUM_AP"

    .line 119
    .line 120
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 121
    .line 122
    .line 123
    or-int/lit8 v1, v1, 0x9

    .line 124
    .line 125
    int-to-byte v1, v1

    .line 126
    :cond_8
    if-eq p0, v1, :cond_9

    .line 127
    .line 128
    new-instance v2, Ljava/lang/StringBuilder;

    .line 129
    .line 130
    const-string v3, "0x"

    .line 131
    .line 132
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 133
    .line 134
    .line 135
    not-int v1, v1

    .line 136
    and-int/2addr p0, v1

    .line 137
    int-to-byte p0, p0

    .line 138
    invoke-static {p0}, Ljava/lang/Byte;->toUnsignedInt(B)I

    .line 139
    .line 140
    .line 141
    move-result p0

    .line 142
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object p0

    .line 146
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    .line 148
    .line 149
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object p0

    .line 153
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 154
    .line 155
    .line 156
    :cond_9
    const-string p0, " | "

    .line 157
    .line 158
    invoke-static {p0, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object p0

    .line 162
    return-object p0
.end method

.method public static final toString(B)Ljava/lang/String;
    .locals 2

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    const-string p0, "UNSPECIFIED"

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
    const-string p0, "EXCESSIVE_FRAME_LOSS"

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
    const-string p0, "EXCESSIVE_TRAFFIC_DELAY"

    .line 16
    .line 17
    return-object p0

    .line 18
    :cond_2
    const/4 v0, 0x3

    .line 19
    if-ne p0, v0, :cond_3

    .line 20
    .line 21
    const-string p0, "INSUFFICIENT_BANDWIDTH"

    .line 22
    .line 23
    return-object p0

    .line 24
    :cond_3
    const/4 v0, 0x4

    .line 25
    if-ne p0, v0, :cond_4

    .line 26
    .line 27
    const-string p0, "LOAD_BALANCING"

    .line 28
    .line 29
    return-object p0

    .line 30
    :cond_4
    const/4 v0, 0x5

    .line 31
    if-ne p0, v0, :cond_5

    .line 32
    .line 33
    const-string p0, "LOW_RSSI"

    .line 34
    .line 35
    return-object p0

    .line 36
    :cond_5
    const/4 v0, 0x6

    .line 37
    if-ne p0, v0, :cond_6

    .line 38
    .line 39
    const-string p0, "RX_EXCESSIVE_RETRIES"

    .line 40
    .line 41
    return-object p0

    .line 42
    :cond_6
    const/4 v0, 0x7

    .line 43
    if-ne p0, v0, :cond_7

    .line 44
    .line 45
    const-string p0, "HIGH_INTERFERENCE"

    .line 46
    .line 47
    return-object p0

    .line 48
    :cond_7
    const/16 v0, 0x8

    .line 49
    .line 50
    if-ne p0, v0, :cond_8

    .line 51
    .line 52
    const-string p0, "GRAY_ZONE"

    .line 53
    .line 54
    return-object p0

    .line 55
    :cond_8
    const/16 v0, 0x9

    .line 56
    .line 57
    if-ne p0, v0, :cond_9

    .line 58
    .line 59
    const-string p0, "TRANSITION_TO_PREMIUM_AP"

    .line 60
    .line 61
    return-object p0

    .line 62
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    .line 63
    .line 64
    const-string v1, "0x"

    .line 65
    .line 66
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    invoke-static {p0}, Ljava/lang/Byte;->toUnsignedInt(B)I

    .line 70
    .line 71
    .line 72
    move-result p0

    .line 73
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object p0

    .line 77
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object p0

    .line 84
    return-object p0
.end method
