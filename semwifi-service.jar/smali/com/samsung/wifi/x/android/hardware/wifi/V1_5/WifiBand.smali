.class public final Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/WifiBand;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# static fields
.field public static final BAND_24GHZ:I = 0x1

.field public static final BAND_24GHZ_5GHZ:I = 0x3

.field public static final BAND_24GHZ_5GHZ_6GHZ:I = 0xb

.field public static final BAND_24GHZ_5GHZ_6GHZ_60GHZ:I = 0x1b

.field public static final BAND_24GHZ_5GHZ_WITH_DFS:I = 0x7

.field public static final BAND_24GHZ_5GHZ_WITH_DFS_6GHZ:I = 0xf

.field public static final BAND_24GHZ_5GHZ_WITH_DFS_6GHZ_60GHZ:I = 0x1f

.field public static final BAND_5GHZ:I = 0x2

.field public static final BAND_5GHZ_6GHZ:I = 0xa

.field public static final BAND_5GHZ_DFS:I = 0x4

.field public static final BAND_5GHZ_WITH_DFS:I = 0x6

.field public static final BAND_60GHZ:I = 0x10

.field public static final BAND_6GHZ:I = 0x8

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
    and-int/lit8 v1, p0, 0x8

    .line 79
    .line 80
    const/16 v3, 0x8

    .line 81
    .line 82
    if-ne v1, v3, :cond_6

    .line 83
    .line 84
    const-string v1, "BAND_6GHZ"

    .line 85
    .line 86
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 87
    .line 88
    .line 89
    or-int/lit8 v2, v2, 0x8

    .line 90
    .line 91
    :cond_6
    and-int/lit8 v1, p0, 0xa

    .line 92
    .line 93
    const/16 v3, 0xa

    .line 94
    .line 95
    if-ne v1, v3, :cond_7

    .line 96
    .line 97
    const-string v1, "BAND_5GHZ_6GHZ"

    .line 98
    .line 99
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 100
    .line 101
    .line 102
    or-int/lit8 v2, v2, 0xa

    .line 103
    .line 104
    :cond_7
    and-int/lit8 v1, p0, 0xb

    .line 105
    .line 106
    const/16 v3, 0xb

    .line 107
    .line 108
    if-ne v1, v3, :cond_8

    .line 109
    .line 110
    const-string v1, "BAND_24GHZ_5GHZ_6GHZ"

    .line 111
    .line 112
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 113
    .line 114
    .line 115
    or-int/lit8 v2, v2, 0xb

    .line 116
    .line 117
    :cond_8
    and-int/lit8 v1, p0, 0xf

    .line 118
    .line 119
    const/16 v3, 0xf

    .line 120
    .line 121
    if-ne v1, v3, :cond_9

    .line 122
    .line 123
    const-string v1, "BAND_24GHZ_5GHZ_WITH_DFS_6GHZ"

    .line 124
    .line 125
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 126
    .line 127
    .line 128
    move v2, v3

    .line 129
    :cond_9
    and-int/lit8 v1, p0, 0x10

    .line 130
    .line 131
    const/16 v3, 0x10

    .line 132
    .line 133
    if-ne v1, v3, :cond_a

    .line 134
    .line 135
    const-string v1, "BAND_60GHZ"

    .line 136
    .line 137
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 138
    .line 139
    .line 140
    or-int/lit8 v2, v2, 0x10

    .line 141
    .line 142
    :cond_a
    and-int/lit8 v1, p0, 0x1b

    .line 143
    .line 144
    const/16 v3, 0x1b

    .line 145
    .line 146
    if-ne v1, v3, :cond_b

    .line 147
    .line 148
    const-string v1, "BAND_24GHZ_5GHZ_6GHZ_60GHZ"

    .line 149
    .line 150
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 151
    .line 152
    .line 153
    or-int/lit8 v2, v2, 0x1b

    .line 154
    .line 155
    :cond_b
    and-int/lit8 v1, p0, 0x1f

    .line 156
    .line 157
    const/16 v3, 0x1f

    .line 158
    .line 159
    if-ne v1, v3, :cond_c

    .line 160
    .line 161
    const-string v1, "BAND_24GHZ_5GHZ_WITH_DFS_6GHZ_60GHZ"

    .line 162
    .line 163
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 164
    .line 165
    .line 166
    move v2, v3

    .line 167
    :cond_c
    if-eq p0, v2, :cond_d

    .line 168
    .line 169
    new-instance v1, Ljava/lang/StringBuilder;

    .line 170
    .line 171
    const-string v3, "0x"

    .line 172
    .line 173
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 174
    .line 175
    .line 176
    not-int v2, v2

    .line 177
    and-int/2addr p0, v2

    .line 178
    invoke-static {p0, v1, v0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip$Stub$$ExternalSyntheticOutline0;->m(ILjava/lang/StringBuilder;Ljava/util/ArrayList;)V

    .line 179
    .line 180
    .line 181
    :cond_d
    const-string p0, " | "

    .line 182
    .line 183
    invoke-static {p0, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    move-result-object p0

    .line 187
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
    const/16 v0, 0x8

    .line 43
    .line 44
    if-ne p0, v0, :cond_7

    .line 45
    .line 46
    const-string p0, "BAND_6GHZ"

    .line 47
    .line 48
    return-object p0

    .line 49
    :cond_7
    const/16 v0, 0xa

    .line 50
    .line 51
    if-ne p0, v0, :cond_8

    .line 52
    .line 53
    const-string p0, "BAND_5GHZ_6GHZ"

    .line 54
    .line 55
    return-object p0

    .line 56
    :cond_8
    const/16 v0, 0xb

    .line 57
    .line 58
    if-ne p0, v0, :cond_9

    .line 59
    .line 60
    const-string p0, "BAND_24GHZ_5GHZ_6GHZ"

    .line 61
    .line 62
    return-object p0

    .line 63
    :cond_9
    const/16 v0, 0xf

    .line 64
    .line 65
    if-ne p0, v0, :cond_a

    .line 66
    .line 67
    const-string p0, "BAND_24GHZ_5GHZ_WITH_DFS_6GHZ"

    .line 68
    .line 69
    return-object p0

    .line 70
    :cond_a
    const/16 v0, 0x10

    .line 71
    .line 72
    if-ne p0, v0, :cond_b

    .line 73
    .line 74
    const-string p0, "BAND_60GHZ"

    .line 75
    .line 76
    return-object p0

    .line 77
    :cond_b
    const/16 v0, 0x1b

    .line 78
    .line 79
    if-ne p0, v0, :cond_c

    .line 80
    .line 81
    const-string p0, "BAND_24GHZ_5GHZ_6GHZ_60GHZ"

    .line 82
    .line 83
    return-object p0

    .line 84
    :cond_c
    const/16 v0, 0x1f

    .line 85
    .line 86
    if-ne p0, v0, :cond_d

    .line 87
    .line 88
    const-string p0, "BAND_24GHZ_5GHZ_WITH_DFS_6GHZ_60GHZ"

    .line 89
    .line 90
    return-object p0

    .line 91
    :cond_d
    new-instance v0, Ljava/lang/StringBuilder;

    .line 92
    .line 93
    const-string v1, "0x"

    .line 94
    .line 95
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    invoke-static {v0, p0}, Lcom/samsung/android/server/wifi/ap/SemDhcpPacket$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;I)Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object p0

    .line 102
    return-object p0
.end method
