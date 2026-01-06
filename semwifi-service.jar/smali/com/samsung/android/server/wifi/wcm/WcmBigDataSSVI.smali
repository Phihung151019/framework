.class public Lcom/samsung/android/server/wifi/wcm/WcmBigDataSSVI;
.super Lcom/samsung/android/server/wifi/wcm/WcmBigDataFeature;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# static fields
.field private static final KEY_LIC_AP_CHIPSET_OUI:Ljava/lang/String; = "Coui"

.field private static final KEY_LIC_AVGLINKSPEED:Ljava/lang/String; = "LKSD"

.field private static final KEY_LIC_BSSID_OUI:Ljava/lang/String; = "Boui"

.field private static final KEY_LIC_BTCOEX:Ljava/lang/String; = "BTC"

.field private static final KEY_LIC_CCA:Ljava/lang/String; = "CCA"

.field private static final KEY_LIC_CHIPSET_NAME:Ljava/lang/String; = "CSPN"

.field private static final KEY_LIC_CONNECTION_TIME:Ljava/lang/String; = "CTIM"

.field private static final KEY_LIC_HOTSPOT:Ljava/lang/String; = "MHSP"

.field private static final KEY_LIC_NAN:Ljava/lang/String; = "NAN"

.field private static final KEY_LIC_OBSS:Ljava/lang/String; = "OBSS"

.field private static final KEY_LIC_OPERATING_CHANNEL:Ljava/lang/String; = "OPCH"

.field private static final KEY_LIC_OPTIMIZER:Ljava/lang/String; = "OPT"

.field private static final KEY_LIC_P2P:Ljava/lang/String; = "P2P"

.field private static final KEY_LIC_PRIVATE_DNS:Ljava/lang/String; = "PDNS"

.field private static final KEY_LIC_RSSI_CUR:Ljava/lang/String; = "Rcur"

.field private static final KEY_LIC_RSSI_MAX:Ljava/lang/String; = "Rmax"

.field private static final KEY_LIC_RSSI_MIN:Ljava/lang/String; = "Rmin"

.field private static final KEY_LIC_SCHEDULED_PM:Ljava/lang/String; = "SPM"

.field private static final KEY_LIC_SCREEN_STATE:Ljava/lang/String; = "SCRS"

.field private static final KEY_LIC_TWT:Ljava/lang/String; = "TWT"

.field private static final KEY_LIC_TX_BAD:Ljava/lang/String; = "TBAD"

.field private static final KEY_LIC_TX_RETRY:Ljava/lang/String; = "TRET"

.field private static final KEY_LIC_VALIDATION_CHECK_RESULT:Ljava/lang/String; = "VALD"

.field private static final KEY_LIC_VPN:Ljava/lang/String; = "VPN"

.field private static final KEY_LIC_WIFI_STANDARD:Ljava/lang/String; = "WSTD"

.field private static final KEY_VERSION:Ljava/lang/String; = "VER"

