.class public Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal$StaIfaceReasonCode;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "StaIfaceReasonCode"
.end annotation


# static fields
.field public static final AKMP_NOT_VALID:I = 0x14

.field public static final AUTHORIZED_ACCESS_LIMIT_REACHED:I = 0x2e

.field public static final BAD_CIPHER_OR_AKM:I = 0x1d

.field public static final BSS_TRANSITION_DISASSOC:I = 0xc

.field public static final CIPHER_SUITE_REJECTED:I = 0x18

.field public static final CLASS2_FRAME_FROM_NONAUTH_STA:I = 0x6

.field public static final CLASS3_FRAME_FROM_NONASSOC_STA:I = 0x7

.field public static final DEAUTH_LEAVING:I = 0x3

.field public static final DISASSOC_AP_BUSY:I = 0x5

.field public static final DISASSOC_DUE_TO_INACTIVITY:I = 0x4

.field public static final DISASSOC_LOW_ACK:I = 0x22

.field public static final DISASSOC_STA_HAS_LEFT:I = 0x8

.field public static final END_TS_BA_DLS:I = 0x25

.field public static final EXCEEDED_TXOP:I = 0x23

.field public static final EXTERNAL_SERVICE_REQUIREMENTS:I = 0x2f

.field public static final FOURWAY_HANDSHAKE_TIMEOUT:I = 0xf

.field public static final GROUP_CIPHER_NOT_VALID:I = 0x12

.field public static final GROUP_KEY_UPDATE_TIMEOUT:I = 0x10

.field public static final IEEE_802_1X_AUTH_FAILED:I = 0x17

.field public static final IE_IN_4WAY_DIFFERS:I = 0x11

.field public static final INVALID_FTE:I = 0x33

.field public static final INVALID_FT_ACTION_FRAME_COUNT:I = 0x30

.field public static final INVALID_IE:I = 0xd

.field public static final INVALID_MDE:I = 0x32

.field public static final INVALID_PMKID:I = 0x31

.field public static final INVALID_RSN_IE_CAPAB:I = 0x16

.field public static final MAC_ADDRESS_ALREADY_EXISTS_IN_MBSS:I = 0x40

.field public static final MESH_CHANNEL_SWITCH_REGULATORY_REQ:I = 0x41

.field public static final MESH_CHANNEL_SWITCH_UNSPECIFIED:I = 0x42

.field public static final MESH_CLOSE_RCVD:I = 0x37

.field public static final MESH_CONFIG_POLICY_VIOLATION:I = 0x36

.field public static final MESH_CONFIRM_TIMEOUT:I = 0x39

.field public static final MESH_INCONSISTENT_PARAMS:I = 0x3b

.field public static final MESH_INVALID_GTK:I = 0x3a

.field public static final MESH_INVALID_SECURITY_CAP:I = 0x3c

.field public static final MESH_MAX_PEERS:I = 0x35

.field public static final MESH_MAX_RETRIES:I = 0x38

.field public static final MESH_PATH_ERROR_DEST_UNREACHABLE:I = 0x3f

.field public static final MESH_PATH_ERROR_NO_FORWARDING_INFO:I = 0x3e

.field public static final MESH_PATH_ERROR_NO_PROXY_INFO:I = 0x3d

.field public static final MESH_PEERING_CANCELLED:I = 0x34

.field public static final MICHAEL_MIC_FAILURE:I = 0xe

.field public static final NOT_AUTHORIZED_THIS_LOCATION:I = 0x1e

.field public static final NOT_ENOUGH_BANDWIDTH:I = 0x21

.field public static final NO_SSP_ROAMING_AGREEMENT:I = 0x1c

.field public static final PAIRWISE_CIPHER_NOT_VALID:I = 0x13

.field public static final PEERKEY_MISMATCH:I = 0x2d

.field public static final PREV_AUTH_NOT_VALID:I = 0x2

.field public static final PWR_CAPABILITY_NOT_VALID:I = 0xa

