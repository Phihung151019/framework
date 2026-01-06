.class public Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal$StaIfaceStatusCode;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "StaIfaceStatusCode"
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
.method protected constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static toString(I)Ljava/lang/String;
    .locals 1

    .line 1
    packed-switch p0, :pswitch_data_0

    .line 2
    .line 3
    .line 4
    :pswitch_0
    const-string v0, "Unknown StaIfaceStatusCode: "

    .line 5
    .line 6
    invoke-static {p0, v0}, Lcom/samsung/android/mcf/continuity/common/VersionUtil$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0

    .line 11
    :pswitch_1
    const-string p0, "UNKNOWN_AUTHENTICATION_SERVER"

    .line 12
    .line 13
    return-object p0

    .line 14
    :pswitch_2
    const-string p0, "FILS_AUTHENTICATION_FAILURE"

    .line 15
    .line 16
    return-object p0

    .line 17
    :pswitch_3
    const-string p0, "AUTHORIZATION_DEENABLED"

    .line 18
    .line 19
    return-object p0

    .line 20
    :pswitch_4
    const-string p0, "RESTRICTION_FROM_AUTHORIZED_GDB"

    .line 21
    .line 22
    return-object p0

    .line 23
    :pswitch_5
    const-string p0, "ENABLEMENT_DENIED"

    .line 24
    .line 25
    return-object p0

    .line 26
    :pswitch_6
    const-string p0, "ASSOC_DENIED_NO_VHT"

    .line 27
    .line 28
    return-object p0

    .line 29
    :pswitch_7
    const-string p0, "DENIED_DUE_TO_SPECTRUM_MANAGEMENT"

    .line 30
    .line 31
    return-object p0

    .line 32
    :pswitch_8
    const-string p0, "MCCA_TRACK_LIMIT_EXCEEDED"

    .line 33
    .line 34
    return-object p0

    .line 35
    :pswitch_9
    const-string p0, "MAF_LIMIT_EXCEEDED"

    .line 36
    .line 37
    return-object p0

    .line 38
    :pswitch_a
    const-string p0, "MCCAOP_RESERVATION_CONFLICT"

    .line 39
    .line 40
    return-object p0

    .line 41
    :pswitch_b
    const-string p0, "DENIED_WITH_SUGGESTED_BAND_AND_CHANNEL"

    .line 42
    .line 43
    return-object p0

    .line 44
    :pswitch_c
    const-string p0, "TS_SCHEDULE_CONFLICT"

    .line 45
    .line 46
    return-object p0

    .line 47
    :pswitch_d
    const-string p0, "TCLAS_PROCESSING_TERMINATED"

    .line 48
    .line 49
    return-object p0

    .line 50
    :pswitch_e
    const-string p0, "REJECT_DSE_BAND"

    .line 51
    .line 52
    return-object p0

    .line 53
    :pswitch_f
    const-string p0, "QUERY_RESP_OUTSTANDING"

    .line 54
    .line 55
    return-object p0

    .line 56
    :pswitch_10
    const-string p0, "REJECTED_EMERGENCY_SERVICE_NOT_SUPPORTED"

    .line 57
    .line 58
    return-object p0

    .line 59
    :pswitch_11
    const-string p0, "REFUSED_AP_OUT_OF_MEMORY"

    .line 60
    .line 61
    return-object p0

    .line 62
    :pswitch_12
    const-string p0, "REFUSED_EXTERNAL_REASON"

    .line 63
    .line 64
    return-object p0

    .line 65
    :pswitch_13
    const-string p0, "REJECT_U_PID_SETTING"

    .line 66
    .line 67
    return-object p0

    .line 68
    :pswitch_14
    const-string p0, "PENDING_GAP_IN_BA_WINDOW"

    .line 69
    .line 70
    return-object p0

    .line 71
    :pswitch_15
    const-string p0, "PERFORMING_FST_NOW"

    .line 72
    .line 73
    return-object p0

    .line 74
    :pswitch_16
    const-string p0, "PENDING_ADMITTING_FST_SESSION"

    .line 75
    .line 76
    return-object p0

    .line 77
    :pswitch_17
    const-string p0, "SUCCESS_POWER_SAVE_MODE"

    .line 78
    .line 79
    return-object p0

    .line 80
    :pswitch_18
    const-string p0, "REJECT_NO_WAKEUP_SPECIFIED"

    .line 81
    .line 82
    return-object p0

    .line 83
    :pswitch_19
    const-string p0, "REJECT_WITH_SCHEDULE"

    .line 84
    .line 85
    return-object p0

    .line 86
    :pswitch_1a
    const-string p0, "REJECTED_WITH_SUGGESTED_BSS_TRANSITION"

    .line 87
    .line 88
    return-object p0

    .line 89
    :pswitch_1b
    const-string p0, "TCLAS_RESOURCES_EXCHAUSTED"

    .line 90
    .line 91
    return-object p0

    .line 92
    :pswitch_1c
    const-string p0, "REQ_TCLAS_NOT_SUPPORTED"

    .line 93
    .line 94
    return-object p0

    .line 95
    :pswitch_1d
    const-string p0, "TRANSMISSION_FAILURE"

    .line 96
    .line 97
    return-object p0

    .line 98
    :pswitch_1e
    const-string p0, "CANNOT_FIND_ALT_TBTT"

    .line 99
    .line 100
    return-object p0

    .line 101
    :pswitch_1f
    const-string p0, "FINITE_CYCLIC_GROUP_NOT_SUPPORTED"

    .line 102
    .line 103
    return-object p0

    .line 104
    :pswitch_20
    const-string p0, "ANTI_CLOGGING_TOKEN_REQ"

    .line 105
    .line 106
    return-object p0

    .line 107
    :pswitch_21
    const-string p0, "BAD_INTERVAL_WITH_U_APSD_COEX"

    .line 108
    .line 109
    return-object p0

    .line 110
    :pswitch_22
    const-string p0, "U_APSD_COEX_MODE_NOT_SUPPORTED"

    .line 111
    .line 112
    return-object p0

    .line 113
    :pswitch_23
    const-string p0, "U_APSD_COEX_NOT_SUPPORTED"

    .line 114
    .line 115
    return-object p0

    .line 116
    :pswitch_24
    const-string p0, "INVALID_RSNIE"

    .line 117
    .line 118
    return-object p0

    .line 119
    :pswitch_25
    const-string p0, "REQ_REFUSED_UNAUTH_ACCESS"

    .line 120
    .line 121
    return-object p0

    .line 122
    :pswitch_26
    const-string p0, "REQ_REFUSED_SSPN"

    .line 123
    .line 124
    return-object p0

    .line 125
    :pswitch_27
    const-string p0, "ADV_SRV_UNREACHABLE"

    .line 126
    .line 127
    return-object p0

    .line 128
    :pswitch_28
    const-string p0, "REQ_REFUSED_HOME"

    .line 129
    .line 130
    return-object p0

    .line 131
    :pswitch_29
    const-string p0, "GAS_RESP_LARGER_THAN_LIMIT"

    .line 132
    .line 133
    return-object p0

    .line 134
    :pswitch_2a
    const-string p0, "STA_TIMED_OUT_WAITING_FOR_GAS_RESP"

    .line 135
    .line 136
    return-object p0

    .line 137
    :pswitch_2b
    const-string p0, "GAS_RESP_NOT_RECEIVED"

    .line 138
    .line 139
    return-object p0

    .line 140
    :pswitch_2c
    const-string p0, "NO_OUTSTANDING_GAS_REQ"

    .line 141
    .line 142
    return-object p0

    .line 143
    :pswitch_2d
    const-string p0, "GAS_ADV_PROTO_NOT_SUPPORTED"

    .line 144
    .line 145
    return-object p0

    .line 146
    :pswitch_2e
    const-string p0, "TRY_ANOTHER_BSS"

    .line 147
    .line 148
    return-object p0

    .line 149
    :pswitch_2f
    const-string p0, "INSUFFICIENT_TCLAS_PROCESSING_RESOURCES"

    .line 150
    .line 151
    return-object p0

    .line 152
    :pswitch_30
    const-string p0, "REQUESTED_TCLAS_NOT_SUPPORTED"

    .line 153
    .line 154
    return-object p0

    .line 155
    :pswitch_31
    const-string p0, "INVALID_FTIE"

    .line 156
    .line 157
    return-object p0

    .line 158
    :pswitch_32
    const-string p0, "INVALID_MDIE"

    .line 159
    .line 160
    return-object p0

    .line 161
    :pswitch_33
    const-string p0, "INVALID_PMKID"

    .line 162
    .line 163
    return-object p0

    .line 164
    :pswitch_34
    const-string p0, "INVALID_FT_ACTION_FRAME_COUNT"

    .line 165
    .line 166
    return-object p0

    .line 167
    :pswitch_35
    const-string p0, "ASSOC_DENIED_LISTEN_INT_TOO_LARGE"

    .line 168
    .line 169
    return-object p0

    .line 170
    :pswitch_36
    const-string p0, "DEST_STA_NOT_QOS_STA"

    .line 171
    .line 172
    return-object p0

    .line 173
    :pswitch_37
    const-string p0, "DEST_STA_NOT_PRESENT"

    .line 174
    .line 175
    return-object p0

    .line 176
    :pswitch_38
    const-string p0, "DIRECT_LINK_NOT_ALLOWED"

    .line 177
    .line 178
    return-object p0

    .line 179
    :pswitch_39
    const-string p0, "TS_NOT_CREATED"

    .line 180
    .line 181
    return-object p0

    .line 182
    :pswitch_3a
    const-string p0, "CIPHER_REJECTED_PER_POLICY"

    .line 183
    .line 184
    return-object p0

    .line 185
    :pswitch_3b
    const-string p0, "INVALID_RSN_IE_CAPAB"

    .line 186
    .line 187
    return-object p0

    .line 188
    :pswitch_3c
    const-string p0, "UNSUPPORTED_RSN_IE_VERSION"

    .line 189
    .line 190
    return-object p0

    .line 191
    :pswitch_3d
    const-string p0, "AKMP_NOT_VALID"

    .line 192
    .line 193
    return-object p0

    .line 194
    :pswitch_3e
    const-string p0, "PAIRWISE_CIPHER_NOT_VALID"

    .line 195
    .line 196
    return-object p0

    .line 197
    :pswitch_3f
    const-string p0, "GROUP_CIPHER_NOT_VALID"

    .line 198
    .line 199
    return-object p0

    .line 200
    :pswitch_40
    const-string p0, "INVALID_IE"

    .line 201
    .line 202
    return-object p0

    .line 203
    :pswitch_41
    const-string p0, "REJECTED_WITH_SUGGESTED_CHANGES"

    .line 204
    .line 205
    return-object p0

    .line 206
    :pswitch_42
    const-string p0, "INVALID_PARAMETERS"

    .line 207
    .line 208
    return-object p0

    .line 209
    :pswitch_43
    const-string p0, "REQUEST_DECLINED"

    .line 210
    .line 211
    return-object p0

    .line 212
    :pswitch_44
    const-string p0, "DENIED_QOS_NOT_SUPPORTED"

    .line 213
    .line 214
    return-object p0

    .line 215
    :pswitch_45
    const-string p0, "DENIED_POOR_CHANNEL_CONDITIONS"

    .line 216
    .line 217
    return-object p0

    .line 218
    :pswitch_46
    const-string p0, "DENIED_INSUFFICIENT_BANDWIDTH"

    .line 219
    .line 220
    return-object p0

    .line 221
    :pswitch_47
    const-string p0, "UNSPECIFIED_QOS_FAILURE"

    .line 222
    .line 223
    return-object p0

    .line 224
    :pswitch_48
    const-string p0, "ROBUST_MGMT_FRAME_POLICY_VIOLATION"

    .line 225
    .line 226
    return-object p0

    .line 227
    :pswitch_49
    const-string p0, "ASSOC_REJECTED_TEMPORARILY"

    .line 228
    .line 229
    return-object p0

    .line 230
    :pswitch_4a
    const-string p0, "ASSOC_DENIED_NO_PCO"

    .line 231
    .line 232
    return-object p0

    .line 233
    :pswitch_4b
    const-string p0, "R0KH_UNREACHABLE"

    .line 234
    .line 235
    return-object p0

    .line 236
    :pswitch_4c
    const-string p0, "ASSOC_DENIED_NO_HT"

    .line 237
    .line 238
    return-object p0

    .line 239
    :pswitch_4d
    const-string p0, "ASSOC_DENIED_NO_SHORT_SLOT_TIME"

    .line 240
    .line 241
    return-object p0

    .line 242
    :pswitch_4e
    const-string p0, "SUPPORTED_CHANNEL_NOT_VALID"

    .line 243
    .line 244
    return-object p0

    .line 245
    :pswitch_4f
    const-string p0, "PWR_CAPABILITY_NOT_VALID"

    .line 246
    .line 247
    return-object p0

    .line 248
    :pswitch_50
    const-string p0, "SPEC_MGMT_REQUIRED"

    .line 249
    .line 250
    return-object p0

    .line 251
    :pswitch_51
    const-string p0, "ASSOC_DENIED_NOSHORT"

    .line 252
    .line 253
    return-object p0

    .line 254
    :pswitch_52
    const-string p0, "ASSOC_DENIED_RATES"

    .line 255
    .line 256
    return-object p0

    .line 257
    :pswitch_53
    const-string p0, "AP_UNABLE_TO_HANDLE_NEW_STA"

    .line 258
    .line 259
    return-object p0

    .line 260
    :pswitch_54
    const-string p0, "AUTH_TIMEOUT"

    .line 261
    .line 262
    return-object p0

    .line 263
    :pswitch_55
    const-string p0, "CHALLENGE_FAIL"

    .line 264
    .line 265
    return-object p0

    .line 266
    :pswitch_56
    const-string p0, "UNKNOWN_AUTH_TRANSACTION"

    .line 267
    .line 268
    return-object p0

    .line 269
    :pswitch_57
    const-string p0, "NOT_SUPPORTED_AUTH_ALG"

    .line 270
    .line 271
    return-object p0

    .line 272
    :pswitch_58
    const-string p0, "ASSOC_DENIED_UNSPEC"

    .line 273
    .line 274
    return-object p0

    .line 275
    :pswitch_59
    const-string p0, "REASSOC_NO_ASSOC"

    .line 276
    .line 277
    return-object p0

    .line 278
    :pswitch_5a
    const-string p0, "CAPS_UNSUPPORTED"

    .line 279
    .line 280
    return-object p0

    .line 281
    :pswitch_5b
    const-string p0, "NOT_IN_SAME_BSS"

    .line 282
    .line 283
    return-object p0

    .line 284
    :pswitch_5c
    const-string p0, "UNACCEPTABLE_LIFETIME"

    .line 285
    .line 286
    return-object p0

    .line 287
    :pswitch_5d
    const-string p0, "SECURITY_DISABLED"

    .line 288
    .line 289
    return-object p0

    .line 290
    :pswitch_5e
    const-string p0, "TDLS_WAKEUP_REJECT"

    .line 291
    .line 292
    return-object p0

    .line 293
    :pswitch_5f
    const-string p0, "TDLS_WAKEUP_ALTERNATE"

    .line 294
    .line 295
    return-object p0

    .line 296
    :pswitch_60
    const-string p0, "UNSPECIFIED_FAILURE"

    .line 297
    .line 298
    return-object p0

    .line 299
    :pswitch_61
    const-string p0, "SUCCESS"

    .line 300
    .line 301
    return-object p0

    .line 302
    nop

    .line 303
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_61
        :pswitch_60
        :pswitch_5f
        :pswitch_5e
        :pswitch_0
        :pswitch_5d
        :pswitch_5c
        :pswitch_5b
        :pswitch_0
        :pswitch_0
        :pswitch_5a
        :pswitch_59
        :pswitch_58
        :pswitch_57
        :pswitch_56
        :pswitch_55
        :pswitch_54
        :pswitch_53
        :pswitch_52
        :pswitch_51
        :pswitch_0
        :pswitch_0
        :pswitch_50
        :pswitch_4f
        :pswitch_4e
        :pswitch_4d
        :pswitch_0
        :pswitch_4c
        :pswitch_4b
        :pswitch_4a
        :pswitch_49
        :pswitch_48
        :pswitch_47
        :pswitch_46
        :pswitch_45
        :pswitch_44
        :pswitch_0
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_0
        :pswitch_26
        :pswitch_25
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_0
        :pswitch_0
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
