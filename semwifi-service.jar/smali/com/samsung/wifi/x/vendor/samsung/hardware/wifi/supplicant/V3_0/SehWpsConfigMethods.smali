.class public final Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_0/SehWpsConfigMethods;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# static fields
.field public static final DISPLAY:S = 0x8s

.field public static final ETHERNET:S = 0x2s

.field public static final EXT_NFC_TOKEN:S = 0x10s

.field public static final INT_NFC_TOKEN:S = 0x20s

.field public static final KEYPAD:S = 0x100s

.field public static final LABEL:S = 0x4s

.field public static final NFC_INTERFACE:S = 0x40s

.field public static final P2PS:S = 0x1000s

.field public static final PHY_DISPLAY:S = 0x4008s

.field public static final PHY_PUSHBUTTON:S = 0x480s

.field public static final PUSHBUTTON:S = 0x80s

.field public static final USBA:S = 0x1s

.field public static final VIRT_DISPLAY:S = 0x2008s

.field public static final VIRT_PUSHBUTTON:S = 0x280s


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
    and-int/lit8 v1, p0, 0x1

    .line 7
    .line 8
    const/4 v2, 0x1

    .line 9
    if-ne v1, v2, :cond_0

    .line 10
    .line 11
    const-string v1, "USBA"

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    int-to-short v1, v2

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 v1, 0x0

    .line 19
    :goto_0
    and-int/lit8 v2, p0, 0x2

    .line 20
    .line 21
    const/4 v3, 0x2

    .line 22
    if-ne v2, v3, :cond_1

    .line 23
    .line 24
    const-string v2, "ETHERNET"

    .line 25
    .line 26
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    or-int/lit8 v1, v1, 0x2

    .line 30
    .line 31
    int-to-short v1, v1

    .line 32
    :cond_1
    and-int/lit8 v2, p0, 0x4

    .line 33
    .line 34
    const/4 v3, 0x4

    .line 35
    if-ne v2, v3, :cond_2

    .line 36
    .line 37
    const-string v2, "LABEL"

    .line 38
    .line 39
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    or-int/lit8 v1, v1, 0x4

    .line 43
    .line 44
    int-to-short v1, v1

    .line 45
    :cond_2
    and-int/lit8 v2, p0, 0x8

    .line 46
    .line 47
    const/16 v3, 0x8

    .line 48
    .line 49
    if-ne v2, v3, :cond_3

    .line 50
    .line 51
    const-string v2, "DISPLAY"

    .line 52
    .line 53
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    or-int/lit8 v1, v1, 0x8

    .line 57
    .line 58
    int-to-short v1, v1

    .line 59
    :cond_3
    and-int/lit8 v2, p0, 0x10

    .line 60
    .line 61
    const/16 v3, 0x10

    .line 62
    .line 63
    if-ne v2, v3, :cond_4

    .line 64
    .line 65
    const-string v2, "EXT_NFC_TOKEN"

    .line 66
    .line 67
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    or-int/lit8 v1, v1, 0x10

    .line 71
    .line 72
    int-to-short v1, v1

    .line 73
    :cond_4
    and-int/lit8 v2, p0, 0x20

    .line 74
    .line 75
    const/16 v3, 0x20

    .line 76
    .line 77
    if-ne v2, v3, :cond_5

    .line 78
    .line 79
    const-string v2, "INT_NFC_TOKEN"

    .line 80
    .line 81
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 82
    .line 83
    .line 84
    or-int/lit8 v1, v1, 0x20

    .line 85
    .line 86
    int-to-short v1, v1

    .line 87
    :cond_5
    and-int/lit8 v2, p0, 0x40

    .line 88
    .line 89
    const/16 v3, 0x40

    .line 90
    .line 91
    if-ne v2, v3, :cond_6

    .line 92
    .line 93
    const-string v2, "NFC_INTERFACE"

    .line 94
    .line 95
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 96
    .line 97
    .line 98
    or-int/lit8 v1, v1, 0x40

    .line 99
    .line 100
    int-to-short v1, v1

    .line 101
    :cond_6
    and-int/lit16 v2, p0, 0x80

    .line 102
    .line 103
    const/16 v3, 0x80

    .line 104
    .line 105
    if-ne v2, v3, :cond_7

    .line 106
    .line 107
    const-string v2, "PUSHBUTTON"

    .line 108
    .line 109
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 110
    .line 111
    .line 112
    or-int/lit16 v1, v1, 0x80

    .line 113
    .line 114
    int-to-short v1, v1

    .line 115
    :cond_7
    and-int/lit16 v2, p0, 0x100

    .line 116
    .line 117
    const/16 v3, 0x100

    .line 118
    .line 119
    if-ne v2, v3, :cond_8

    .line 120
    .line 121
    const-string v2, "KEYPAD"

    .line 122
    .line 123
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 124
    .line 125
    .line 126
    or-int/lit16 v1, v1, 0x100

    .line 127
    .line 128
    int-to-short v1, v1

    .line 129
    :cond_8
    and-int/lit16 v2, p0, 0x280

    .line 130
    .line 131
    const/16 v3, 0x280

    .line 132
    .line 133
    if-ne v2, v3, :cond_9

    .line 134
    .line 135
    const-string v2, "VIRT_PUSHBUTTON"

    .line 136
    .line 137
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 138
    .line 139
    .line 140
    or-int/lit16 v1, v1, 0x280

    .line 141
    .line 142
    int-to-short v1, v1

    .line 143
    :cond_9
    and-int/lit16 v2, p0, 0x480

    .line 144
    .line 145
    const/16 v3, 0x480

    .line 146
    .line 147
    if-ne v2, v3, :cond_a

    .line 148
    .line 149
    const-string v2, "PHY_PUSHBUTTON"

    .line 150
    .line 151
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 152
    .line 153
    .line 154
    or-int/lit16 v1, v1, 0x480

    .line 155
    .line 156
    int-to-short v1, v1

    .line 157
    :cond_a
    and-int/lit16 v2, p0, 0x1000

    .line 158
    .line 159
    const/16 v3, 0x1000

    .line 160
    .line 161
    if-ne v2, v3, :cond_b

    .line 162
    .line 163
    const-string v2, "P2PS"

    .line 164
    .line 165
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 166
    .line 167
    .line 168
    or-int/lit16 v1, v1, 0x1000

    .line 169
    .line 170
    int-to-short v1, v1

    .line 171
    :cond_b
    and-int/lit16 v2, p0, 0x2008

    .line 172
    .line 173
    const/16 v3, 0x2008

    .line 174
    .line 175
    if-ne v2, v3, :cond_c

    .line 176
    .line 177
    const-string v2, "VIRT_DISPLAY"

    .line 178
    .line 179
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 180
    .line 181
    .line 182
    or-int/lit16 v1, v1, 0x2008

    .line 183
    .line 184
    int-to-short v1, v1

    .line 185
    :cond_c
    and-int/lit16 v2, p0, 0x4008

    .line 186
    .line 187
    const/16 v3, 0x4008

    .line 188
    .line 189
    if-ne v2, v3, :cond_d

    .line 190
    .line 191
    const-string v2, "PHY_DISPLAY"

    .line 192
    .line 193
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 194
    .line 195
    .line 196
    or-int/lit16 v1, v1, 0x4008

    .line 197
    .line 198
    int-to-short v1, v1

    .line 199
    :cond_d
    if-eq p0, v1, :cond_e

    .line 200
    .line 201
    new-instance v2, Ljava/lang/StringBuilder;

    .line 202
    .line 203
    const-string v3, "0x"

    .line 204
    .line 205
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 206
    .line 207
    .line 208
    not-int v1, v1

    .line 209
    and-int/2addr p0, v1

    .line 210
    int-to-short p0, p0

    .line 211
    invoke-static {p0}, Ljava/lang/Short;->toUnsignedInt(S)I

    .line 212
    .line 213
    .line 214
    move-result p0

    .line 215
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 216
    .line 217
    .line 218
    move-result-object p0

    .line 219
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 220
    .line 221
    .line 222
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 223
    .line 224
    .line 225
    move-result-object p0

    .line 226
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 227
    .line 228
    .line 229
    :cond_e
    const-string p0, " | "

    .line 230
    .line 231
    invoke-static {p0, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    .line 232
    .line 233
    .line 234
    move-result-object p0

    .line 235
    return-object p0
.end method

.method public static final toString(S)Ljava/lang/String;
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, v0, :cond_0

    .line 3
    .line 4
    const-string p0, "USBA"

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
    const-string p0, "ETHERNET"

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
    const-string p0, "LABEL"

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
    const-string p0, "DISPLAY"

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
    const-string p0, "EXT_NFC_TOKEN"

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
    const-string p0, "INT_NFC_TOKEN"

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
    const-string p0, "NFC_INTERFACE"

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
    const-string p0, "PUSHBUTTON"

    .line 52
    .line 53
    return-object p0

    .line 54
    :cond_7
    const/16 v0, 0x100

    .line 55
    .line 56
    if-ne p0, v0, :cond_8

    .line 57
    .line 58
    const-string p0, "KEYPAD"

    .line 59
    .line 60
    return-object p0

    .line 61
    :cond_8
    const/16 v0, 0x280

    .line 62
    .line 63
    if-ne p0, v0, :cond_9

    .line 64
    .line 65
    const-string p0, "VIRT_PUSHBUTTON"

    .line 66
    .line 67
    return-object p0

    .line 68
    :cond_9
    const/16 v0, 0x480

    .line 69
    .line 70
    if-ne p0, v0, :cond_a

    .line 71
    .line 72
    const-string p0, "PHY_PUSHBUTTON"

    .line 73
    .line 74
    return-object p0

    .line 75
    :cond_a
    const/16 v0, 0x1000

    .line 76
    .line 77
    if-ne p0, v0, :cond_b

    .line 78
    .line 79
    const-string p0, "P2PS"

    .line 80
    .line 81
    return-object p0

    .line 82
    :cond_b
    const/16 v0, 0x2008

    .line 83
    .line 84
    if-ne p0, v0, :cond_c

    .line 85
    .line 86
    const-string p0, "VIRT_DISPLAY"

    .line 87
    .line 88
    return-object p0

    .line 89
    :cond_c
    const/16 v0, 0x4008

    .line 90
    .line 91
    if-ne p0, v0, :cond_d

    .line 92
    .line 93
    const-string p0, "PHY_DISPLAY"

    .line 94
    .line 95
    return-object p0

    .line 96
    :cond_d
    new-instance v0, Ljava/lang/StringBuilder;

    .line 97
    .line 98
    const-string v1, "0x"

    .line 99
    .line 100
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    invoke-static {p0}, Ljava/lang/Short;->toUnsignedInt(S)I

    .line 104
    .line 105
    .line 106
    move-result p0

    .line 107
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object p0

    .line 111
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object p0

    .line 118
    return-object p0
.end method
