.class public Lcom/samsung/android/server/wifi/wcm/WcmBigDataSCNT;
.super Lcom/samsung/android/server/wifi/wcm/WcmBigDataFeature;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# static fields
.field public static final KEY_SNS_ELE_GP:Ljava/lang/String; = "SEGP"

.field public static final KEY_SNS_ELE_PG:Ljava/lang/String; = "SEPG"

.field public static final KEY_SNS_GQ_INV_NON:Ljava/lang/String; = "GINS"

.field public static final KEY_SNS_GQ_INV_NORMAL:Ljava/lang/String; = "GINO"

.field public static final KEY_SNS_GQ_PQ_NON:Ljava/lang/String; = "QPNS"

.field public static final KEY_SNS_GQ_PQ_NORMAL:Ljava/lang/String; = "QPNO"

.field public static final KEY_SNS_INV_GQ_NON:Ljava/lang/String; = "IGNS"

.field public static final KEY_SNS_INV_GQ_NORMAL:Ljava/lang/String; = "IGNO"

.field public static final KEY_SNS_INV_PQ_NON:Ljava/lang/String; = "IPNS"

.field public static final KEY_SNS_INV_PQ_NORMAL:Ljava/lang/String; = "IPNO"

.field public static final KEY_SNS_IV_AGG:Ljava/lang/String; = "IVAG"

.field public static final KEY_SNS_IV_NONSWITCHABLE:Ljava/lang/String; = "IVNS"

.field public static final KEY_SNS_IV_NORMAL:Ljava/lang/String; = "IVNO"

.field public static final KEY_SNS_IWC_MW:Ljava/lang/String; = "SIMW"

.field public static final KEY_SNS_IWC_WM:Ljava/lang/String; = "SIWM"

.field public static final KEY_SNS_PQ_GQ_NON:Ljava/lang/String; = "QPNS"

.field public static final KEY_SNS_PQ_GQ_NORMAL:Ljava/lang/String; = "QPNO"

.field public static final KEY_SNS_PQ_INV_NON:Ljava/lang/String; = "PINS"

.field public static final KEY_SNS_PQ_INV_NORMAL:Ljava/lang/String; = "PINO"

.field public static final KEY_SNS_TURN_OFF:Ljava/lang/String; = "SSMO"

.field public static final KEY_SNS_TURN_ON_AGG:Ljava/lang/String; = "SSMA"

.field public static final KEY_SNS_TURN_ON_NORMAL:Ljava/lang/String; = "SSMN"

.field private static final KEY_SNS_VERSION:Ljava/lang/String; = "SVER"

.field public static final KEY_SNS_VI_AGG:Ljava/lang/String; = "VIAG"

.field public static final KEY_SNS_VI_NONSWITCHABLE:Ljava/lang/String; = "VINS"

.field public static final KEY_SNS_VI_NORMAL:Ljava/lang/String; = "VINO"

.field public static final KEY_WCM_ANS_CAUSE_STATE:Ljava/lang/String; = "PIAG"

.field public static final KEY_WCM_ANS_QC_RESULT:Ljava/lang/String; = "QPAG"

.field public static final KEY_WCM_ANS_RESERVED:Ljava/lang/String; = "QPAG"

.field public static final KEY_WCM_ANS_STAGE:Ljava/lang/String; = "GIAG"

.field public static final KEY_WCM_ANS_SUCCESS:Ljava/lang/String; = "IGAG"

.field public static final KEY_WCM_ANS_TIME_DELAY:Ljava/lang/String; = "IPAG"

