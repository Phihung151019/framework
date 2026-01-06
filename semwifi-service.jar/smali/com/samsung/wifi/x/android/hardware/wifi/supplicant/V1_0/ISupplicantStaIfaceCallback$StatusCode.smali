.class public final Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback$StatusCode;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "StatusCode"
.end annotation


# static fields
.field public static final ADV_SRV_UNREACHABLE:I = 0x41

.field public static final AKMP_NOT_VALID:I = 0x2b

.field public static final ANTI_CLOGGING_TOKEN_REQ:I = 0x4c

.field public static final AP_UNABLE_TO_HANDLE_NEW_STA:I = 0x11

.field public static final ASSOC_DENIED_LISTEN_INT_TOO_LARGE:I = 0x33

.field public static final ASSOC_DENIED_NOSHORT:I = 0x13

.field public static final ASSOC_DENIED_NO_HT:I = 0x1b

.field public static final ASSOC_DENIED_NO_PCO:I = 0x1d

.field public static final ASSOC_DENIED_NO_SHORT_SLOT_TIME:I = 0x19

.field public static final ASSOC_DENIED_NO_VHT:I = 0x68

.field public static final ASSOC_DENIED_RATES:I = 0x12

.field public static final ASSOC_DENIED_UNSPEC:I = 0xc

.field public static final ASSOC_REJECTED_TEMPORARILY:I = 0x1e

.field public static final AUTHORIZATION_DEENABLED:I = 0x6b

.field public static final AUTH_TIMEOUT:I = 0x10

.field public static final BAD_INTERVAL_WITH_U_APSD_COEX:I = 0x4b

.field public static final CANNOT_FIND_ALT_TBTT:I = 0x4e

.field public static final CAPS_UNSUPPORTED:I = 0xa

.field public static final CHALLENGE_FAIL:I = 0xf

.field public static final CIPHER_REJECTED_PER_POLICY:I = 0x2e

.field public static final DENIED_DUE_TO_SPECTRUM_MANAGEMENT:I = 0x67

.field public static final DENIED_INSUFFICIENT_BANDWIDTH:I = 0x21

.field public static final DENIED_POOR_CHANNEL_CONDITIONS:I = 0x22

.field public static final DENIED_QOS_NOT_SUPPORTED:I = 0x23

.field public static final DENIED_WITH_SUGGESTED_BAND_AND_CHANNEL:I = 0x63

.field public static final DEST_STA_NOT_PRESENT:I = 0x31

.field public static final DEST_STA_NOT_QOS_STA:I = 0x32

.field public static final DIRECT_LINK_NOT_ALLOWED:I = 0x30

.field public static final ENABLEMENT_DENIED:I = 0x69

.field public static final FILS_AUTHENTICATION_FAILURE:I = 0x70

.field public static final FINITE_CYCLIC_GROUP_NOT_SUPPORTED:I = 0x4d

.field public static final GAS_ADV_PROTO_NOT_SUPPORTED:I = 0x3b

.field public static final GAS_RESP_LARGER_THAN_LIMIT:I = 0x3f

.field public static final GAS_RESP_NOT_RECEIVED:I = 0x3d

.field public static final GROUP_CIPHER_NOT_VALID:I = 0x29

.field public static final INSUFFICIENT_TCLAS_PROCESSING_RESOURCES:I = 0x39

.field public static final INVALID_FTIE:I = 0x37

.field public static final INVALID_FT_ACTION_FRAME_COUNT:I = 0x34

.field public static final INVALID_IE:I = 0x28

.field public static final INVALID_MDIE:I = 0x36

.field public static final INVALID_PARAMETERS:I = 0x26

.field public static final INVALID_PMKID:I = 0x35

.field public static final INVALID_RSNIE:I = 0x48

.field public static final INVALID_RSN_IE_CAPAB:I = 0x2d

.field public static final MAF_LIMIT_EXCEEDED:I = 0x65

.field public static final MCCAOP_RESERVATION_CONFLICT:I = 0x64

.field public static final MCCA_TRACK_LIMIT_EXCEEDED:I = 0x66

.field public static final NOT_IN_SAME_BSS:I = 0x7

.field public static final NOT_SUPPORTED_AUTH_ALG:I = 0xd

.field public static final NO_OUTSTANDING_GAS_REQ:I = 0x3c

.field public static final PAIRWISE_CIPHER_NOT_VALID:I = 0x2a

.field public static final PENDING_ADMITTING_FST_SESSION:I = 0x56

.field public static final PENDING_GAP_IN_BA_WINDOW:I = 0x58

.field public static final PERFORMING_FST_NOW:I = 0x57

.field public static final PWR_CAPABILITY_NOT_VALID:I = 0x17

.field public static final QUERY_RESP_OUTSTANDING:I = 0x5f

.field public static final R0KH_UNREACHABLE:I = 0x1c

.field public static final REASSOC_NO_ASSOC:I = 0xb

.field public static final REFUSED_AP_OUT_OF_MEMORY:I = 0x5d

.field public static final REFUSED_EXTERNAL_REASON:I = 0x5c

.field public static final REJECTED_EMERGENCY_SERVICE_NOT_SUPPORTED:I = 0x5e

.field public static final REJECTED_WITH_SUGGESTED_BSS_TRANSITION:I = 0x52

.field public static final REJECTED_WITH_SUGGESTED_CHANGES:I = 0x27

.field public static final REJECT_DSE_BAND:I = 0x60

.field public static final REJECT_NO_WAKEUP_SPECIFIED:I = 0x54

.field public static final REJECT_U_PID_SETTING:I = 0x59

.field public static final REJECT_WITH_SCHEDULE:I = 0x53

.field public static final REQUESTED_TCLAS_NOT_SUPPORTED:I = 0x38

.field public static final REQUEST_DECLINED:I = 0x25

.field public static final REQ_REFUSED_HOME:I = 0x40

.field public static final REQ_REFUSED_SSPN:I = 0x43

.field public static final REQ_REFUSED_UNAUTH_ACCESS:I = 0x44

.field public static final REQ_TCLAS_NOT_SUPPORTED:I = 0x50

.field public static final RESTRICTION_FROM_AUTHORIZED_GDB:I = 0x6a

.field public static final ROBUST_MGMT_FRAME_POLICY_VIOLATION:I = 0x1f

.field public static final SECURITY_DISABLED:I = 0x5

.field public static final SPEC_MGMT_REQUIRED:I = 0x16

.field public static final STA_TIMED_OUT_WAITING_FOR_GAS_RESP:I = 0x3e

.field public static final SUCCESS:I = 0x0

.field public static final SUCCESS_POWER_SAVE_MODE:I = 0x55

.field public static final SUPPORTED_CHANNEL_NOT_VALID:I = 0x18

.field public static final TCLAS_PROCESSING_TERMINATED:I = 0x61

.field public static final TCLAS_RESOURCES_EXCHAUSTED:I = 0x51

.field public static final TDLS_WAKEUP_ALTERNATE:I = 0x2

.field public static final TDLS_WAKEUP_REJECT:I = 0x3

.field public static final TRANSMISSION_FAILURE:I = 0x4f

.field public static final TRY_ANOTHER_BSS:I = 0x3a

.field public static final TS_NOT_CREATED:I = 0x2f

.field public static final TS_SCHEDULE_CONFLICT:I = 0x62

.field public static final UNACCEPTABLE_LIFETIME:I = 0x6

.field public static final UNKNOWN_AUTHENTICATION_SERVER:I = 0x71

.field public static final UNKNOWN_AUTH_TRANSACTION:I = 0xe

.field public static final UNSPECIFIED_FAILURE:I = 0x1

.field public static final UNSPECIFIED_QOS_FAILURE:I = 0x20

.field public static final UNSUPPORTED_RSN_IE_VERSION:I = 0x2c

.field public static final U_APSD_COEX_MODE_NOT_SUPPORTED:I = 0x4a

