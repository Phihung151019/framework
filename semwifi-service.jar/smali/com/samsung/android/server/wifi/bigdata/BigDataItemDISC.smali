.class Lcom/samsung/android/server/wifi/bigdata/BigDataItemDISC;
.super Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# static fields
.field private static final DISC:[[Ljava/lang/String;

.field static final KEY_ADPS_STATE:Ljava/lang/String; = "adps"

.field private static final KEY_AP_11KV:Ljava/lang/String; = "11KV"

.field private static final KEY_AP_11KV_IE:Ljava/lang/String; = "KVIE"

.field static final KEY_AP_11ac_CONN_DURATION:Ljava/lang/String; = "11acdr"

.field static final KEY_AP_11ax_CONN_DURATION:Ljava/lang/String; = "11axdr"

.field static final KEY_AP_11be_CONN_DURATION:Ljava/lang/String; = "11bedr"

.field static final KEY_AP_11l_CONN_DURATION:Ljava/lang/String; = "11ldr"

.field static final KEY_AP_11n_CONN_DURATION:Ljava/lang/String; = "11ndr"

.field static final KEY_AP_2G5G6G_CONN_DURATION:Ljava/lang/String; = "2g5g6gdr"

.field static final KEY_AP_2G5G_CONN_DURATION:Ljava/lang/String; = "2g5gdr"

.field static final KEY_AP_2G6G_CONN_DURATION:Ljava/lang/String; = "2g6gdr"

.field static final KEY_AP_2G_CONN_DURATION:Ljava/lang/String; = "2gdr"

.field static final KEY_AP_5G6G_CONN_DURATION:Ljava/lang/String; = "5g6gdr"

.field static final KEY_AP_5G_CONN_DURATION:Ljava/lang/String; = "5gdr"

.field static final KEY_AP_6G_CONN_DURATION:Ljava/lang/String; = "6gdr"

.field private static final KEY_AP_80211MODE:Ljava/lang/String; = "ap_mod"

.field private static final KEY_AP_ADPS_DISCONNECT:Ljava/lang/String; = "adps_dis"

.field private static final KEY_AP_AKM:Ljava/lang/String; = "ap_akm"

.field private static final KEY_AP_ANTENNA:Ljava/lang/String; = "ap_ant"

.field static final KEY_AP_BANDWIDTH:Ljava/lang/String; = "ap_bdw"

.field static final KEY_AP_BT_CONNECTION:Ljava/lang/String; = "bt_cnt"

.field static final KEY_AP_CHANNEL:Ljava/lang/String; = "ap_chn"

.field static final KEY_AP_CONN_DURATION:Ljava/lang/String; = "apdr"

.field private static final KEY_AP_DATA_RATE:Ljava/lang/String; = "ap_drt"

.field static final KEY_AP_DISCONNECT_REASON:Ljava/lang/String; = "cn_rsn"

.field static final KEY_AP_INTERNAL_REASON:Ljava/lang/String; = "cn_irs"

.field static final KEY_AP_INTERNAL_TYPE:Ljava/lang/String; = "apwe"

.field static final KEY_AP_LOCALLY_GENERATED:Ljava/lang/String; = "aplo"

.field static final KEY_AP_MAX_DATA_RATE:Ljava/lang/String; = "max_drt"

.field static final KEY_AP_MLO_LINKS:Ljava/lang/String; = "ap_ml"

.field static final KEY_AP_MLO_MAX_ML_LINK:Ljava/lang/String; = "max_ml_link"

.field static final KEY_AP_MLO_TID_TO_LINK_MAPPING_SUPPORT:Ljava/lang/String; = "mld_t2lm"

.field private static final KEY_AP_MU_MIMO:Ljava/lang/String; = "ap_mmo"

.field private static final KEY_AP_NOISE:Ljava/lang/String; = "ap_nos"

.field static final KEY_AP_OCE_HLP:Ljava/lang/String; = "ap_hlp"

.field static final KEY_AP_OUI:Ljava/lang/String; = "ap_oui"

.field private static final KEY_AP_PASSPOINT:Ljava/lang/String; = "ap_pas"

.field private static final KEY_AP_ROAMING_COUNT:Ljava/lang/String; = "ap_rct"

.field private static final KEY_AP_ROAMING_FULLS_SCAN_COUNT:Ljava/lang/String; = "rfs_cnt"

.field private static final KEY_AP_ROAMING_PARTIAL_SCAN_COUNT:Ljava/lang/String; = "rps_cnt"

.field static final KEY_AP_ROAMING_TRIGGER:Ljava/lang/String; = "cn_rom"

.field static final KEY_AP_RSSI:Ljava/lang/String; = "ap_rsi"

.field private static final KEY_AP_SCAN_COUNT_SAME_CHANNEL:Ljava/lang/String; = "ap_snt"

.field private static final KEY_AP_SCAN_COUNT_TOTAL:Ljava/lang/String; = "ap_stc"

.field static final KEY_AP_SECURE_TYPE:Ljava/lang/String; = "ap_sec"

.field private static final KEY_AP_SNR:Ljava/lang/String; = "ap_snr"

.field static final KEY_TX_BACK_OFF:Ljava/lang/String; = "txof"

.field static final KEY_TX_BACK_OFF_COUNT:Ljava/lang/String; = "txcn"

.field static final KEY_TX_BACK_OFF_DURATION:Ljava/lang/String; = "txdr"

.field static final KEY_UNIQ_VALUE:Ljava/lang/String; = "DUNO"

.field private static final KEY_VER:Ljava/lang/String; = "bver"

.field static final KEY_WPA_STATE:Ljava/lang/String; = "wpst"

.field private static final PARM_VERSION:Ljava/lang/String; = "7"


# instance fields
.field private final mAdapter:Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem$Adapter;

.field mMaxDataRate:I


# direct methods
.method static constructor <clinit>()V
    .locals 27

    .line 1
    const-string v0, "ap_sec"

    .line 2
    .line 3
    const-string v1, ""

    .line 4
    .line 5
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    const-string v0, "wpst"

    .line 10
    .line 11
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v3

    .line 15
    const-string v0, "ap_stc"

    .line 16
    .line 17
    const-string v4, "0"

    .line 18
    .line 19
    filled-new-array {v0, v4}, [Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    const-string v5, "ap_snt"

    .line 24
    .line 25
    filled-new-array {v5, v4}, [Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v5

    .line 29
    const-string v6, "cn_rsn"

    .line 30
    .line 31
    filled-new-array {v6, v4}, [Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v6

    .line 35
    const-string v7, "aplo"

    .line 36
    .line 37
    filled-new-array {v7, v4}, [Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v7

    .line 41
    const-string v8, "DUNO"

    .line 42
    .line 43
    filled-new-array {v8, v4}, [Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v8

    .line 47
    const-string v9, "ap_oui"

    .line 48
    .line 49
    filled-new-array {v9, v1}, [Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v9

    .line 53
    const-string v10, "ap_chn"

    .line 54
    .line 55
    filled-new-array {v10, v1}, [Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v10

    .line 59
    const-string v11, "ap_bdw"

    .line 60
    .line 61
    filled-new-array {v11, v1}, [Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v11

    .line 65
    const-string v12, "ap_rsi"

    .line 66
    .line 67
    filled-new-array {v12, v1}, [Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v12

    .line 71
    const-string v13, "ap_drt"

    .line 72
    .line 73
    filled-new-array {v13, v1}, [Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v13

    .line 77
    const-string v14, "ap_mod"

    .line 78
    .line 79
    filled-new-array {v14, v1}, [Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v14

    .line 83
    const-string v15, "ap_ant"

    .line 84
    .line 85
    filled-new-array {v15, v1}, [Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v15

    .line 89
    move-object/from16 v16, v0

    .line 90
    .line 91
    const-string v0, "ap_mmo"

    .line 92
    .line 93
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    move-object/from16 v17, v0

    .line 98
    .line 99
    const-string v0, "ap_pas"

    .line 100
    .line 101
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    move-object/from16 v18, v0

    .line 106
    .line 107
    const-string v0, "ap_snr"

    .line 108
    .line 109
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    move-object/from16 v19, v0

    .line 114
    .line 115
    const-string v0, "ap_nos"

    .line 116
    .line 117
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v0

    .line 121
    move-object/from16 v20, v0

    .line 122
    .line 123
    const-string v0, "ap_akm"

    .line 124
    .line 125
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v0

    .line 129
    move-object/from16 v21, v0

    .line 130
    .line 131
    const-string v0, "ap_rct"

    .line 132
    .line 133
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object v0

    .line 137
    const-string v1, "11KV"

    .line 138
    .line 139
    filled-new-array {v1, v4}, [Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v22

    .line 143
    const-string v1, "KVIE"

    .line 144
    .line 145
    filled-new-array {v1, v4}, [Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object v23

    .line 149
    const-string v1, "rfs_cnt"

    .line 150
    .line 151
    filled-new-array {v1, v4}, [Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object v24

    .line 155
    const-string v1, "rps_cnt"

    .line 156
    .line 157
    filled-new-array {v1, v4}, [Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object v25

    .line 161
    const-string v1, "adps_dis"

    .line 162
    .line 163
    filled-new-array {v1, v4}, [Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object v26

    .line 167
    move-object/from16 v4, v16

    .line 168
    .line 169
    move-object/from16 v16, v17

    .line 170
    .line 171
    move-object/from16 v17, v18

    .line 172
    .line 173
    move-object/from16 v18, v19

    .line 174
    .line 175
    move-object/from16 v19, v20

    .line 176
    .line 177
    move-object/from16 v20, v21

    .line 178
    .line 179
    move-object/from16 v21, v0

    .line 180
    .line 181
    filled-new-array/range {v2 .. v26}, [[Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object v0

    .line 185
    sput-object v0, Lcom/samsung/android/server/wifi/bigdata/BigDataItemDISC;->DISC:[[Ljava/lang/String;

    .line 186
    .line 187
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem$Adapter;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;-><init>(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x0

    .line 5
    iput p1, p0, Lcom/samsung/android/server/wifi/bigdata/BigDataItemDISC;->mMaxDataRate:I

    .line 6
    .line 7
    iput-object p2, p0, Lcom/samsung/android/server/wifi/bigdata/BigDataItemDISC;->mAdapter:Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem$Adapter;

    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public addOrUpdateValue(Ljava/lang/String;I)V
    .locals 1

    .line 1
    const-string v0, "max_drt"

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    iget v0, p0, Lcom/samsung/android/server/wifi/bigdata/BigDataItemDISC;->mMaxDataRate:I

    .line 10
    .line 11
    if-ge p2, v0, :cond_0

    .line 12
    .line 13
    move p2, v0

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    iput p2, p0, Lcom/samsung/android/server/wifi/bigdata/BigDataItemDISC;->mMaxDataRate:I

    .line 16
    .line 17
    :cond_1
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;->addOrUpdateValue(Ljava/lang/String;I)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public clearData()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/samsung/android/server/wifi/bigdata/BigDataItemDISC;->mMaxDataRate:I

    .line 3
    .line 4
    invoke-super {p0}, Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;->clearData()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method protected getConnectedDurationKeyValueString()Ljava/lang/String;
    .locals 11

    .line 1
    new-instance v0, Landroid/net/wifi/WifiInfo;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/net/wifi/WifiInfo;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiInfo;->setFrequency(I)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiInfo;->setWifiStandard(I)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;->updateConnectedDuration(Landroid/net/wifi/WifiInfo;)V

    .line 14
    .line 15
    .line 16
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;->mIsWifi7Supported:Z

    .line 17
    .line 18
    const-string v2, "11axdr"

    .line 19
    .line 20
    const-string v3, "11acdr"

    .line 21
    .line 22
    const-string v4, "11ndr"

    .line 23
    .line 24
    const-string v5, "11ldr"

    .line 25
    .line 26
    const-string v6, "6gdr"

    .line 27
    .line 28
    const-string v7, "5gdr"

    .line 29
    .line 30
    const-string v8, "2gdr"

    .line 31
    .line 32
    const-string v9, ","

    .line 33
    .line 34
    const-string v10, ":"

    .line 35
    .line 36
    if-eqz v0, :cond_c

    .line 37
    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    .line 39
    .line 40
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 41
    .line 42
    .line 43
    invoke-static {v8}, Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v8

    .line 47
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    iget v8, p0, Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;->m2gConDuration:I

    .line 54
    .line 55
    if-lez v8, :cond_0

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_0
    move v8, v1

    .line 59
    :goto_0
    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v8

    .line 63
    invoke-static {v8}, Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v8

    .line 67
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-static {v7}, Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v7

    .line 77
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    iget v7, p0, Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;->m5gConDuration:I

    .line 84
    .line 85
    if-lez v7, :cond_1

    .line 86
    .line 87
    goto :goto_1

    .line 88
    :cond_1
    move v7, v1

    .line 89
    :goto_1
    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v7

    .line 93
    invoke-static {v7}, Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v7

    .line 97
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    invoke-static {v6}, Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v6

    .line 107
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    iget v6, p0, Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;->m6gConDuration:I

    .line 114
    .line 115
    if-lez v6, :cond_2

    .line 116
    .line 117
    goto :goto_2

    .line 118
    :cond_2
    move v6, v1

    .line 119
    :goto_2
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v6

    .line 123
    invoke-static {v6}, Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v6

    .line 127
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    const-string v6, "2g5gdr"

    .line 134
    .line 135
    invoke-static {v6}, Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v6

    .line 139
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    .line 141
    .line 142
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    .line 144
    .line 145
    iget v6, p0, Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;->m2g5gConDuration:I

    .line 146
    .line 147
    if-lez v6, :cond_3

    .line 148
    .line 149
    goto :goto_3

    .line 150
    :cond_3
    move v6, v1

    .line 151
    :goto_3
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object v6

    .line 155
    invoke-static {v6}, Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object v6

    .line 159
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    .line 161
    .line 162
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    .line 164
    .line 165
    const-string v6, "2g6gdr"

    .line 166
    .line 167
    invoke-static {v6}, Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object v6

    .line 171
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    .line 173
    .line 174
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    .line 176
    .line 177
    iget v6, p0, Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;->m2g6gConDuration:I

    .line 178
    .line 179
    if-lez v6, :cond_4

    .line 180
    .line 181
    goto :goto_4

    .line 182
    :cond_4
    move v6, v1

    .line 183
    :goto_4
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    move-result-object v6

    .line 187
    invoke-static {v6}, Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    .line 188
    .line 189
    .line 190
    move-result-object v6

    .line 191
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    .line 193
    .line 194
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    .line 196
    .line 197
    const-string v6, "5g6gdr"

    .line 198
    .line 199
    invoke-static {v6}, Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    .line 200
    .line 201
    .line 202
    move-result-object v6

    .line 203
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    .line 205
    .line 206
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    .line 208
    .line 209
    iget v6, p0, Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;->m5g6gConDuration:I

    .line 210
    .line 211
    if-lez v6, :cond_5

    .line 212
    .line 213
    goto :goto_5

    .line 214
    :cond_5
    move v6, v1

    .line 215
    :goto_5
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 216
    .line 217
    .line 218
    move-result-object v6

    .line 219
    invoke-static {v6}, Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    .line 220
    .line 221
    .line 222
    move-result-object v6

    .line 223
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 224
    .line 225
    .line 226
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 227
    .line 228
    .line 229
    const-string v6, "2g5g6gdr"

    .line 230
    .line 231
    invoke-static {v6}, Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    .line 232
    .line 233
    .line 234
    move-result-object v6

    .line 235
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 236
    .line 237
    .line 238
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 239
    .line 240
    .line 241
    iget v6, p0, Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;->m2g5g6gConDuration:I

    .line 242
    .line 243
    if-lez v6, :cond_6

    .line 244
    .line 245
    goto :goto_6

    .line 246
    :cond_6
    move v6, v1

    .line 247
    :goto_6
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 248
    .line 249
    .line 250
    move-result-object v6

    .line 251
    invoke-static {v6}, Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    .line 252
    .line 253
    .line 254
    move-result-object v6

    .line 255
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 256
    .line 257
    .line 258
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 259
    .line 260
    .line 261
    invoke-static {v5}, Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    .line 262
    .line 263
    .line 264
    move-result-object v5

    .line 265
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 266
    .line 267
    .line 268
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 269
    .line 270
    .line 271
    iget v5, p0, Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;->m11lConDuration:I

    .line 272
    .line 273
    if-lez v5, :cond_7

    .line 274
    .line 275
    goto :goto_7

    .line 276
    :cond_7
    move v5, v1

    .line 277
    :goto_7
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 278
    .line 279
    .line 280
    move-result-object v5

    .line 281
    invoke-static {v5}, Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    .line 282
    .line 283
    .line 284
    move-result-object v5

    .line 285
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 286
    .line 287
    .line 288
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 289
    .line 290
    .line 291
    invoke-static {v4}, Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    .line 292
    .line 293
    .line 294
    move-result-object v4

    .line 295
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 296
    .line 297
    .line 298
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 299
    .line 300
    .line 301
    iget v4, p0, Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;->m11nConDuration:I

    .line 302
    .line 303
    if-lez v4, :cond_8

    .line 304
    .line 305
    goto :goto_8

    .line 306
    :cond_8
    move v4, v1

    .line 307
    :goto_8
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 308
    .line 309
    .line 310
    move-result-object v4

    .line 311
    invoke-static {v4}, Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    .line 312
    .line 313
    .line 314
    move-result-object v4

    .line 315
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 316
    .line 317
    .line 318
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 319
    .line 320
    .line 321
    invoke-static {v3}, Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    .line 322
    .line 323
    .line 324
    move-result-object v3

    .line 325
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 326
    .line 327
    .line 328
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 329
    .line 330
    .line 331
    iget v3, p0, Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;->m11acConDuration:I

    .line 332
    .line 333
    if-lez v3, :cond_9

    .line 334
    .line 335
    goto :goto_9

    .line 336
    :cond_9
    move v3, v1

    .line 337
    :goto_9
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 338
    .line 339
    .line 340
    move-result-object v3

    .line 341
    invoke-static {v3}, Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    .line 342
    .line 343
    .line 344
    move-result-object v3

    .line 345
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 346
    .line 347
    .line 348
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 349
    .line 350
    .line 351
    invoke-static {v2}, Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    .line 352
    .line 353
    .line 354
    move-result-object v2

    .line 355
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 356
    .line 357
    .line 358
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 359
    .line 360
    .line 361
    iget v2, p0, Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;->m11axConDuration:I

    .line 362
    .line 363
    if-lez v2, :cond_a

    .line 364
    .line 365
    goto :goto_a

    .line 366
    :cond_a
    move v2, v1

    .line 367
    :goto_a
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 368
    .line 369
    .line 370
    move-result-object v2

    .line 371
    invoke-static {v2}, Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    .line 372
    .line 373
    .line 374
    move-result-object v2

    .line 375
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 376
    .line 377
    .line 378
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 379
    .line 380
    .line 381
    const-string v2, "11bedr"

    .line 382
    .line 383
    invoke-static {v2}, Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    .line 384
    .line 385
    .line 386
    move-result-object v2

    .line 387
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 388
    .line 389
    .line 390
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 391
    .line 392
    .line 393
    iget p0, p0, Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;->m11beConDuration:I

    .line 394
    .line 395
    if-lez p0, :cond_b

    .line 396
    .line 397
    move v1, p0

    .line 398
    :cond_b
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 399
    .line 400
    .line 401
    move-result-object p0

    .line 402
    invoke-static {p0}, Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    .line 403
    .line 404
    .line 405
    move-result-object p0

    .line 406
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 407
    .line 408
    .line 409
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 410
    .line 411
    .line 412
    move-result-object p0

    .line 413
    return-object p0

    .line 414
    :cond_c
    new-instance v0, Ljava/lang/StringBuilder;

    .line 415
    .line 416
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 417
    .line 418
    .line 419
    invoke-static {v8}, Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    .line 420
    .line 421
    .line 422
    move-result-object v8

    .line 423
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 424
    .line 425
    .line 426
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 427
    .line 428
    .line 429
    iget v8, p0, Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;->m2gConDuration:I

    .line 430
    .line 431
    if-lez v8, :cond_d

    .line 432
    .line 433
    goto :goto_b

    .line 434
    :cond_d
    move v8, v1

    .line 435
    :goto_b
    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 436
    .line 437
    .line 438
    move-result-object v8

    .line 439
    invoke-static {v8}, Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    .line 440
    .line 441
    .line 442
    move-result-object v8

    .line 443
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 444
    .line 445
    .line 446
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 447
    .line 448
    .line 449
    invoke-static {v7}, Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    .line 450
    .line 451
    .line 452
    move-result-object v7

    .line 453
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 454
    .line 455
    .line 456
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 457
    .line 458
    .line 459
    iget v7, p0, Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;->m5gConDuration:I

    .line 460
    .line 461
    if-lez v7, :cond_e

    .line 462
    .line 463
    goto :goto_c

    .line 464
    :cond_e
    move v7, v1

    .line 465
    :goto_c
    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 466
    .line 467
    .line 468
    move-result-object v7

    .line 469
    invoke-static {v7}, Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    .line 470
    .line 471
    .line 472
    move-result-object v7

    .line 473
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 474
    .line 475
    .line 476
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 477
    .line 478
    .line 479
    invoke-static {v6}, Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    .line 480
    .line 481
    .line 482
    move-result-object v6

    .line 483
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 484
    .line 485
    .line 486
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 487
    .line 488
    .line 489
    iget v6, p0, Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;->m6gConDuration:I

    .line 490
    .line 491
    if-lez v6, :cond_f

    .line 492
    .line 493
    goto :goto_d

    .line 494
    :cond_f
    move v6, v1

    .line 495
    :goto_d
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 496
    .line 497
    .line 498
    move-result-object v6

    .line 499
    invoke-static {v6}, Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    .line 500
    .line 501
    .line 502
    move-result-object v6

    .line 503
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 504
    .line 505
    .line 506
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 507
    .line 508
    .line 509
    invoke-static {v5}, Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    .line 510
    .line 511
    .line 512
    move-result-object v5

    .line 513
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 514
    .line 515
    .line 516
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 517
    .line 518
    .line 519
    iget v5, p0, Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;->m11lConDuration:I

    .line 520
    .line 521
    if-lez v5, :cond_10

    .line 522
    .line 523
    goto :goto_e

    .line 524
    :cond_10
    move v5, v1

    .line 525
    :goto_e
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 526
    .line 527
    .line 528
    move-result-object v5

    .line 529
    invoke-static {v5}, Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    .line 530
    .line 531
    .line 532
    move-result-object v5

    .line 533
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 534
    .line 535
    .line 536
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 537
    .line 538
    .line 539
    invoke-static {v4}, Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    .line 540
    .line 541
    .line 542
    move-result-object v4

    .line 543
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 544
    .line 545
    .line 546
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 547
    .line 548
    .line 549
    iget v4, p0, Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;->m11nConDuration:I

    .line 550
    .line 551
    if-lez v4, :cond_11

    .line 552
    .line 553
    goto :goto_f

    .line 554
    :cond_11
    move v4, v1

    .line 555
    :goto_f
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 556
    .line 557
    .line 558
    move-result-object v4

    .line 559
    invoke-static {v4}, Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    .line 560
    .line 561
    .line 562
    move-result-object v4

    .line 563
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 564
    .line 565
    .line 566
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 567
    .line 568
    .line 569
    invoke-static {v3}, Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    .line 570
    .line 571
    .line 572
    move-result-object v3

    .line 573
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 574
    .line 575
    .line 576
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 577
    .line 578
    .line 579
    iget v3, p0, Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;->m11acConDuration:I

    .line 580
    .line 581
    if-lez v3, :cond_12

    .line 582
    .line 583
    goto :goto_10

    .line 584
    :cond_12
    move v3, v1

    .line 585
    :goto_10
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 586
    .line 587
    .line 588
    move-result-object v3

    .line 589
    invoke-static {v3}, Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    .line 590
    .line 591
    .line 592
    move-result-object v3

    .line 593
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 594
    .line 595
    .line 596
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 597
    .line 598
    .line 599
    invoke-static {v2}, Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    .line 600
    .line 601
    .line 602
    move-result-object v2

    .line 603
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 604
    .line 605
    .line 606
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 607
    .line 608
    .line 609
    iget p0, p0, Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;->m11axConDuration:I

    .line 610
    .line 611
    if-lez p0, :cond_13

    .line 612
    .line 613
    move v1, p0

    .line 614
    :cond_13
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 615
    .line 616
    .line 617
    move-result-object p0

    .line 618
    invoke-static {p0}, Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    .line 619
    .line 620
    .line 621
    move-result-object p0

    .line 622
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 623
    .line 624
    .line 625
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 626
    .line 627
    .line 628
    move-result-object p0

    .line 629
    return-object p0
.end method

.method public getJsonFormat()Ljava/lang/String;
    .locals 18

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    :try_start_0
    iget-boolean v0, v1, Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;->mIsWifi7Supported:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    .line 5
    const-string v2, "ap_hlp"

    .line 6
    .line 7
    const-string v3, "apdr"

    .line 8
    .line 9
    const-string v4, "7"

    .line 10
    .line 11
    const-string v5, "bver"

    .line 12
    .line 13
    const-string v6, "txcn"

    .line 14
    .line 15
    const-string v7, "txdr"

    .line 16
    .line 17
    const-string v8, "txof"

    .line 18
    .line 19
    const-string v9, "adps"

    .line 20
    .line 21
    const-string v10, "apwe"

    .line 22
    .line 23
    const-string v11, "bt_cnt"

    .line 24
    .line 25
    const-string v12, "max_drt"

    .line 26
    .line 27
    const-string v13, "cn_irs"

    .line 28
    .line 29
    const-string v14, "cn_rom"

    .line 30
    .line 31
    const-string v15, "0"

    .line 32
    .line 33
    move/from16 v16, v0

    .line 34
    .line 35
    const-string v0, ","

    .line 36
    .line 37
    if-eqz v16, :cond_0

    .line 38
    .line 39
    move-object/from16 v16, v2

    .line 40
    .line 41
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    .line 42
    .line 43
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 44
    .line 45
    .line 46
    move-object/from16 v17, v3

    .line 47
    .line 48
    iget-object v3, v1, Lcom/samsung/android/server/wifi/bigdata/BigDataItemDISC;->mAdapter:Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem$Adapter;

    .line 49
    .line 50
    invoke-interface {v3}, Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem$Adapter;->getWifiVersionKeyValueString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v3

    .line 54
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    sget-object v3, Lcom/samsung/android/server/wifi/bigdata/BigDataItemDISC;->DISC:[[Ljava/lang/String;

    .line 61
    .line 62
    invoke-virtual {v1, v3}, Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;->getKeyValueStrings([[Ljava/lang/String;)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v3

    .line 66
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v1, v14, v15}, Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;->getKeyValueString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v3

    .line 76
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v1, v13, v15}, Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;->getKeyValueString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v3

    .line 86
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    invoke-virtual {v1, v12, v15}, Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;->getKeyValueString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v3

    .line 96
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    invoke-virtual {v1, v11, v15}, Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;->getKeyValueString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v3

    .line 106
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    invoke-virtual {v1, v10, v15}, Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;->getKeyValueString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v3

    .line 116
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    invoke-virtual {v1, v9, v15}, Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;->getKeyValueString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v3

    .line 126
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    invoke-virtual {v1, v8, v15}, Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;->getKeyValueString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v3

    .line 136
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    .line 138
    .line 139
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    .line 141
    .line 142
    invoke-virtual {v1, v7, v15}, Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;->getKeyValueString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object v3

    .line 146
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    .line 148
    .line 149
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    .line 151
    .line 152
    invoke-virtual {v1, v6, v15}, Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;->getKeyValueString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object v3

    .line 156
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    .line 158
    .line 159
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    .line 161
    .line 162
    invoke-virtual {v1, v5, v4}, Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;->getKeyValueString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object v3

    .line 166
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    .line 168
    .line 169
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    .line 171
    .line 172
    move-object/from16 v3, v17

    .line 173
    .line 174
    invoke-virtual {v1, v3}, Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;->getDurationTimeKeyValueString(Ljava/lang/String;)Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object v3

    .line 178
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    .line 180
    .line 181
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    .line 183
    .line 184
    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/bigdata/BigDataItemDISC;->getConnectedDurationKeyValueString()Ljava/lang/String;

    .line 185
    .line 186
    .line 187
    move-result-object v3

    .line 188
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    .line 190
    .line 191
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    .line 193
    .line 194
    move-object/from16 v3, v16

    .line 195
    .line 196
    invoke-virtual {v1, v3, v15}, Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;->getKeyValueString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 197
    .line 198
    .line 199
    move-result-object v3

    .line 200
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    .line 202
    .line 203
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    .line 205
    .line 206
    const-string v3, "ap_ml"

    .line 207
    .line 208
    invoke-virtual {v1, v3, v15}, Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;->getKeyValueString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 209
    .line 210
    .line 211
    move-result-object v3

    .line 212
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    .line 214
    .line 215
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 216
    .line 217
    .line 218
    const-string v3, "max_ml_link"

    .line 219
    .line 220
    invoke-virtual {v1, v3, v15}, Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;->getKeyValueString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 221
    .line 222
    .line 223
    move-result-object v3

    .line 224
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 225
    .line 226
    .line 227
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 228
    .line 229
    .line 230
    const-string v0, "mld_t2lm"

    .line 231
    .line 232
    invoke-virtual {v1, v0, v15}, Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;->getKeyValueString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 233
    .line 234
    .line 235
    move-result-object v0

    .line 236
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 237
    .line 238
    .line 239
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 240
    .line 241
    .line 242
    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 243
    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;->resetTime()V

    .line 244
    .line 245
    .line 246
    return-object v0

    .line 247
    :catchall_0
    move-exception v0

    .line 248
    goto/16 :goto_0

    .line 249
    .line 250
    :cond_0
    move-object/from16 v16, v2

    .line 251
    .line 252
    :try_start_2
    new-instance v2, Ljava/lang/StringBuilder;

    .line 253
    .line 254
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 255
    .line 256
    .line 257
    move-object/from16 v17, v3

    .line 258
    .line 259
    iget-object v3, v1, Lcom/samsung/android/server/wifi/bigdata/BigDataItemDISC;->mAdapter:Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem$Adapter;

    .line 260
    .line 261
    invoke-interface {v3}, Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem$Adapter;->getWifiVersionKeyValueString()Ljava/lang/String;

    .line 262
    .line 263
    .line 264
    move-result-object v3

    .line 265
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 266
    .line 267
    .line 268
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 269
    .line 270
    .line 271
    sget-object v3, Lcom/samsung/android/server/wifi/bigdata/BigDataItemDISC;->DISC:[[Ljava/lang/String;

    .line 272
    .line 273
    invoke-virtual {v1, v3}, Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;->getKeyValueStrings([[Ljava/lang/String;)Ljava/lang/String;

    .line 274
    .line 275
    .line 276
    move-result-object v3

    .line 277
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 278
    .line 279
    .line 280
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 281
    .line 282
    .line 283
    invoke-virtual {v1, v14, v15}, Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;->getKeyValueString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 284
    .line 285
    .line 286
    move-result-object v3

    .line 287
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 288
    .line 289
    .line 290
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 291
    .line 292
    .line 293
    invoke-virtual {v1, v13, v15}, Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;->getKeyValueString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 294
    .line 295
    .line 296
    move-result-object v3

    .line 297
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 298
    .line 299
    .line 300
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 301
    .line 302
    .line 303
    invoke-virtual {v1, v12, v15}, Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;->getKeyValueString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 304
    .line 305
    .line 306
    move-result-object v3

    .line 307
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 308
    .line 309
    .line 310
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 311
    .line 312
    .line 313
    invoke-virtual {v1, v11, v15}, Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;->getKeyValueString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 314
    .line 315
    .line 316
    move-result-object v3

    .line 317
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 318
    .line 319
    .line 320
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 321
    .line 322
    .line 323
    invoke-virtual {v1, v10, v15}, Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;->getKeyValueString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 324
    .line 325
    .line 326
    move-result-object v3

    .line 327
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 328
    .line 329
    .line 330
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 331
    .line 332
    .line 333
    invoke-virtual {v1, v9, v15}, Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;->getKeyValueString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 334
    .line 335
    .line 336
    move-result-object v3

    .line 337
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 338
    .line 339
    .line 340
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 341
    .line 342
    .line 343
    invoke-virtual {v1, v8, v15}, Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;->getKeyValueString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 344
    .line 345
    .line 346
    move-result-object v3

    .line 347
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 348
    .line 349
    .line 350
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 351
    .line 352
    .line 353
    invoke-virtual {v1, v7, v15}, Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;->getKeyValueString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 354
    .line 355
    .line 356
    move-result-object v3

    .line 357
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 358
    .line 359
    .line 360
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 361
    .line 362
    .line 363
    invoke-virtual {v1, v6, v15}, Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;->getKeyValueString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 364
    .line 365
    .line 366
    move-result-object v3

    .line 367
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 368
    .line 369
    .line 370
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 371
    .line 372
    .line 373
    invoke-virtual {v1, v5, v4}, Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;->getKeyValueString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 374
    .line 375
    .line 376
    move-result-object v3

    .line 377
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 378
    .line 379
    .line 380
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 381
    .line 382
    .line 383
    move-object/from16 v3, v17

    .line 384
    .line 385
    invoke-virtual {v1, v3}, Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;->getDurationTimeKeyValueString(Ljava/lang/String;)Ljava/lang/String;

    .line 386
    .line 387
    .line 388
    move-result-object v3

    .line 389
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 390
    .line 391
    .line 392
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 393
    .line 394
    .line 395
    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/bigdata/BigDataItemDISC;->getConnectedDurationKeyValueString()Ljava/lang/String;

    .line 396
    .line 397
    .line 398
    move-result-object v3

    .line 399
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 400
    .line 401
    .line 402
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 403
    .line 404
    .line 405
    move-object/from16 v3, v16

    .line 406
    .line 407
    invoke-virtual {v1, v3, v15}, Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;->getKeyValueString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 408
    .line 409
    .line 410
    move-result-object v0

    .line 411
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 412
    .line 413
    .line 414
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 415
    .line 416
    .line 417
    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 418
    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;->resetTime()V

    .line 419
    .line 420
    .line 421
    return-object v0

    .line 422
    :goto_0
    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;->resetTime()V

    .line 423
    .line 424
    .line 425
    throw v0
.end method

.method public isAvailableLogging(I)Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p1, v0, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    invoke-super {p0, p1}, Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;->isAvailableLogging(I)Z

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method public parseData(Ljava/lang/String;)Z
    .locals 6

    .line 1
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;->getArray(Ljava/lang/String;)[Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const/4 v0, 0x0

    .line 6
    const/4 v1, 0x1

    .line 7
    if-eqz p1, :cond_1

    .line 8
    .line 9
    array-length v2, p1

    .line 10
    sget-object v3, Lcom/samsung/android/server/wifi/bigdata/BigDataItemDISC;->DISC:[[Ljava/lang/String;

    .line 11
    .line 12
    array-length v4, v3

    .line 13
    sub-int/2addr v4, v1

    .line 14
    const-string v5, "-1"

    .line 15
    .line 16
    if-ne v2, v4, :cond_0

    .line 17
    .line 18
    array-length v2, v3

    .line 19
    new-array v2, v2, [Ljava/lang/String;

    .line 20
    .line 21
    array-length v4, p1

    .line 22
    sub-int/2addr v4, v1

    .line 23
    invoke-static {p1, v0, v2, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 24
    .line 25
    .line 26
    array-length v4, v3

    .line 27
    add-int/lit8 v4, v4, -0x2

    .line 28
    .line 29
    aput-object v5, v2, v4

    .line 30
    .line 31
    array-length v3, v3

    .line 32
    sub-int/2addr v3, v1

    .line 33
    array-length v4, p1

    .line 34
    sub-int/2addr v4, v1

    .line 35
    aget-object p1, p1, v4

    .line 36
    .line 37
    aput-object p1, v2, v3

    .line 38
    .line 39
    :goto_0
    move-object p1, v2

    .line 40
    goto :goto_1

    .line 41
    :cond_0
    array-length v2, p1

    .line 42
    array-length v4, v3

    .line 43
    add-int/lit8 v4, v4, -0x3

    .line 44
    .line 45
    if-ne v2, v4, :cond_1

    .line 46
    .line 47
    array-length v2, v3

    .line 48
    new-array v2, v2, [Ljava/lang/String;

    .line 49
    .line 50
    array-length v4, p1

    .line 51
    sub-int/2addr v4, v1

    .line 52
    invoke-static {p1, v0, v2, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 53
    .line 54
    .line 55
    array-length v4, v3

    .line 56
    add-int/lit8 v4, v4, -0x4

    .line 57
    .line 58
    aput-object v5, v2, v4

    .line 59
    .line 60
    array-length v4, v3

    .line 61
    add-int/lit8 v4, v4, -0x3

    .line 62
    .line 63
    aput-object v5, v2, v4

    .line 64
    .line 65
    array-length v4, v3

    .line 66
    add-int/lit8 v4, v4, -0x2

    .line 67
    .line 68
    aput-object v5, v2, v4

    .line 69
    .line 70
    array-length v3, v3

    .line 71
    sub-int/2addr v3, v1

    .line 72
    array-length v4, p1

    .line 73
    sub-int/2addr v4, v1

    .line 74
    aget-object p1, p1, v4

    .line 75
    .line 76
    aput-object p1, v2, v3

    .line 77
    .line 78
    goto :goto_0

    .line 79
    :cond_1
    :goto_1
    if-eqz p1, :cond_3

    .line 80
    .line 81
    array-length v2, p1

    .line 82
    sget-object v3, Lcom/samsung/android/server/wifi/bigdata/BigDataItemDISC;->DISC:[[Ljava/lang/String;

    .line 83
    .line 84
    array-length v4, v3

    .line 85
    if-eq v2, v4, :cond_2

    .line 86
    .line 87
    goto :goto_2

    .line 88
    :cond_2
    invoke-virtual {p0, v3, p1}, Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;->putValues([[Ljava/lang/String;[Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    return v1

    .line 92
    :cond_3
    :goto_2
    iget-boolean p1, p0, Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;->mLogMessages:Z

    .line 93
    .line 94
    if-eqz p1, :cond_4

    .line 95
    .line 96
    iget-object p0, p0, Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;->TAG:Ljava/lang/String;

    .line 97
    .line 98
    const-string p1, "can\'t parse bigdata extra"

    .line 99
    .line 100
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    .line 102
    .line 103
    :cond_4
    return v0
.end method