.field private static final SCNT:[[Ljava/lang/String;


# instance fields
.field public mAnsCauseState:I

.field public mAnsQcResult:I

.field public mAnsReserved:I

.field public mAnsStage:I

.field public mAnsSuccess:I

.field public mAnsTimeDelay:I

.field public mEleGP:I

.field public mElePG:I

.field public mGqInvNon:I

.field public mGqInvNormal:I

.field public mGqPqNon:I

.field public mGqPqNormal:I

.field public mIVAGG:I

.field public mIVNonSwitchable:I

.field public mIVNormal:I

.field public mInvGqNon:I

.field public mInvGqNormal:I

.field public mInvPqNon:I

.field public mInvPqNormal:I

.field public mPqGqNon:I

.field public mPqGqNormal:I

.field public mPqInvNon:I

.field public mPqInvNormal:I

.field public mTurnedOff:I

.field public mTurnedOnAGG:I

.field public mTurnedOnNormal:I

.field public mVIAGG:I

.field public mVINonSwitchable:I

.field public mVINormal:I


# direct methods
.method static constructor <clinit>()V
    .locals 34

    .line 1
    const-string v0, "SVER"

    .line 2
    .line 3
    const-string v1, "20210825"

    .line 4
    .line 5
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    const-string v0, "IVNS"

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
    const-string v0, "IVNO"

    .line 18
    .line 19
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v4

    .line 23
    const-string v0, "IVAG"

    .line 24
    .line 25
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v5

    .line 29
    const-string v0, "VINS"

    .line 30
    .line 31
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v6

    .line 35
    const-string v0, "VINO"

    .line 36
    .line 37
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v7

    .line 41
    const-string v0, "VIAG"

    .line 42
    .line 43
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v8

    .line 47
    const-string v0, "GINS"

    .line 48
    .line 49
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v9

    .line 53
    const-string v0, "PINS"

    .line 54
    .line 55
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v10

    .line 59
    const-string v0, "IGNS"

    .line 60
    .line 61
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v11

    .line 65
    const-string v0, "IPNS"

    .line 66
    .line 67
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v12

    .line 71
    const-string v0, "QPNS"

    .line 72
    .line 73
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v13

    .line 77
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v14

    .line 81
    const-string v0, "GINO"

    .line 82
    .line 83
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v15

    .line 87
    const-string v0, "PINO"

    .line 88
    .line 89
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v16

    .line 93
    const-string v0, "IGNO"

    .line 94
    .line 95
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v17

    .line 99
    const-string v0, "IPNO"

    .line 100
    .line 101
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v18

    .line 105
    const-string v0, "QPNO"

    .line 106
    .line 107
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v19

    .line 111
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v20

    .line 115
    const-string v0, "GIAG"

    .line 116
    .line 117
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v21

    .line 121
    const-string v0, "PIAG"

    .line 122
    .line 123
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v22

    .line 127
    const-string v0, "IGAG"

    .line 128
    .line 129
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object v23

    .line 133
    const-string v0, "IPAG"

    .line 134
    .line 135
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v24

    .line 139
    const-string v0, "QPAG"

    .line 140
    .line 141
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object v25

    .line 145
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object v26

    .line 149
    const-string v0, "SIWM"

    .line 150
    .line 151
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object v27

    .line 155
    const-string v0, "SIMW"

    .line 156
    .line 157
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object v28

    .line 161
    const-string v0, "SEGP"

    .line 162
    .line 163
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object v29

    .line 167
    const-string v0, "SEPG"

    .line 168
    .line 169
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object v30

    .line 173
    const-string v0, "SSMO"

    .line 174
    .line 175
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object v31

    .line 179
    const-string v0, "SSMN"

    .line 180
    .line 181
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object v32

    .line 185
    const-string v0, "SSMA"

    .line 186
    .line 187
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 188
    .line 189
    .line 190
    move-result-object v33

    .line 191
    filled-new-array/range {v2 .. v33}, [[Ljava/lang/String;

    .line 192
    .line 193
    .line 194
    move-result-object v0

    .line 195
    sput-object v0, Lcom/samsung/android/server/wifi/wcm/WcmBigDataSCNT;->SCNT:[[Ljava/lang/String;

    .line 196
    .line 197
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/wcm/WcmBigDataFeature;-><init>()V

    .line 2
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/wcm/WcmBigDataSCNT;->initialize()V

    return-void
.end method

.method public constructor <init>(ZLjava/lang/String;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/wcm/WcmBigDataFeature;-><init>(ZLjava/lang/String;)V

    .line 4
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/wcm/WcmBigDataSCNT;->initialize()V

    return-void
.end method


# virtual methods
.method public addOrUpdateAllValue()V
    .locals 2

    .line 1
    const-string v0, "IVNS"

    .line 2
    .line 3
    iget v1, p0, Lcom/samsung/android/server/wifi/wcm/WcmBigDataSCNT;->mIVNonSwitchable:I

    .line 4
    .line 5
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/server/wifi/wcm/WcmBigDataFeature;->addOrUpdateValue(Ljava/lang/String;I)V

    .line 6
    .line 7
    .line 8
    const-string v0, "IVNO"

    .line 9
    .line 10
    iget v1, p0, Lcom/samsung/android/server/wifi/wcm/WcmBigDataSCNT;->mIVNormal:I

    .line 11
    .line 12
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/server/wifi/wcm/WcmBigDataFeature;->addOrUpdateValue(Ljava/lang/String;I)V

    .line 13
    .line 14
    .line 15
    const-string v0, "IVAG"

    .line 16
    .line 17
    iget v1, p0, Lcom/samsung/android/server/wifi/wcm/WcmBigDataSCNT;->mIVAGG:I

    .line 18
    .line 19
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/server/wifi/wcm/WcmBigDataFeature;->addOrUpdateValue(Ljava/lang/String;I)V

    .line 20
    .line 21
    .line 22
    const-string v0, "VINS"

    .line 23
    .line 24
    iget v1, p0, Lcom/samsung/android/server/wifi/wcm/WcmBigDataSCNT;->mVINonSwitchable:I

    .line 25
    .line 26
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/server/wifi/wcm/WcmBigDataFeature;->addOrUpdateValue(Ljava/lang/String;I)V

    .line 27
    .line 28
    .line 29
    const-string v0, "VINO"

    .line 30
    .line 31
    iget v1, p0, Lcom/samsung/android/server/wifi/wcm/WcmBigDataSCNT;->mVINormal:I

    .line 32
    .line 33
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/server/wifi/wcm/WcmBigDataFeature;->addOrUpdateValue(Ljava/lang/String;I)V

    .line 34
    .line 35
    .line 36
    const-string v0, "VIAG"

    .line 37
    .line 38
    iget v1, p0, Lcom/samsung/android/server/wifi/wcm/WcmBigDataSCNT;->mVIAGG:I

    .line 39
    .line 40
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/server/wifi/wcm/WcmBigDataFeature;->addOrUpdateValue(Ljava/lang/String;I)V

    .line 41
    .line 42
    .line 43
    const-string v0, "GINS"

    .line 44
    .line 45
    iget v1, p0, Lcom/samsung/android/server/wifi/wcm/WcmBigDataSCNT;->mGqInvNon:I

    .line 46
    .line 47
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/server/wifi/wcm/WcmBigDataFeature;->addOrUpdateValue(Ljava/lang/String;I)V

    .line 48
    .line 49
    .line 50
    const-string v0, "PINS"

    .line 51
    .line 52
    iget v1, p0, Lcom/samsung/android/server/wifi/wcm/WcmBigDataSCNT;->mPqInvNon:I

    .line 53
    .line 54
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/server/wifi/wcm/WcmBigDataFeature;->addOrUpdateValue(Ljava/lang/String;I)V

    .line 55
    .line 56
    .line 57
    const-string v0, "IGNS"

    .line 58
    .line 59
    iget v1, p0, Lcom/samsung/android/server/wifi/wcm/WcmBigDataSCNT;->mInvGqNon:I

    .line 60
    .line 61
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/server/wifi/wcm/WcmBigDataFeature;->addOrUpdateValue(Ljava/lang/String;I)V

    .line 62
    .line 63
    .line 64
    const-string v0, "IPNS"

    .line 65
    .line 66
    iget v1, p0, Lcom/samsung/android/server/wifi/wcm/WcmBigDataSCNT;->mInvPqNon:I

    .line 67
    .line 68
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/server/wifi/wcm/WcmBigDataFeature;->addOrUpdateValue(Ljava/lang/String;I)V

    .line 69
    .line 70
    .line 71
    iget v0, p0, Lcom/samsung/android/server/wifi/wcm/WcmBigDataSCNT;->mGqPqNon:I

    .line 72
    .line 73
    const-string v1, "QPNS"

    .line 74
    .line 75
    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/server/wifi/wcm/WcmBigDataFeature;->addOrUpdateValue(Ljava/lang/String;I)V

    .line 76
    .line 77
    .line 78
    iget v0, p0, Lcom/samsung/android/server/wifi/wcm/WcmBigDataSCNT;->mPqGqNon:I

    .line 79
    .line 80
    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/server/wifi/wcm/WcmBigDataFeature;->addOrUpdateValue(Ljava/lang/String;I)V

    .line 81
    .line 82
    .line 83
    const-string v0, "GINO"

    .line 84
    .line 85
    iget v1, p0, Lcom/samsung/android/server/wifi/wcm/WcmBigDataSCNT;->mGqInvNormal:I

    .line 86
    .line 87
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/server/wifi/wcm/WcmBigDataFeature;->addOrUpdateValue(Ljava/lang/String;I)V

    .line 88
    .line 89
    .line 90
    const-string v0, "PINO"

    .line 91
    .line 92
    iget v1, p0, Lcom/samsung/android/server/wifi/wcm/WcmBigDataSCNT;->mPqInvNormal:I

    .line 93
    .line 94
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/server/wifi/wcm/WcmBigDataFeature;->addOrUpdateValue(Ljava/lang/String;I)V

    .line 95
    .line 96
    .line 97
    const-string v0, "IGNO"

    .line 98
    .line 99
    iget v1, p0, Lcom/samsung/android/server/wifi/wcm/WcmBigDataSCNT;->mInvGqNormal:I

    .line 100
    .line 101
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/server/wifi/wcm/WcmBigDataFeature;->addOrUpdateValue(Ljava/lang/String;I)V

    .line 102
    .line 103
    .line 104
    const-string v0, "IPNO"

    .line 105
    .line 106
    iget v1, p0, Lcom/samsung/android/server/wifi/wcm/WcmBigDataSCNT;->mInvPqNormal:I

    .line 107
    .line 108
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/server/wifi/wcm/WcmBigDataFeature;->addOrUpdateValue(Ljava/lang/String;I)V

    .line 109
    .line 110
    .line 111
    iget v0, p0, Lcom/samsung/android/server/wifi/wcm/WcmBigDataSCNT;->mGqPqNormal:I

    .line 112
    .line 113
    const-string v1, "QPNO"

    .line 114
    .line 115
    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/server/wifi/wcm/WcmBigDataFeature;->addOrUpdateValue(Ljava/lang/String;I)V

    .line 116
    .line 117
    .line 118
    iget v0, p0, Lcom/samsung/android/server/wifi/wcm/WcmBigDataSCNT;->mPqGqNormal:I

    .line 119
    .line 120
    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/server/wifi/wcm/WcmBigDataFeature;->addOrUpdateValue(Ljava/lang/String;I)V

    .line 121
    .line 122
    .line 123
    const-string v0, "GIAG"

    .line 124
    .line 125
    iget v1, p0, Lcom/samsung/android/server/wifi/wcm/WcmBigDataSCNT;->mAnsStage:I

    .line 126
    .line 127
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/server/wifi/wcm/WcmBigDataFeature;->addOrUpdateValue(Ljava/lang/String;I)V

    .line 128
    .line 129
    .line 130
    const-string v0, "PIAG"

    .line 131
    .line 132
    iget v1, p0, Lcom/samsung/android/server/wifi/wcm/WcmBigDataSCNT;->mAnsCauseState:I

    .line 133
    .line 134
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/server/wifi/wcm/WcmBigDataFeature;->addOrUpdateValue(Ljava/lang/String;I)V

    .line 135
    .line 136
    .line 137
    const-string v0, "IGAG"

    .line 138
    .line 139
    iget v1, p0, Lcom/samsung/android/server/wifi/wcm/WcmBigDataSCNT;->mAnsSuccess:I

    .line 140
    .line 141
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/server/wifi/wcm/WcmBigDataFeature;->addOrUpdateValue(Ljava/lang/String;I)V

    .line 142
    .line 143
    .line 144
    const-string v0, "IPAG"

    .line 145
    .line 146
    iget v1, p0, Lcom/samsung/android/server/wifi/wcm/WcmBigDataSCNT;->mAnsTimeDelay:I

    .line 147
    .line 148
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/server/wifi/wcm/WcmBigDataFeature;->addOrUpdateValue(Ljava/lang/String;I)V

    .line 149
    .line 150
    .line 151
    iget v0, p0, Lcom/samsung/android/server/wifi/wcm/WcmBigDataSCNT;->mAnsQcResult:I

    .line 152
    .line 153
    const-string v1, "QPAG"

    .line 154
    .line 155
    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/server/wifi/wcm/WcmBigDataFeature;->addOrUpdateValue(Ljava/lang/String;I)V

    .line 156
    .line 157
    .line 158
    iget v0, p0, Lcom/samsung/android/server/wifi/wcm/WcmBigDataSCNT;->mAnsReserved:I

    .line 159
    .line 160
    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/server/wifi/wcm/WcmBigDataFeature;->addOrUpdateValue(Ljava/lang/String;I)V

    .line 161
    .line 162
    .line 163
    const-string v0, "SIWM"

    .line 164
    .line 165
    const/4 v1, 0x0

    .line 166
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/server/wifi/wcm/WcmBigDataFeature;->addOrUpdateValue(Ljava/lang/String;I)V

    .line 167
    .line 168
    .line 169
    const-string v0, "SIMW"

    .line 170
    .line 171
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/server/wifi/wcm/WcmBigDataFeature;->addOrUpdateValue(Ljava/lang/String;I)V

    .line 172
    .line 173
    .line 174
    const-string v0, "SEGP"

    .line 175
    .line 176
    iget v1, p0, Lcom/samsung/android/server/wifi/wcm/WcmBigDataSCNT;->mEleGP:I

    .line 177
    .line 178
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/server/wifi/wcm/WcmBigDataFeature;->addOrUpdateValue(Ljava/lang/String;I)V

    .line 179
    .line 180
    .line 181
    const-string v0, "SEPG"

    .line 182
    .line 183
    iget v1, p0, Lcom/samsung/android/server/wifi/wcm/WcmBigDataSCNT;->mElePG:I

    .line 184
    .line 185
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/server/wifi/wcm/WcmBigDataFeature;->addOrUpdateValue(Ljava/lang/String;I)V

    .line 186
    .line 187
    .line 188
    const-string v0, "SSMO"

    .line 189
    .line 190
    iget v1, p0, Lcom/samsung/android/server/wifi/wcm/WcmBigDataSCNT;->mTurnedOff:I

    .line 191
    .line 192
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/server/wifi/wcm/WcmBigDataFeature;->addOrUpdateValue(Ljava/lang/String;I)V

    .line 193
    .line 194
    .line 195
    const-string v0, "SSMN"

    .line 196
    .line 197
    iget v1, p0, Lcom/samsung/android/server/wifi/wcm/WcmBigDataSCNT;->mTurnedOnNormal:I

    .line 198
    .line 199
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/server/wifi/wcm/WcmBigDataFeature;->addOrUpdateValue(Ljava/lang/String;I)V

    .line 200
    .line 201
    .line 202
    const-string v0, "SSMA"

    .line 203
    .line 204
    iget v1, p0, Lcom/samsung/android/server/wifi/wcm/WcmBigDataSCNT;->mTurnedOnAGG:I

    .line 205
    .line 206
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/server/wifi/wcm/WcmBigDataFeature;->addOrUpdateValue(Ljava/lang/String;I)V

    .line 207
    .line 208
    .line 209
    return-void
.end method

.method public getJsonFormat()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    sget-object v1, Lcom/samsung/android/server/wifi/wcm/WcmBigDataSCNT;->SCNT:[[Ljava/lang/String;

    .line 7
    .line 8
    invoke-virtual {p0, v1}, Lcom/samsung/android/server/wifi/wcm/WcmBigDataFeature;->getKeyValueStrings([[Ljava/lang/String;)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    sget-boolean v1, Lcom/samsung/android/server/wifi/wcm/WcmBigDataFeature;->DBG:Z

    .line 16
    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    iget-object p0, p0, Lcom/samsung/android/server/wifi/wcm/WcmBigDataFeature;->TAG:Ljava/lang/String;

    .line 20
    .line 21
    new-instance v1, Ljava/lang/StringBuilder;

    .line 22
    .line 23
    const-string v2, "getJsonFormat - "

    .line 24
    .line 25
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    invoke-static {p0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    .line 41
    .line 42
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    return-object p0
.end method

.method public initialize()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/samsung/android/server/wifi/wcm/WcmBigDataSCNT;->mIVNonSwitchable:I

    .line 3
    .line 4
    iput v0, p0, Lcom/samsung/android/server/wifi/wcm/WcmBigDataSCNT;->mIVNormal:I

    .line 5
    .line 6
    iput v0, p0, Lcom/samsung/android/server/wifi/wcm/WcmBigDataSCNT;->mIVAGG:I

    .line 7
    .line 8
    iput v0, p0, Lcom/samsung/android/server/wifi/wcm/WcmBigDataSCNT;->mVINonSwitchable:I

    .line 9
    .line 10
    iput v0, p0, Lcom/samsung/android/server/wifi/wcm/WcmBigDataSCNT;->mVINormal:I

    .line 11
    .line 12
    iput v0, p0, Lcom/samsung/android/server/wifi/wcm/WcmBigDataSCNT;->mVIAGG:I

    .line 13
    .line 14
    iput v0, p0, Lcom/samsung/android/server/wifi/wcm/WcmBigDataSCNT;->mGqInvNon:I

    .line 15
    .line 16
    iput v0, p0, Lcom/samsung/android/server/wifi/wcm/WcmBigDataSCNT;->mPqInvNon:I

    .line 17
    .line 18
    iput v0, p0, Lcom/samsung/android/server/wifi/wcm/WcmBigDataSCNT;->mInvGqNon:I

    .line 19
    .line 20
    iput v0, p0, Lcom/samsung/android/server/wifi/wcm/WcmBigDataSCNT;->mInvPqNon:I

    .line 21
    .line 22
    iput v0, p0, Lcom/samsung/android/server/wifi/wcm/WcmBigDataSCNT;->mGqPqNon:I

    .line 23
    .line 24
    iput v0, p0, Lcom/samsung/android/server/wifi/wcm/WcmBigDataSCNT;->mPqGqNon:I

    .line 25
    .line 26
    iput v0, p0, Lcom/samsung/android/server/wifi/wcm/WcmBigDataSCNT;->mGqInvNormal:I

    .line 27
    .line 28
    iput v0, p0, Lcom/samsung/android/server/wifi/wcm/WcmBigDataSCNT;->mPqInvNormal:I

    .line 29
    .line 30
    iput v0, p0, Lcom/samsung/android/server/wifi/wcm/WcmBigDataSCNT;->mInvGqNormal:I

    .line 31
    .line 32
    iput v0, p0, Lcom/samsung/android/server/wifi/wcm/WcmBigDataSCNT;->mInvPqNormal:I

    .line 33
    .line 34
    iput v0, p0, Lcom/samsung/android/server/wifi/wcm/WcmBigDataSCNT;->mGqPqNormal:I

    .line 35
    .line 36
    iput v0, p0, Lcom/samsung/android/server/wifi/wcm/WcmBigDataSCNT;->mPqGqNormal:I

    .line 37
    .line 38
    iput v0, p0, Lcom/samsung/android/server/wifi/wcm/WcmBigDataSCNT;->mAnsStage:I

    .line 39
    .line 40
    iput v0, p0, Lcom/samsung/android/server/wifi/wcm/WcmBigDataSCNT;->mAnsCauseState:I

    .line 41
    .line 42
    iput v0, p0, Lcom/samsung/android/server/wifi/wcm/WcmBigDataSCNT;->mAnsSuccess:I

    .line 43
    .line 44
    iput v0, p0, Lcom/samsung/android/server/wifi/wcm/WcmBigDataSCNT;->mAnsTimeDelay:I

    .line 45
    .line 46
    iput v0, p0, Lcom/samsung/android/server/wifi/wcm/WcmBigDataSCNT;->mAnsQcResult:I

    .line 47
    .line 48
    iput v0, p0, Lcom/samsung/android/server/wifi/wcm/WcmBigDataSCNT;->mAnsReserved:I

    .line 49
    .line 50
    iput v0, p0, Lcom/samsung/android/server/wifi/wcm/WcmBigDataSCNT;->mEleGP:I

    .line 51
    .line 52
    iput v0, p0, Lcom/samsung/android/server/wifi/wcm/WcmBigDataSCNT;->mElePG:I

    .line 53
    .line 54
    iput v0, p0, Lcom/samsung/android/server/wifi/wcm/WcmBigDataSCNT;->mTurnedOff:I

    .line 55
    .line 56
    iput v0, p0, Lcom/samsung/android/server/wifi/wcm/WcmBigDataSCNT;->mTurnedOnNormal:I

    .line 57
    .line 58
    iput v0, p0, Lcom/samsung/android/server/wifi/wcm/WcmBigDataSCNT;->mTurnedOnAGG:I

    .line 59
    .line 60
    return-void
.end method

.method public putKeyValueString([Ljava/lang/String;)V
    .locals 3

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    goto :goto_1

    .line 4
    :cond_0
    const/4 p0, 0x0

    .line 5
    :goto_0
    array-length v0, p1

    .line 6
    if-ge p0, v0, :cond_1

    .line 7
    .line 8
    sget-object v0, Lcom/samsung/android/server/wifi/wcm/WcmBigDataSCNT;->SCNT:[[Ljava/lang/String;

    .line 9
    .line 10
    aget-object v0, v0, p0

    .line 11
    .line 12
    aget-object v1, p1, p0

    .line 13
    .line 14
    const/4 v2, 0x1

    .line 15
    aput-object v1, v0, v2

    .line 16
    .line 17
    add-int/lit8 p0, p0, 0x1

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_1
    :goto_1
    return-void
.end method