.field public static final SERVICE_CHANGE_PRECLUDES_TS:I = 0x1f

.field public static final SSP_REQUESTED_DISASSOC:I = 0x1b

.field public static final STA_LEAVING:I = 0x24

.field public static final STA_REQ_ASSOC_WITHOUT_AUTH:I = 0x9

.field public static final SUPPORTED_CHANNEL_NOT_VALID:I = 0xb

.field public static final TDLS_TEARDOWN_UNREACHABLE:I = 0x19

.field public static final TDLS_TEARDOWN_UNSPECIFIED:I = 0x1a

.field public static final TIMEOUT:I = 0x27

.field public static final UNKNOWN_TS_BA:I = 0x26

.field public static final UNSPECIFIED:I = 0x1

.field public static final UNSPECIFIED_QOS_REASON:I = 0x20

.field public static final UNSUPPORTED_RSN_IE_VERSION:I = 0x15


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
    packed-switch p0, :pswitch_data_1

    .line 5
    .line 6
    .line 7
    const-string v0, "Unknown StaIfaceReasonCode: "

    .line 8
    .line 9
    invoke-static {p0, v0}, Lcom/samsung/android/mcf/continuity/common/VersionUtil$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    return-object p0

    .line 14
    :pswitch_0
    const-string p0, "MESH_CHANNEL_SWITCH_UNSPECIFIED"

    .line 15
    .line 16
    return-object p0

    .line 17
    :pswitch_1
    const-string p0, "MESH_CHANNEL_SWITCH_REGULATORY_REQ"

    .line 18
    .line 19
    return-object p0

    .line 20
    :pswitch_2
    const-string p0, "MAC_ADDRESS_ALREADY_EXISTS_IN_MBSS"

    .line 21
    .line 22
    return-object p0

    .line 23
    :pswitch_3
    const-string p0, "MESH_PATH_ERROR_DEST_UNREACHABLE"

    .line 24
    .line 25
    return-object p0

    .line 26
    :pswitch_4
    const-string p0, "MESH_PATH_ERROR_NO_FORWARDING_INFO"

    .line 27
    .line 28
    return-object p0

    .line 29
    :pswitch_5
    const-string p0, "MESH_PATH_ERROR_NO_PROXY_INFO"

    .line 30
    .line 31
    return-object p0

    .line 32
    :pswitch_6
    const-string p0, "MESH_INVALID_SECURITY_CAP"

    .line 33
    .line 34
    return-object p0

    .line 35
    :pswitch_7
    const-string p0, "MESH_INCONSISTENT_PARAMS"

    .line 36
    .line 37
    return-object p0

    .line 38
    :pswitch_8
    const-string p0, "MESH_INVALID_GTK"

    .line 39
    .line 40
    return-object p0

    .line 41
    :pswitch_9
    const-string p0, "MESH_CONFIRM_TIMEOUT"

    .line 42
    .line 43
    return-object p0

    .line 44
    :pswitch_a
    const-string p0, "MESH_MAX_RETRIES"

    .line 45
    .line 46
    return-object p0

    .line 47
    :pswitch_b
    const-string p0, "MESH_CLOSE_RCVD"

    .line 48
    .line 49
    return-object p0

    .line 50
    :pswitch_c
    const-string p0, "MESH_CONFIG_POLICY_VIOLATION"

    .line 51
    .line 52
    return-object p0

    .line 53
    :pswitch_d
    const-string p0, "MESH_MAX_PEERS"

    .line 54
    .line 55
    return-object p0

    .line 56
    :pswitch_e
    const-string p0, "MESH_PEERING_CANCELLED"

    .line 57
    .line 58
    return-object p0

    .line 59
    :pswitch_f
    const-string p0, "INVALID_FTE"

    .line 60
    .line 61
    return-object p0

    .line 62
    :pswitch_10
    const-string p0, "INVALID_MDE"

    .line 63
    .line 64
    return-object p0

    .line 65
    :pswitch_11
    const-string p0, "INVALID_PMKID"

    .line 66
    .line 67
    return-object p0

    .line 68
    :pswitch_12
    const-string p0, "INVALID_FT_ACTION_FRAME_COUNT"

    .line 69
    .line 70
    return-object p0

    .line 71
    :pswitch_13
    const-string p0, "EXTERNAL_SERVICE_REQUIREMENTS"

    .line 72
    .line 73
    return-object p0

    .line 74
    :pswitch_14
    const-string p0, "AUTHORIZED_ACCESS_LIMIT_REACHED"

    .line 75
    .line 76
    return-object p0

    .line 77
    :pswitch_15
    const-string p0, "PEERKEY_MISMATCH"

    .line 78
    .line 79
    return-object p0

    .line 80
    :pswitch_16
    const-string p0, "TIMEOUT"

    .line 81
    .line 82
    return-object p0

    .line 83
    :pswitch_17
    const-string p0, "UNKNOWN_TS_BA"

    .line 84
    .line 85
    return-object p0

    .line 86
    :pswitch_18
    const-string p0, "END_TS_BA_DLS"

    .line 87
    .line 88
    return-object p0

    .line 89
    :pswitch_19
    const-string p0, "STA_LEAVING"

    .line 90
    .line 91
    return-object p0

    .line 92
    :pswitch_1a
    const-string p0, "EXCEEDED_TXOP"

    .line 93
    .line 94
    return-object p0

    .line 95
    :pswitch_1b
    const-string p0, "DISASSOC_LOW_ACK"

    .line 96
    .line 97
    return-object p0

    .line 98
    :pswitch_1c
    const-string p0, "NOT_ENOUGH_BANDWIDTH"

    .line 99
    .line 100
    return-object p0

    .line 101
    :pswitch_1d
    const-string p0, "UNSPECIFIED_QOS_REASON"

    .line 102
    .line 103
    return-object p0

    .line 104
    :pswitch_1e
    const-string p0, "SERVICE_CHANGE_PRECLUDES_TS"

    .line 105
    .line 106
    return-object p0

    .line 107
    :pswitch_1f
    const-string p0, "NOT_AUTHORIZED_THIS_LOCATION"

    .line 108
    .line 109
    return-object p0

    .line 110
    :pswitch_20
    const-string p0, "BAD_CIPHER_OR_AKM"

    .line 111
    .line 112
    return-object p0

    .line 113
    :pswitch_21
    const-string p0, "NO_SSP_ROAMING_AGREEMENT"

    .line 114
    .line 115
    return-object p0

    .line 116
    :pswitch_22
    const-string p0, "SSP_REQUESTED_DISASSOC"

    .line 117
    .line 118
    return-object p0

    .line 119
    :pswitch_23
    const-string p0, "TDLS_TEARDOWN_UNSPECIFIED"

    .line 120
    .line 121
    return-object p0

    .line 122
    :pswitch_24
    const-string p0, "TDLS_TEARDOWN_UNREACHABLE"

    .line 123
    .line 124
    return-object p0

    .line 125
    :pswitch_25
    const-string p0, "CIPHER_SUITE_REJECTED"

    .line 126
    .line 127
    return-object p0

    .line 128
    :pswitch_26
    const-string p0, "IEEE_802_1X_AUTH_FAILED"

    .line 129
    .line 130
    return-object p0

    .line 131
    :pswitch_27
    const-string p0, "INVALID_RSN_IE_CAPAB"

    .line 132
    .line 133
    return-object p0

    .line 134
    :pswitch_28
    const-string p0, "UNSUPPORTED_RSN_IE_VERSION"

    .line 135
    .line 136
    return-object p0

    .line 137
    :pswitch_29
    const-string p0, "AKMP_NOT_VALID"

    .line 138
    .line 139
    return-object p0

    .line 140
    :pswitch_2a
    const-string p0, "PAIRWISE_CIPHER_NOT_VALID"

    .line 141
    .line 142
    return-object p0

    .line 143
    :pswitch_2b
    const-string p0, "GROUP_CIPHER_NOT_VALID"

    .line 144
    .line 145
    return-object p0

    .line 146
    :pswitch_2c
    const-string p0, "IE_IN_4WAY_DIFFERS"

    .line 147
    .line 148
    return-object p0

    .line 149
    :pswitch_2d
    const-string p0, "GROUP_KEY_UPDATE_TIMEOUT"

    .line 150
    .line 151
    return-object p0

    .line 152
    :pswitch_2e
    const-string p0, "FOURWAY_HANDSHAKE_TIMEOUT"

    .line 153
    .line 154
    return-object p0

    .line 155
    :pswitch_2f
    const-string p0, "MICHAEL_MIC_FAILURE"

    .line 156
    .line 157
    return-object p0

    .line 158
    :pswitch_30
    const-string p0, "INVALID_IE"

    .line 159
    .line 160
    return-object p0

    .line 161
    :pswitch_31
    const-string p0, "BSS_TRANSITION_DISASSOC"

    .line 162
    .line 163
    return-object p0

    .line 164
    :pswitch_32
    const-string p0, "SUPPORTED_CHANNEL_NOT_VALID"

    .line 165
    .line 166
    return-object p0

    .line 167
    :pswitch_33
    const-string p0, "PWR_CAPABILITY_NOT_VALID"

    .line 168
    .line 169
    return-object p0

    .line 170
    :pswitch_34
    const-string p0, "STA_REQ_ASSOC_WITHOUT_AUTH"

    .line 171
    .line 172
    return-object p0

    .line 173
    :pswitch_35
    const-string p0, "DISASSOC_STA_HAS_LEFT"

    .line 174
    .line 175
    return-object p0

    .line 176
    :pswitch_36
    const-string p0, "CLASS3_FRAME_FROM_NONASSOC_STA"

    .line 177
    .line 178
    return-object p0

    .line 179
    :pswitch_37
    const-string p0, "CLASS2_FRAME_FROM_NONAUTH_STA"

    .line 180
    .line 181
    return-object p0

    .line 182
    :pswitch_38
    const-string p0, "DISASSOC_AP_BUSY"

    .line 183
    .line 184
    return-object p0

    .line 185
    :pswitch_39
    const-string p0, "DISASSOC_DUE_TO_INACTIVITY"

    .line 186
    .line 187
    return-object p0

    .line 188
    :pswitch_3a
    const-string p0, "DEAUTH_LEAVING"

    .line 189
    .line 190
    return-object p0

    .line 191
    :pswitch_3b
    const-string p0, "PREV_AUTH_NOT_VALID"

    .line 192
    .line 193
    return-object p0

    .line 194
    :pswitch_3c
    const-string p0, "UNSPECIFIED"

    .line 195
    .line 196
    return-object p0

    .line 197
    :pswitch_data_0
    .packed-switch 0x1
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
        :pswitch_26
        :pswitch_25
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
    .end packed-switch

    .line 198
    .line 199
    .line 200
    .line 201
    .line 202
    .line 203
    .line 204
    .line 205
    .line 206
    .line 207
    .line 208
    .line 209
    .line 210
    .line 211
    .line 212
    .line 213
    .line 214
    .line 215
    .line 216
    .line 217
    .line 218
    .line 219
    .line 220
    .line 221
    .line 222
    .line 223
    .line 224
    .line 225
    .line 226
    .line 227
    .line 228
    .line 229
    .line 230
    .line 231
    .line 232
    .line 233
    .line 234
    .line 235
    .line 236
    .line 237
    .line 238
    .line 239
    .line 240
    .line 241
    .line 242
    .line 243
    .line 244
    .line 245
    .line 246
    .line 247
    :pswitch_data_1
    .packed-switch 0x2d
        :pswitch_15
        :pswitch_14
        :pswitch_13
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
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