.field private static final SSVI:[[Ljava/lang/String;


# instance fields
.field public mApChipsetOui:Ljava/lang/String;

.field public mAvgLinkSpeed:I

.field public mBssidOui:Ljava/lang/String;

.field public mBtCoex:I

.field public mCca:Ljava/lang/String;

.field public mChipsetName:Ljava/lang/String;

.field public mConnectionTime:I

.field public mHotspot:I

.field public mNan:I

.field public mObss:I

.field public mOperatingChannel:I

.field public mOptimizer:I

.field public mP2p:I

.field public mPrivateDns:I

.field public mRssiCur:I

.field public mRssiMax:I

.field public mRssiMin:I

.field public mScheduledPm:I

.field public mScreenState:I

.field public mTwt:I

.field public mTxBad:I

.field public mTxRetry:I

.field public mValidationCheck:I

.field public mVpn:I

.field public mWifiStandard:I


# direct methods
.method static constructor <clinit>()V
    .locals 28

    .line 1
    const-string v0, "VER"

    .line 2
    .line 3
    const-string v1, "20230630"

    .line 4
    .line 5
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    const-string v0, "TWT"

    .line 10
    .line 11
    const-string v1, "0"

    .line 12
    .line 13
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    const-string v0, "OPT"

    .line 18
    .line 19
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v4

    .line 23
    const-string v0, "BTC"

    .line 24
    .line 25
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v5

    .line 29
    const-string v0, "PDNS"

    .line 30
    .line 31
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v6

    .line 35
    const-string v0, "VPN"

    .line 36
    .line 37
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v7

    .line 41
    const-string v0, "P2P"

    .line 42
    .line 43
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v8

    .line 47
    const-string v0, "NAN"

    .line 48
    .line 49
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v9

    .line 53
    const-string v0, "MHSP"

    .line 54
    .line 55
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v10

    .line 59
    const-string v0, "OPCH"

    .line 60
    .line 61
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v11

    .line 65
    const-string v0, "OBSS"

    .line 66
    .line 67
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v12

    .line 71
    const-string v0, "TRET"

    .line 72
    .line 73
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v13

    .line 77
    const-string v0, "TBAD"

    .line 78
    .line 79
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v14

    .line 83
    const-string v0, "CTIM"

    .line 84
    .line 85
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v15

    .line 89
    const-string v0, "VALD"

    .line 90
    .line 91
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v16

    .line 95
    const-string v0, "Rcur"

    .line 96
    .line 97
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v17

    .line 101
    const-string v0, "Rmax"

    .line 102
    .line 103
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v18

    .line 107
    const-string v0, "Rmin"

    .line 108
    .line 109
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v19

    .line 113
    const-string v0, "CCA"

    .line 114
    .line 115
    move-object/from16 v20, v2

    .line 116
    .line 117
    const-string v2, ""

    .line 118
    .line 119
    filled-new-array {v0, v2}, [Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v0

    .line 123
    move-object/from16 v21, v0

    .line 124
    .line 125
    const-string v0, "LKSD"

    .line 126
    .line 127
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v0

    .line 131
    move-object/from16 v22, v0

    .line 132
    .line 133
    const-string v0, "Boui"

    .line 134
    .line 135
    filled-new-array {v0, v2}, [Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v0

    .line 139
    move-object/from16 v23, v0

    .line 140
    .line 141
    const-string v0, "WSTD"

    .line 142
    .line 143
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object v0

    .line 147
    move-object/from16 v24, v0

    .line 148
    .line 149
    const-string v0, "Coui"

    .line 150
    .line 151
    filled-new-array {v0, v2}, [Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object v0

    .line 155
    move-object/from16 v25, v0

    .line 156
    .line 157
    const-string v0, "CSPN"

    .line 158
    .line 159
    filled-new-array {v0, v2}, [Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object v0

    .line 163
    const-string v2, "SCRS"

    .line 164
    .line 165
    filled-new-array {v2, v1}, [Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object v26

    .line 169
    const-string v2, "SPM"

    .line 170
    .line 171
    filled-new-array {v2, v1}, [Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object v27

    .line 175
    move-object/from16 v2, v20

    .line 176
    .line 177
    move-object/from16 v20, v21

    .line 178
    .line 179
    move-object/from16 v21, v22

    .line 180
    .line 181
    move-object/from16 v22, v23

    .line 182
    .line 183
    move-object/from16 v23, v24

    .line 184
    .line 185
    move-object/from16 v24, v25

    .line 186
    .line 187
    move-object/from16 v25, v0

    .line 188
    .line 189
    filled-new-array/range {v2 .. v27}, [[Ljava/lang/String;

    .line 190
    .line 191
    .line 192
    move-result-object v0

    .line 193
    sput-object v0, Lcom/samsung/android/server/wifi/wcm/WcmBigDataSSVI;->SSVI:[[Ljava/lang/String;

    .line 194
    .line 195
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/wcm/WcmBigDataFeature;-><init>()V

    .line 2
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/wcm/WcmBigDataSSVI;->initialize()V

    return-void
.end method

.method public constructor <init>(ZLjava/lang/String;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/wcm/WcmBigDataFeature;-><init>(ZLjava/lang/String;)V

    .line 4
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/wcm/WcmBigDataSSVI;->initialize()V

    return-void
.end method


# virtual methods
.method public addOrUpdateAllValue()V
    .locals 2

    .line 1
    const-string v0, "TWT"

    .line 2
    .line 3
    iget v1, p0, Lcom/samsung/android/server/wifi/wcm/WcmBigDataSSVI;->mTwt:I

    .line 4
    .line 5
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/server/wifi/wcm/WcmBigDataFeature;->addOrUpdateValue(Ljava/lang/String;I)V

    .line 6
    .line 7
    .line 8
    const-string v0, "OPT"

    .line 9
    .line 10
    iget v1, p0, Lcom/samsung/android/server/wifi/wcm/WcmBigDataSSVI;->mOptimizer:I

    .line 11
    .line 12
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/server/wifi/wcm/WcmBigDataFeature;->addOrUpdateValue(Ljava/lang/String;I)V

    .line 13
    .line 14
    .line 15
    const-string v0, "BTC"

    .line 16
    .line 17
    iget v1, p0, Lcom/samsung/android/server/wifi/wcm/WcmBigDataSSVI;->mBtCoex:I

    .line 18
    .line 19
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/server/wifi/wcm/WcmBigDataFeature;->addOrUpdateValue(Ljava/lang/String;I)V

    .line 20
    .line 21
    .line 22
    const-string v0, "PDNS"

    .line 23
    .line 24
    iget v1, p0, Lcom/samsung/android/server/wifi/wcm/WcmBigDataSSVI;->mPrivateDns:I

    .line 25
    .line 26
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/server/wifi/wcm/WcmBigDataFeature;->addOrUpdateValue(Ljava/lang/String;I)V

    .line 27
    .line 28
    .line 29
    const-string v0, "VPN"

    .line 30
    .line 31
    iget v1, p0, Lcom/samsung/android/server/wifi/wcm/WcmBigDataSSVI;->mVpn:I

    .line 32
    .line 33
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/server/wifi/wcm/WcmBigDataFeature;->addOrUpdateValue(Ljava/lang/String;I)V

    .line 34
    .line 35
    .line 36
    const-string v0, "P2P"

    .line 37
    .line 38
    iget v1, p0, Lcom/samsung/android/server/wifi/wcm/WcmBigDataSSVI;->mP2p:I

    .line 39
    .line 40
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/server/wifi/wcm/WcmBigDataFeature;->addOrUpdateValue(Ljava/lang/String;I)V

    .line 41
    .line 42
    .line 43
    const-string v0, "NAN"

    .line 44
    .line 45
    iget v1, p0, Lcom/samsung/android/server/wifi/wcm/WcmBigDataSSVI;->mNan:I

    .line 46
    .line 47
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/server/wifi/wcm/WcmBigDataFeature;->addOrUpdateValue(Ljava/lang/String;I)V

    .line 48
    .line 49
    .line 50
    const-string v0, "MHSP"

    .line 51
    .line 52
    iget v1, p0, Lcom/samsung/android/server/wifi/wcm/WcmBigDataSSVI;->mHotspot:I

    .line 53
    .line 54
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/server/wifi/wcm/WcmBigDataFeature;->addOrUpdateValue(Ljava/lang/String;I)V

    .line 55
    .line 56
    .line 57
    const-string v0, "OPCH"

    .line 58
    .line 59
    iget v1, p0, Lcom/samsung/android/server/wifi/wcm/WcmBigDataSSVI;->mOperatingChannel:I

    .line 60
    .line 61
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/server/wifi/wcm/WcmBigDataFeature;->addOrUpdateValue(Ljava/lang/String;I)V

    .line 62
    .line 63
    .line 64
    const-string v0, "OBSS"

    .line 65
    .line 66
    iget v1, p0, Lcom/samsung/android/server/wifi/wcm/WcmBigDataSSVI;->mObss:I

    .line 67
    .line 68
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/server/wifi/wcm/WcmBigDataFeature;->addOrUpdateValue(Ljava/lang/String;I)V

    .line 69
    .line 70
    .line 71
    const-string v0, "TRET"

    .line 72
    .line 73
    iget v1, p0, Lcom/samsung/android/server/wifi/wcm/WcmBigDataSSVI;->mTxRetry:I

    .line 74
    .line 75
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/server/wifi/wcm/WcmBigDataFeature;->addOrUpdateValue(Ljava/lang/String;I)V

    .line 76
    .line 77
    .line 78
    const-string v0, "TBAD"

    .line 79
    .line 80
    iget v1, p0, Lcom/samsung/android/server/wifi/wcm/WcmBigDataSSVI;->mTxBad:I

    .line 81
    .line 82
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/server/wifi/wcm/WcmBigDataFeature;->addOrUpdateValue(Ljava/lang/String;I)V

    .line 83
    .line 84
    .line 85
    const-string v0, "CTIM"

    .line 86
    .line 87
    iget v1, p0, Lcom/samsung/android/server/wifi/wcm/WcmBigDataSSVI;->mConnectionTime:I

    .line 88
    .line 89
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/server/wifi/wcm/WcmBigDataFeature;->addOrUpdateValue(Ljava/lang/String;I)V

    .line 90
    .line 91
    .line 92
    const-string v0, "VALD"

    .line 93
    .line 94
    iget v1, p0, Lcom/samsung/android/server/wifi/wcm/WcmBigDataSSVI;->mValidationCheck:I

    .line 95
    .line 96
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/server/wifi/wcm/WcmBigDataFeature;->addOrUpdateValue(Ljava/lang/String;I)V

    .line 97
    .line 98
    .line 99
    const-string v0, "Rcur"

    .line 100
    .line 101
    iget v1, p0, Lcom/samsung/android/server/wifi/wcm/WcmBigDataSSVI;->mRssiCur:I

    .line 102
    .line 103
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/server/wifi/wcm/WcmBigDataFeature;->addOrUpdateValue(Ljava/lang/String;I)V

    .line 104
    .line 105
    .line 106
    const-string v0, "Rmax"

    .line 107
    .line 108
    iget v1, p0, Lcom/samsung/android/server/wifi/wcm/WcmBigDataSSVI;->mRssiMax:I

    .line 109
    .line 110
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/server/wifi/wcm/WcmBigDataFeature;->addOrUpdateValue(Ljava/lang/String;I)V

    .line 111
    .line 112
    .line 113
    const-string v0, "Rmin"

    .line 114
    .line 115
    iget v1, p0, Lcom/samsung/android/server/wifi/wcm/WcmBigDataSSVI;->mRssiMin:I

    .line 116
    .line 117
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/server/wifi/wcm/WcmBigDataFeature;->addOrUpdateValue(Ljava/lang/String;I)V

    .line 118
    .line 119
    .line 120
    const-string v0, "CCA"

    .line 121
    .line 122
    iget-object v1, p0, Lcom/samsung/android/server/wifi/wcm/WcmBigDataSSVI;->mCca:Ljava/lang/String;

    .line 123
    .line 124
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/server/wifi/wcm/WcmBigDataFeature;->addOrUpdateValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    const-string v0, "LKSD"

    .line 128
    .line 129
    iget v1, p0, Lcom/samsung/android/server/wifi/wcm/WcmBigDataSSVI;->mAvgLinkSpeed:I

    .line 130
    .line 131
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/server/wifi/wcm/WcmBigDataFeature;->addOrUpdateValue(Ljava/lang/String;I)V

    .line 132
    .line 133
    .line 134
    const-string v0, "Boui"

    .line 135
    .line 136
    iget-object v1, p0, Lcom/samsung/android/server/wifi/wcm/WcmBigDataSSVI;->mBssidOui:Ljava/lang/String;

    .line 137
    .line 138
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/server/wifi/wcm/WcmBigDataFeature;->addOrUpdateValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    .line 140
    .line 141
    const-string v0, "WSTD"

    .line 142
    .line 143
    iget v1, p0, Lcom/samsung/android/server/wifi/wcm/WcmBigDataSSVI;->mWifiStandard:I

    .line 144
    .line 145
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/server/wifi/wcm/WcmBigDataFeature;->addOrUpdateValue(Ljava/lang/String;I)V

    .line 146
    .line 147
    .line 148
    const-string v0, "Coui"

    .line 149
    .line 150
    iget-object v1, p0, Lcom/samsung/android/server/wifi/wcm/WcmBigDataSSVI;->mApChipsetOui:Ljava/lang/String;

    .line 151
    .line 152
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/server/wifi/wcm/WcmBigDataFeature;->addOrUpdateValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    .line 154
    .line 155
    const-string v0, "CSPN"

    .line 156
    .line 157
    iget-object v1, p0, Lcom/samsung/android/server/wifi/wcm/WcmBigDataSSVI;->mChipsetName:Ljava/lang/String;

    .line 158
    .line 159
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/server/wifi/wcm/WcmBigDataFeature;->addOrUpdateValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    .line 161
    .line 162
    const-string v0, "SCRS"

    .line 163
    .line 164
    iget v1, p0, Lcom/samsung/android/server/wifi/wcm/WcmBigDataSSVI;->mScreenState:I

    .line 165
    .line 166
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/server/wifi/wcm/WcmBigDataFeature;->addOrUpdateValue(Ljava/lang/String;I)V

    .line 167
    .line 168
    .line 169
    const-string v0, "SPM"

    .line 170
    .line 171
    iget v1, p0, Lcom/samsung/android/server/wifi/wcm/WcmBigDataSSVI;->mScheduledPm:I

    .line 172
    .line 173
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/server/wifi/wcm/WcmBigDataFeature;->addOrUpdateValue(Ljava/lang/String;I)V

    .line 174
    .line 175
    .line 176
    return-void
.end method

.method public getJsonFormat()Ljava/lang/String;
    .locals 4

    .line 1
    const-string v0, "getJsonFormat - "

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    :try_start_0
    sget-object v2, Lcom/samsung/android/server/wifi/wcm/WcmBigDataSSVI;->SSVI:[[Ljava/lang/String;

    .line 9
    .line 10
    invoke-virtual {p0, v2}, Lcom/samsung/android/server/wifi/wcm/WcmBigDataFeature;->getKeyValueStrings([[Ljava/lang/String;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    sget-boolean v2, Lcom/samsung/android/server/wifi/wcm/WcmBigDataFeature;->DBG:Z

    .line 18
    .line 19
    if-eqz v2, :cond_1

    .line 20
    .line 21
    iget-object v2, p0, Lcom/samsung/android/server/wifi/wcm/WcmBigDataFeature;->TAG:Ljava/lang/String;

    .line 22
    .line 23
    new-instance v3, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :catch_0
    move-exception v0

    .line 44
    sget-boolean v2, Lcom/samsung/android/server/wifi/wcm/WcmBigDataFeature;->DBG:Z

    .line 45
    .line 46
    if-eqz v2, :cond_0

    .line 47
    .line 48
    iget-object p0, p0, Lcom/samsung/android/server/wifi/wcm/WcmBigDataFeature;->TAG:Ljava/lang/String;

    .line 49
    .line 50
    new-instance v2, Ljava/lang/StringBuilder;

    .line 51
    .line 52
    const-string v3, "Exception occured on getJsonFormat - "

    .line 53
    .line 54
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    invoke-static {p0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    .line 66
    .line 67
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 68
    .line 69
    .line 70
    :cond_1
    :goto_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object p0

    .line 74
    return-object p0
.end method

.method public initialize()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/samsung/android/server/wifi/wcm/WcmBigDataSSVI;->mTwt:I

    .line 3
    .line 4
    iput v0, p0, Lcom/samsung/android/server/wifi/wcm/WcmBigDataSSVI;->mOptimizer:I

    .line 5
    .line 6
    iput v0, p0, Lcom/samsung/android/server/wifi/wcm/WcmBigDataSSVI;->mBtCoex:I

    .line 7
    .line 8
    iput v0, p0, Lcom/samsung/android/server/wifi/wcm/WcmBigDataSSVI;->mPrivateDns:I

    .line 9
    .line 10
    iput v0, p0, Lcom/samsung/android/server/wifi/wcm/WcmBigDataSSVI;->mVpn:I

    .line 11
    .line 12
    iput v0, p0, Lcom/samsung/android/server/wifi/wcm/WcmBigDataSSVI;->mP2p:I

    .line 13
    .line 14
    iput v0, p0, Lcom/samsung/android/server/wifi/wcm/WcmBigDataSSVI;->mNan:I

    .line 15
    .line 16
    iput v0, p0, Lcom/samsung/android/server/wifi/wcm/WcmBigDataSSVI;->mHotspot:I

    .line 17
    .line 18
    iput v0, p0, Lcom/samsung/android/server/wifi/wcm/WcmBigDataSSVI;->mOperatingChannel:I

    .line 19
    .line 20
    iput v0, p0, Lcom/samsung/android/server/wifi/wcm/WcmBigDataSSVI;->mObss:I

    .line 21
    .line 22
    iput v0, p0, Lcom/samsung/android/server/wifi/wcm/WcmBigDataSSVI;->mTxRetry:I

    .line 23
    .line 24
    iput v0, p0, Lcom/samsung/android/server/wifi/wcm/WcmBigDataSSVI;->mTxBad:I

    .line 25
    .line 26
    iput v0, p0, Lcom/samsung/android/server/wifi/wcm/WcmBigDataSSVI;->mConnectionTime:I

    .line 27
    .line 28
    iput v0, p0, Lcom/samsung/android/server/wifi/wcm/WcmBigDataSSVI;->mValidationCheck:I

    .line 29
    .line 30
    iput v0, p0, Lcom/samsung/android/server/wifi/wcm/WcmBigDataSSVI;->mRssiCur:I

    .line 31
    .line 32
    iput v0, p0, Lcom/samsung/android/server/wifi/wcm/WcmBigDataSSVI;->mRssiMax:I

    .line 33
    .line 34
    iput v0, p0, Lcom/samsung/android/server/wifi/wcm/WcmBigDataSSVI;->mRssiMin:I

    .line 35
    .line 36
    const-string v1, ""

    .line 37
    .line 38
    iput-object v1, p0, Lcom/samsung/android/server/wifi/wcm/WcmBigDataSSVI;->mCca:Ljava/lang/String;

    .line 39
    .line 40
    iput v0, p0, Lcom/samsung/android/server/wifi/wcm/WcmBigDataSSVI;->mAvgLinkSpeed:I

    .line 41
    .line 42
    iput-object v1, p0, Lcom/samsung/android/server/wifi/wcm/WcmBigDataSSVI;->mBssidOui:Ljava/lang/String;

    .line 43
    .line 44
    iput v0, p0, Lcom/samsung/android/server/wifi/wcm/WcmBigDataSSVI;->mWifiStandard:I

    .line 45
    .line 46
    iput-object v1, p0, Lcom/samsung/android/server/wifi/wcm/WcmBigDataSSVI;->mApChipsetOui:Ljava/lang/String;

    .line 47
    .line 48
    iput-object v1, p0, Lcom/samsung/android/server/wifi/wcm/WcmBigDataSSVI;->mChipsetName:Ljava/lang/String;

    .line 49
    .line 50
    iput v0, p0, Lcom/samsung/android/server/wifi/wcm/WcmBigDataSSVI;->mScreenState:I

    .line 51
    .line 52
    iput v0, p0, Lcom/samsung/android/server/wifi/wcm/WcmBigDataSSVI;->mScheduledPm:I

    .line 53
    .line 54
    return-void
.end method
