.class public final Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/RttStatus;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# static fields
.field public static final ABORTED:I = 0x8

.field public static final FAILURE:I = 0x1

.field public static final FAIL_AP_ON_DIFF_CHANNEL:I = 0x6

.field public static final FAIL_BUSY_TRY_LATER:I = 0xc

.field public static final FAIL_FTM_PARAM_OVERRIDE:I = 0xf

.field public static final FAIL_INVALID_TS:I = 0x9

.field public static final FAIL_NOT_SCHEDULED_YET:I = 0x4

.field public static final FAIL_NO_CAPABILITY:I = 0x7

.field public static final FAIL_NO_RSP:I = 0x2

.field public static final FAIL_PROTOCOL:I = 0xa

.field public static final FAIL_REJECTED:I = 0x3

.field public static final FAIL_SCHEDULE:I = 0xb

.field public static final FAIL_TM_TIMEOUT:I = 0x5

.field public static final INVALID_REQ:I = 0xd

.field public static final NO_WIFI:I = 0xe

.field public static final SUCCESS:I


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
    const-string v0, "SUCCESS"

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
    const-string v1, "FAILURE"

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
    const-string v1, "FAIL_NO_RSP"

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
    and-int/lit8 v1, p0, 0x3

    .line 32
    .line 33
    const/4 v3, 0x3

    .line 34
    if-ne v1, v3, :cond_2

    .line 35
    .line 36
    const-string v1, "FAIL_REJECTED"

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    move v2, v3

    .line 42
    :cond_2
    and-int/lit8 v1, p0, 0x4

    .line 43
    .line 44
    const/4 v3, 0x4

    .line 45
    if-ne v1, v3, :cond_3

    .line 46
    .line 47
    const-string v1, "FAIL_NOT_SCHEDULED_YET"

    .line 48
    .line 49
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    or-int/lit8 v2, v2, 0x4

    .line 53
    .line 54
    :cond_3
    and-int/lit8 v1, p0, 0x5

    .line 55
    .line 56
    const/4 v3, 0x5

    .line 57
    if-ne v1, v3, :cond_4

    .line 58
    .line 59
    const-string v1, "FAIL_TM_TIMEOUT"

    .line 60
    .line 61
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    or-int/lit8 v2, v2, 0x5

    .line 65
    .line 66
    :cond_4
    and-int/lit8 v1, p0, 0x6

    .line 67
    .line 68
    const/4 v3, 0x6

    .line 69
    if-ne v1, v3, :cond_5

    .line 70
    .line 71
    const-string v1, "FAIL_AP_ON_DIFF_CHANNEL"

    .line 72
    .line 73
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 74
    .line 75
    .line 76
    or-int/lit8 v2, v2, 0x6

    .line 77
    .line 78
    :cond_5
    and-int/lit8 v1, p0, 0x7

    .line 79
    .line 80
    const/4 v3, 0x7

    .line 81
    if-ne v1, v3, :cond_6

    .line 82
    .line 83
    const-string v1, "FAIL_NO_CAPABILITY"

    .line 84
    .line 85
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 86
    .line 87
    .line 88
    move v2, v3

    .line 89
    :cond_6
    and-int/lit8 v1, p0, 0x8

    .line 90
    .line 91
    const/16 v3, 0x8

    .line 92
    .line 93
    if-ne v1, v3, :cond_7

    .line 94
    .line 95
    const-string v1, "ABORTED"

    .line 96
    .line 97
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 98
    .line 99
    .line 100
    or-int/lit8 v2, v2, 0x8

    .line 101
    .line 102
    :cond_7
    and-int/lit8 v1, p0, 0x9

    .line 103
    .line 104
    const/16 v3, 0x9

    .line 105
    .line 106
    if-ne v1, v3, :cond_8

    .line 107
    .line 108
    const-string v1, "FAIL_INVALID_TS"

    .line 109
    .line 110
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 111
    .line 112
    .line 113
    or-int/lit8 v2, v2, 0x9

    .line 114
    .line 115
    :cond_8
    and-int/lit8 v1, p0, 0xa

    .line 116
    .line 117
    const/16 v3, 0xa

    .line 118
    .line 119
    if-ne v1, v3, :cond_9

    .line 120
    .line 121
    const-string v1, "FAIL_PROTOCOL"

    .line 122
    .line 123
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 124
    .line 125
    .line 126
    or-int/lit8 v2, v2, 0xa

    .line 127
    .line 128
    :cond_9
    and-int/lit8 v1, p0, 0xb

    .line 129
    .line 130
    const/16 v3, 0xb

    .line 131
    .line 132
    if-ne v1, v3, :cond_a

    .line 133
    .line 134
    const-string v1, "FAIL_SCHEDULE"

    .line 135
    .line 136
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 137
    .line 138
    .line 139
    or-int/lit8 v2, v2, 0xb

    .line 140
    .line 141
    :cond_a
    and-int/lit8 v1, p0, 0xc

    .line 142
    .line 143
    const/16 v3, 0xc

    .line 144
    .line 145
    if-ne v1, v3, :cond_b

    .line 146
    .line 147
    const-string v1, "FAIL_BUSY_TRY_LATER"

    .line 148
    .line 149
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 150
    .line 151
    .line 152
    or-int/lit8 v2, v2, 0xc

    .line 153
    .line 154
    :cond_b
    and-int/lit8 v1, p0, 0xd

    .line 155
    .line 156
    const/16 v3, 0xd

    .line 157
    .line 158
    if-ne v1, v3, :cond_c

    .line 159
    .line 160
    const-string v1, "INVALID_REQ"

    .line 161
    .line 162
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 163
    .line 164
    .line 165
    or-int/lit8 v2, v2, 0xd

    .line 166
    .line 167
    :cond_c
    and-int/lit8 v1, p0, 0xe

    .line 168
    .line 169
    const/16 v3, 0xe

    .line 170
    .line 171
    if-ne v1, v3, :cond_d

    .line 172
    .line 173
    const-string v1, "NO_WIFI"

    .line 174
    .line 175
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 176
    .line 177
    .line 178
    or-int/lit8 v2, v2, 0xe

    .line 179
    .line 180
    :cond_d
    and-int/lit8 v1, p0, 0xf

    .line 181
    .line 182
    const/16 v3, 0xf

    .line 183
    .line 184
    if-ne v1, v3, :cond_e

    .line 185
    .line 186
    const-string v1, "FAIL_FTM_PARAM_OVERRIDE"

    .line 187
    .line 188
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 189
    .line 190
    .line 191
    move v2, v3

    .line 192
    :cond_e
    if-eq p0, v2, :cond_f

    .line 193
    .line 194
    new-instance v1, Ljava/lang/StringBuilder;

    .line 195
    .line 196
    const-string v3, "0x"

    .line 197
    .line 198
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 199
    .line 200
    .line 201
    not-int v2, v2

    .line 202
    and-int/2addr p0, v2

    .line 203
    invoke-static {p0, v1, v0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip$Stub$$ExternalSyntheticOutline0;->m(ILjava/lang/StringBuilder;Ljava/util/ArrayList;)V

    .line 204
    .line 205
    .line 206
    :cond_f
    const-string p0, " | "

    .line 207
    .line 208
    invoke-static {p0, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    .line 209
    .line 210
    .line 211
    move-result-object p0

    .line 212
    return-object p0
.end method

.method public static final toString(I)Ljava/lang/String;
    .locals 2

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    const-string p0, "SUCCESS"

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
    const-string p0, "FAILURE"

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
    const-string p0, "FAIL_NO_RSP"

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
    const-string p0, "FAIL_REJECTED"

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
    const-string p0, "FAIL_NOT_SCHEDULED_YET"

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
    const-string p0, "FAIL_TM_TIMEOUT"

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
    const-string p0, "FAIL_AP_ON_DIFF_CHANNEL"

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
    const-string p0, "FAIL_NO_CAPABILITY"

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
    const-string p0, "ABORTED"

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
    const-string p0, "FAIL_INVALID_TS"

    .line 60
    .line 61
    return-object p0

    .line 62
    :cond_9
    const/16 v0, 0xa

    .line 63
    .line 64
    if-ne p0, v0, :cond_a

    .line 65
    .line 66
    const-string p0, "FAIL_PROTOCOL"

    .line 67
    .line 68
    return-object p0

    .line 69
    :cond_a
    const/16 v0, 0xb

    .line 70
    .line 71
    if-ne p0, v0, :cond_b

    .line 72
    .line 73
    const-string p0, "FAIL_SCHEDULE"

    .line 74
    .line 75
    return-object p0

    .line 76
    :cond_b
    const/16 v0, 0xc

    .line 77
    .line 78
    if-ne p0, v0, :cond_c

    .line 79
    .line 80
    const-string p0, "FAIL_BUSY_TRY_LATER"

    .line 81
    .line 82
    return-object p0

    .line 83
    :cond_c
    const/16 v0, 0xd

    .line 84
    .line 85
    if-ne p0, v0, :cond_d

    .line 86
    .line 87
    const-string p0, "INVALID_REQ"

    .line 88
    .line 89
    return-object p0

    .line 90
    :cond_d
    const/16 v0, 0xe

    .line 91
    .line 92
    if-ne p0, v0, :cond_e

    .line 93
    .line 94
    const-string p0, "NO_WIFI"

    .line 95
    .line 96
    return-object p0

    .line 97
    :cond_e
    const/16 v0, 0xf

    .line 98
    .line 99
    if-ne p0, v0, :cond_f

    .line 100
    .line 101
    const-string p0, "FAIL_FTM_PARAM_OVERRIDE"

    .line 102
    .line 103
    return-object p0

    .line 104
    :cond_f
    new-instance v0, Ljava/lang/StringBuilder;

    .line 105
    .line 106
    const-string v1, "0x"

    .line 107
    .line 108
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    invoke-static {v0, p0}, Lcom/samsung/android/server/wifi/ap/SemDhcpPacket$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;I)Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object p0

    .line 115
    return-object p0
.end method