.field public static final U_APSD_COEX_NOT_SUPPORTED:I = 0x49


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
    const-string v1, "UNSPECIFIED_FAILURE"

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
    const-string v1, "TDLS_WAKEUP_ALTERNATE"

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
    const-string v1, "TDLS_WAKEUP_REJECT"

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    move v2, v3

    .line 42
    :cond_2
    and-int/lit8 v1, p0, 0x5

    .line 43
    .line 44
    const/4 v3, 0x5

    .line 45
    if-ne v1, v3, :cond_3

    .line 46
    .line 47
    const-string v1, "SECURITY_DISABLED"

    .line 48
    .line 49
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    or-int/lit8 v2, v2, 0x5

    .line 53
    .line 54
    :cond_3
    and-int/lit8 v1, p0, 0x6

    .line 55
    .line 56
    const/4 v3, 0x6

    .line 57
    if-ne v1, v3, :cond_4

    .line 58
    .line 59
    const-string v1, "UNACCEPTABLE_LIFETIME"

    .line 60
    .line 61
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    or-int/lit8 v2, v2, 0x6

    .line 65
    .line 66
    :cond_4
    and-int/lit8 v1, p0, 0x7

    .line 67
    .line 68
    const/4 v3, 0x7

    .line 69
    if-ne v1, v3, :cond_5

    .line 70
    .line 71
    const-string v1, "NOT_IN_SAME_BSS"

    .line 72
    .line 73
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 74
    .line 75
    .line 76
    move v2, v3

    .line 77
    :cond_5
    and-int/lit8 v1, p0, 0xa

    .line 78
    .line 79
    const/16 v3, 0xa

    .line 80
    .line 81
    if-ne v1, v3, :cond_6

    .line 82
    .line 83
    const-string v1, "CAPS_UNSUPPORTED"

    .line 84
    .line 85
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 86
    .line 87
    .line 88
    or-int/lit8 v2, v2, 0xa

    .line 89
    .line 90
    :cond_6
    and-int/lit8 v1, p0, 0xb

    .line 91
    .line 92
    const/16 v3, 0xb

    .line 93
    .line 94
    if-ne v1, v3, :cond_7

    .line 95
    .line 96
    const-string v1, "REASSOC_NO_ASSOC"

    .line 97
    .line 98
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 99
    .line 100
    .line 101
    or-int/lit8 v2, v2, 0xb

    .line 102
    .line 103
    :cond_7
    and-int/lit8 v1, p0, 0xc

    .line 104
    .line 105
    const/16 v3, 0xc

    .line 106
    .line 107
    if-ne v1, v3, :cond_8

    .line 108
    .line 109
    const-string v1, "ASSOC_DENIED_UNSPEC"

    .line 110
    .line 111
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 112
    .line 113
    .line 114
    or-int/lit8 v2, v2, 0xc

    .line 115
    .line 116
    :cond_8
    and-int/lit8 v1, p0, 0xd

    .line 117
    .line 118
    const/16 v3, 0xd

    .line 119
    .line 120
    if-ne v1, v3, :cond_9

    .line 121
    .line 122
    const-string v1, "NOT_SUPPORTED_AUTH_ALG"

    .line 123
    .line 124
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 125
    .line 126
    .line 127
    or-int/lit8 v2, v2, 0xd

    .line 128
    .line 129
    :cond_9
    and-int/lit8 v1, p0, 0xe

    .line 130
    .line 131
    const/16 v3, 0xe

    .line 132
    .line 133
    if-ne v1, v3, :cond_a

    .line 134
    .line 135
    const-string v1, "UNKNOWN_AUTH_TRANSACTION"

    .line 136
    .line 137
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 138
    .line 139
    .line 140
    or-int/lit8 v2, v2, 0xe

    .line 141
    .line 142
    :cond_a
    and-int/lit8 v1, p0, 0xf

    .line 143
    .line 144
    const/16 v3, 0xf

    .line 145
    .line 146
    if-ne v1, v3, :cond_b

    .line 147
    .line 148
    const-string v1, "CHALLENGE_FAIL"

    .line 149
    .line 150
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 151
    .line 152
    .line 153
    move v2, v3

    .line 154
    :cond_b
    and-int/lit8 v1, p0, 0x10

    .line 155
    .line 156
    const/16 v3, 0x10

    .line 157
    .line 158
    if-ne v1, v3, :cond_c

    .line 159
    .line 160
    const-string v1, "AUTH_TIMEOUT"

    .line 161
    .line 162
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 163
    .line 164
    .line 165
    or-int/lit8 v2, v2, 0x10

    .line 166
    .line 167
    :cond_c
    and-int/lit8 v1, p0, 0x11

    .line 168
    .line 169
    const/16 v3, 0x11

    .line 170
    .line 171
    if-ne v1, v3, :cond_d

    .line 172
    .line 173
    const-string v1, "AP_UNABLE_TO_HANDLE_NEW_STA"

    .line 174
    .line 175
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 176
    .line 177
    .line 178
    or-int/lit8 v2, v2, 0x11

    .line 179
    .line 180
    :cond_d
    and-int/lit8 v1, p0, 0x12

    .line 181
    .line 182
    const/16 v3, 0x12

    .line 183
    .line 184
    if-ne v1, v3, :cond_e

    .line 185
    .line 186
    const-string v1, "ASSOC_DENIED_RATES"

    .line 187
    .line 188
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 189
    .line 190
    .line 191
    or-int/lit8 v2, v2, 0x12

    .line 192
    .line 193
    :cond_e
    and-int/lit8 v1, p0, 0x13

    .line 194
    .line 195
    const/16 v3, 0x13

    .line 196
    .line 197
    if-ne v1, v3, :cond_f

    .line 198
    .line 199
    const-string v1, "ASSOC_DENIED_NOSHORT"

    .line 200
    .line 201
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 202
    .line 203
    .line 204
    or-int/lit8 v2, v2, 0x13

    .line 205
    .line 206
    :cond_f
    and-int/lit8 v1, p0, 0x16

    .line 207
    .line 208
    const/16 v3, 0x16

    .line 209
    .line 210
    if-ne v1, v3, :cond_10

    .line 211
    .line 212
    const-string v1, "SPEC_MGMT_REQUIRED"

    .line 213
    .line 214
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 215
    .line 216
    .line 217
    or-int/lit8 v2, v2, 0x16

    .line 218
    .line 219
    :cond_10
    and-int/lit8 v1, p0, 0x17

    .line 220
    .line 221
    const/16 v3, 0x17

    .line 222
    .line 223
    if-ne v1, v3, :cond_11

    .line 224
    .line 225
    const-string v1, "PWR_CAPABILITY_NOT_VALID"

    .line 226
    .line 227
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 228
    .line 229
    .line 230
    or-int/lit8 v2, v2, 0x17

    .line 231
    .line 232
    :cond_11
    and-int/lit8 v1, p0, 0x18

    .line 233
    .line 234
    const/16 v3, 0x18

    .line 235
    .line 236
    if-ne v1, v3, :cond_12

    .line 237
    .line 238
    const-string v1, "SUPPORTED_CHANNEL_NOT_VALID"

    .line 239
    .line 240
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 241
    .line 242
    .line 243
    or-int/lit8 v2, v2, 0x18

    .line 244
    .line 245
    :cond_12
    and-int/lit8 v1, p0, 0x19

    .line 246
    .line 247
    const/16 v3, 0x19

    .line 248
    .line 249
    if-ne v1, v3, :cond_13

    .line 250
    .line 251
    const-string v1, "ASSOC_DENIED_NO_SHORT_SLOT_TIME"

    .line 252
    .line 253
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 254
    .line 255
    .line 256
    or-int/lit8 v2, v2, 0x19

    .line 257
    .line 258
    :cond_13
    and-int/lit8 v1, p0, 0x1b

    .line 259
    .line 260
    const/16 v3, 0x1b

    .line 261
    .line 262
    if-ne v1, v3, :cond_14

    .line 263
    .line 264
    const-string v1, "ASSOC_DENIED_NO_HT"

    .line 265
    .line 266
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 267
    .line 268
    .line 269
    or-int/lit8 v2, v2, 0x1b

    .line 270
    .line 271
    :cond_14
    and-int/lit8 v1, p0, 0x1c

    .line 272
    .line 273
    const/16 v3, 0x1c

    .line 274
    .line 275
    if-ne v1, v3, :cond_15

    .line 276
    .line 277
    const-string v1, "R0KH_UNREACHABLE"

    .line 278
    .line 279
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 280
    .line 281
    .line 282
    or-int/lit8 v2, v2, 0x1c

    .line 283
    .line 284
    :cond_15
    and-int/lit8 v1, p0, 0x1d

    .line 285
    .line 286
    const/16 v3, 0x1d

    .line 287
    .line 288
    if-ne v1, v3, :cond_16

    .line 289
    .line 290
    const-string v1, "ASSOC_DENIED_NO_PCO"

    .line 291
    .line 292
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 293
    .line 294
    .line 295
    or-int/lit8 v2, v2, 0x1d

    .line 296
    .line 297
    :cond_16
    and-int/lit8 v1, p0, 0x1e

    .line 298
    .line 299
    const/16 v3, 0x1e

    .line 300
    .line 301
    if-ne v1, v3, :cond_17

    .line 302
    .line 303
    const-string v1, "ASSOC_REJECTED_TEMPORARILY"

    .line 304
    .line 305
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 306
    .line 307
    .line 308
    or-int/lit8 v2, v2, 0x1e

    .line 309
    .line 310
    :cond_17
    and-int/lit8 v1, p0, 0x1f

    .line 311
    .line 312
    const/16 v3, 0x1f

    .line 313
    .line 314
    if-ne v1, v3, :cond_18

    .line 315
    .line 316
    const-string v1, "ROBUST_MGMT_FRAME_POLICY_VIOLATION"

    .line 317
    .line 318
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 319
    .line 320
    .line 321
    const/16 v2, 0x1f

    .line 322
    .line 323
    :cond_18
    and-int/lit8 v1, p0, 0x20

    .line 324
    .line 325
    const/16 v3, 0x20

    .line 326
    .line 327
    if-ne v1, v3, :cond_19

    .line 328
    .line 329
    const-string v1, "UNSPECIFIED_QOS_FAILURE"

    .line 330
    .line 331
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 332
    .line 333
    .line 334
    or-int/lit8 v2, v2, 0x20

    .line 335
    .line 336
    :cond_19
    and-int/lit8 v1, p0, 0x21

    .line 337
    .line 338
    const/16 v3, 0x21

    .line 339
    .line 340
    if-ne v1, v3, :cond_1a

    .line 341
    .line 342
    const-string v1, "DENIED_INSUFFICIENT_BANDWIDTH"

    .line 343
    .line 344
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 345
    .line 346
    .line 347
    or-int/lit8 v2, v2, 0x21

    .line 348
    .line 349
    :cond_1a
    and-int/lit8 v1, p0, 0x22

    .line 350
    .line 351
    const/16 v3, 0x22

    .line 352
    .line 353
    if-ne v1, v3, :cond_1b

    .line 354
    .line 355
    const-string v1, "DENIED_POOR_CHANNEL_CONDITIONS"

    .line 356
    .line 357
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 358
    .line 359
    .line 360
    or-int/lit8 v2, v2, 0x22

    .line 361
    .line 362
    :cond_1b
    and-int/lit8 v1, p0, 0x23

    .line 363
    .line 364
    const/16 v3, 0x23

    .line 365
    .line 366
    if-ne v1, v3, :cond_1c

    .line 367
    .line 368
    const-string v1, "DENIED_QOS_NOT_SUPPORTED"

    .line 369
    .line 370
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 371
    .line 372
    .line 373
    or-int/lit8 v2, v2, 0x23

    .line 374
    .line 375
    :cond_1c
    and-int/lit8 v1, p0, 0x25

    .line 376
    .line 377
    const/16 v3, 0x25

    .line 378
    .line 379
    if-ne v1, v3, :cond_1d

    .line 380
    .line 381
    const-string v1, "REQUEST_DECLINED"

    .line 382
    .line 383
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 384
    .line 385
    .line 386
    or-int/lit8 v2, v2, 0x25

    .line 387
    .line 388
    :cond_1d
    and-int/lit8 v1, p0, 0x26

    .line 389
    .line 390
    const/16 v3, 0x26

    .line 391
    .line 392
    if-ne v1, v3, :cond_1e

    .line 393
    .line 394
    const-string v1, "INVALID_PARAMETERS"

    .line 395
    .line 396
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 397
    .line 398
    .line 399
    or-int/lit8 v2, v2, 0x26

    .line 400
    .line 401
    :cond_1e
    and-int/lit8 v1, p0, 0x27

    .line 402
    .line 403
    const/16 v3, 0x27

    .line 404
    .line 405
    if-ne v1, v3, :cond_1f

    .line 406
    .line 407
    const-string v1, "REJECTED_WITH_SUGGESTED_CHANGES"

    .line 408
    .line 409
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 410
    .line 411
    .line 412
    or-int/lit8 v2, v2, 0x27

    .line 413
    .line 414
    :cond_1f
    and-int/lit8 v1, p0, 0x28

    .line 415
    .line 416
    const/16 v3, 0x28

    .line 417
    .line 418
    if-ne v1, v3, :cond_20

    .line 419
    .line 420
    const-string v1, "INVALID_IE"

    .line 421
    .line 422
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 423
    .line 424
    .line 425
    or-int/lit8 v2, v2, 0x28

    .line 426
    .line 427
    :cond_20
    and-int/lit8 v1, p0, 0x29

    .line 428
    .line 429
    const/16 v3, 0x29

    .line 430
    .line 431
    if-ne v1, v3, :cond_21

    .line 432
    .line 433
    const-string v1, "GROUP_CIPHER_NOT_VALID"

    .line 434
    .line 435
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 436
    .line 437
    .line 438
    or-int/lit8 v2, v2, 0x29

    .line 439
    .line 440
    :cond_21
    and-int/lit8 v1, p0, 0x2a

    .line 441
    .line 442
    const/16 v3, 0x2a

    .line 443
    .line 444
    if-ne v1, v3, :cond_22

    .line 445
    .line 446
    const-string v1, "PAIRWISE_CIPHER_NOT_VALID"

    .line 447
    .line 448
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 449
    .line 450
    .line 451
    or-int/lit8 v2, v2, 0x2a

    .line 452
    .line 453
    :cond_22
    and-int/lit8 v1, p0, 0x2b

    .line 454
    .line 455
    const/16 v3, 0x2b

    .line 456
    .line 457
    if-ne v1, v3, :cond_23

    .line 458
    .line 459
    const-string v1, "AKMP_NOT_VALID"

    .line 460
    .line 461
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 462
    .line 463
    .line 464
    or-int/lit8 v2, v2, 0x2b

    .line 465
    .line 466
    :cond_23
    and-int/lit8 v1, p0, 0x2c

    .line 467
    .line 468
    const/16 v3, 0x2c

    .line 469
    .line 470
    if-ne v1, v3, :cond_24

    .line 471
    .line 472
    const-string v1, "UNSUPPORTED_RSN_IE_VERSION"

    .line 473
    .line 474
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 475
    .line 476
    .line 477
    or-int/lit8 v2, v2, 0x2c

    .line 478
    .line 479
    :cond_24
    and-int/lit8 v1, p0, 0x2d

    .line 480
    .line 481
    const/16 v3, 0x2d

    .line 482
    .line 483
    if-ne v1, v3, :cond_25

    .line 484
    .line 485
    const-string v1, "INVALID_RSN_IE_CAPAB"

    .line 486
    .line 487
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 488
    .line 489
    .line 490
    or-int/lit8 v2, v2, 0x2d

    .line 491
    .line 492
    :cond_25
    and-int/lit8 v1, p0, 0x2e

    .line 493
    .line 494
    const/16 v3, 0x2e

    .line 495
    .line 496
    if-ne v1, v3, :cond_26

    .line 497
    .line 498
    const-string v1, "CIPHER_REJECTED_PER_POLICY"

    .line 499
    .line 500
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 501
    .line 502
    .line 503
    or-int/lit8 v2, v2, 0x2e

    .line 504
    .line 505
    :cond_26
    and-int/lit8 v1, p0, 0x2f

    .line 506
    .line 507
    const/16 v3, 0x2f

    .line 508
    .line 509
    if-ne v1, v3, :cond_27

    .line 510
    .line 511
    const-string v1, "TS_NOT_CREATED"

    .line 512
    .line 513
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 514
    .line 515
    .line 516
    or-int/lit8 v2, v2, 0x2f

    .line 517
    .line 518
    :cond_27
    and-int/lit8 v1, p0, 0x30

    .line 519
    .line 520
    const/16 v3, 0x30

    .line 521
    .line 522
    if-ne v1, v3, :cond_28

    .line 523
    .line 524
    const-string v1, "DIRECT_LINK_NOT_ALLOWED"

    .line 525
    .line 526
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 527
    .line 528
    .line 529
    or-int/lit8 v2, v2, 0x30

    .line 530
    .line 531
    :cond_28
    and-int/lit8 v1, p0, 0x31

    .line 532
    .line 533
    const/16 v3, 0x31

    .line 534
    .line 535
    if-ne v1, v3, :cond_29

    .line 536
    .line 537
    const-string v1, "DEST_STA_NOT_PRESENT"

    .line 538
    .line 539
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 540
    .line 541
    .line 542
    or-int/lit8 v2, v2, 0x31

    .line 543
    .line 544
    :cond_29
    and-int/lit8 v1, p0, 0x32

    .line 545
    .line 546
    const/16 v3, 0x32

    .line 547
    .line 548
    if-ne v1, v3, :cond_2a

    .line 549
    .line 550
    const-string v1, "DEST_STA_NOT_QOS_STA"

    .line 551
    .line 552
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 553
    .line 554
    .line 555
    or-int/lit8 v2, v2, 0x32

    .line 556
    .line 557
    :cond_2a
    and-int/lit8 v1, p0, 0x33

    .line 558
    .line 559
    const/16 v3, 0x33

    .line 560
    .line 561
    if-ne v1, v3, :cond_2b

    .line 562
    .line 563
    const-string v1, "ASSOC_DENIED_LISTEN_INT_TOO_LARGE"

    .line 564
    .line 565
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 566
    .line 567
    .line 568
    or-int/lit8 v2, v2, 0x33

    .line 569
    .line 570
    :cond_2b
    and-int/lit8 v1, p0, 0x34

    .line 571
    .line 572
    const/16 v3, 0x34

    .line 573
    .line 574
    if-ne v1, v3, :cond_2c

    .line 575
    .line 576
    const-string v1, "INVALID_FT_ACTION_FRAME_COUNT"

    .line 577
    .line 578
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 579
    .line 580
    .line 581
    or-int/lit8 v2, v2, 0x34

    .line 582
    .line 583
    :cond_2c
    and-int/lit8 v1, p0, 0x35

    .line 584
    .line 585
    const/16 v3, 0x35

    .line 586
    .line 587
    if-ne v1, v3, :cond_2d

    .line 588
    .line 589
    const-string v1, "INVALID_PMKID"

    .line 590
    .line 591
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 592
    .line 593
    .line 594
    or-int/lit8 v2, v2, 0x35

    .line 595
    .line 596
    :cond_2d
    and-int/lit8 v1, p0, 0x36

    .line 597
    .line 598
    const/16 v3, 0x36

    .line 599
    .line 600
    if-ne v1, v3, :cond_2e

    .line 601
    .line 602
    const-string v1, "INVALID_MDIE"

    .line 603
    .line 604
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 605
    .line 606
    .line 607
    or-int/lit8 v2, v2, 0x36

    .line 608
    .line 609
    :cond_2e
    and-int/lit8 v1, p0, 0x37

    .line 610
    .line 611
    const/16 v3, 0x37

    .line 612
    .line 613
    if-ne v1, v3, :cond_2f

    .line 614
    .line 615
    const-string v1, "INVALID_FTIE"

    .line 616
    .line 617
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 618
    .line 619
    .line 620
    or-int/lit8 v2, v2, 0x37

    .line 621
    .line 622
    :cond_2f
    and-int/lit8 v1, p0, 0x38

    .line 623
    .line 624
    const/16 v3, 0x38

    .line 625
    .line 626
    if-ne v1, v3, :cond_30

    .line 627
    .line 628
    const-string v1, "REQUESTED_TCLAS_NOT_SUPPORTED"

    .line 629
    .line 630
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 631
    .line 632
    .line 633
    or-int/lit8 v2, v2, 0x38

    .line 634
    .line 635
    :cond_30
    and-int/lit8 v1, p0, 0x39

    .line 636
    .line 637
    const/16 v3, 0x39

    .line 638
    .line 639
    if-ne v1, v3, :cond_31

    .line 640
    .line 641
    const-string v1, "INSUFFICIENT_TCLAS_PROCESSING_RESOURCES"

    .line 642
    .line 643
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 644
    .line 645
    .line 646
    or-int/lit8 v2, v2, 0x39

    .line 647
    .line 648
    :cond_31
    and-int/lit8 v1, p0, 0x3a

    .line 649
    .line 650
    const/16 v3, 0x3a

    .line 651
    .line 652
    if-ne v1, v3, :cond_32

    .line 653
    .line 654
    const-string v1, "TRY_ANOTHER_BSS"

    .line 655
    .line 656
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 657
    .line 658
    .line 659
    or-int/lit8 v2, v2, 0x3a

    .line 660
    .line 661
    :cond_32
    and-int/lit8 v1, p0, 0x3b

    .line 662
    .line 663
    const/16 v3, 0x3b

    .line 664
    .line 665
    if-ne v1, v3, :cond_33

    .line 666
    .line 667
    const-string v1, "GAS_ADV_PROTO_NOT_SUPPORTED"

    .line 668
    .line 669
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 670
    .line 671
    .line 672
    or-int/lit8 v2, v2, 0x3b

    .line 673
    .line 674
    :cond_33
    and-int/lit8 v1, p0, 0x3c

    .line 675
    .line 676
    const/16 v3, 0x3c

    .line 677
    .line 678
    if-ne v1, v3, :cond_34

    .line 679
    .line 680
    const-string v1, "NO_OUTSTANDING_GAS_REQ"

    .line 681
    .line 682
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 683
    .line 684
    .line 685
    or-int/lit8 v2, v2, 0x3c

    .line 686
    .line 687
    :cond_34
    and-int/lit8 v1, p0, 0x3d

    .line 688
    .line 689
    const/16 v3, 0x3d

    .line 690
    .line 691
    if-ne v1, v3, :cond_35

    .line 692
    .line 693
    const-string v1, "GAS_RESP_NOT_RECEIVED"

    .line 694
    .line 695
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 696
    .line 697
    .line 698
    or-int/lit8 v2, v2, 0x3d

    .line 699
    .line 700
    :cond_35
    and-int/lit8 v1, p0, 0x3e

    .line 701
    .line 702
    const/16 v3, 0x3e

    .line 703
    .line 704
    if-ne v1, v3, :cond_36

    .line 705
    .line 706
    const-string v1, "STA_TIMED_OUT_WAITING_FOR_GAS_RESP"

    .line 707
    .line 708
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 709
    .line 710
    .line 711
    or-int/lit8 v2, v2, 0x3e

    .line 712
    .line 713
    :cond_36
    and-int/lit8 v1, p0, 0x3f

    .line 714
    .line 715
    const/16 v3, 0x3f

    .line 716
    .line 717
    if-ne v1, v3, :cond_37

    .line 718
    .line 719
    const-string v1, "GAS_RESP_LARGER_THAN_LIMIT"

    .line 720
    .line 721
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 722
    .line 723
    .line 724
    const/16 v2, 0x3f

    .line 725
    .line 726
    :cond_37
    and-int/lit8 v1, p0, 0x40

    .line 727
    .line 728
    const/16 v3, 0x40

    .line 729
    .line 730
    if-ne v1, v3, :cond_38

    .line 731
    .line 732
    const-string v1, "REQ_REFUSED_HOME"

    .line 733
    .line 734
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 735
    .line 736
    .line 737
    or-int/lit8 v2, v2, 0x40

    .line 738
    .line 739
    :cond_38
    and-int/lit8 v1, p0, 0x41

    .line 740
    .line 741
    const/16 v3, 0x41

    .line 742
    .line 743
    if-ne v1, v3, :cond_39

    .line 744
    .line 745
    const-string v1, "ADV_SRV_UNREACHABLE"

    .line 746
    .line 747
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 748
    .line 749
    .line 750
    or-int/lit8 v2, v2, 0x41

    .line 751
    .line 752
    :cond_39
    and-int/lit8 v1, p0, 0x43

    .line 753
    .line 754
    const/16 v3, 0x43

    .line 755
    .line 756
    if-ne v1, v3, :cond_3a

    .line 757
    .line 758
    const-string v1, "REQ_REFUSED_SSPN"

    .line 759
    .line 760
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 761
    .line 762
    .line 763
    or-int/lit8 v2, v2, 0x43

    .line 764
    .line 765
    :cond_3a
    and-int/lit8 v1, p0, 0x44

    .line 766
    .line 767
    const/16 v3, 0x44

    .line 768
    .line 769
    if-ne v1, v3, :cond_3b

    .line 770
    .line 771
    const-string v1, "REQ_REFUSED_UNAUTH_ACCESS"

    .line 772
    .line 773
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 774
    .line 775
    .line 776
    or-int/lit8 v2, v2, 0x44

    .line 777
    .line 778
    :cond_3b
    and-int/lit8 v1, p0, 0x48

    .line 779
    .line 780
    const/16 v3, 0x48

    .line 781
    .line 782
    if-ne v1, v3, :cond_3c

    .line 783
    .line 784
    const-string v1, "INVALID_RSNIE"

    .line 785
    .line 786
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 787
    .line 788
    .line 789
    or-int/lit8 v2, v2, 0x48

    .line 790
    .line 791
    :cond_3c
    and-int/lit8 v1, p0, 0x49

    .line 792
    .line 793
    const/16 v3, 0x49

    .line 794
    .line 795
    if-ne v1, v3, :cond_3d

    .line 796
    .line 797
    const-string v1, "U_APSD_COEX_NOT_SUPPORTED"

    .line 798
    .line 799
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 800
    .line 801
    .line 802
    or-int/lit8 v2, v2, 0x49

    .line 803
    .line 804
    :cond_3d
    and-int/lit8 v1, p0, 0x4a

    .line 805
    .line 806
    const/16 v3, 0x4a

    .line 807
    .line 808
    if-ne v1, v3, :cond_3e

    .line 809
    .line 810
    const-string v1, "U_APSD_COEX_MODE_NOT_SUPPORTED"

    .line 811
    .line 812
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 813
    .line 814
    .line 815
    or-int/lit8 v2, v2, 0x4a

    .line 816
    .line 817
    :cond_3e
    and-int/lit8 v1, p0, 0x4b

    .line 818
    .line 819
    const/16 v3, 0x4b

    .line 820
    .line 821
    if-ne v1, v3, :cond_3f

    .line 822
    .line 823
    const-string v1, "BAD_INTERVAL_WITH_U_APSD_COEX"

    .line 824
    .line 825
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 826
    .line 827
    .line 828
    or-int/lit8 v2, v2, 0x4b

    .line 829
    .line 830
    :cond_3f
    and-int/lit8 v1, p0, 0x4c

    .line 831
    .line 832
    const/16 v3, 0x4c

    .line 833
    .line 834
    if-ne v1, v3, :cond_40

    .line 835
    .line 836
    const-string v1, "ANTI_CLOGGING_TOKEN_REQ"

    .line 837
    .line 838
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 839
    .line 840
    .line 841
    or-int/lit8 v2, v2, 0x4c

    .line 842
    .line 843
    :cond_40
    and-int/lit8 v1, p0, 0x4d

    .line 844
    .line 845
    const/16 v3, 0x4d

    .line 846
    .line 847
    if-ne v1, v3, :cond_41

    .line 848
    .line 849
    const-string v1, "FINITE_CYCLIC_GROUP_NOT_SUPPORTED"

    .line 850
    .line 851
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 852
    .line 853
    .line 854
    or-int/lit8 v2, v2, 0x4d

    .line 855
    .line 856
    :cond_41
    and-int/lit8 v1, p0, 0x4e

    .line 857
    .line 858
    const/16 v3, 0x4e

    .line 859
    .line 860
    if-ne v1, v3, :cond_42

    .line 861
    .line 862
    const-string v1, "CANNOT_FIND_ALT_TBTT"

    .line 863
    .line 864
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 865
    .line 866
    .line 867
    or-int/lit8 v2, v2, 0x4e

    .line 868
    .line 869
    :cond_42
    and-int/lit8 v1, p0, 0x4f

    .line 870
    .line 871
    const/16 v3, 0x4f

    .line 872
    .line 873
    if-ne v1, v3, :cond_43

    .line 874
    .line 875
    const-string v1, "TRANSMISSION_FAILURE"

    .line 876
    .line 877
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 878
    .line 879
    .line 880
    or-int/lit8 v2, v2, 0x4f

    .line 881
    .line 882
    :cond_43
    and-int/lit8 v1, p0, 0x50

    .line 883
    .line 884
    const/16 v3, 0x50

    .line 885
    .line 886
    if-ne v1, v3, :cond_44

    .line 887
    .line 888
    const-string v1, "REQ_TCLAS_NOT_SUPPORTED"

    .line 889
    .line 890
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 891
    .line 892
    .line 893
    or-int/lit8 v2, v2, 0x50

    .line 894
    .line 895
    :cond_44
    and-int/lit8 v1, p0, 0x51

    .line 896
    .line 897
    const/16 v3, 0x51

    .line 898
    .line 899
    if-ne v1, v3, :cond_45

    .line 900
    .line 901
    const-string v1, "TCLAS_RESOURCES_EXCHAUSTED"

    .line 902
    .line 903
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 904
    .line 905
    .line 906
    or-int/lit8 v2, v2, 0x51

    .line 907
    .line 908
    :cond_45
    and-int/lit8 v1, p0, 0x52

    .line 909
    .line 910
    const/16 v3, 0x52

    .line 911
    .line 912
    if-ne v1, v3, :cond_46

    .line 913
    .line 914
    const-string v1, "REJECTED_WITH_SUGGESTED_BSS_TRANSITION"

    .line 915
    .line 916
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 917
    .line 918
    .line 919
    or-int/lit8 v2, v2, 0x52

    .line 920
    .line 921
    :cond_46
    and-int/lit8 v1, p0, 0x53

    .line 922
    .line 923
    const/16 v3, 0x53

    .line 924
    .line 925
    if-ne v1, v3, :cond_47

    .line 926
    .line 927
    const-string v1, "REJECT_WITH_SCHEDULE"

    .line 928
    .line 929
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 930
    .line 931
    .line 932
    or-int/lit8 v2, v2, 0x53

    .line 933
    .line 934
    :cond_47
    and-int/lit8 v1, p0, 0x54

    .line 935
    .line 936
    const/16 v3, 0x54

    .line 937
    .line 938
    if-ne v1, v3, :cond_48

    .line 939
    .line 940
    const-string v1, "REJECT_NO_WAKEUP_SPECIFIED"

    .line 941
    .line 942
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 943
    .line 944
    .line 945
    or-int/lit8 v2, v2, 0x54

    .line 946
    .line 947
    :cond_48
    and-int/lit8 v1, p0, 0x55

    .line 948
    .line 949
    const/16 v3, 0x55

    .line 950
    .line 951
    if-ne v1, v3, :cond_49

    .line 952
    .line 953
    const-string v1, "SUCCESS_POWER_SAVE_MODE"

    .line 954
    .line 955
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 956
    .line 957
    .line 958
    or-int/lit8 v2, v2, 0x55

    .line 959
    .line 960
    :cond_49
    and-int/lit8 v1, p0, 0x56

    .line 961
    .line 962
    const/16 v3, 0x56

    .line 963
    .line 964
    if-ne v1, v3, :cond_4a

    .line 965
    .line 966
    const-string v1, "PENDING_ADMITTING_FST_SESSION"

    .line 967
    .line 968
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 969
    .line 970
    .line 971
    or-int/lit8 v2, v2, 0x56

    .line 972
    .line 973
    :cond_4a
    and-int/lit8 v1, p0, 0x57

    .line 974
    .line 975
    const/16 v3, 0x57

    .line 976
    .line 977
    if-ne v1, v3, :cond_4b

    .line 978
    .line 979
    const-string v1, "PERFORMING_FST_NOW"

    .line 980
    .line 981
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 982
    .line 983
    .line 984
    or-int/lit8 v2, v2, 0x57

    .line 985
    .line 986
    :cond_4b
    and-int/lit8 v1, p0, 0x58

    .line 987
    .line 988
    const/16 v3, 0x58

    .line 989
    .line 990
    if-ne v1, v3, :cond_4c

    .line 991
    .line 992
    const-string v1, "PENDING_GAP_IN_BA_WINDOW"

    .line 993
    .line 994
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 995
    .line 996
    .line 997
    or-int/lit8 v2, v2, 0x58

    .line 998
    .line 999
    :cond_4c
    and-int/lit8 v1, p0, 0x59

    .line 1000
    .line 1001
    const/16 v3, 0x59

    .line 1002
    .line 1003
    if-ne v1, v3, :cond_4d

    .line 1004
    .line 1005
    const-string v1, "REJECT_U_PID_SETTING"

    .line 1006
    .line 1007
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1008
    .line 1009
    .line 1010
    or-int/lit8 v2, v2, 0x59

    .line 1011
    .line 1012
    :cond_4d
    and-int/lit8 v1, p0, 0x5c

    .line 1013
    .line 1014
    const/16 v3, 0x5c

    .line 1015
    .line 1016
    if-ne v1, v3, :cond_4e

    .line 1017
    .line 1018
    const-string v1, "REFUSED_EXTERNAL_REASON"

    .line 1019
    .line 1020
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1021
    .line 1022
    .line 1023
    or-int/lit8 v2, v2, 0x5c

    .line 1024
    .line 1025
    :cond_4e
    and-int/lit8 v1, p0, 0x5d

    .line 1026
    .line 1027
    const/16 v3, 0x5d

    .line 1028
    .line 1029
    if-ne v1, v3, :cond_4f

    .line 1030
    .line 1031
    const-string v1, "REFUSED_AP_OUT_OF_MEMORY"

    .line 1032
    .line 1033
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1034
    .line 1035
    .line 1036
    or-int/lit8 v2, v2, 0x5d

    .line 1037
    .line 1038
    :cond_4f
    and-int/lit8 v1, p0, 0x5e

    .line 1039
    .line 1040
    const/16 v3, 0x5e

    .line 1041
    .line 1042
    if-ne v1, v3, :cond_50

    .line 1043
    .line 1044
    const-string v1, "REJECTED_EMERGENCY_SERVICE_NOT_SUPPORTED"

    .line 1045
    .line 1046
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1047
    .line 1048
    .line 1049
    or-int/lit8 v2, v2, 0x5e

    .line 1050
    .line 1051
    :cond_50
    and-int/lit8 v1, p0, 0x5f

    .line 1052
    .line 1053
    const/16 v3, 0x5f

    .line 1054
    .line 1055
    if-ne v1, v3, :cond_51

    .line 1056
    .line 1057
    const-string v1, "QUERY_RESP_OUTSTANDING"

    .line 1058
    .line 1059
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1060
    .line 1061
    .line 1062
    or-int/lit8 v2, v2, 0x5f

    .line 1063
    .line 1064
    :cond_51
    and-int/lit8 v1, p0, 0x60

    .line 1065
    .line 1066
    const/16 v3, 0x60

    .line 1067
    .line 1068
    if-ne v1, v3, :cond_52

    .line 1069
    .line 1070
    const-string v1, "REJECT_DSE_BAND"

    .line 1071
    .line 1072
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1073
    .line 1074
    .line 1075
    or-int/lit8 v2, v2, 0x60

    .line 1076
    .line 1077
    :cond_52
    and-int/lit8 v1, p0, 0x61

    .line 1078
    .line 1079
    const/16 v3, 0x61

    .line 1080
    .line 1081
    if-ne v1, v3, :cond_53

    .line 1082
    .line 1083
    const-string v1, "TCLAS_PROCESSING_TERMINATED"

    .line 1084
    .line 1085
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1086
    .line 1087
    .line 1088
    or-int/lit8 v2, v2, 0x61

    .line 1089
    .line 1090
    :cond_53
    and-int/lit8 v1, p0, 0x62

    .line 1091
    .line 1092
    const/16 v3, 0x62

    .line 1093
    .line 1094
    if-ne v1, v3, :cond_54

    .line 1095
    .line 1096
    const-string v1, "TS_SCHEDULE_CONFLICT"

    .line 1097
    .line 1098
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1099
    .line 1100
    .line 1101
    or-int/lit8 v2, v2, 0x62

    .line 1102
    .line 1103
    :cond_54
    and-int/lit8 v1, p0, 0x63

    .line 1104
    .line 1105
    const/16 v3, 0x63

    .line 1106
    .line 1107
    if-ne v1, v3, :cond_55

    .line 1108
    .line 1109
    const-string v1, "DENIED_WITH_SUGGESTED_BAND_AND_CHANNEL"

    .line 1110
    .line 1111
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1112
    .line 1113
    .line 1114
    or-int/lit8 v2, v2, 0x63

    .line 1115
    .line 1116
    :cond_55
    and-int/lit8 v1, p0, 0x64

    .line 1117
    .line 1118
    const/16 v3, 0x64

    .line 1119
    .line 1120
    if-ne v1, v3, :cond_56

    .line 1121
    .line 1122
    const-string v1, "MCCAOP_RESERVATION_CONFLICT"

    .line 1123
    .line 1124
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1125
    .line 1126
    .line 1127
    or-int/lit8 v2, v2, 0x64

    .line 1128
    .line 1129
    :cond_56
    and-int/lit8 v1, p0, 0x65

    .line 1130
    .line 1131
    const/16 v3, 0x65

    .line 1132
    .line 1133
    if-ne v1, v3, :cond_57

    .line 1134
    .line 1135
    const-string v1, "MAF_LIMIT_EXCEEDED"

    .line 1136
    .line 1137
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1138
    .line 1139
    .line 1140
    or-int/lit8 v2, v2, 0x65

    .line 1141
    .line 1142
    :cond_57
    and-int/lit8 v1, p0, 0x66

    .line 1143
    .line 1144
    const/16 v3, 0x66

    .line 1145
    .line 1146
    if-ne v1, v3, :cond_58

    .line 1147
    .line 1148
    const-string v1, "MCCA_TRACK_LIMIT_EXCEEDED"

    .line 1149
    .line 1150
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1151
    .line 1152
    .line 1153
    or-int/lit8 v2, v2, 0x66

    .line 1154
    .line 1155
    :cond_58
    and-int/lit8 v1, p0, 0x67

    .line 1156
    .line 1157
    const/16 v3, 0x67

    .line 1158
    .line 1159
    if-ne v1, v3, :cond_59

    .line 1160
    .line 1161
    const-string v1, "DENIED_DUE_TO_SPECTRUM_MANAGEMENT"

    .line 1162
    .line 1163
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1164
    .line 1165
    .line 1166
    or-int/lit8 v2, v2, 0x67

    .line 1167
    .line 1168
    :cond_59
    and-int/lit8 v1, p0, 0x68

    .line 1169
    .line 1170
    const/16 v3, 0x68

    .line 1171
    .line 1172
    if-ne v1, v3, :cond_5a

    .line 1173
    .line 1174
    const-string v1, "ASSOC_DENIED_NO_VHT"

    .line 1175
    .line 1176
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1177
    .line 1178
    .line 1179
    or-int/lit8 v2, v2, 0x68

    .line 1180
    .line 1181
    :cond_5a
    and-int/lit8 v1, p0, 0x69

    .line 1182
    .line 1183
    const/16 v3, 0x69

    .line 1184
    .line 1185
    if-ne v1, v3, :cond_5b

    .line 1186
    .line 1187
    const-string v1, "ENABLEMENT_DENIED"

    .line 1188
    .line 1189
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1190
    .line 1191
    .line 1192
    or-int/lit8 v2, v2, 0x69

    .line 1193
    .line 1194
    :cond_5b
    and-int/lit8 v1, p0, 0x6a

    .line 1195
    .line 1196
    const/16 v3, 0x6a

    .line 1197
    .line 1198
    if-ne v1, v3, :cond_5c

    .line 1199
    .line 1200
    const-string v1, "RESTRICTION_FROM_AUTHORIZED_GDB"

    .line 1201
    .line 1202
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1203
    .line 1204
    .line 1205
    or-int/lit8 v2, v2, 0x6a

    .line 1206
    .line 1207
    :cond_5c
    and-int/lit8 v1, p0, 0x6b

    .line 1208
    .line 1209
    const/16 v3, 0x6b

    .line 1210
    .line 1211
    if-ne v1, v3, :cond_5d

    .line 1212
    .line 1213
    const-string v1, "AUTHORIZATION_DEENABLED"

    .line 1214
    .line 1215
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1216
    .line 1217
    .line 1218
    or-int/lit8 v2, v2, 0x6b

    .line 1219
    .line 1220
    :cond_5d
    and-int/lit8 v1, p0, 0x70

    .line 1221
    .line 1222
    const/16 v3, 0x70

    .line 1223
    .line 1224
    if-ne v1, v3, :cond_5e

    .line 1225
    .line 1226
    const-string v1, "FILS_AUTHENTICATION_FAILURE"

    .line 1227
    .line 1228
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1229
    .line 1230
    .line 1231
    or-int/lit8 v2, v2, 0x70

    .line 1232
    .line 1233
    :cond_5e
    and-int/lit8 v1, p0, 0x71

    .line 1234
    .line 1235
    const/16 v3, 0x71

    .line 1236
    .line 1237
    if-ne v1, v3, :cond_5f

    .line 1238
    .line 1239
    const-string v1, "UNKNOWN_AUTHENTICATION_SERVER"

    .line 1240
    .line 1241
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1242
    .line 1243
    .line 1244
    or-int/lit8 v2, v2, 0x71

    .line 1245
    .line 1246
    :cond_5f
    if-eq p0, v2, :cond_60

    .line 1247
    .line 1248
    new-instance v1, Ljava/lang/StringBuilder;

    .line 1249
    .line 1250
    const-string v3, "0x"

    .line 1251
    .line 1252
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1253
    .line 1254
    .line 1255
    not-int v2, v2

    .line 1256
    and-int/2addr p0, v2

    .line 1257
    invoke-static {p0, v1, v0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip$Stub$$ExternalSyntheticOutline0;->m(ILjava/lang/StringBuilder;Ljava/util/ArrayList;)V

    .line 1258
    .line 1259
    .line 1260
    :cond_60
    const-string p0, " | "

    .line 1261
    .line 1262
    invoke-static {p0, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    .line 1263
    .line 1264
    .line 1265
    move-result-object p0

    .line 1266
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
    const-string p0, "UNSPECIFIED_FAILURE"

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
    const-string p0, "TDLS_WAKEUP_ALTERNATE"

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
    const-string p0, "TDLS_WAKEUP_REJECT"

    .line 22
    .line 23
    return-object p0

    .line 24
    :cond_3
    const/4 v0, 0x5

    .line 25
    if-ne p0, v0, :cond_4

    .line 26
    .line 27
    const-string p0, "SECURITY_DISABLED"

    .line 28
    .line 29
    return-object p0

    .line 30
    :cond_4
    const/4 v0, 0x6

    .line 31
    if-ne p0, v0, :cond_5

    .line 32
    .line 33
    const-string p0, "UNACCEPTABLE_LIFETIME"

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
    const-string p0, "NOT_IN_SAME_BSS"

    .line 40
    .line 41
    return-object p0

    .line 42
    :cond_6
    const/16 v0, 0xa

    .line 43
    .line 44
    if-ne p0, v0, :cond_7

    .line 45
    .line 46
    const-string p0, "CAPS_UNSUPPORTED"

    .line 47
    .line 48
    return-object p0

    .line 49
    :cond_7
    const/16 v0, 0xb

    .line 50
    .line 51
    if-ne p0, v0, :cond_8

    .line 52
    .line 53
    const-string p0, "REASSOC_NO_ASSOC"

    .line 54
    .line 55
    return-object p0

    .line 56
    :cond_8
    const/16 v0, 0xc

    .line 57
    .line 58
    if-ne p0, v0, :cond_9

    .line 59
    .line 60
    const-string p0, "ASSOC_DENIED_UNSPEC"

    .line 61
    .line 62
    return-object p0

    .line 63
    :cond_9
    const/16 v0, 0xd

    .line 64
    .line 65
    if-ne p0, v0, :cond_a

    .line 66
    .line 67
    const-string p0, "NOT_SUPPORTED_AUTH_ALG"

    .line 68
    .line 69
    return-object p0

    .line 70
    :cond_a
    const/16 v0, 0xe

    .line 71
    .line 72
    if-ne p0, v0, :cond_b

    .line 73
    .line 74
    const-string p0, "UNKNOWN_AUTH_TRANSACTION"

    .line 75
    .line 76
    return-object p0

    .line 77
    :cond_b
    const/16 v0, 0xf

    .line 78
    .line 79
    if-ne p0, v0, :cond_c

    .line 80
    .line 81
    const-string p0, "CHALLENGE_FAIL"

    .line 82
    .line 83
    return-object p0

    .line 84
    :cond_c
    const/16 v0, 0x10

    .line 85
    .line 86
    if-ne p0, v0, :cond_d

    .line 87
    .line 88
    const-string p0, "AUTH_TIMEOUT"

    .line 89
    .line 90
    return-object p0

    .line 91
    :cond_d
    const/16 v0, 0x11

    .line 92
    .line 93
    if-ne p0, v0, :cond_e

    .line 94
    .line 95
    const-string p0, "AP_UNABLE_TO_HANDLE_NEW_STA"

    .line 96
    .line 97
    return-object p0

    .line 98
    :cond_e
    const/16 v0, 0x12

    .line 99
    .line 100
    if-ne p0, v0, :cond_f

    .line 101
    .line 102
    const-string p0, "ASSOC_DENIED_RATES"

    .line 103
    .line 104
    return-object p0

    .line 105
    :cond_f
    const/16 v0, 0x13

    .line 106
    .line 107
    if-ne p0, v0, :cond_10

    .line 108
    .line 109
    const-string p0, "ASSOC_DENIED_NOSHORT"

    .line 110
    .line 111
    return-object p0

    .line 112
    :cond_10
    const/16 v0, 0x16

    .line 113
    .line 114
    if-ne p0, v0, :cond_11

    .line 115
    .line 116
    const-string p0, "SPEC_MGMT_REQUIRED"

    .line 117
    .line 118
    return-object p0

    .line 119
    :cond_11
    const/16 v0, 0x17

    .line 120
    .line 121
    if-ne p0, v0, :cond_12

    .line 122
    .line 123
    const-string p0, "PWR_CAPABILITY_NOT_VALID"

    .line 124
    .line 125
    return-object p0

    .line 126
    :cond_12
    const/16 v0, 0x18

    .line 127
    .line 128
    if-ne p0, v0, :cond_13

    .line 129
    .line 130
    const-string p0, "SUPPORTED_CHANNEL_NOT_VALID"

    .line 131
    .line 132
    return-object p0

    .line 133
    :cond_13
    const/16 v0, 0x19

    .line 134
    .line 135
    if-ne p0, v0, :cond_14

    .line 136
    .line 137
    const-string p0, "ASSOC_DENIED_NO_SHORT_SLOT_TIME"

    .line 138
    .line 139
    return-object p0

    .line 140
    :cond_14
    const/16 v0, 0x1b

    .line 141
    .line 142
    if-ne p0, v0, :cond_15

    .line 143
    .line 144
    const-string p0, "ASSOC_DENIED_NO_HT"

    .line 145
    .line 146
    return-object p0

    .line 147
    :cond_15
    const/16 v0, 0x1c

    .line 148
    .line 149
    if-ne p0, v0, :cond_16

    .line 150
    .line 151
    const-string p0, "R0KH_UNREACHABLE"

    .line 152
    .line 153
    return-object p0

    .line 154
    :cond_16
    const/16 v0, 0x1d

    .line 155
    .line 156
    if-ne p0, v0, :cond_17

    .line 157
    .line 158
    const-string p0, "ASSOC_DENIED_NO_PCO"

    .line 159
    .line 160
    return-object p0

    .line 161
    :cond_17
    const/16 v0, 0x1e

    .line 162
    .line 163
    if-ne p0, v0, :cond_18

    .line 164
    .line 165
    const-string p0, "ASSOC_REJECTED_TEMPORARILY"

    .line 166
    .line 167
    return-object p0

    .line 168
    :cond_18
    const/16 v0, 0x1f

    .line 169
    .line 170
    if-ne p0, v0, :cond_19

    .line 171
    .line 172
    const-string p0, "ROBUST_MGMT_FRAME_POLICY_VIOLATION"

    .line 173
    .line 174
    return-object p0

    .line 175
    :cond_19
    const/16 v0, 0x20

    .line 176
    .line 177
    if-ne p0, v0, :cond_1a

    .line 178
    .line 179
    const-string p0, "UNSPECIFIED_QOS_FAILURE"

    .line 180
    .line 181
    return-object p0

    .line 182
    :cond_1a
    const/16 v0, 0x21

    .line 183
    .line 184
    if-ne p0, v0, :cond_1b

    .line 185
    .line 186
    const-string p0, "DENIED_INSUFFICIENT_BANDWIDTH"

    .line 187
    .line 188
    return-object p0

    .line 189
    :cond_1b
    const/16 v0, 0x22

    .line 190
    .line 191
    if-ne p0, v0, :cond_1c

    .line 192
    .line 193
    const-string p0, "DENIED_POOR_CHANNEL_CONDITIONS"

    .line 194
    .line 195
    return-object p0

    .line 196
    :cond_1c
    const/16 v0, 0x23

    .line 197
    .line 198
    if-ne p0, v0, :cond_1d

    .line 199
    .line 200
    const-string p0, "DENIED_QOS_NOT_SUPPORTED"

    .line 201
    .line 202
    return-object p0

    .line 203
    :cond_1d
    const/16 v0, 0x25

    .line 204
    .line 205
    if-ne p0, v0, :cond_1e

    .line 206
    .line 207
    const-string p0, "REQUEST_DECLINED"

    .line 208
    .line 209
    return-object p0

    .line 210
    :cond_1e
    const/16 v0, 0x26

    .line 211
    .line 212
    if-ne p0, v0, :cond_1f

    .line 213
    .line 214
    const-string p0, "INVALID_PARAMETERS"

    .line 215
    .line 216
    return-object p0

    .line 217
    :cond_1f
    const/16 v0, 0x27

    .line 218
    .line 219
    if-ne p0, v0, :cond_20

    .line 220
    .line 221
    const-string p0, "REJECTED_WITH_SUGGESTED_CHANGES"

    .line 222
    .line 223
    return-object p0

    .line 224
    :cond_20
    const/16 v0, 0x28

    .line 225
    .line 226
    if-ne p0, v0, :cond_21

    .line 227
    .line 228
    const-string p0, "INVALID_IE"

    .line 229
    .line 230
    return-object p0

    .line 231
    :cond_21
    const/16 v0, 0x29

    .line 232
    .line 233
    if-ne p0, v0, :cond_22

    .line 234
    .line 235
    const-string p0, "GROUP_CIPHER_NOT_VALID"

    .line 236
    .line 237
    return-object p0

    .line 238
    :cond_22
    const/16 v0, 0x2a

    .line 239
    .line 240
    if-ne p0, v0, :cond_23

    .line 241
    .line 242
    const-string p0, "PAIRWISE_CIPHER_NOT_VALID"

    .line 243
    .line 244
    return-object p0

    .line 245
    :cond_23
    const/16 v0, 0x2b

    .line 246
    .line 247
    if-ne p0, v0, :cond_24

    .line 248
    .line 249
    const-string p0, "AKMP_NOT_VALID"

    .line 250
    .line 251
    return-object p0

    .line 252
    :cond_24
    const/16 v0, 0x2c

    .line 253
    .line 254
    if-ne p0, v0, :cond_25

    .line 255
    .line 256
    const-string p0, "UNSUPPORTED_RSN_IE_VERSION"

    .line 257
    .line 258
    return-object p0

    .line 259
    :cond_25
    const/16 v0, 0x2d

    .line 260
    .line 261
    if-ne p0, v0, :cond_26

    .line 262
    .line 263
    const-string p0, "INVALID_RSN_IE_CAPAB"

    .line 264
    .line 265
    return-object p0

    .line 266
    :cond_26
    const/16 v0, 0x2e

    .line 267
    .line 268
    if-ne p0, v0, :cond_27

    .line 269
    .line 270
    const-string p0, "CIPHER_REJECTED_PER_POLICY"

    .line 271
    .line 272
    return-object p0

    .line 273
    :cond_27
    const/16 v0, 0x2f

    .line 274
    .line 275
    if-ne p0, v0, :cond_28

    .line 276
    .line 277
    const-string p0, "TS_NOT_CREATED"

    .line 278
    .line 279
    return-object p0

    .line 280
    :cond_28
    const/16 v0, 0x30

    .line 281
    .line 282
    if-ne p0, v0, :cond_29

    .line 283
    .line 284
    const-string p0, "DIRECT_LINK_NOT_ALLOWED"

    .line 285
    .line 286
    return-object p0

    .line 287
    :cond_29
    const/16 v0, 0x31

    .line 288
    .line 289
    if-ne p0, v0, :cond_2a

    .line 290
    .line 291
    const-string p0, "DEST_STA_NOT_PRESENT"

    .line 292
    .line 293
    return-object p0

    .line 294
    :cond_2a
    const/16 v0, 0x32

    .line 295
    .line 296
    if-ne p0, v0, :cond_2b

    .line 297
    .line 298
    const-string p0, "DEST_STA_NOT_QOS_STA"

    .line 299
    .line 300
    return-object p0

    .line 301
    :cond_2b
    const/16 v0, 0x33

    .line 302
    .line 303
    if-ne p0, v0, :cond_2c

    .line 304
    .line 305
    const-string p0, "ASSOC_DENIED_LISTEN_INT_TOO_LARGE"

    .line 306
    .line 307
    return-object p0

    .line 308
    :cond_2c
    const/16 v0, 0x34

    .line 309
    .line 310
    if-ne p0, v0, :cond_2d

    .line 311
    .line 312
    const-string p0, "INVALID_FT_ACTION_FRAME_COUNT"

    .line 313
    .line 314
    return-object p0

    .line 315
    :cond_2d
    const/16 v0, 0x35

    .line 316
    .line 317
    if-ne p0, v0, :cond_2e

    .line 318
    .line 319
    const-string p0, "INVALID_PMKID"

    .line 320
    .line 321
    return-object p0

    .line 322
    :cond_2e
    const/16 v0, 0x36

    .line 323
    .line 324
    if-ne p0, v0, :cond_2f

    .line 325
    .line 326
    const-string p0, "INVALID_MDIE"

    .line 327
    .line 328
    return-object p0

    .line 329
    :cond_2f
    const/16 v0, 0x37

    .line 330
    .line 331
    if-ne p0, v0, :cond_30

    .line 332
    .line 333
    const-string p0, "INVALID_FTIE"

    .line 334
    .line 335
    return-object p0

    .line 336
    :cond_30
    const/16 v0, 0x38

    .line 337
    .line 338
    if-ne p0, v0, :cond_31

    .line 339
    .line 340
    const-string p0, "REQUESTED_TCLAS_NOT_SUPPORTED"

    .line 341
    .line 342
    return-object p0

    .line 343
    :cond_31
    const/16 v0, 0x39

    .line 344
    .line 345
    if-ne p0, v0, :cond_32

    .line 346
    .line 347
    const-string p0, "INSUFFICIENT_TCLAS_PROCESSING_RESOURCES"

    .line 348
    .line 349
    return-object p0

    .line 350
    :cond_32
    const/16 v0, 0x3a

    .line 351
    .line 352
    if-ne p0, v0, :cond_33

    .line 353
    .line 354
    const-string p0, "TRY_ANOTHER_BSS"

    .line 355
    .line 356
    return-object p0

    .line 357
    :cond_33
    const/16 v0, 0x3b

    .line 358
    .line 359
    if-ne p0, v0, :cond_34

    .line 360
    .line 361
    const-string p0, "GAS_ADV_PROTO_NOT_SUPPORTED"

    .line 362
    .line 363
    return-object p0

    .line 364
    :cond_34
    const/16 v0, 0x3c

    .line 365
    .line 366
    if-ne p0, v0, :cond_35

    .line 367
    .line 368
    const-string p0, "NO_OUTSTANDING_GAS_REQ"

    .line 369
    .line 370
    return-object p0

    .line 371
    :cond_35
    const/16 v0, 0x3d

    .line 372
    .line 373
    if-ne p0, v0, :cond_36

    .line 374
    .line 375
    const-string p0, "GAS_RESP_NOT_RECEIVED"

    .line 376
    .line 377
    return-object p0

    .line 378
    :cond_36
    const/16 v0, 0x3e

    .line 379
    .line 380
    if-ne p0, v0, :cond_37

    .line 381
    .line 382
    const-string p0, "STA_TIMED_OUT_WAITING_FOR_GAS_RESP"

    .line 383
    .line 384
    return-object p0

    .line 385
    :cond_37
    const/16 v0, 0x3f

    .line 386
    .line 387
    if-ne p0, v0, :cond_38

    .line 388
    .line 389
    const-string p0, "GAS_RESP_LARGER_THAN_LIMIT"

    .line 390
    .line 391
    return-object p0

    .line 392
    :cond_38
    const/16 v0, 0x40

    .line 393
    .line 394
    if-ne p0, v0, :cond_39

    .line 395
    .line 396
    const-string p0, "REQ_REFUSED_HOME"

    .line 397
    .line 398
    return-object p0

    .line 399
    :cond_39
    const/16 v0, 0x41

    .line 400
    .line 401
    if-ne p0, v0, :cond_3a

    .line 402
    .line 403
    const-string p0, "ADV_SRV_UNREACHABLE"

    .line 404
    .line 405
    return-object p0

    .line 406
    :cond_3a
    const/16 v0, 0x43

    .line 407
    .line 408
    if-ne p0, v0, :cond_3b

    .line 409
    .line 410
    const-string p0, "REQ_REFUSED_SSPN"

    .line 411
    .line 412
    return-object p0

    .line 413
    :cond_3b
    const/16 v0, 0x44

    .line 414
    .line 415
    if-ne p0, v0, :cond_3c

    .line 416
    .line 417
    const-string p0, "REQ_REFUSED_UNAUTH_ACCESS"

    .line 418
    .line 419
    return-object p0

    .line 420
    :cond_3c
    const/16 v0, 0x48

    .line 421
    .line 422
    if-ne p0, v0, :cond_3d

    .line 423
    .line 424
    const-string p0, "INVALID_RSNIE"

    .line 425
    .line 426
    return-object p0

    .line 427
    :cond_3d
    const/16 v0, 0x49

    .line 428
    .line 429
    if-ne p0, v0, :cond_3e

    .line 430
    .line 431
    const-string p0, "U_APSD_COEX_NOT_SUPPORTED"

    .line 432
    .line 433
    return-object p0

    .line 434
    :cond_3e
    const/16 v0, 0x4a

    .line 435
    .line 436
    if-ne p0, v0, :cond_3f

    .line 437
    .line 438
    const-string p0, "U_APSD_COEX_MODE_NOT_SUPPORTED"

    .line 439
    .line 440
    return-object p0

    .line 441
    :cond_3f
    const/16 v0, 0x4b

    .line 442
    .line 443
    if-ne p0, v0, :cond_40

    .line 444
    .line 445
    const-string p0, "BAD_INTERVAL_WITH_U_APSD_COEX"

    .line 446
    .line 447
    return-object p0

    .line 448
    :cond_40
    const/16 v0, 0x4c

    .line 449
    .line 450
    if-ne p0, v0, :cond_41

    .line 451
    .line 452
    const-string p0, "ANTI_CLOGGING_TOKEN_REQ"

    .line 453
    .line 454
    return-object p0

    .line 455
    :cond_41
    const/16 v0, 0x4d

    .line 456
    .line 457
    if-ne p0, v0, :cond_42

    .line 458
    .line 459
    const-string p0, "FINITE_CYCLIC_GROUP_NOT_SUPPORTED"

    .line 460
    .line 461
    return-object p0

    .line 462
    :cond_42
    const/16 v0, 0x4e

    .line 463
    .line 464
    if-ne p0, v0, :cond_43

    .line 465
    .line 466
    const-string p0, "CANNOT_FIND_ALT_TBTT"

    .line 467
    .line 468
    return-object p0

    .line 469
    :cond_43
    const/16 v0, 0x4f

    .line 470
    .line 471
    if-ne p0, v0, :cond_44

    .line 472
    .line 473
    const-string p0, "TRANSMISSION_FAILURE"

    .line 474
    .line 475
    return-object p0

    .line 476
    :cond_44
    const/16 v0, 0x50

    .line 477
    .line 478
    if-ne p0, v0, :cond_45

    .line 479
    .line 480
    const-string p0, "REQ_TCLAS_NOT_SUPPORTED"

    .line 481
    .line 482
    return-object p0

    .line 483
    :cond_45
    const/16 v0, 0x51

    .line 484
    .line 485
    if-ne p0, v0, :cond_46

    .line 486
    .line 487
    const-string p0, "TCLAS_RESOURCES_EXCHAUSTED"

    .line 488
    .line 489
    return-object p0

    .line 490
    :cond_46
    const/16 v0, 0x52

    .line 491
    .line 492
    if-ne p0, v0, :cond_47

    .line 493
    .line 494
    const-string p0, "REJECTED_WITH_SUGGESTED_BSS_TRANSITION"

    .line 495
    .line 496
    return-object p0

    .line 497
    :cond_47
    const/16 v0, 0x53

    .line 498
    .line 499
    if-ne p0, v0, :cond_48

    .line 500
    .line 501
    const-string p0, "REJECT_WITH_SCHEDULE"

    .line 502
    .line 503
    return-object p0

    .line 504
    :cond_48
    const/16 v0, 0x54

    .line 505
    .line 506
    if-ne p0, v0, :cond_49

    .line 507
    .line 508
    const-string p0, "REJECT_NO_WAKEUP_SPECIFIED"

    .line 509
    .line 510
    return-object p0

    .line 511
    :cond_49
    const/16 v0, 0x55

    .line 512
    .line 513
    if-ne p0, v0, :cond_4a

    .line 514
    .line 515
    const-string p0, "SUCCESS_POWER_SAVE_MODE"

    .line 516
    .line 517
    return-object p0

    .line 518
    :cond_4a
    const/16 v0, 0x56

    .line 519
    .line 520
    if-ne p0, v0, :cond_4b

    .line 521
    .line 522
    const-string p0, "PENDING_ADMITTING_FST_SESSION"

    .line 523
    .line 524
    return-object p0

    .line 525
    :cond_4b
    const/16 v0, 0x57

    .line 526
    .line 527
    if-ne p0, v0, :cond_4c

    .line 528
    .line 529
    const-string p0, "PERFORMING_FST_NOW"

    .line 530
    .line 531
    return-object p0

    .line 532
    :cond_4c
    const/16 v0, 0x58

    .line 533
    .line 534
    if-ne p0, v0, :cond_4d

    .line 535
    .line 536
    const-string p0, "PENDING_GAP_IN_BA_WINDOW"

    .line 537
    .line 538
    return-object p0

    .line 539
    :cond_4d
    const/16 v0, 0x59

    .line 540
    .line 541
    if-ne p0, v0, :cond_4e

    .line 542
    .line 543
    const-string p0, "REJECT_U_PID_SETTING"

    .line 544
    .line 545
    return-object p0

    .line 546
    :cond_4e
    const/16 v0, 0x5c

    .line 547
    .line 548
    if-ne p0, v0, :cond_4f

    .line 549
    .line 550
    const-string p0, "REFUSED_EXTERNAL_REASON"

    .line 551
    .line 552
    return-object p0

    .line 553
    :cond_4f
    const/16 v0, 0x5d

    .line 554
    .line 555
    if-ne p0, v0, :cond_50

    .line 556
    .line 557
    const-string p0, "REFUSED_AP_OUT_OF_MEMORY"

    .line 558
    .line 559
    return-object p0

    .line 560
    :cond_50
    const/16 v0, 0x5e

    .line 561
    .line 562
    if-ne p0, v0, :cond_51

    .line 563
    .line 564
    const-string p0, "REJECTED_EMERGENCY_SERVICE_NOT_SUPPORTED"

    .line 565
    .line 566
    return-object p0

    .line 567
    :cond_51
    const/16 v0, 0x5f

    .line 568
    .line 569
    if-ne p0, v0, :cond_52

    .line 570
    .line 571
    const-string p0, "QUERY_RESP_OUTSTANDING"

    .line 572
    .line 573
    return-object p0

    .line 574
    :cond_52
    const/16 v0, 0x60

    .line 575
    .line 576
    if-ne p0, v0, :cond_53

    .line 577
    .line 578
    const-string p0, "REJECT_DSE_BAND"

    .line 579
    .line 580
    return-object p0

    .line 581
    :cond_53
    const/16 v0, 0x61

    .line 582
    .line 583
    if-ne p0, v0, :cond_54

    .line 584
    .line 585
    const-string p0, "TCLAS_PROCESSING_TERMINATED"

    .line 586
    .line 587
    return-object p0

    .line 588
    :cond_54
    const/16 v0, 0x62

    .line 589
    .line 590
    if-ne p0, v0, :cond_55

    .line 591
    .line 592
    const-string p0, "TS_SCHEDULE_CONFLICT"

    .line 593
    .line 594
    return-object p0

    .line 595
    :cond_55
    const/16 v0, 0x63

    .line 596
    .line 597
    if-ne p0, v0, :cond_56

    .line 598
    .line 599
    const-string p0, "DENIED_WITH_SUGGESTED_BAND_AND_CHANNEL"

    .line 600
    .line 601
    return-object p0

    .line 602
    :cond_56
    const/16 v0, 0x64

    .line 603
    .line 604
    if-ne p0, v0, :cond_57

    .line 605
    .line 606
    const-string p0, "MCCAOP_RESERVATION_CONFLICT"

    .line 607
    .line 608
    return-object p0

    .line 609
    :cond_57
    const/16 v0, 0x65

    .line 610
    .line 611
    if-ne p0, v0, :cond_58

    .line 612
    .line 613
    const-string p0, "MAF_LIMIT_EXCEEDED"

    .line 614
    .line 615
    return-object p0

    .line 616
    :cond_58
    const/16 v0, 0x66

    .line 617
    .line 618
    if-ne p0, v0, :cond_59

    .line 619
    .line 620
    const-string p0, "MCCA_TRACK_LIMIT_EXCEEDED"

    .line 621
    .line 622
    return-object p0

    .line 623
    :cond_59
    const/16 v0, 0x67

    .line 624
    .line 625
    if-ne p0, v0, :cond_5a

    .line 626
    .line 627
    const-string p0, "DENIED_DUE_TO_SPECTRUM_MANAGEMENT"

    .line 628
    .line 629
    return-object p0

    .line 630
    :cond_5a
    const/16 v0, 0x68

    .line 631
    .line 632
    if-ne p0, v0, :cond_5b

    .line 633
    .line 634
    const-string p0, "ASSOC_DENIED_NO_VHT"

    .line 635
    .line 636
    return-object p0

    .line 637
    :cond_5b
    const/16 v0, 0x69

    .line 638
    .line 639
    if-ne p0, v0, :cond_5c

    .line 640
    .line 641
    const-string p0, "ENABLEMENT_DENIED"

    .line 642
    .line 643
    return-object p0

    .line 644
    :cond_5c
    const/16 v0, 0x6a

    .line 645
    .line 646
    if-ne p0, v0, :cond_5d

    .line 647
    .line 648
    const-string p0, "RESTRICTION_FROM_AUTHORIZED_GDB"

    .line 649
    .line 650
    return-object p0

    .line 651
    :cond_5d
    const/16 v0, 0x6b

    .line 652
    .line 653
    if-ne p0, v0, :cond_5e

    .line 654
    .line 655
    const-string p0, "AUTHORIZATION_DEENABLED"

    .line 656
    .line 657
    return-object p0

    .line 658
    :cond_5e
    const/16 v0, 0x70

    .line 659
    .line 660
    if-ne p0, v0, :cond_5f

    .line 661
    .line 662
    const-string p0, "FILS_AUTHENTICATION_FAILURE"

    .line 663
    .line 664
    return-object p0

    .line 665
    :cond_5f
    const/16 v0, 0x71

    .line 666
    .line 667
    if-ne p0, v0, :cond_60

    .line 668
    .line 669
    const-string p0, "UNKNOWN_AUTHENTICATION_SERVER"

    .line 670
    .line 671
    return-object p0

    .line 672
    :cond_60
    new-instance v0, Ljava/lang/StringBuilder;

    .line 673
    .line 674
    const-string v1, "0x"

    .line 675
    .line 676
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 677
    .line 678
    .line 679
    invoke-static {v0, p0}, Lcom/samsung/android/server/wifi/ap/SemDhcpPacket$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;I)Ljava/lang/String;

    .line 680
    .line 681
    .line 682
    move-result-object p0

    .line 683
    return-object p0
.end method
