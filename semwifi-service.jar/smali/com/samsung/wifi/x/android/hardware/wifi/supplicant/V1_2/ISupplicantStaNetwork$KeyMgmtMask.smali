.class public final Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantStaNetwork$KeyMgmtMask;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantStaNetwork;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "KeyMgmtMask"
.end annotation


# static fields
.field public static final DPP:I = 0x800000

.field public static final FT_EAP:I = 0x20

.field public static final FT_PSK:I = 0x40

.field public static final IEEE8021X:I = 0x8

.field public static final NONE:I = 0x4

.field public static final OSEN:I = 0x8000

.field public static final OWE:I = 0x400000

.field public static final SAE:I = 0x400

.field public static final SUITE_B_192:I = 0x20000

.field public static final WPA_EAP:I = 0x1

.field public static final WPA_EAP_SHA256:I = 0x80

.field public static final WPA_PSK:I = 0x2

.field public static final WPA_PSK_SHA256:I = 0x100


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
    const-string v1, "WPA_EAP"

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
    const-string v1, "WPA_PSK"

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
    const-string v1, "NONE"

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
    const-string v1, "IEEE8021X"

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
    and-int/lit8 v1, p0, 0x20

    .line 56
    .line 57
    const/16 v3, 0x20

    .line 58
    .line 59
    if-ne v1, v3, :cond_4

    .line 60
    .line 61
    const-string v1, "FT_EAP"

    .line 62
    .line 63
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    or-int/lit8 v2, v2, 0x20

    .line 67
    .line 68
    :cond_4
    and-int/lit8 v1, p0, 0x40

    .line 69
    .line 70
    const/16 v3, 0x40

    .line 71
    .line 72
    if-ne v1, v3, :cond_5

    .line 73
    .line 74
    const-string v1, "FT_PSK"

    .line 75
    .line 76
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 77
    .line 78
    .line 79
    or-int/lit8 v2, v2, 0x40

    .line 80
    .line 81
    :cond_5
    const v1, 0x8000

    .line 82
    .line 83
    .line 84
    and-int v3, p0, v1

    .line 85
    .line 86
    if-ne v3, v1, :cond_6

    .line 87
    .line 88
    const-string v3, "OSEN"

    .line 89
    .line 90
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 91
    .line 92
    .line 93
    or-int/2addr v2, v1

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
    const-string v1, "WPA_EAP_SHA256"

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
    and-int/lit16 v1, p0, 0x100

    .line 108
    .line 109
    const/16 v3, 0x100

    .line 110
    .line 111
    if-ne v1, v3, :cond_8

    .line 112
    .line 113
    const-string v1, "WPA_PSK_SHA256"

    .line 114
    .line 115
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 116
    .line 117
    .line 118
    or-int/lit16 v2, v2, 0x100

    .line 119
    .line 120
    :cond_8
    and-int/lit16 v1, p0, 0x400

    .line 121
    .line 122
    const/16 v3, 0x400

    .line 123
    .line 124
    if-ne v1, v3, :cond_9

    .line 125
    .line 126
    const-string v1, "SAE"

    .line 127
    .line 128
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 129
    .line 130
    .line 131
    or-int/lit16 v2, v2, 0x400

    .line 132
    .line 133
    :cond_9
    const/high16 v1, 0x20000

    .line 134
    .line 135
    and-int v3, p0, v1

    .line 136
    .line 137
    if-ne v3, v1, :cond_a

    .line 138
    .line 139
    const-string v3, "SUITE_B_192"

    .line 140
    .line 141
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 142
    .line 143
    .line 144
    or-int/2addr v2, v1

    .line 145
    :cond_a
    const/high16 v1, 0x400000

    .line 146
    .line 147
    and-int v3, p0, v1

    .line 148
    .line 149
    if-ne v3, v1, :cond_b

    .line 150
    .line 151
    const-string v3, "OWE"

    .line 152
    .line 153
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 154
    .line 155
    .line 156
    or-int/2addr v2, v1

    .line 157
    :cond_b
    const/high16 v1, 0x800000

    .line 158
    .line 159
    and-int v3, p0, v1

    .line 160
    .line 161
    if-ne v3, v1, :cond_c

    .line 162
    .line 163
    const-string v3, "DPP"

    .line 164
    .line 165
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 166
    .line 167
    .line 168
    or-int/2addr v2, v1

    .line 169
    :cond_c
    if-eq p0, v2, :cond_d

    .line 170
    .line 171
    new-instance v1, Ljava/lang/StringBuilder;

    .line 172
    .line 173
    const-string v3, "0x"

    .line 174
    .line 175
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 176
    .line 177
    .line 178
    not-int v2, v2

    .line 179
    and-int/2addr p0, v2

    .line 180
    invoke-static {p0, v1, v0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip$Stub$$ExternalSyntheticOutline0;->m(ILjava/lang/StringBuilder;Ljava/util/ArrayList;)V

    .line 181
    .line 182
    .line 183
    :cond_d
    const-string p0, " | "

    .line 184
    .line 185
    invoke-static {p0, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    .line 186
    .line 187
    .line 188
    move-result-object p0

    .line 189
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
    const-string p0, "WPA_EAP"

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
    const-string p0, "WPA_PSK"

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
    const-string p0, "NONE"

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
    const-string p0, "IEEE8021X"

    .line 24
    .line 25
    return-object p0

    .line 26
    :cond_3
    const/16 v0, 0x20

    .line 27
    .line 28
    if-ne p0, v0, :cond_4

    .line 29
    .line 30
    const-string p0, "FT_EAP"

    .line 31
    .line 32
    return-object p0

    .line 33
    :cond_4
    const/16 v0, 0x40

    .line 34
    .line 35
    if-ne p0, v0, :cond_5

    .line 36
    .line 37
    const-string p0, "FT_PSK"

    .line 38
    .line 39
    return-object p0

    .line 40
    :cond_5
    const v0, 0x8000

    .line 41
    .line 42
    .line 43
    if-ne p0, v0, :cond_6

    .line 44
    .line 45
    const-string p0, "OSEN"

    .line 46
    .line 47
    return-object p0

    .line 48
    :cond_6
    const/16 v0, 0x80

    .line 49
    .line 50
    if-ne p0, v0, :cond_7

    .line 51
    .line 52
    const-string p0, "WPA_EAP_SHA256"

    .line 53
    .line 54
    return-object p0

    .line 55
    :cond_7
    const/16 v0, 0x100

    .line 56
    .line 57
    if-ne p0, v0, :cond_8

    .line 58
    .line 59
    const-string p0, "WPA_PSK_SHA256"

    .line 60
    .line 61
    return-object p0

    .line 62
    :cond_8
    const/16 v0, 0x400

    .line 63
    .line 64
    if-ne p0, v0, :cond_9

    .line 65
    .line 66
    const-string p0, "SAE"

    .line 67
    .line 68
    return-object p0

    .line 69
    :cond_9
    const/high16 v0, 0x20000

    .line 70
    .line 71
    if-ne p0, v0, :cond_a

    .line 72
    .line 73
    const-string p0, "SUITE_B_192"

    .line 74
    .line 75
    return-object p0

    .line 76
    :cond_a
    const/high16 v0, 0x400000

    .line 77
    .line 78
    if-ne p0, v0, :cond_b

    .line 79
    .line 80
    const-string p0, "OWE"

    .line 81
    .line 82
    return-object p0

    .line 83
    :cond_b
    const/high16 v0, 0x800000

    .line 84
    .line 85
    if-ne p0, v0, :cond_c

    .line 86
    .line 87
    const-string p0, "DPP"

    .line 88
    .line 89
    return-object p0

    .line 90
    :cond_c
    new-instance v0, Ljava/lang/StringBuilder;

    .line 91
    .line 92
    const-string v1, "0x"

    .line 93
    .line 94
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    invoke-static {v0, p0}, Lcom/samsung/android/server/wifi/ap/SemDhcpPacket$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;I)Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object p0

    .line 101
    return-object p0
.end method
