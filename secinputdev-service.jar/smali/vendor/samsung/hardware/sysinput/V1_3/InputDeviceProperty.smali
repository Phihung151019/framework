.class public final Lvendor/samsung/hardware/sysinput/V1_3/InputDeviceProperty;
.super Ljava/lang/Object;
.source "InputDeviceProperty.java"


# static fields
.field public static final AOD_ACTIVE_AREA:I = 0x6

.field public static final AOD_ENABLE:I = 0x7

.field public static final BLE_CHARGING:I = 0xc

.field public static final CMD_LIST:I = 0x2

.field public static final ENABLED:I = 0x11

.field public static final EPEN_MEMO:I = 0xe

.field public static final EPEN_POS:I = 0x8

.field public static final EPEN_SAVING:I = 0xd

.field public static final EPEN_WCHARGING:I = 0x10

.field public static final FEATURE:I = 0x1

.field public static final FOD_INFO:I = 0x4

.field public static final FOD_POS:I = 0x5

.field public static final HAND_EDGE:I = 0xf

.field public static final HW_PARAM:I = 0xa

.field public static final LP_DUMP:I = 0xb

.field public static final PROX_OFF:I = 0x9

.field public static final SCRUB_POS:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final dumpBitfield(I)Ljava/lang/String;
    .locals 4
    .param p0, "o"    # I

    .line 129
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 130
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 131
    .local v1, "flipped":I
    and-int/lit8 v2, p0, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 132
    const-string v2, "FEATURE"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 133
    or-int/lit8 v1, v1, 0x1

    .line 135
    :cond_0
    and-int/lit8 v2, p0, 0x2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 136
    const-string v2, "CMD_LIST"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 137
    or-int/lit8 v1, v1, 0x2

    .line 139
    :cond_1
    and-int/lit8 v2, p0, 0x3

    const/4 v3, 0x3

    if-ne v2, v3, :cond_2

    .line 140
    const-string v2, "SCRUB_POS"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 141
    or-int/lit8 v1, v1, 0x3

    .line 143
    :cond_2
    and-int/lit8 v2, p0, 0x4

    const/4 v3, 0x4

    if-ne v2, v3, :cond_3

    .line 144
    const-string v2, "FOD_INFO"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 145
    or-int/lit8 v1, v1, 0x4

    .line 147
    :cond_3
    and-int/lit8 v2, p0, 0x5

    const/4 v3, 0x5

    if-ne v2, v3, :cond_4

    .line 148
    const-string v2, "FOD_POS"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 149
    or-int/lit8 v1, v1, 0x5

    .line 151
    :cond_4
    and-int/lit8 v2, p0, 0x6

    const/4 v3, 0x6

    if-ne v2, v3, :cond_5

    .line 152
    const-string v2, "AOD_ACTIVE_AREA"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 153
    or-int/lit8 v1, v1, 0x6

    .line 155
    :cond_5
    and-int/lit8 v2, p0, 0x7

    const/4 v3, 0x7

    if-ne v2, v3, :cond_6

    .line 156
    const-string v2, "AOD_ENABLE"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 157
    or-int/lit8 v1, v1, 0x7

    .line 159
    :cond_6
    and-int/lit8 v2, p0, 0x8

    const/16 v3, 0x8

    if-ne v2, v3, :cond_7

    .line 160
    const-string v2, "EPEN_POS"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 161
    or-int/lit8 v1, v1, 0x8

    .line 163
    :cond_7
    and-int/lit8 v2, p0, 0x9

    const/16 v3, 0x9

    if-ne v2, v3, :cond_8

    .line 164
    const-string v2, "PROX_OFF"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 165
    or-int/lit8 v1, v1, 0x9

    .line 167
    :cond_8
    and-int/lit8 v2, p0, 0xa

    const/16 v3, 0xa

    if-ne v2, v3, :cond_9

    .line 168
    const-string v2, "HW_PARAM"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 169
    or-int/lit8 v1, v1, 0xa

    .line 171
    :cond_9
    and-int/lit8 v2, p0, 0xb

    const/16 v3, 0xb

    if-ne v2, v3, :cond_a

    .line 172
    const-string v2, "LP_DUMP"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 173
    or-int/lit8 v1, v1, 0xb

    .line 175
    :cond_a
    and-int/lit8 v2, p0, 0xc

    const/16 v3, 0xc

    if-ne v2, v3, :cond_b

    .line 176
    const-string v2, "BLE_CHARGING"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 177
    or-int/lit8 v1, v1, 0xc

    .line 179
    :cond_b
    and-int/lit8 v2, p0, 0xd

    const/16 v3, 0xd

    if-ne v2, v3, :cond_c

    .line 180
    const-string v2, "EPEN_SAVING"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 181
    or-int/lit8 v1, v1, 0xd

    .line 183
    :cond_c
    and-int/lit8 v2, p0, 0xe

    const/16 v3, 0xe

    if-ne v2, v3, :cond_d

    .line 184
    const-string v2, "EPEN_MEMO"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 185
    or-int/lit8 v1, v1, 0xe

    .line 187
    :cond_d
    and-int/lit8 v2, p0, 0xf

    const/16 v3, 0xf

    if-ne v2, v3, :cond_e

    .line 188
    const-string v2, "HAND_EDGE"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 189
    or-int/lit8 v1, v1, 0xf

    .line 191
    :cond_e
    and-int/lit8 v2, p0, 0x10

    const/16 v3, 0x10

    if-ne v2, v3, :cond_f

    .line 192
    const-string v2, "EPEN_WCHARGING"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 193
    or-int/lit8 v1, v1, 0x10

    .line 195
    :cond_f
    and-int/lit8 v2, p0, 0x11

    const/16 v3, 0x11

    if-ne v2, v3, :cond_10

    .line 196
    const-string v2, "ENABLED"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 197
    or-int/lit8 v1, v1, 0x11

    .line 199
    :cond_10
    if-eq p0, v1, :cond_11

    .line 200
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    not-int v3, v1

    and-int/2addr v3, p0

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 202
    :cond_11
    const-string v2, " | "

    invoke-static {v2, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static final toString(I)Ljava/lang/String;
    .locals 2
    .param p0, "o"    # I

    .line 74
    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    .line 75
    const-string v0, "FEATURE"

    return-object v0

    .line 77
    :cond_0
    const/4 v0, 0x2

    if-ne p0, v0, :cond_1

    .line 78
    const-string v0, "CMD_LIST"

    return-object v0

    .line 80
    :cond_1
    const/4 v0, 0x3

    if-ne p0, v0, :cond_2

    .line 81
    const-string v0, "SCRUB_POS"

    return-object v0

    .line 83
    :cond_2
    const/4 v0, 0x4

    if-ne p0, v0, :cond_3

    .line 84
    const-string v0, "FOD_INFO"

    return-object v0

    .line 86
    :cond_3
    const/4 v0, 0x5

    if-ne p0, v0, :cond_4

    .line 87
    const-string v0, "FOD_POS"

    return-object v0

    .line 89
    :cond_4
    const/4 v0, 0x6

    if-ne p0, v0, :cond_5

    .line 90
    const-string v0, "AOD_ACTIVE_AREA"

    return-object v0

    .line 92
    :cond_5
    const/4 v0, 0x7

    if-ne p0, v0, :cond_6

    .line 93
    const-string v0, "AOD_ENABLE"

    return-object v0

    .line 95
    :cond_6
    const/16 v0, 0x8

    if-ne p0, v0, :cond_7

    .line 96
    const-string v0, "EPEN_POS"

    return-object v0

    .line 98
    :cond_7
    const/16 v0, 0x9

    if-ne p0, v0, :cond_8

    .line 99
    const-string v0, "PROX_OFF"

    return-object v0

    .line 101
    :cond_8
    const/16 v0, 0xa

    if-ne p0, v0, :cond_9

    .line 102
    const-string v0, "HW_PARAM"

    return-object v0

    .line 104
    :cond_9
    const/16 v0, 0xb

    if-ne p0, v0, :cond_a

    .line 105
    const-string v0, "LP_DUMP"

    return-object v0

    .line 107
    :cond_a
    const/16 v0, 0xc

    if-ne p0, v0, :cond_b

    .line 108
    const-string v0, "BLE_CHARGING"

    return-object v0

    .line 110
    :cond_b
    const/16 v0, 0xd

    if-ne p0, v0, :cond_c

    .line 111
    const-string v0, "EPEN_SAVING"

    return-object v0

    .line 113
    :cond_c
    const/16 v0, 0xe

    if-ne p0, v0, :cond_d

    .line 114
    const-string v0, "EPEN_MEMO"

    return-object v0

    .line 116
    :cond_d
    const/16 v0, 0xf

    if-ne p0, v0, :cond_e

    .line 117
    const-string v0, "HAND_EDGE"

    return-object v0

    .line 119
    :cond_e
    const/16 v0, 0x10

    if-ne p0, v0, :cond_f

    .line 120
    const-string v0, "EPEN_WCHARGING"

    return-object v0

    .line 122
    :cond_f
    const/16 v0, 0x11

    if-ne p0, v0, :cond_10

    .line 123
    const-string v0, "ENABLED"

    return-object v0

    .line 125
    :cond_10
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
