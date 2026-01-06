.class public Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$algOutput;,
        Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$ScpmParameterSet;
    }
.end annotation


# static fields
.field private static final INTERVAL_DEFAULT:I = 0x6000

.field private static final INTERVAL_NRT_DEFAULT:I = 0xc000

.field private static final INTERVAL_NRT_FDL:I = 0xa000

.field private static final INTERVAL_NRT_OVERFLOW:I = 0xa000

.field private static final INTERVAL_NRT_VS:I = 0xc000

.field private static final INTERVAL_RT_AC:I = 0xa000

.field private static final INTERVAL_RT_DEFAULT:I = 0x6000

.field private static final INTERVAL_RT_MG:I = 0x6000

.field private static final INTERVAL_RT_VC:I = 0x6000

.field private static final MAX_INTV_WINDOW:I = 0x100

.field private static final SP_DEFAULT:I = 0x4000

.field private static final SP_DURATION_FIVE_PERCENT:F = 0.05f

.field private static final SP_DURATION_MIN:I = 0x2000

.field private static final SP_DURATION_MIN_EPSILON:I = 0x3e8

.field private static final SP_DURATION_TDT_MODE_MAX:I = 0x0

.field private static final SP_DURATION_TDT_MODE_WEIGHTED:I = 0x1

.field private static final SP_DURATION_TEN_PERCENT:F = 0.1f

.field private static final SP_DURATION_TWENTY_PERCENT:F = 0.2f

.field private static final TRAFFIC_TYPE_BURST:I = 0x3

.field private static final TRAFFIC_TYPE_RAND:I = 0x1

.field private static final TRAFFIC_TYPE_STABLE:I = 0x2

.field private static final WINDOW_SIZE_DEFAULT:I = 0x32


# instance fields
.field private RxPktSize_Tdt:F

.field private final TCca10002TRadio:[J

.field private final TdtCca:[J

.field private TxGoodRateAmp_Tdt:F

.field private TxGoodRate_Tdt:F

.field public abnormalApDetMilliSec:J

.field public algOut:Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$algOutput;

.field private appTwtDisableFlag:Z

.field private awakeTimeSum:F

.field private curTime:J

.field private currentTimeMilliSec:J

.field private dutyCycle:F

.field private dutyCycleAve:F

.field private dutyCycleReducedCnt:I

.field private epsilon:I

.field private intvAppResetEn:Z

.field private intvCase3:Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;

.field private intvCount:I

.field private intvIndex:I

.field private intvNegCnt:J

.field private intvSum:F

.field private intvalAlgo:I

.field private intvalReal:I

.field private latReq:I

.field private mAnomalyLife:[I

.field private mAnomalyWinSize:I

.field private mAverageContentTime:J

.field private mAverageTdt:J

.field private mBadInterT:I

.field private mBadInterTTDCnt:I

.field private mDataTime:J

.field private mDlPktCnt:J

.field private mGTwtTearCnt_Tdt:I

.field private mInterTAnomDetCnt:I

.field private mInterTAnomLife:[I

.field private mInterTContinueAnom:I

.field private mInterTWinSize:I

.field public mIsAbnormalAP:Z

.field private mMaxAnomalyNum:I

.field private mMaxInterTAnomNum:I

.field private mMaxTdt:J

.field private mNumContinueAnomaly:I

.field private mPacketCount:J

.field private mPacketSize:J

.field private mPktCntSize:J

.field private mRTAnomalyDetCnt:I

.field private mRadioOnTimeMs:J

.field private mSemServiceInfo:Lcom/samsung/android/server/wifi/servicedetection/SemServiceInfo;

.field private mTwtInfo:Lcom/samsung/android/server/wifi/twt/SemTwtInfo;

.field private mTwtNegotiated:Z

.field private mUlPktCnt:J

.field private mVarTdt:J

.field private mobileGameCnt_Tdt:I

.field private modeSelCnt:J

.field private overflowThreshold:I

.field private ovfIntAdjFlag:Z

.field private final pktCntDLPerSP:[J

.field private final pktCntULPerSP:[J

.field private final pktDlSize:[J

.field private final pktUlSize:[J

.field private prevTime:J

.field private prevTimeMilliSec:J

.field private s2i:F

.field private s2iAlgoTotal:F

.field private s2iTotal:F

.field public scpmParameterSet:Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$ScpmParameterSet;

.field public serDetCloudGame:I

.field private serSubTypeCur:I

.field private serTypeCur:I

.field private spAlgo:I

.field private spAlgoSum:F

.field private spDuration:Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;

.field private spNegCnt:J

.field private spReal:I

.field private spSum:F

.field private traffDetPara:[I

.field private trafficTypeCur:I

.field private trafficTypePrev:I

.field private twtPollCnt:J

.field private winSize:I


# direct methods
.method static bridge synthetic -$$Nest$fgetspDuration(Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;)Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->spDuration:Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;

    .line 2
    .line 3
    return-object p0
.end method

.method public constructor <init>(Lcom/samsung/android/server/wifi/twt/SemTwtInfo;Lcom/samsung/android/server/wifi/servicedetection/SemServiceInfo;)V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->intvCase3:Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;

    .line 6
    .line 7
    iput-object v0, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->spDuration:Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;

    .line 8
    .line 9
    iput-object v0, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->mTwtInfo:Lcom/samsung/android/server/wifi/twt/SemTwtInfo;

    .line 10
    .line 11
    iput-object v0, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->mSemServiceInfo:Lcom/samsung/android/server/wifi/servicedetection/SemServiceInfo;

    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->ovfIntAdjFlag:Z

    .line 15
    .line 16
    iput v0, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->serDetCloudGame:I

    .line 17
    .line 18
    const-wide/16 v1, 0x0

    .line 19
    .line 20
    iput-wide v1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->modeSelCnt:J

    .line 21
    .line 22
    iput-wide v1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->twtPollCnt:J

    .line 23
    .line 24
    iput-wide v1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->spNegCnt:J

    .line 25
    .line 26
    iput-wide v1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->intvNegCnt:J

    .line 27
    .line 28
    const/high16 v3, 0x3f800000    # 1.0f

    .line 29
    .line 30
    iput v3, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->dutyCycle:F

    .line 31
    .line 32
    iput v3, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->dutyCycleAve:F

    .line 33
    .line 34
    const/4 v4, 0x0

    .line 35
    iput v4, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->awakeTimeSum:F

    .line 36
    .line 37
    iput v3, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->s2i:F

    .line 38
    .line 39
    iput v3, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->s2iTotal:F

    .line 40
    .line 41
    iput v4, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->spSum:F

    .line 42
    .line 43
    iput v4, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->intvSum:F

    .line 44
    .line 45
    iput v4, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->spAlgoSum:F

    .line 46
    .line 47
    iput v3, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->s2iAlgoTotal:F

    .line 48
    .line 49
    const/16 v4, 0xa

    .line 50
    .line 51
    iput v4, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->winSize:I

    .line 52
    .line 53
    const/16 v4, 0x64

    .line 54
    .line 55
    iput v4, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->overflowThreshold:I

    .line 56
    .line 57
    iput v0, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->dutyCycleReducedCnt:I

    .line 58
    .line 59
    iput-wide v1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->mAverageTdt:J

    .line 60
    .line 61
    iput-wide v1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->mMaxTdt:J

    .line 62
    .line 63
    iput-wide v1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->mVarTdt:J

    .line 64
    .line 65
    iput-wide v1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->mDataTime:J

    .line 66
    .line 67
    iput-wide v1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->mPacketSize:J

    .line 68
    .line 69
    iput-wide v1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->mPacketCount:J

    .line 70
    .line 71
    iput-wide v1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->mAverageContentTime:J

    .line 72
    .line 73
    iput-wide v1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->mPktCntSize:J

    .line 74
    .line 75
    iput-wide v1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->mDlPktCnt:J

    .line 76
    .line 77
    iput-wide v1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->mUlPktCnt:J

    .line 78
    .line 79
    iput-wide v1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->mRadioOnTimeMs:J

    .line 80
    .line 81
    const/4 v4, 0x1

    .line 82
    iput-boolean v4, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->intvAppResetEn:Z

    .line 83
    .line 84
    iput v4, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->trafficTypePrev:I

    .line 85
    .line 86
    iput v4, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->trafficTypeCur:I

    .line 87
    .line 88
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->appTwtDisableFlag:Z

    .line 89
    .line 90
    iput v0, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->serTypeCur:I

    .line 91
    .line 92
    iput v0, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->serSubTypeCur:I

    .line 93
    .line 94
    const/4 v4, 0x3

    .line 95
    new-array v4, v4, [I

    .line 96
    .line 97
    iput-object v4, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->traffDetPara:[I

    .line 98
    .line 99
    const v4, 0x44bb8000    # 1500.0f

    .line 100
    .line 101
    .line 102
    iput v4, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->RxPktSize_Tdt:F

    .line 103
    .line 104
    iput v3, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->TxGoodRate_Tdt:F

    .line 105
    .line 106
    iput v3, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->TxGoodRateAmp_Tdt:F

    .line 107
    .line 108
    iput v0, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->mobileGameCnt_Tdt:I

    .line 109
    .line 110
    iput v0, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->mGTwtTearCnt_Tdt:I

    .line 111
    .line 112
    iput-wide v1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->currentTimeMilliSec:J

    .line 113
    .line 114
    iput-wide v1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->prevTimeMilliSec:J

    .line 115
    .line 116
    iput v0, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->mRTAnomalyDetCnt:I

    .line 117
    .line 118
    filled-new-array {v0, v0, v0, v0}, [I

    .line 119
    .line 120
    .line 121
    move-result-object v3

    .line 122
    iput-object v3, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->mAnomalyLife:[I

    .line 123
    .line 124
    const/4 v3, 0x4

    .line 125
    iput v3, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->mMaxAnomalyNum:I

    .line 126
    .line 127
    const/16 v4, 0x14

    .line 128
    .line 129
    iput v4, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->mAnomalyWinSize:I

    .line 130
    .line 131
    iput v0, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->mNumContinueAnomaly:I

    .line 132
    .line 133
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->mIsAbnormalAP:Z

    .line 134
    .line 135
    iput-wide v1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->abnormalApDetMilliSec:J

    .line 136
    .line 137
    iput v0, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->mInterTAnomDetCnt:I

    .line 138
    .line 139
    iput v0, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->mInterTContinueAnom:I

    .line 140
    .line 141
    filled-new-array {v0, v0, v0, v0}, [I

    .line 142
    .line 143
    .line 144
    move-result-object v1

    .line 145
    iput-object v1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->mInterTAnomLife:[I

    .line 146
    .line 147
    iput v3, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->mMaxInterTAnomNum:I

    .line 148
    .line 149
    iput v4, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->mInterTWinSize:I

    .line 150
    .line 151
    iput v0, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->mBadInterT:I

    .line 152
    .line 153
    iput v0, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->mBadInterTTDCnt:I

    .line 154
    .line 155
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->mTwtNegotiated:Z

    .line 156
    .line 157
    iput v0, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->intvIndex:I

    .line 158
    .line 159
    iput v0, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->intvCount:I

    .line 160
    .line 161
    const/16 v0, 0x100

    .line 162
    .line 163
    new-array v1, v0, [J

    .line 164
    .line 165
    iput-object v1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->pktCntDLPerSP:[J

    .line 166
    .line 167
    new-array v1, v0, [J

    .line 168
    .line 169
    iput-object v1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->pktCntULPerSP:[J

    .line 170
    .line 171
    new-array v1, v0, [J

    .line 172
    .line 173
    iput-object v1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->pktUlSize:[J

    .line 174
    .line 175
    new-array v1, v0, [J

    .line 176
    .line 177
    iput-object v1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->pktDlSize:[J

    .line 178
    .line 179
    new-array v1, v0, [J

    .line 180
    .line 181
    iput-object v1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->TdtCca:[J

    .line 182
    .line 183
    new-array v0, v0, [J

    .line 184
    .line 185
    iput-object v0, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->TCca10002TRadio:[J

    .line 186
    .line 187
    new-instance v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$algOutput;

    .line 188
    .line 189
    invoke-direct {v0, p0}, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$algOutput;-><init>(Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;)V

    .line 190
    .line 191
    .line 192
    iput-object v0, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->algOut:Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$algOutput;

    .line 193
    .line 194
    new-instance v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$ScpmParameterSet;

    .line 195
    .line 196
    invoke-direct {v0, p0}, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$ScpmParameterSet;-><init>(Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;)V

    .line 197
    .line 198
    .line 199
    iput-object v0, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->scpmParameterSet:Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$ScpmParameterSet;

    .line 200
    .line 201
    iput-object p1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->mTwtInfo:Lcom/samsung/android/server/wifi/twt/SemTwtInfo;

    .line 202
    .line 203
    iput-object p2, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->mSemServiceInfo:Lcom/samsung/android/server/wifi/servicedetection/SemServiceInfo;

    .line 204
    .line 205
    new-instance p2, Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;

    .line 206
    .line 207
    invoke-direct {p2, p1}, Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;-><init>(Lcom/samsung/android/server/wifi/twt/SemTwtInfo;)V

    .line 208
    .line 209
    .line 210
    iput-object p2, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->intvCase3:Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;

    .line 211
    .line 212
    new-instance p2, Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;

    .line 213
    .line 214
    invoke-direct {p2, p1}, Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;-><init>(Lcom/samsung/android/server/wifi/twt/SemTwtInfo;)V

    .line 215
    .line 216
    .line 217
    iput-object p2, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->spDuration:Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;

    .line 218
    .line 219
    return-void
.end method

.method private static mapFactorRxFunc(FFF)F
    .locals 0

    .line 1
    mul-float/2addr p1, p0

    .line 2
    add-float/2addr p1, p2

    .line 3
    const/high16 p0, 0x3f800000    # 1.0f

    .line 4
    .line 5
    div-float/2addr p0, p1

    .line 6
    return p0
.end method

.method private static mapFactorTxFunc(FFF)F
    .locals 0

    .line 1
    mul-float/2addr p1, p0

    .line 2
    add-float/2addr p1, p2

    .line 3
    div-float/2addr p1, p0

    .line 4
    return p1
.end method


# virtual methods
.method public TWTIntervalNSD()I
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->mSemServiceInfo:Lcom/samsung/android/server/wifi/servicedetection/SemServiceInfo;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/servicedetection/SemServiceInfo;->getNetworkServiceDetectionResults()[I

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x3

    .line 8
    aget v1, v0, v1

    .line 9
    .line 10
    invoke-virtual {p0, v1}, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->setCloudGame(I)V

    .line 11
    .line 12
    .line 13
    const/4 p0, 0x0

    .line 14
    aget p0, v0, p0

    .line 15
    .line 16
    const/16 v1, 0x5000

    .line 17
    .line 18
    const/4 v2, 0x1

    .line 19
    const/16 v3, 0x6000

    .line 20
    .line 21
    const/4 v4, 0x2

    .line 22
    if-nez p0, :cond_5

    .line 23
    .line 24
    aget p0, v0, v4

    .line 25
    .line 26
    const v5, 0xa000

    .line 27
    .line 28
    .line 29
    if-ne p0, v2, :cond_2

    .line 30
    .line 31
    const/4 p0, 0x6

    .line 32
    aget p0, v0, p0

    .line 33
    .line 34
    if-eqz p0, :cond_1

    .line 35
    .line 36
    if-eq p0, v2, :cond_1

    .line 37
    .line 38
    if-eq p0, v4, :cond_0

    .line 39
    .line 40
    return v3

    .line 41
    :cond_0
    return v5

    .line 42
    :cond_1
    return v3

    .line 43
    :cond_2
    if-ne p0, v4, :cond_4

    .line 44
    .line 45
    const/4 p0, 0x7

    .line 46
    aget p0, v0, p0

    .line 47
    .line 48
    if-eqz p0, :cond_3

    .line 49
    .line 50
    const p0, 0xc000

    .line 51
    .line 52
    .line 53
    return p0

    .line 54
    :cond_3
    return v5

    .line 55
    :cond_4
    return v1

    .line 56
    :cond_5
    aget p0, v0, v4

    .line 57
    .line 58
    if-ne p0, v2, :cond_6

    .line 59
    .line 60
    return v3

    .line 61
    :cond_6
    return v1
.end method

.method public TWTParameterPoll()Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$algOutput;
    .locals 29

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->mTwtInfo:Lcom/samsung/android/server/wifi/twt/SemTwtInfo;

    .line 4
    .line 5
    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->getPacketMonitoringStats()[J

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    const/4 v2, 0x0

    .line 10
    aget-wide v3, v1, v2

    .line 11
    .line 12
    iput-wide v3, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->mAverageTdt:J

    .line 13
    .line 14
    const/4 v3, 0x1

    .line 15
    aget-wide v4, v1, v3

    .line 16
    .line 17
    iput-wide v4, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->mMaxTdt:J

    .line 18
    .line 19
    const/4 v4, 0x2

    .line 20
    aget-wide v5, v1, v4

    .line 21
    .line 22
    iput-wide v5, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->mDataTime:J

    .line 23
    .line 24
    const/4 v5, 0x3

    .line 25
    aget-wide v6, v1, v5

    .line 26
    .line 27
    iput-wide v6, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->mPacketSize:J

    .line 28
    .line 29
    const/4 v6, 0x4

    .line 30
    aget-wide v6, v1, v6

    .line 31
    .line 32
    iput-wide v6, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->mPacketCount:J

    .line 33
    .line 34
    const/4 v6, 0x5

    .line 35
    aget-wide v6, v1, v6

    .line 36
    .line 37
    iput-wide v6, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->mAverageContentTime:J

    .line 38
    .line 39
    const/4 v6, 0x6

    .line 40
    aget-wide v7, v1, v6

    .line 41
    .line 42
    iput-wide v7, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->mPktCntSize:J

    .line 43
    .line 44
    const/4 v7, 0x7

    .line 45
    aget-wide v8, v1, v7

    .line 46
    .line 47
    iput-wide v8, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->mDlPktCnt:J

    .line 48
    .line 49
    const/16 v8, 0x8

    .line 50
    .line 51
    aget-wide v8, v1, v8

    .line 52
    .line 53
    iput-wide v8, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->mUlPktCnt:J

    .line 54
    .line 55
    const/16 v8, 0x9

    .line 56
    .line 57
    aget-wide v8, v1, v8

    .line 58
    .line 59
    iput-wide v8, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->mRadioOnTimeMs:J

    .line 60
    .line 61
    const/16 v8, 0xa

    .line 62
    .line 63
    aget-wide v8, v1, v8

    .line 64
    .line 65
    iput-wide v8, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->mVarTdt:J

    .line 66
    .line 67
    iget-object v1, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->mSemServiceInfo:Lcom/samsung/android/server/wifi/servicedetection/SemServiceInfo;

    .line 68
    .line 69
    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/servicedetection/SemServiceInfo;->getMainCategoryServiceType()I

    .line 70
    .line 71
    .line 72
    move-result v1

    .line 73
    iput v1, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->serTypeCur:I

    .line 74
    .line 75
    iget-object v1, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->mSemServiceInfo:Lcom/samsung/android/server/wifi/servicedetection/SemServiceInfo;

    .line 76
    .line 77
    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/servicedetection/SemServiceInfo;->getSubCategoryServiceType()I

    .line 78
    .line 79
    .line 80
    move-result v1

    .line 81
    iput v1, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->serSubTypeCur:I

    .line 82
    .line 83
    iget-object v1, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->mSemServiceInfo:Lcom/samsung/android/server/wifi/servicedetection/SemServiceInfo;

    .line 84
    .line 85
    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/servicedetection/SemServiceInfo;->getNetworkServiceDetectionResults()[I

    .line 86
    .line 87
    .line 88
    move-result-object v1

    .line 89
    aget v8, v1, v5

    .line 90
    .line 91
    invoke-virtual {v0, v8}, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->setCloudGame(I)V

    .line 92
    .line 93
    .line 94
    iget-object v8, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->mSemServiceInfo:Lcom/samsung/android/server/wifi/servicedetection/SemServiceInfo;

    .line 95
    .line 96
    invoke-virtual {v8}, Lcom/samsung/android/server/wifi/servicedetection/SemServiceInfo;->getTrafficInfo()[I

    .line 97
    .line 98
    .line 99
    move-result-object v8

    .line 100
    aget v9, v8, v2

    .line 101
    .line 102
    iput v9, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->trafficTypeCur:I

    .line 103
    .line 104
    iget-object v9, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->mTwtInfo:Lcom/samsung/android/server/wifi/twt/SemTwtInfo;

    .line 105
    .line 106
    new-instance v10, Ljava/lang/StringBuilder;

    .line 107
    .line 108
    const-string v11, "PM_info "

    .line 109
    .line 110
    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    iget-wide v11, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->mAverageTdt:J

    .line 114
    .line 115
    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    const-string v11, " "

    .line 119
    .line 120
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    iget-wide v12, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->mMaxTdt:J

    .line 124
    .line 125
    invoke-virtual {v10, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    iget-wide v12, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->mVarTdt:J

    .line 132
    .line 133
    invoke-virtual {v10, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    .line 138
    .line 139
    iget-wide v12, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->mDataTime:J

    .line 140
    .line 141
    invoke-virtual {v10, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 142
    .line 143
    .line 144
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    .line 146
    .line 147
    iget-wide v12, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->mPacketSize:J

    .line 148
    .line 149
    invoke-virtual {v10, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 150
    .line 151
    .line 152
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    .line 154
    .line 155
    iget-wide v12, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->mPacketCount:J

    .line 156
    .line 157
    invoke-virtual {v10, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 158
    .line 159
    .line 160
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    .line 162
    .line 163
    iget-wide v12, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->mAverageContentTime:J

    .line 164
    .line 165
    invoke-virtual {v10, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 166
    .line 167
    .line 168
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    .line 170
    .line 171
    iget-wide v12, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->mPktCntSize:J

    .line 172
    .line 173
    invoke-virtual {v10, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 174
    .line 175
    .line 176
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    .line 178
    .line 179
    iget-wide v12, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->mRadioOnTimeMs:J

    .line 180
    .line 181
    invoke-virtual {v10, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 182
    .line 183
    .line 184
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    .line 186
    .line 187
    iget-wide v12, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->mDlPktCnt:J

    .line 188
    .line 189
    invoke-virtual {v10, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 190
    .line 191
    .line 192
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 193
    .line 194
    .line 195
    iget-wide v12, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->mUlPktCnt:J

    .line 196
    .line 197
    invoke-virtual {v10, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 198
    .line 199
    .line 200
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    .line 202
    .line 203
    iget v12, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->trafficTypeCur:I

    .line 204
    .line 205
    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 206
    .line 207
    .line 208
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    .line 210
    .line 211
    iget v12, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->serTypeCur:I

    .line 212
    .line 213
    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 214
    .line 215
    .line 216
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 217
    .line 218
    .line 219
    move-result-object v10

    .line 220
    invoke-virtual {v9, v10, v2}, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->addEvent(Ljava/lang/String;I)V

    .line 221
    .line 222
    .line 223
    iget-object v9, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->mTwtInfo:Lcom/samsung/android/server/wifi/twt/SemTwtInfo;

    .line 224
    .line 225
    invoke-virtual {v9}, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->getTWTParams()[I

    .line 226
    .line 227
    .line 228
    move-result-object v9

    .line 229
    aget v10, v9, v4

    .line 230
    .line 231
    iput v10, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->intvalReal:I

    .line 232
    .line 233
    aget v9, v9, v3

    .line 234
    .line 235
    iput v9, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->spReal:I

    .line 236
    .line 237
    iget-object v9, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->mTwtInfo:Lcom/samsung/android/server/wifi/twt/SemTwtInfo;

    .line 238
    .line 239
    invoke-virtual {v9}, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->getLinkSpeed()[I

    .line 240
    .line 241
    .line 242
    move-result-object v9

    .line 243
    iget-object v10, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->algOut:Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$algOutput;

    .line 244
    .line 245
    iput-boolean v2, v10, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$algOutput;->needSessionRenewal:Z

    .line 246
    .line 247
    iput-boolean v2, v10, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$algOutput;->mTbufThdFlag:Z

    .line 248
    .line 249
    iget-boolean v12, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->appTwtDisableFlag:Z

    .line 250
    .line 251
    if-nez v12, :cond_a

    .line 252
    .line 253
    aget v12, v1, v2

    .line 254
    .line 255
    const/16 v13, 0x6000

    .line 256
    .line 257
    if-nez v12, :cond_8

    .line 258
    .line 259
    aget v10, v1, v4

    .line 260
    .line 261
    const v12, 0xa000

    .line 262
    .line 263
    .line 264
    if-ne v10, v3, :cond_3

    .line 265
    .line 266
    aget v1, v1, v6

    .line 267
    .line 268
    if-eqz v1, :cond_2

    .line 269
    .line 270
    if-eq v1, v3, :cond_1

    .line 271
    .line 272
    if-eq v1, v4, :cond_0

    .line 273
    .line 274
    iput v13, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->latReq:I

    .line 275
    .line 276
    goto :goto_0

    .line 277
    :cond_0
    iput v12, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->latReq:I

    .line 278
    .line 279
    goto :goto_0

    .line 280
    :cond_1
    iput v13, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->latReq:I

    .line 281
    .line 282
    goto :goto_0

    .line 283
    :cond_2
    iput v13, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->latReq:I

    .line 284
    .line 285
    goto :goto_0

    .line 286
    :cond_3
    iget-boolean v6, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->ovfIntAdjFlag:Z

    .line 287
    .line 288
    if-eqz v6, :cond_4

    .line 289
    .line 290
    iput v12, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->latReq:I

    .line 291
    .line 292
    iput-boolean v2, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->ovfIntAdjFlag:Z

    .line 293
    .line 294
    goto :goto_0

    .line 295
    :cond_4
    aget v1, v1, v7

    .line 296
    .line 297
    if-eqz v1, :cond_6

    .line 298
    .line 299
    const v6, 0xc000

    .line 300
    .line 301
    .line 302
    if-eq v1, v3, :cond_5

    .line 303
    .line 304
    iput v6, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->latReq:I

    .line 305
    .line 306
    goto :goto_0

    .line 307
    :cond_5
    iput v6, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->latReq:I

    .line 308
    .line 309
    goto :goto_0

    .line 310
    :cond_6
    iput v12, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->latReq:I

    .line 311
    .line 312
    :goto_0
    iget-object v1, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->mTwtInfo:Lcom/samsung/android/server/wifi/twt/SemTwtInfo;

    .line 313
    .line 314
    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->getmRawPacketCount()[J

    .line 315
    .line 316
    .line 317
    move-result-object v13

    .line 318
    iget v1, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->serTypeCur:I

    .line 319
    .line 320
    if-ne v1, v4, :cond_7

    .line 321
    .line 322
    iget v1, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->serSubTypeCur:I

    .line 323
    .line 324
    if-ne v1, v5, :cond_7

    .line 325
    .line 326
    iget-object v1, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->algOut:Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$algOutput;

    .line 327
    .line 328
    iget-object v12, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->intvCase3:Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;

    .line 329
    .line 330
    iget-wide v14, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->mPktCntSize:J

    .line 331
    .line 332
    iget v6, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->winSize:I

    .line 333
    .line 334
    iget v7, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->intvalReal:I

    .line 335
    .line 336
    iget v10, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->latReq:I

    .line 337
    .line 338
    move/from16 v16, v6

    .line 339
    .line 340
    move/from16 v17, v7

    .line 341
    .line 342
    move/from16 v18, v10

    .line 343
    .line 344
    invoke-virtual/range {v12 .. v18}, Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;->run([JJIII)I

    .line 345
    .line 346
    .line 347
    move-result v6

    .line 348
    iput v6, v1, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$algOutput;->intval:I

    .line 349
    .line 350
    goto :goto_1

    .line 351
    :cond_7
    iget-object v1, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->algOut:Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$algOutput;

    .line 352
    .line 353
    iget v6, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->latReq:I

    .line 354
    .line 355
    iput v6, v1, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$algOutput;->intval:I

    .line 356
    .line 357
    goto :goto_1

    .line 358
    :cond_8
    iput v13, v10, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$algOutput;->intval:I

    .line 359
    .line 360
    :goto_1
    iget v1, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->trafficTypeCur:I

    .line 361
    .line 362
    iget v6, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->trafficTypePrev:I

    .line 363
    .line 364
    if-eq v1, v6, :cond_9

    .line 365
    .line 366
    iget-object v6, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->spDuration:Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;

    .line 367
    .line 368
    invoke-virtual {v6, v1}, Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;->setmTrafficType(I)V

    .line 369
    .line 370
    .line 371
    :cond_9
    iget-object v1, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->traffDetPara:[I

    .line 372
    .line 373
    aget v6, v8, v3

    .line 374
    .line 375
    aput v6, v1, v2

    .line 376
    .line 377
    aget v6, v8, v4

    .line 378
    .line 379
    aput v6, v1, v3

    .line 380
    .line 381
    aget v6, v8, v5

    .line 382
    .line 383
    aput v6, v1, v4

    .line 384
    .line 385
    iget-object v12, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->spDuration:Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;

    .line 386
    .line 387
    iget-wide v13, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->mMaxTdt:J

    .line 388
    .line 389
    iget-wide v6, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->mAverageTdt:J

    .line 390
    .line 391
    iget-object v4, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->algOut:Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$algOutput;

    .line 392
    .line 393
    iget v4, v4, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$algOutput;->intval:I

    .line 394
    .line 395
    iget v8, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->spReal:I

    .line 396
    .line 397
    move v15, v5

    .line 398
    move-wide/from16 v16, v6

    .line 399
    .line 400
    iget-wide v5, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->mAverageContentTime:J

    .line 401
    .line 402
    iget v7, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->intvalReal:I

    .line 403
    .line 404
    aget v23, v9, v2

    .line 405
    .line 406
    aget v24, v9, v3

    .line 407
    .line 408
    aget v25, v9, v15

    .line 409
    .line 410
    iget-wide v9, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->mVarTdt:J

    .line 411
    .line 412
    const/16 v19, 0x0

    .line 413
    .line 414
    move-object/from16 v28, v1

    .line 415
    .line 416
    move-wide/from16 v20, v5

    .line 417
    .line 418
    move/from16 v22, v7

    .line 419
    .line 420
    move/from16 v18, v8

    .line 421
    .line 422
    move-wide/from16 v26, v9

    .line 423
    .line 424
    move-wide/from16 v15, v16

    .line 425
    .line 426
    move/from16 v17, v4

    .line 427
    .line 428
    invoke-virtual/range {v12 .. v28}, Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;->run(JJIIZJIIIIJ[I)B

    .line 429
    .line 430
    .line 431
    iget-object v1, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->algOut:Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$algOutput;

    .line 432
    .line 433
    iget-object v4, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->spDuration:Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;

    .line 434
    .line 435
    invoke-virtual {v4}, Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;->getmSP()I

    .line 436
    .line 437
    .line 438
    move-result v4

    .line 439
    iput v4, v1, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$algOutput;->sp:I

    .line 440
    .line 441
    iget v1, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->trafficTypeCur:I

    .line 442
    .line 443
    iput v1, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->trafficTypePrev:I

    .line 444
    .line 445
    goto :goto_2

    .line 446
    :cond_a
    const/16 v1, 0x5000

    .line 447
    .line 448
    iput v1, v10, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$algOutput;->intval:I

    .line 449
    .line 450
    iput v1, v10, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$algOutput;->sp:I

    .line 451
    .line 452
    :goto_2
    iget-object v1, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->algOut:Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$algOutput;

    .line 453
    .line 454
    iget-object v4, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->spDuration:Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;

    .line 455
    .line 456
    invoke-virtual {v4}, Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;->getmEpsilon()J

    .line 457
    .line 458
    .line 459
    move-result-wide v4

    .line 460
    long-to-int v4, v4

    .line 461
    iput v4, v1, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$algOutput;->mTbufThreshold:I

    .line 462
    .line 463
    iget-object v1, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->algOut:Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$algOutput;

    .line 464
    .line 465
    iget-object v4, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->spDuration:Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;

    .line 466
    .line 467
    invoke-virtual {v4}, Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;->getmOverflowThreshold()I

    .line 468
    .line 469
    .line 470
    move-result v4

    .line 471
    iput v4, v1, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$algOutput;->overflowThd:I

    .line 472
    .line 473
    iget-object v1, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->algOut:Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$algOutput;

    .line 474
    .line 475
    iget v4, v1, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$algOutput;->overflowThd:I

    .line 476
    .line 477
    iput v4, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->overflowThreshold:I

    .line 478
    .line 479
    iget v4, v1, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$algOutput;->mTbufThreshold:I

    .line 480
    .line 481
    iget v5, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->epsilon:I

    .line 482
    .line 483
    if-eq v4, v5, :cond_b

    .line 484
    .line 485
    iput-boolean v3, v1, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$algOutput;->mTbufThdFlag:Z

    .line 486
    .line 487
    iput v4, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->epsilon:I

    .line 488
    .line 489
    :cond_b
    iget v4, v1, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$algOutput;->intval:I

    .line 490
    .line 491
    const v5, 0xee48

    .line 492
    .line 493
    .line 494
    if-ge v4, v5, :cond_c

    .line 495
    .line 496
    iget-object v4, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->spDuration:Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;

    .line 497
    .line 498
    invoke-virtual {v4}, Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;->trafficTypeCallingPeriod()I

    .line 499
    .line 500
    .line 501
    move-result v4

    .line 502
    iput v4, v1, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$algOutput;->callPeriod:I

    .line 503
    .line 504
    goto :goto_3

    .line 505
    :cond_c
    iget v5, v1, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$algOutput;->windowSize:I

    .line 506
    .line 507
    mul-int/2addr v5, v4

    .line 508
    div-int/lit16 v5, v5, 0x3e8

    .line 509
    .line 510
    iput v5, v1, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$algOutput;->callPeriod:I

    .line 511
    .line 512
    :goto_3
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 513
    .line 514
    .line 515
    move-result-wide v4

    .line 516
    iput-wide v4, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->curTime:J

    .line 517
    .line 518
    iget-wide v6, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->mRadioOnTimeMs:J

    .line 519
    .line 520
    long-to-float v1, v6

    .line 521
    const/high16 v8, 0x447a0000    # 1000.0f

    .line 522
    .line 523
    mul-float/2addr v1, v8

    .line 524
    iget-wide v8, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->prevTime:J

    .line 525
    .line 526
    sub-long v12, v4, v8

    .line 527
    .line 528
    const-wide/16 v14, 0x1f4

    .line 529
    .line 530
    add-long/2addr v12, v14

    .line 531
    const-wide/16 v16, 0x3e8

    .line 532
    .line 533
    div-long v12, v12, v16

    .line 534
    .line 535
    long-to-float v10, v12

    .line 536
    div-float/2addr v1, v10

    .line 537
    iput v1, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->dutyCycle:F

    .line 538
    .line 539
    iget v1, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->awakeTimeSum:F

    .line 540
    .line 541
    mul-long v6, v6, v16

    .line 542
    .line 543
    long-to-float v6, v6

    .line 544
    add-float/2addr v1, v6

    .line 545
    iput v1, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->awakeTimeSum:F

    .line 546
    .line 547
    iget v6, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->spReal:I

    .line 548
    .line 549
    int-to-float v7, v6

    .line 550
    iget v10, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->intvalReal:I

    .line 551
    .line 552
    int-to-float v12, v10

    .line 553
    div-float/2addr v7, v12

    .line 554
    iput v7, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->s2i:F

    .line 555
    .line 556
    iget v7, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->spSum:F

    .line 557
    .line 558
    int-to-float v6, v6

    .line 559
    const/high16 v12, 0x3f800000    # 1.0f

    .line 560
    .line 561
    mul-float/2addr v6, v12

    .line 562
    int-to-float v10, v10

    .line 563
    div-float/2addr v6, v10

    .line 564
    sub-long v18, v4, v8

    .line 565
    .line 566
    add-long v18, v18, v14

    .line 567
    .line 568
    move v10, v12

    .line 569
    div-long v12, v18, v16

    .line 570
    .line 571
    long-to-float v12, v12

    .line 572
    mul-float/2addr v6, v12

    .line 573
    add-float/2addr v6, v7

    .line 574
    iput v6, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->spSum:F

    .line 575
    .line 576
    iget v7, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->intvSum:F

    .line 577
    .line 578
    sub-long v12, v4, v8

    .line 579
    .line 580
    add-long/2addr v12, v14

    .line 581
    div-long v12, v12, v16

    .line 582
    .line 583
    long-to-float v12, v12

    .line 584
    add-float/2addr v7, v12

    .line 585
    iput v7, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->intvSum:F

    .line 586
    .line 587
    div-float/2addr v6, v7

    .line 588
    iput v6, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->s2iTotal:F

    .line 589
    .line 590
    div-float/2addr v1, v7

    .line 591
    iput v1, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->dutyCycleAve:F

    .line 592
    .line 593
    iget v1, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->spAlgoSum:F

    .line 594
    .line 595
    iget v6, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->spAlgo:I

    .line 596
    .line 597
    int-to-float v6, v6

    .line 598
    mul-float/2addr v6, v10

    .line 599
    iget v10, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->intvalAlgo:I

    .line 600
    .line 601
    int-to-float v10, v10

    .line 602
    div-float/2addr v6, v10

    .line 603
    sub-long v8, v4, v8

    .line 604
    .line 605
    add-long/2addr v8, v14

    .line 606
    div-long v8, v8, v16

    .line 607
    .line 608
    long-to-float v8, v8

    .line 609
    mul-float/2addr v6, v8

    .line 610
    add-float/2addr v6, v1

    .line 611
    iput v6, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->spAlgoSum:F

    .line 612
    .line 613
    div-float/2addr v6, v7

    .line 614
    iput v6, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->s2iAlgoTotal:F

    .line 615
    .line 616
    iput-wide v4, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->prevTime:J

    .line 617
    .line 618
    iget-object v1, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->algOut:Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$algOutput;

    .line 619
    .line 620
    iget v4, v1, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$algOutput;->sp:I

    .line 621
    .line 622
    const/16 v5, 0x2000

    .line 623
    .line 624
    if-ge v4, v5, :cond_d

    .line 625
    .line 626
    iput v5, v1, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$algOutput;->sp:I

    .line 627
    .line 628
    :cond_d
    iget v4, v1, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$algOutput;->sp:I

    .line 629
    .line 630
    invoke-virtual {v0, v4}, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->twtQuantization(I)I

    .line 631
    .line 632
    .line 633
    move-result v4

    .line 634
    iput v4, v1, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$algOutput;->sp:I

    .line 635
    .line 636
    iget-object v1, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->algOut:Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$algOutput;

    .line 637
    .line 638
    iget v4, v1, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$algOutput;->intval:I

    .line 639
    .line 640
    iget v5, v1, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$algOutput;->sp:I

    .line 641
    .line 642
    iget v6, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->intvalAlgo:I

    .line 643
    .line 644
    if-lt v4, v6, :cond_f

    .line 645
    .line 646
    mul-int v7, v5, v6

    .line 647
    .line 648
    iget v8, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->spAlgo:I

    .line 649
    .line 650
    mul-int v9, v4, v8

    .line 651
    .line 652
    if-ge v7, v9, :cond_f

    .line 653
    .line 654
    iget v7, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->dutyCycleReducedCnt:I

    .line 655
    .line 656
    add-int/2addr v7, v3

    .line 657
    iput v7, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->dutyCycleReducedCnt:I

    .line 658
    .line 659
    if-gt v7, v3, :cond_e

    .line 660
    .line 661
    iput v6, v1, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$algOutput;->intval:I

    .line 662
    .line 663
    iput v8, v1, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$algOutput;->sp:I

    .line 664
    .line 665
    goto :goto_4

    .line 666
    :cond_e
    iput v2, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->dutyCycleReducedCnt:I

    .line 667
    .line 668
    goto :goto_4

    .line 669
    :cond_f
    iput v2, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->dutyCycleReducedCnt:I

    .line 670
    .line 671
    :goto_4
    iget v7, v1, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$algOutput;->intval:I

    .line 672
    .line 673
    const-wide/16 v8, 0x1

    .line 674
    .line 675
    if-eq v7, v6, :cond_10

    .line 676
    .line 677
    iput-boolean v3, v1, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$algOutput;->needSessionRenewal:Z

    .line 678
    .line 679
    iget-wide v12, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->intvNegCnt:J

    .line 680
    .line 681
    add-long/2addr v12, v8

    .line 682
    iput-wide v12, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->intvNegCnt:J

    .line 683
    .line 684
    iput v7, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->intvalAlgo:I

    .line 685
    .line 686
    :cond_10
    iget v6, v1, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$algOutput;->sp:I

    .line 687
    .line 688
    iget v7, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->spAlgo:I

    .line 689
    .line 690
    if-eq v6, v7, :cond_11

    .line 691
    .line 692
    iput-boolean v3, v1, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$algOutput;->needSessionRenewal:Z

    .line 693
    .line 694
    iget-wide v12, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->spNegCnt:J

    .line 695
    .line 696
    add-long/2addr v12, v8

    .line 697
    iput-wide v12, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->spNegCnt:J

    .line 698
    .line 699
    iput v6, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->spAlgo:I

    .line 700
    .line 701
    :cond_11
    iget v6, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->intvalReal:I

    .line 702
    .line 703
    iget v7, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->intvalAlgo:I

    .line 704
    .line 705
    sub-int v10, v6, v7

    .line 706
    .line 707
    const/16 v12, 0x1000

    .line 708
    .line 709
    if-gt v10, v12, :cond_12

    .line 710
    .line 711
    iget v10, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->spAlgo:I

    .line 712
    .line 713
    mul-int/2addr v10, v6

    .line 714
    iget v6, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->spReal:I

    .line 715
    .line 716
    mul-int/2addr v6, v7

    .line 717
    if-le v10, v6, :cond_13

    .line 718
    .line 719
    :cond_12
    iput-boolean v3, v1, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$algOutput;->needSessionRenewal:Z

    .line 720
    .line 721
    :cond_13
    iget-object v1, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->mTwtInfo:Lcom/samsung/android/server/wifi/twt/SemTwtInfo;

    .line 722
    .line 723
    new-instance v3, Ljava/lang/StringBuilder;

    .line 724
    .line 725
    const-string v6, "Suggestion "

    .line 726
    .line 727
    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 728
    .line 729
    .line 730
    iget-object v6, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->algOut:Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$algOutput;

    .line 731
    .line 732
    iget v6, v6, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$algOutput;->intval:I

    .line 733
    .line 734
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 735
    .line 736
    .line 737
    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 738
    .line 739
    .line 740
    iget-object v6, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->algOut:Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$algOutput;

    .line 741
    .line 742
    iget v6, v6, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$algOutput;->sp:I

    .line 743
    .line 744
    invoke-static {v3, v6, v11, v4, v11}, Lcom/samsung/android/server/wifi/SemApeController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    .line 745
    .line 746
    .line 747
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 748
    .line 749
    .line 750
    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 751
    .line 752
    .line 753
    iget v4, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->intvalReal:I

    .line 754
    .line 755
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 756
    .line 757
    .line 758
    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 759
    .line 760
    .line 761
    iget v4, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->spReal:I

    .line 762
    .line 763
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 764
    .line 765
    .line 766
    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 767
    .line 768
    .line 769
    iget v4, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->latReq:I

    .line 770
    .line 771
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 772
    .line 773
    .line 774
    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 775
    .line 776
    .line 777
    iget v4, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->dutyCycleReducedCnt:I

    .line 778
    .line 779
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 780
    .line 781
    .line 782
    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 783
    .line 784
    .line 785
    iget-object v4, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->algOut:Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$algOutput;

    .line 786
    .line 787
    iget v4, v4, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$algOutput;->overflowThd:I

    .line 788
    .line 789
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 790
    .line 791
    .line 792
    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 793
    .line 794
    .line 795
    iget-object v4, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->algOut:Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$algOutput;

    .line 796
    .line 797
    iget v4, v4, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$algOutput;->callPeriod:I

    .line 798
    .line 799
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 800
    .line 801
    .line 802
    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 803
    .line 804
    .line 805
    iget-object v4, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->algOut:Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$algOutput;

    .line 806
    .line 807
    iget-boolean v4, v4, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$algOutput;->needSessionRenewal:Z

    .line 808
    .line 809
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 810
    .line 811
    .line 812
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 813
    .line 814
    .line 815
    move-result-object v3

    .line 816
    invoke-virtual {v1, v3, v2}, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->addEvent(Ljava/lang/String;I)V

    .line 817
    .line 818
    .line 819
    iget-wide v3, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->twtPollCnt:J

    .line 820
    .line 821
    add-long/2addr v3, v8

    .line 822
    iput-wide v3, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->twtPollCnt:J

    .line 823
    .line 824
    iget-object v1, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->mTwtInfo:Lcom/samsung/android/server/wifi/twt/SemTwtInfo;

    .line 825
    .line 826
    new-instance v3, Ljava/lang/StringBuilder;

    .line 827
    .line 828
    const-string v4, "PollStats "

    .line 829
    .line 830
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 831
    .line 832
    .line 833
    iget-wide v4, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->twtPollCnt:J

    .line 834
    .line 835
    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 836
    .line 837
    .line 838
    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 839
    .line 840
    .line 841
    iget-wide v4, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->intvNegCnt:J

    .line 842
    .line 843
    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 844
    .line 845
    .line 846
    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 847
    .line 848
    .line 849
    iget-wide v4, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->spNegCnt:J

    .line 850
    .line 851
    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 852
    .line 853
    .line 854
    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 855
    .line 856
    .line 857
    iget v4, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->dutyCycle:F

    .line 858
    .line 859
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 860
    .line 861
    .line 862
    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 863
    .line 864
    .line 865
    iget v4, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->dutyCycleAve:F

    .line 866
    .line 867
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 868
    .line 869
    .line 870
    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 871
    .line 872
    .line 873
    iget v4, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->s2i:F

    .line 874
    .line 875
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 876
    .line 877
    .line 878
    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 879
    .line 880
    .line 881
    iget v4, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->s2iTotal:F

    .line 882
    .line 883
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 884
    .line 885
    .line 886
    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 887
    .line 888
    .line 889
    iget v4, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->s2iAlgoTotal:F

    .line 890
    .line 891
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 892
    .line 893
    .line 894
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 895
    .line 896
    .line 897
    move-result-object v3

    .line 898
    invoke-virtual {v1, v3, v2}, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->addEvent(Ljava/lang/String;I)V

    .line 899
    .line 900
    .line 901
    iget-object v0, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->algOut:Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$algOutput;

    .line 902
    .line 903
    return-object v0
.end method

.method public getAppTwtDisableFlag(Ljava/lang/String;)Z
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    if-eqz p1, :cond_1

    .line 3
    .line 4
    const-string v1, "com.gamepass.beta"

    .line 5
    .line 6
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    const-string v1, "com.gamepass"

    .line 13
    .line 14
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    if-eqz p1, :cond_1

    .line 19
    .line 20
    :cond_0
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->appTwtDisableFlag:Z

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->getCloudGame()I

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    if-ne p1, v0, :cond_2

    .line 28
    .line 29
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->appTwtDisableFlag:Z

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_2
    const/4 p1, 0x0

    .line 33
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->appTwtDisableFlag:Z

    .line 34
    .line 35
    :goto_0
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->appTwtDisableFlag:Z

    .line 36
    .line 37
    return p0
.end method

.method public getCallPeriod(I)I
    .locals 1

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    iget-object p0, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->algOut:Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$algOutput;

    .line 4
    .line 5
    iget p0, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$algOutput;->callPeriod:I

    .line 6
    .line 7
    return p0

    .line 8
    :cond_0
    const v0, 0xee48

    .line 9
    .line 10
    .line 11
    if-le p1, v0, :cond_1

    .line 12
    .line 13
    iget-object p0, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->algOut:Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$algOutput;

    .line 14
    .line 15
    iget p0, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$algOutput;->windowSize:I

    .line 16
    .line 17
    mul-int/2addr p0, p1

    .line 18
    div-int/lit16 p0, p0, 0x3e8

    .line 19
    .line 20
    return p0

    .line 21
    :cond_1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->algOut:Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$algOutput;

    .line 22
    .line 23
    iget p0, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$algOutput;->callPeriod:I

    .line 24
    .line 25
    return p0
.end method

.method public getCloudGame()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->serDetCloudGame:I

    .line 2
    .line 3
    return p0
.end method

.method public getEpsilonValue(J)J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->mTwtInfo:Lcom/samsung/android/server/wifi/twt/SemTwtInfo;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->getLinkSpeed()[I

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x1

    .line 8
    aget v0, v0, v1

    .line 9
    .line 10
    iget-object p0, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->spDuration:Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;

    .line 11
    .line 12
    invoke-virtual {p0, v0, p1, p2}, Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;->calculateEpsilon(IJ)J

    .line 13
    .line 14
    .line 15
    move-result-wide p0

    .line 16
    return-wide p0
.end method

.method public getIntvAppReset()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->intvAppResetEn:Z

    .line 2
    .line 3
    return p0
.end method

.method public getSerDetRes()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->serTypeCur:I

    .line 2
    .line 3
    return p0
.end method

.method public initialize()Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$algOutput;
    .locals 2

    .line 1
    const/16 v0, 0x6000

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->modeSelection(IZ)Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$algOutput;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    return-object p0
.end method

.method public modeSelection(IZ)Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$algOutput;
    .locals 7

    .line 1
    iput p1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->latReq:I

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->dutyCycleReducedCnt:I

    .line 5
    .line 6
    iget-object v1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->algOut:Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$algOutput;

    .line 7
    .line 8
    iget-object v2, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->intvCase3:Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;

    .line 9
    .line 10
    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;->init()I

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    iput v2, v1, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$algOutput;->intval:I

    .line 15
    .line 16
    iget-object v1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->algOut:Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$algOutput;

    .line 17
    .line 18
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->TWTIntervalNSD()I

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    iput v2, v1, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$algOutput;->intval:I

    .line 23
    .line 24
    iget-object v1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->algOut:Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$algOutput;

    .line 25
    .line 26
    iget v1, v1, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$algOutput;->intval:I

    .line 27
    .line 28
    iput v1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->intvalAlgo:I

    .line 29
    .line 30
    iget-object v1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->spDuration:Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;

    .line 31
    .line 32
    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;->init()V

    .line 33
    .line 34
    .line 35
    iget-boolean v1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->appTwtDisableFlag:Z

    .line 36
    .line 37
    if-nez v1, :cond_0

    .line 38
    .line 39
    iget-object v1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->algOut:Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$algOutput;

    .line 40
    .line 41
    iget v2, v1, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$algOutput;->intval:I

    .line 42
    .line 43
    int-to-double v2, v2

    .line 44
    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    .line 45
    .line 46
    mul-double/2addr v2, v4

    .line 47
    double-to-int v2, v2

    .line 48
    iput v2, v1, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$algOutput;->sp:I

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->algOut:Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$algOutput;

    .line 52
    .line 53
    iget v2, v1, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$algOutput;->intval:I

    .line 54
    .line 55
    iput v2, v1, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$algOutput;->sp:I

    .line 56
    .line 57
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->algOut:Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$algOutput;

    .line 58
    .line 59
    iget v2, v1, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$algOutput;->sp:I

    .line 60
    .line 61
    iput v2, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->spAlgo:I

    .line 62
    .line 63
    iget-object v2, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->spDuration:Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;

    .line 64
    .line 65
    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;->getmEpsilon()J

    .line 66
    .line 67
    .line 68
    move-result-wide v2

    .line 69
    long-to-int v2, v2

    .line 70
    iput v2, v1, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$algOutput;->mTbufThreshold:I

    .line 71
    .line 72
    iget-object v1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->algOut:Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$algOutput;

    .line 73
    .line 74
    iget-object v2, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->spDuration:Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;

    .line 75
    .line 76
    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;->getmOverflowThreshold()I

    .line 77
    .line 78
    .line 79
    move-result v2

    .line 80
    iput v2, v1, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$algOutput;->overflowThd:I

    .line 81
    .line 82
    iget-object v1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->algOut:Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$algOutput;

    .line 83
    .line 84
    iget v2, v1, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$algOutput;->overflowThd:I

    .line 85
    .line 86
    iput v2, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->overflowThreshold:I

    .line 87
    .line 88
    const/4 v2, 0x1

    .line 89
    iput-boolean v2, v1, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$algOutput;->mTbufThdFlag:Z

    .line 90
    .line 91
    iput-boolean v2, v1, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$algOutput;->needSessionRenewal:Z

    .line 92
    .line 93
    const/16 v3, 0x32

    .line 94
    .line 95
    iput v3, v1, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$algOutput;->windowSize:I

    .line 96
    .line 97
    iput v3, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->winSize:I

    .line 98
    .line 99
    const/16 v3, 0xbea

    .line 100
    .line 101
    iput v3, v1, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$algOutput;->callPeriod:I

    .line 102
    .line 103
    iget-wide v3, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->modeSelCnt:J

    .line 104
    .line 105
    const-wide/16 v5, 0x1

    .line 106
    .line 107
    add-long/2addr v3, v5

    .line 108
    iput-wide v3, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->modeSelCnt:J

    .line 109
    .line 110
    if-ne p2, v2, :cond_1

    .line 111
    .line 112
    const/4 p2, 0x0

    .line 113
    iput p2, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->s2iTotal:F

    .line 114
    .line 115
    iput p2, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->spSum:F

    .line 116
    .line 117
    iput p2, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->intvSum:F

    .line 118
    .line 119
    iput p2, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->awakeTimeSum:F

    .line 120
    .line 121
    iput p2, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->dutyCycleAve:F

    .line 122
    .line 123
    iput p2, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->spAlgoSum:F

    .line 124
    .line 125
    iput v2, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->trafficTypePrev:I

    .line 126
    .line 127
    iput v2, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->trafficTypeCur:I

    .line 128
    .line 129
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->appTwtDisableFlag:Z

    .line 130
    .line 131
    goto :goto_1

    .line 132
    :cond_1
    iget-object p2, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->mTwtInfo:Lcom/samsung/android/server/wifi/twt/SemTwtInfo;

    .line 133
    .line 134
    const-string v1, "Met. maintained"

    .line 135
    .line 136
    invoke-virtual {p2, v1, v0}, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->addEvent(Ljava/lang/String;I)V

    .line 137
    .line 138
    .line 139
    :goto_1
    iget-object p2, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->algOut:Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$algOutput;

    .line 140
    .line 141
    iget v1, p2, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$algOutput;->sp:I

    .line 142
    .line 143
    invoke-virtual {p0, v1}, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->twtQuantization(I)I

    .line 144
    .line 145
    .line 146
    move-result v1

    .line 147
    iput v1, p2, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$algOutput;->sp:I

    .line 148
    .line 149
    iget-object p2, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->mTwtInfo:Lcom/samsung/android/server/wifi/twt/SemTwtInfo;

    .line 150
    .line 151
    new-instance v1, Ljava/lang/StringBuilder;

    .line 152
    .line 153
    const-string v2, "InitMode "

    .line 154
    .line 155
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 156
    .line 157
    .line 158
    iget-object v2, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->algOut:Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$algOutput;

    .line 159
    .line 160
    iget v2, v2, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$algOutput;->intval:I

    .line 161
    .line 162
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 163
    .line 164
    .line 165
    const-string v2, " "

    .line 166
    .line 167
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    .line 169
    .line 170
    iget-object v3, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->algOut:Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$algOutput;

    .line 171
    .line 172
    iget v3, v3, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$algOutput;->sp:I

    .line 173
    .line 174
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 175
    .line 176
    .line 177
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    .line 179
    .line 180
    iget-wide v3, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->modeSelCnt:J

    .line 181
    .line 182
    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 183
    .line 184
    .line 185
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    .line 187
    .line 188
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 189
    .line 190
    .line 191
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    .line 193
    .line 194
    iget-object p1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->algOut:Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$algOutput;

    .line 195
    .line 196
    iget p1, p1, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$algOutput;->windowSize:I

    .line 197
    .line 198
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 199
    .line 200
    .line 201
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    .line 203
    .line 204
    iget-object p1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->algOut:Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$algOutput;

    .line 205
    .line 206
    iget p1, p1, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$algOutput;->overflowThd:I

    .line 207
    .line 208
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 209
    .line 210
    .line 211
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    .line 213
    .line 214
    iget-object p1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->algOut:Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$algOutput;

    .line 215
    .line 216
    iget p1, p1, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$algOutput;->callPeriod:I

    .line 217
    .line 218
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 219
    .line 220
    .line 221
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 222
    .line 223
    .line 224
    iget-object p1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->algOut:Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$algOutput;

    .line 225
    .line 226
    iget-boolean p1, p1, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$algOutput;->needSessionRenewal:Z

    .line 227
    .line 228
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 229
    .line 230
    .line 231
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 232
    .line 233
    .line 234
    iget-object p1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->algOut:Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$algOutput;

    .line 235
    .line 236
    iget p1, p1, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$algOutput;->mTbufThreshold:I

    .line 237
    .line 238
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 239
    .line 240
    .line 241
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 242
    .line 243
    .line 244
    iget-object p1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->algOut:Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$algOutput;

    .line 245
    .line 246
    iget-boolean p1, p1, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$algOutput;->mTbufThdFlag:Z

    .line 247
    .line 248
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 249
    .line 250
    .line 251
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 252
    .line 253
    .line 254
    iget p1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->s2iTotal:F

    .line 255
    .line 256
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 257
    .line 258
    .line 259
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 260
    .line 261
    .line 262
    iget p1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->dutyCycleAve:F

    .line 263
    .line 264
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 265
    .line 266
    .line 267
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 268
    .line 269
    .line 270
    move-result-object p1

    .line 271
    invoke-virtual {p2, p1, v0}, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->addEvent(Ljava/lang/String;I)V

    .line 272
    .line 273
    .line 274
    iget-object p0, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->algOut:Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$algOutput;

    .line 275
    .line 276
    return-object p0
.end method

.method public modeSelectionDet(ILjava/lang/String;)Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$algOutput;
    .locals 2

    .line 1
    const/4 p1, 0x0

    .line 2
    if-eqz p2, :cond_1

    .line 3
    .line 4
    const-string v0, "com.gamepass.beta"

    .line 5
    .line 6
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    const-string v0, "com.gamepass"

    .line 13
    .line 14
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    move-result p2

    .line 18
    if-eqz p2, :cond_1

    .line 19
    .line 20
    :cond_0
    const/4 p2, 0x1

    .line 21
    iput-boolean p2, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->appTwtDisableFlag:Z

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_1
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->appTwtDisableFlag:Z

    .line 25
    .line 26
    :goto_0
    const/16 p2, 0x6000

    .line 27
    .line 28
    iput p2, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->latReq:I

    .line 29
    .line 30
    iget-object p2, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->mTwtInfo:Lcom/samsung/android/server/wifi/twt/SemTwtInfo;

    .line 31
    .line 32
    new-instance v0, Ljava/lang/StringBuilder;

    .line 33
    .line 34
    const-string v1, "Default_LR "

    .line 35
    .line 36
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    iget v1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->latReq:I

    .line 40
    .line 41
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    invoke-virtual {p2, v0, p1}, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->addEvent(Ljava/lang/String;I)V

    .line 49
    .line 50
    .line 51
    iget-object p2, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->spDuration:Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;

    .line 52
    .line 53
    const-wide/16 v0, 0x3e8

    .line 54
    .line 55
    invoke-virtual {p2, v0, v1}, Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;->setmEpsilon(J)V

    .line 56
    .line 57
    .line 58
    iget-object p2, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->spDuration:Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;

    .line 59
    .line 60
    const v0, 0x3d4ccccd    # 0.05f

    .line 61
    .line 62
    .line 63
    invoke-virtual {p2, v0}, Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;->setmOverflowThresholdPercent(F)V

    .line 64
    .line 65
    .line 66
    iget-object p2, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->spDuration:Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;

    .line 67
    .line 68
    const v1, 0x3e4ccccd    # 0.2f

    .line 69
    .line 70
    .line 71
    invoke-virtual {p2, v1}, Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;->setmOverflowGuardThr(F)V

    .line 72
    .line 73
    .line 74
    iget-object p2, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->spDuration:Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;

    .line 75
    .line 76
    invoke-virtual {p2, v0}, Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;->setmStableGuardLoEpsThr(F)V

    .line 77
    .line 78
    .line 79
    iget-object p2, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->spDuration:Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;

    .line 80
    .line 81
    const v0, 0x3dcccccd    # 0.1f

    .line 82
    .line 83
    .line 84
    invoke-virtual {p2, v0}, Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;->setmStableGuardHiEpsThr(F)V

    .line 85
    .line 86
    .line 87
    iget-object p2, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->spDuration:Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;

    .line 88
    .line 89
    invoke-virtual {p2, p1}, Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;->setmTdtUpdateMode(I)V

    .line 90
    .line 91
    .line 92
    iget-object p2, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->mTwtInfo:Lcom/samsung/android/server/wifi/twt/SemTwtInfo;

    .line 93
    .line 94
    const-string v0, "WD_config 1000 0.05 0.2 0.05 0.1 0"

    .line 95
    .line 96
    invoke-virtual {p2, v0, p1}, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->addEvent(Ljava/lang/String;I)V

    .line 97
    .line 98
    .line 99
    iget-object p0, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->algOut:Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$algOutput;

    .line 100
    .line 101
    return-object p0
.end method

.method public overflowWarning(I)Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$algOutput;
    .locals 23

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->mSemServiceInfo:Lcom/samsung/android/server/wifi/servicedetection/SemServiceInfo;

    .line 4
    .line 5
    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/servicedetection/SemServiceInfo;->getNetworkServiceDetectionResults()[I

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    const/4 v2, 0x3

    .line 10
    aget v1, v1, v2

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->setCloudGame(I)V

    .line 13
    .line 14
    .line 15
    iget-object v1, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->mTwtInfo:Lcom/samsung/android/server/wifi/twt/SemTwtInfo;

    .line 16
    .line 17
    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->getPacketMonitoringStats()[J

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    const/4 v3, 0x0

    .line 22
    aget-wide v4, v1, v3

    .line 23
    .line 24
    iput-wide v4, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->mAverageTdt:J

    .line 25
    .line 26
    const/4 v4, 0x1

    .line 27
    aget-wide v5, v1, v4

    .line 28
    .line 29
    iput-wide v5, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->mMaxTdt:J

    .line 30
    .line 31
    const/4 v5, 0x2

    .line 32
    aget-wide v6, v1, v5

    .line 33
    .line 34
    iput-wide v6, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->mDataTime:J

    .line 35
    .line 36
    aget-wide v6, v1, v2

    .line 37
    .line 38
    iput-wide v6, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->mPacketSize:J

    .line 39
    .line 40
    const/4 v6, 0x4

    .line 41
    aget-wide v6, v1, v6

    .line 42
    .line 43
    iput-wide v6, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->mPacketCount:J

    .line 44
    .line 45
    const/4 v6, 0x5

    .line 46
    aget-wide v6, v1, v6

    .line 47
    .line 48
    iput-wide v6, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->mAverageContentTime:J

    .line 49
    .line 50
    const/16 v6, 0xa

    .line 51
    .line 52
    aget-wide v6, v1, v6

    .line 53
    .line 54
    iput-wide v6, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->mVarTdt:J

    .line 55
    .line 56
    iget-object v1, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->mTwtInfo:Lcom/samsung/android/server/wifi/twt/SemTwtInfo;

    .line 57
    .line 58
    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->getTWTParams()[I

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    aget v6, v1, v5

    .line 63
    .line 64
    iput v6, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->intvalReal:I

    .line 65
    .line 66
    aget v1, v1, v4

    .line 67
    .line 68
    iput v1, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->spReal:I

    .line 69
    .line 70
    iget-object v1, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->mTwtInfo:Lcom/samsung/android/server/wifi/twt/SemTwtInfo;

    .line 71
    .line 72
    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->getLinkSpeed()[I

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    const v6, 0xafc8

    .line 77
    .line 78
    .line 79
    move/from16 v7, p1

    .line 80
    .line 81
    if-le v7, v6, :cond_0

    .line 82
    .line 83
    iget v6, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->serTypeCur:I

    .line 84
    .line 85
    if-ne v6, v5, :cond_0

    .line 86
    .line 87
    iget v5, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->trafficTypeCur:I

    .line 88
    .line 89
    if-eq v5, v2, :cond_0

    .line 90
    .line 91
    const v5, 0xa000

    .line 92
    .line 93
    .line 94
    iput v5, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->intvalAlgo:I

    .line 95
    .line 96
    iput-boolean v4, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->ovfIntAdjFlag:Z

    .line 97
    .line 98
    :cond_0
    iget-object v6, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->spDuration:Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;

    .line 99
    .line 100
    iget-wide v7, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->mMaxTdt:J

    .line 101
    .line 102
    iget-wide v9, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->mAverageTdt:J

    .line 103
    .line 104
    iget v11, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->intvalAlgo:I

    .line 105
    .line 106
    iget v12, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->spReal:I

    .line 107
    .line 108
    iget-wide v14, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->mAverageContentTime:J

    .line 109
    .line 110
    iget v5, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->intvalReal:I

    .line 111
    .line 112
    aget v17, v1, v3

    .line 113
    .line 114
    aget v18, v1, v4

    .line 115
    .line 116
    aget v19, v1, v2

    .line 117
    .line 118
    iget-wide v1, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->mVarTdt:J

    .line 119
    .line 120
    const/16 v22, 0x0

    .line 121
    .line 122
    const/4 v13, 0x1

    .line 123
    move-wide/from16 v20, v1

    .line 124
    .line 125
    move/from16 v16, v5

    .line 126
    .line 127
    invoke-virtual/range {v6 .. v22}, Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;->run(JJIIZJIIIIJ[I)B

    .line 128
    .line 129
    .line 130
    iget-object v1, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->algOut:Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$algOutput;

    .line 131
    .line 132
    iget v2, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->intvalAlgo:I

    .line 133
    .line 134
    iput v2, v1, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$algOutput;->intval:I

    .line 135
    .line 136
    iget-object v2, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->spDuration:Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;

    .line 137
    .line 138
    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;->getmSP()I

    .line 139
    .line 140
    .line 141
    move-result v2

    .line 142
    iput v2, v1, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$algOutput;->sp:I

    .line 143
    .line 144
    iget-object v1, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->algOut:Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$algOutput;

    .line 145
    .line 146
    iput-boolean v4, v1, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$algOutput;->needSessionRenewal:Z

    .line 147
    .line 148
    iput-boolean v3, v1, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$algOutput;->mTbufThdFlag:Z

    .line 149
    .line 150
    iget-wide v1, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->curTime:J

    .line 151
    .line 152
    iput-wide v1, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->prevTime:J

    .line 153
    .line 154
    iget-object v1, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->mTwtInfo:Lcom/samsung/android/server/wifi/twt/SemTwtInfo;

    .line 155
    .line 156
    new-instance v2, Ljava/lang/StringBuilder;

    .line 157
    .line 158
    const-string v4, "OP_info "

    .line 159
    .line 160
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 161
    .line 162
    .line 163
    iget-wide v4, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->mMaxTdt:J

    .line 164
    .line 165
    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 166
    .line 167
    .line 168
    const-string v4, " "

    .line 169
    .line 170
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    .line 172
    .line 173
    iget-wide v5, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->mAverageTdt:J

    .line 174
    .line 175
    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 176
    .line 177
    .line 178
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    .line 180
    .line 181
    iget-wide v5, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->mVarTdt:J

    .line 182
    .line 183
    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 184
    .line 185
    .line 186
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    .line 188
    .line 189
    iget-wide v5, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->mDataTime:J

    .line 190
    .line 191
    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 192
    .line 193
    .line 194
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    .line 196
    .line 197
    iget v5, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->intvalAlgo:I

    .line 198
    .line 199
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 200
    .line 201
    .line 202
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    .line 204
    .line 205
    iget v5, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->intvalReal:I

    .line 206
    .line 207
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 208
    .line 209
    .line 210
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    .line 212
    .line 213
    iget v5, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->spReal:I

    .line 214
    .line 215
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 216
    .line 217
    .line 218
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 219
    .line 220
    .line 221
    move-result-object v2

    .line 222
    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->addEvent(Ljava/lang/String;I)V

    .line 223
    .line 224
    .line 225
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 226
    .line 227
    .line 228
    move-result-wide v1

    .line 229
    iput-wide v1, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->curTime:J

    .line 230
    .line 231
    iget-wide v5, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->mRadioOnTimeMs:J

    .line 232
    .line 233
    long-to-float v7, v5

    .line 234
    const/high16 v8, 0x447a0000    # 1000.0f

    .line 235
    .line 236
    mul-float/2addr v7, v8

    .line 237
    iget-wide v8, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->prevTime:J

    .line 238
    .line 239
    sub-long v10, v1, v8

    .line 240
    .line 241
    const-wide/16 v12, 0x1f4

    .line 242
    .line 243
    add-long/2addr v10, v12

    .line 244
    const-wide/16 v14, 0x3e8

    .line 245
    .line 246
    div-long/2addr v10, v14

    .line 247
    long-to-float v10, v10

    .line 248
    div-float/2addr v7, v10

    .line 249
    iput v7, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->dutyCycle:F

    .line 250
    .line 251
    iget v7, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->awakeTimeSum:F

    .line 252
    .line 253
    mul-long/2addr v5, v14

    .line 254
    long-to-float v5, v5

    .line 255
    add-float/2addr v7, v5

    .line 256
    iput v7, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->awakeTimeSum:F

    .line 257
    .line 258
    iget v5, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->spReal:I

    .line 259
    .line 260
    int-to-float v6, v5

    .line 261
    iget v10, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->intvalReal:I

    .line 262
    .line 263
    int-to-float v11, v10

    .line 264
    div-float/2addr v6, v11

    .line 265
    iput v6, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->s2i:F

    .line 266
    .line 267
    iget v6, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->spSum:F

    .line 268
    .line 269
    int-to-float v5, v5

    .line 270
    const/high16 v11, 0x3f800000    # 1.0f

    .line 271
    .line 272
    mul-float/2addr v5, v11

    .line 273
    int-to-float v10, v10

    .line 274
    div-float/2addr v5, v10

    .line 275
    sub-long v16, v1, v8

    .line 276
    .line 277
    add-long v16, v16, v12

    .line 278
    .line 279
    move/from16 p1, v11

    .line 280
    .line 281
    move-wide/from16 v18, v12

    .line 282
    .line 283
    div-long v11, v16, v14

    .line 284
    .line 285
    long-to-float v10, v11

    .line 286
    mul-float/2addr v5, v10

    .line 287
    add-float/2addr v5, v6

    .line 288
    iput v5, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->spSum:F

    .line 289
    .line 290
    iget v6, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->intvSum:F

    .line 291
    .line 292
    sub-long v10, v1, v8

    .line 293
    .line 294
    add-long v10, v10, v18

    .line 295
    .line 296
    div-long/2addr v10, v14

    .line 297
    long-to-float v10, v10

    .line 298
    add-float/2addr v6, v10

    .line 299
    iput v6, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->intvSum:F

    .line 300
    .line 301
    div-float/2addr v5, v6

    .line 302
    iput v5, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->s2iTotal:F

    .line 303
    .line 304
    div-float/2addr v7, v6

    .line 305
    iput v7, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->dutyCycleAve:F

    .line 306
    .line 307
    iget v5, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->spAlgoSum:F

    .line 308
    .line 309
    iget v7, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->spAlgo:I

    .line 310
    .line 311
    int-to-float v7, v7

    .line 312
    mul-float v7, v7, p1

    .line 313
    .line 314
    iget v10, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->intvalAlgo:I

    .line 315
    .line 316
    int-to-float v10, v10

    .line 317
    div-float/2addr v7, v10

    .line 318
    sub-long v8, v1, v8

    .line 319
    .line 320
    add-long v8, v8, v18

    .line 321
    .line 322
    div-long/2addr v8, v14

    .line 323
    long-to-float v8, v8

    .line 324
    mul-float/2addr v7, v8

    .line 325
    add-float/2addr v7, v5

    .line 326
    iput v7, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->spAlgoSum:F

    .line 327
    .line 328
    div-float/2addr v7, v6

    .line 329
    iput v7, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->s2iAlgoTotal:F

    .line 330
    .line 331
    iput-wide v1, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->prevTime:J

    .line 332
    .line 333
    iget-object v1, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->algOut:Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$algOutput;

    .line 334
    .line 335
    iget v2, v1, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$algOutput;->sp:I

    .line 336
    .line 337
    invoke-virtual {v0, v2}, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->twtQuantization(I)I

    .line 338
    .line 339
    .line 340
    move-result v2

    .line 341
    iput v2, v1, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$algOutput;->sp:I

    .line 342
    .line 343
    iget-object v1, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->algOut:Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$algOutput;

    .line 344
    .line 345
    iget v1, v1, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$algOutput;->sp:I

    .line 346
    .line 347
    iput v1, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->spAlgo:I

    .line 348
    .line 349
    iget-object v1, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->mTwtInfo:Lcom/samsung/android/server/wifi/twt/SemTwtInfo;

    .line 350
    .line 351
    new-instance v2, Ljava/lang/StringBuilder;

    .line 352
    .line 353
    const-string v5, "OP_result "

    .line 354
    .line 355
    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 356
    .line 357
    .line 358
    iget-object v5, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->algOut:Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$algOutput;

    .line 359
    .line 360
    iget v5, v5, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$algOutput;->intval:I

    .line 361
    .line 362
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 363
    .line 364
    .line 365
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 366
    .line 367
    .line 368
    iget-object v5, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->algOut:Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$algOutput;

    .line 369
    .line 370
    iget v5, v5, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$algOutput;->sp:I

    .line 371
    .line 372
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 373
    .line 374
    .line 375
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 376
    .line 377
    .line 378
    iget v5, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->dutyCycle:F

    .line 379
    .line 380
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 381
    .line 382
    .line 383
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 384
    .line 385
    .line 386
    iget v5, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->dutyCycleAve:F

    .line 387
    .line 388
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 389
    .line 390
    .line 391
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 392
    .line 393
    .line 394
    iget v5, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->s2i:F

    .line 395
    .line 396
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 397
    .line 398
    .line 399
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 400
    .line 401
    .line 402
    iget v5, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->s2iTotal:F

    .line 403
    .line 404
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 405
    .line 406
    .line 407
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 408
    .line 409
    .line 410
    iget v4, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->s2iAlgoTotal:F

    .line 411
    .line 412
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 413
    .line 414
    .line 415
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 416
    .line 417
    .line 418
    move-result-object v2

    .line 419
    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->addEvent(Ljava/lang/String;I)V

    .line 420
    .line 421
    .line 422
    iget-object v0, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->algOut:Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$algOutput;

    .line 423
    .line 424
    return-object v0
.end method

.method public reinitialize()Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$algOutput;
    .locals 2

    .line 1
    iget v0, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->latReq:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->modeSelection(IZ)Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$algOutput;

    move-result-object p0

    return-object p0
.end method

.method public reinitialize(Ljava/lang/String;)Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$algOutput;
    .locals 1

    .line 2
    iget v0, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->latReq:I

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->modeSelectionDet(ILjava/lang/String;)Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$algOutput;

    move-result-object p0

    return-object p0
.end method

.method public resetAbnormalApPatchStat()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->mRTAnomalyDetCnt:I

    .line 3
    .line 4
    iput v0, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->mNumContinueAnomaly:I

    .line 5
    .line 6
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->mIsAbnormalAP:Z

    .line 7
    .line 8
    return-void
.end method

.method public resetDataArray()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->intvIndex:I

    .line 3
    .line 4
    iput v0, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->intvCount:I

    .line 5
    .line 6
    return-void
.end method

.method public resetQosTxgoodPatchStat()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->mGTwtTearCnt_Tdt:I

    .line 3
    .line 4
    iput v0, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->mobileGameCnt_Tdt:I

    .line 5
    .line 6
    iput v0, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->mBadInterTTDCnt:I

    .line 7
    .line 8
    iput v0, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->mInterTAnomDetCnt:I

    .line 9
    .line 10
    iput v0, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->mInterTContinueAnom:I

    .line 11
    .line 12
    iput v0, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->mBadInterT:I

    .line 13
    .line 14
    return-void
.end method

.method public setCloudGame(I)V
    .locals 1

    .line 1
    iput p1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->serDetCloudGame:I

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-ne p1, v0, :cond_0

    .line 5
    .line 6
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->appTwtDisableFlag:Z

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    const/4 p1, 0x0

    .line 10
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->appTwtDisableFlag:Z

    .line 11
    .line 12
    return-void
.end method

.method public setIntvAlgo(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->intvalAlgo:I

    .line 2
    .line 3
    iget-object p0, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->intvCase3:Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;->setTwtInterval(I)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public setTwtMetric(JJJ)V
    .locals 22

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-wide/from16 v1, p1

    .line 4
    .line 5
    move-wide/from16 v3, p3

    .line 6
    .line 7
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 8
    .line 9
    .line 10
    move-result-wide v5

    .line 11
    iput-wide v5, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->curTime:J

    .line 12
    .line 13
    long-to-float v7, v1

    .line 14
    const/high16 v8, 0x447a0000    # 1000.0f

    .line 15
    .line 16
    mul-float/2addr v7, v8

    .line 17
    iget-wide v8, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->prevTime:J

    .line 18
    .line 19
    sub-long v10, v5, v8

    .line 20
    .line 21
    const-wide/16 v12, 0x1f4

    .line 22
    .line 23
    add-long/2addr v10, v12

    .line 24
    const-wide/16 v14, 0x3e8

    .line 25
    .line 26
    div-long/2addr v10, v14

    .line 27
    long-to-float v10, v10

    .line 28
    div-float v10, v7, v10

    .line 29
    .line 30
    iput v10, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->dutyCycle:F

    .line 31
    .line 32
    iget v10, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->awakeTimeSum:F

    .line 33
    .line 34
    add-float/2addr v10, v7

    .line 35
    iput v10, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->awakeTimeSum:F

    .line 36
    .line 37
    move-wide/from16 v16, v12

    .line 38
    .line 39
    move-wide/from16 v12, p5

    .line 40
    .line 41
    long-to-float v7, v12

    .line 42
    long-to-float v11, v3

    .line 43
    div-float v12, v7, v11

    .line 44
    .line 45
    iput v12, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->s2i:F

    .line 46
    .line 47
    iget v12, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->spSum:F

    .line 48
    .line 49
    const/high16 v13, 0x3f800000    # 1.0f

    .line 50
    .line 51
    mul-float/2addr v7, v13

    .line 52
    div-float/2addr v7, v11

    .line 53
    sub-long v18, v5, v8

    .line 54
    .line 55
    add-long v18, v18, v16

    .line 56
    .line 57
    move-wide/from16 v20, v14

    .line 58
    .line 59
    div-long v14, v18, v20

    .line 60
    .line 61
    long-to-float v11, v14

    .line 62
    mul-float/2addr v11, v7

    .line 63
    add-float/2addr v11, v12

    .line 64
    iput v11, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->spSum:F

    .line 65
    .line 66
    iget v12, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->intvSum:F

    .line 67
    .line 68
    sub-long v13, v5, v8

    .line 69
    .line 70
    add-long v13, v13, v16

    .line 71
    .line 72
    div-long v13, v13, v20

    .line 73
    .line 74
    long-to-float v13, v13

    .line 75
    add-float/2addr v12, v13

    .line 76
    iput v12, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->intvSum:F

    .line 77
    .line 78
    div-float/2addr v11, v12

    .line 79
    iput v11, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->s2iTotal:F

    .line 80
    .line 81
    div-float/2addr v10, v12

    .line 82
    iput v10, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->dutyCycleAve:F

    .line 83
    .line 84
    iget v10, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->spAlgoSum:F

    .line 85
    .line 86
    sub-long v8, v5, v8

    .line 87
    .line 88
    add-long v8, v8, v16

    .line 89
    .line 90
    div-long v8, v8, v20

    .line 91
    .line 92
    long-to-float v8, v8

    .line 93
    mul-float/2addr v7, v8

    .line 94
    add-float/2addr v7, v10

    .line 95
    iput v7, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->spAlgoSum:F

    .line 96
    .line 97
    div-float/2addr v7, v12

    .line 98
    iput v7, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->s2iAlgoTotal:F

    .line 99
    .line 100
    iput-wide v5, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->prevTime:J

    .line 101
    .line 102
    iget-object v5, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->mTwtInfo:Lcom/samsung/android/server/wifi/twt/SemTwtInfo;

    .line 103
    .line 104
    new-instance v6, Ljava/lang/StringBuilder;

    .line 105
    .line 106
    const-string v7, "SetMet. "

    .line 107
    .line 108
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    invoke-virtual {v6, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    const-string v1, " "

    .line 115
    .line 116
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    invoke-virtual {v6, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    iget v2, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->dutyCycle:F

    .line 126
    .line 127
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    iget v2, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->dutyCycleAve:F

    .line 134
    .line 135
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 136
    .line 137
    .line 138
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    .line 140
    .line 141
    iget v2, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->s2i:F

    .line 142
    .line 143
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 144
    .line 145
    .line 146
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    .line 148
    .line 149
    iget v2, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->s2iTotal:F

    .line 150
    .line 151
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 152
    .line 153
    .line 154
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    .line 156
    .line 157
    iget v0, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->s2iAlgoTotal:F

    .line 158
    .line 159
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 160
    .line 161
    .line 162
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object v0

    .line 166
    const/4 v1, 0x0

    .line 167
    invoke-virtual {v5, v0, v1}, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->addEvent(Ljava/lang/String;I)V

    .line 168
    .line 169
    .line 170
    return-void
.end method

.method public tdtOverFlowPerSP(IILcom/samsung/android/server/wifi/servicedetection/SemTrafficData;)F
    .locals 43

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p3

    .line 4
    .line 5
    iget-object v2, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->mSemServiceInfo:Lcom/samsung/android/server/wifi/servicedetection/SemServiceInfo;

    .line 6
    .line 7
    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/servicedetection/SemServiceInfo;->getMainCategoryServiceType()I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    iput v2, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->serTypeCur:I

    .line 12
    .line 13
    iget-object v2, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->mSemServiceInfo:Lcom/samsung/android/server/wifi/servicedetection/SemServiceInfo;

    .line 14
    .line 15
    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/servicedetection/SemServiceInfo;->getSubCategoryServiceType()I

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    iput v2, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->serSubTypeCur:I

    .line 20
    .line 21
    iget-object v2, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->mSemServiceInfo:Lcom/samsung/android/server/wifi/servicedetection/SemServiceInfo;

    .line 22
    .line 23
    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/servicedetection/SemServiceInfo;->getTrafficInfo()[I

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    iget-object v3, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->mTwtInfo:Lcom/samsung/android/server/wifi/twt/SemTwtInfo;

    .line 28
    .line 29
    invoke-virtual {v3}, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->getTWTParams()[I

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    const/4 v4, 0x1

    .line 34
    aget v5, v3, v4

    .line 35
    .line 36
    const/4 v6, 0x2

    .line 37
    aget v3, v3, v6

    .line 38
    .line 39
    iget-object v7, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->mSemServiceInfo:Lcom/samsung/android/server/wifi/servicedetection/SemServiceInfo;

    .line 40
    .line 41
    invoke-virtual {v7}, Lcom/samsung/android/server/wifi/servicedetection/SemServiceInfo;->getNetworkServiceDetectionResults()[I

    .line 42
    .line 43
    .line 44
    move-result-object v7

    .line 45
    const/4 v8, 0x3

    .line 46
    aget v9, v7, v8

    .line 47
    .line 48
    invoke-virtual {v0, v9}, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->setCloudGame(I)V

    .line 49
    .line 50
    .line 51
    iget-object v9, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->mTwtInfo:Lcom/samsung/android/server/wifi/twt/SemTwtInfo;

    .line 52
    .line 53
    invoke-virtual {v9}, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->getTWTStatus()Z

    .line 54
    .line 55
    .line 56
    move-result v9

    .line 57
    iput-boolean v9, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->mTwtNegotiated:Z

    .line 58
    .line 59
    iget-object v9, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->mTwtInfo:Lcom/samsung/android/server/wifi/twt/SemTwtInfo;

    .line 60
    .line 61
    invoke-virtual {v9}, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->getDiffStats()[J

    .line 62
    .line 63
    .line 64
    move-result-object v9

    .line 65
    iget-object v10, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->mTwtInfo:Lcom/samsung/android/server/wifi/twt/SemTwtInfo;

    .line 66
    .line 67
    invoke-virtual {v10}, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->getLinkSpeed()[I

    .line 68
    .line 69
    .line 70
    move-result-object v10

    .line 71
    iget-object v11, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->mTwtInfo:Lcom/samsung/android/server/wifi/twt/SemTwtInfo;

    .line 72
    .line 73
    invoke-virtual {v11}, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->getLinkLayerDiffStats()[J

    .line 74
    .line 75
    .line 76
    move-result-object v11

    .line 77
    aget-wide v12, v9, v6

    .line 78
    .line 79
    aget-wide v14, v9, v8

    .line 80
    .line 81
    const/16 v16, 0x6

    .line 82
    .line 83
    move/from16 v17, v8

    .line 84
    .line 85
    move-object/from16 v18, v9

    .line 86
    .line 87
    aget-wide v8, v18, v16

    .line 88
    .line 89
    const/16 v19, 0x7

    .line 90
    .line 91
    move/from16 v20, v6

    .line 92
    .line 93
    move-object/from16 v21, v7

    .line 94
    .line 95
    aget-wide v6, v18, v19

    .line 96
    .line 97
    move/from16 v18, v4

    .line 98
    .line 99
    const/16 v22, 0x0

    .line 100
    .line 101
    aget v4, v10, v22

    .line 102
    .line 103
    aget v10, v10, v18

    .line 104
    .line 105
    move-object/from16 v23, v2

    .line 106
    .line 107
    move/from16 v24, v3

    .line 108
    .line 109
    aget-wide v2, v11, v22

    .line 110
    .line 111
    aget-wide v25, v11, v18

    .line 112
    .line 113
    aget-wide v27, v11, v20

    .line 114
    .line 115
    move-wide/from16 v29, v8

    .line 116
    .line 117
    aget-wide v8, v11, v17

    .line 118
    .line 119
    const/16 v31, 0x5

    .line 120
    .line 121
    move-wide/from16 v32, v14

    .line 122
    .line 123
    aget-wide v14, v11, v31

    .line 124
    .line 125
    add-long v34, v2, v25

    .line 126
    .line 127
    move-wide/from16 v36, v12

    .line 128
    .line 129
    add-long v11, v34, v27

    .line 130
    .line 131
    const-wide/16 v34, 0x0

    .line 132
    .line 133
    cmp-long v13, v11, v34

    .line 134
    .line 135
    if-lez v13, :cond_0

    .line 136
    .line 137
    long-to-float v2, v2

    .line 138
    long-to-float v3, v11

    .line 139
    div-float/2addr v2, v3

    .line 140
    iput v2, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->TxGoodRate_Tdt:F

    .line 141
    .line 142
    :cond_0
    cmp-long v2, v8, v34

    .line 143
    .line 144
    if-lez v2, :cond_1

    .line 145
    .line 146
    long-to-float v2, v14

    .line 147
    long-to-float v3, v8

    .line 148
    div-float/2addr v2, v3

    .line 149
    iput v2, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->RxPktSize_Tdt:F

    .line 150
    .line 151
    :cond_1
    const/4 v2, 0x0

    .line 152
    if-nez v1, :cond_2

    .line 153
    .line 154
    move v3, v2

    .line 155
    goto :goto_0

    .line 156
    :cond_2
    iget v3, v1, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficData;->ulPacketSizeAvg:F

    .line 157
    .line 158
    :goto_0
    if-gtz p1, :cond_3

    .line 159
    .line 160
    move/from16 v13, v24

    .line 161
    .line 162
    goto :goto_1

    .line 163
    :cond_3
    move/from16 v13, p1

    .line 164
    .line 165
    :goto_1
    int-to-float v13, v13

    .line 166
    const/high16 v14, 0x447a0000    # 1000.0f

    .line 167
    .line 168
    mul-float/2addr v13, v14

    .line 169
    long-to-float v6, v6

    .line 170
    div-float/2addr v13, v6

    .line 171
    cmpl-float v6, v13, v2

    .line 172
    .line 173
    if-lez v6, :cond_4

    .line 174
    .line 175
    goto :goto_2

    .line 176
    :cond_4
    const/high16 v13, 0x3f800000    # 1.0f

    .line 177
    .line 178
    :goto_2
    const/high16 v6, 0x44af0000    # 1400.0f

    .line 179
    .line 180
    cmpl-float v15, v3, v6

    .line 181
    .line 182
    const/high16 v38, 0x44610000    # 900.0f

    .line 183
    .line 184
    const v39, 0x44898000    # 1100.0f

    .line 185
    .line 186
    .line 187
    if-ltz v15, :cond_5

    .line 188
    .line 189
    int-to-float v3, v4

    .line 190
    const v15, 0x40466666    # 3.1f

    .line 191
    .line 192
    .line 193
    invoke-static {v3, v2, v15}, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->mapFactorTxFunc(FFF)F

    .line 194
    .line 195
    .line 196
    move-result v3

    .line 197
    :goto_3
    move/from16 p1, v6

    .line 198
    .line 199
    goto :goto_4

    .line 200
    :cond_5
    cmpl-float v15, v3, v39

    .line 201
    .line 202
    if-ltz v15, :cond_6

    .line 203
    .line 204
    int-to-float v3, v4

    .line 205
    const v15, 0x40333333    # 2.8f

    .line 206
    .line 207
    .line 208
    invoke-static {v3, v2, v15}, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->mapFactorTxFunc(FFF)F

    .line 209
    .line 210
    .line 211
    move-result v3

    .line 212
    goto :goto_3

    .line 213
    :cond_6
    cmpl-float v15, v3, v38

    .line 214
    .line 215
    if-ltz v15, :cond_7

    .line 216
    .line 217
    int-to-float v3, v4

    .line 218
    const v15, 0x402ccccd    # 2.7f

    .line 219
    .line 220
    .line 221
    invoke-static {v3, v2, v15}, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->mapFactorTxFunc(FFF)F

    .line 222
    .line 223
    .line 224
    move-result v3

    .line 225
    goto :goto_3

    .line 226
    :cond_7
    const/high16 v15, 0x442f0000    # 700.0f

    .line 227
    .line 228
    cmpl-float v15, v3, v15

    .line 229
    .line 230
    if-ltz v15, :cond_8

    .line 231
    .line 232
    int-to-float v3, v4

    .line 233
    const v15, 0x3b16bb99    # 0.0023f

    .line 234
    .line 235
    .line 236
    move/from16 p1, v6

    .line 237
    .line 238
    const v6, 0x3ff5c28f    # 1.92f

    .line 239
    .line 240
    .line 241
    invoke-static {v3, v15, v6}, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->mapFactorTxFunc(FFF)F

    .line 242
    .line 243
    .line 244
    move-result v3

    .line 245
    goto :goto_4

    .line 246
    :cond_8
    move/from16 p1, v6

    .line 247
    .line 248
    const/high16 v6, 0x43fa0000    # 500.0f

    .line 249
    .line 250
    cmpl-float v6, v3, v6

    .line 251
    .line 252
    if-ltz v6, :cond_9

    .line 253
    .line 254
    int-to-float v3, v4

    .line 255
    const v6, 0x3b4b295f    # 0.0031f

    .line 256
    .line 257
    .line 258
    const v15, 0x40170a3d    # 2.36f

    .line 259
    .line 260
    .line 261
    invoke-static {v3, v6, v15}, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->mapFactorTxFunc(FFF)F

    .line 262
    .line 263
    .line 264
    move-result v3

    .line 265
    goto :goto_4

    .line 266
    :cond_9
    const/high16 v6, 0x43960000    # 300.0f

    .line 267
    .line 268
    cmpl-float v3, v3, v6

    .line 269
    .line 270
    if-ltz v3, :cond_a

    .line 271
    .line 272
    int-to-float v3, v4

    .line 273
    const v6, 0x3c09a027    # 0.0084f

    .line 274
    .line 275
    .line 276
    const v15, 0x4039999a    # 2.9f

    .line 277
    .line 278
    .line 279
    invoke-static {v3, v6, v15}, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->mapFactorTxFunc(FFF)F

    .line 280
    .line 281
    .line 282
    move-result v3

    .line 283
    goto :goto_4

    .line 284
    :cond_a
    int-to-float v3, v4

    .line 285
    const v6, 0x3c656042    # 0.014f

    .line 286
    .line 287
    .line 288
    const v15, 0x4041eb85    # 3.03f

    .line 289
    .line 290
    .line 291
    invoke-static {v3, v6, v15}, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->mapFactorTxFunc(FFF)F

    .line 292
    .line 293
    .line 294
    move-result v3

    .line 295
    :goto_4
    iget v6, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->RxPktSize_Tdt:F

    .line 296
    .line 297
    cmpl-float v15, v6, p1

    .line 298
    .line 299
    const/high16 p1, 0x3f800000    # 1.0f

    .line 300
    .line 301
    const/16 v7, 0x64

    .line 302
    .line 303
    if-ltz v15, :cond_c

    .line 304
    .line 305
    if-lt v10, v7, :cond_b

    .line 306
    .line 307
    int-to-float v6, v10

    .line 308
    const v15, 0x3f19999a    # 0.6f

    .line 309
    .line 310
    .line 311
    move/from16 v40, v14

    .line 312
    .line 313
    const v14, -0x3e323d71    # -25.72f

    .line 314
    .line 315
    .line 316
    invoke-static {v6, v15, v14}, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->mapFactorRxFunc(FFF)F

    .line 317
    .line 318
    .line 319
    move-result v6

    .line 320
    goto/16 :goto_5

    .line 321
    .line 322
    :cond_b
    move/from16 v40, v14

    .line 323
    .line 324
    int-to-float v6, v10

    .line 325
    const v14, 0x3eaa7efa    # 0.333f

    .line 326
    .line 327
    .line 328
    invoke-static {v6, v14, v2}, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->mapFactorRxFunc(FFF)F

    .line 329
    .line 330
    .line 331
    move-result v6

    .line 332
    goto/16 :goto_5

    .line 333
    .line 334
    :cond_c
    move/from16 v40, v14

    .line 335
    .line 336
    cmpl-float v14, v6, v39

    .line 337
    .line 338
    if-ltz v14, :cond_e

    .line 339
    .line 340
    if-lt v10, v7, :cond_d

    .line 341
    .line 342
    int-to-float v6, v10

    .line 343
    const v14, 0x3f0ccccd    # 0.55f

    .line 344
    .line 345
    .line 346
    const v15, -0x3e5f3333    # -20.1f

    .line 347
    .line 348
    .line 349
    invoke-static {v6, v14, v15}, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->mapFactorRxFunc(FFF)F

    .line 350
    .line 351
    .line 352
    move-result v6

    .line 353
    goto/16 :goto_5

    .line 354
    .line 355
    :cond_d
    int-to-float v6, v10

    .line 356
    const v14, 0x3eb33333    # 0.35f

    .line 357
    .line 358
    .line 359
    invoke-static {v6, v14, v2}, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->mapFactorRxFunc(FFF)F

    .line 360
    .line 361
    .line 362
    move-result v6

    .line 363
    goto/16 :goto_5

    .line 364
    .line 365
    :cond_e
    cmpl-float v14, v6, v38

    .line 366
    .line 367
    if-ltz v14, :cond_10

    .line 368
    .line 369
    if-lt v10, v7, :cond_f

    .line 370
    .line 371
    int-to-float v6, v10

    .line 372
    const v14, 0x3f07ae14    # 0.53f

    .line 373
    .line 374
    .line 375
    const v15, -0x3e6b5c29    # -18.58f

    .line 376
    .line 377
    .line 378
    invoke-static {v6, v14, v15}, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->mapFactorRxFunc(FFF)F

    .line 379
    .line 380
    .line 381
    move-result v6

    .line 382
    goto/16 :goto_5

    .line 383
    .line 384
    :cond_f
    int-to-float v6, v10

    .line 385
    const v14, 0x3eaf1aa0    # 0.342f

    .line 386
    .line 387
    .line 388
    invoke-static {v6, v14, v2}, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->mapFactorRxFunc(FFF)F

    .line 389
    .line 390
    .line 391
    move-result v6

    .line 392
    goto/16 :goto_5

    .line 393
    .line 394
    :cond_10
    const/high16 v14, 0x442f0000    # 700.0f

    .line 395
    .line 396
    cmpl-float v14, v6, v14

    .line 397
    .line 398
    if-ltz v14, :cond_12

    .line 399
    .line 400
    if-lt v10, v7, :cond_11

    .line 401
    .line 402
    int-to-float v6, v10

    .line 403
    const v14, 0x3ef5c28f    # 0.48f

    .line 404
    .line 405
    .line 406
    const v15, -0x3e7d999a    # -16.3f

    .line 407
    .line 408
    .line 409
    invoke-static {v6, v14, v15}, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->mapFactorRxFunc(FFF)F

    .line 410
    .line 411
    .line 412
    move-result v6

    .line 413
    goto :goto_5

    .line 414
    :cond_11
    int-to-float v6, v10

    .line 415
    const v14, 0x3ea4dd2f    # 0.322f

    .line 416
    .line 417
    .line 418
    invoke-static {v6, v14, v2}, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->mapFactorRxFunc(FFF)F

    .line 419
    .line 420
    .line 421
    move-result v6

    .line 422
    goto :goto_5

    .line 423
    :cond_12
    const/high16 v14, 0x43fa0000    # 500.0f

    .line 424
    .line 425
    cmpl-float v14, v6, v14

    .line 426
    .line 427
    if-ltz v14, :cond_14

    .line 428
    .line 429
    if-lt v10, v7, :cond_13

    .line 430
    .line 431
    int-to-float v6, v10

    .line 432
    const v14, 0x3ebae148    # 0.365f

    .line 433
    .line 434
    .line 435
    const/high16 v15, -0x3e480000    # -23.0f

    .line 436
    .line 437
    invoke-static {v6, v14, v15}, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->mapFactorRxFunc(FFF)F

    .line 438
    .line 439
    .line 440
    move-result v6

    .line 441
    goto :goto_5

    .line 442
    :cond_13
    int-to-float v6, v10

    .line 443
    const v14, 0x3e0a3d71    # 0.135f

    .line 444
    .line 445
    .line 446
    invoke-static {v6, v14, v2}, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->mapFactorRxFunc(FFF)F

    .line 447
    .line 448
    .line 449
    move-result v6

    .line 450
    goto :goto_5

    .line 451
    :cond_14
    const/high16 v14, 0x43960000    # 300.0f

    .line 452
    .line 453
    cmpl-float v6, v6, v14

    .line 454
    .line 455
    if-ltz v6, :cond_16

    .line 456
    .line 457
    if-lt v10, v7, :cond_15

    .line 458
    .line 459
    int-to-float v6, v10

    .line 460
    const v14, 0x3e75c28f    # 0.24f

    .line 461
    .line 462
    .line 463
    const v15, -0x3eb66666    # -12.6f

    .line 464
    .line 465
    .line 466
    invoke-static {v6, v14, v15}, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->mapFactorRxFunc(FFF)F

    .line 467
    .line 468
    .line 469
    move-result v6

    .line 470
    goto :goto_5

    .line 471
    :cond_15
    int-to-float v6, v10

    .line 472
    const v14, 0x3de978d5    # 0.114f

    .line 473
    .line 474
    .line 475
    invoke-static {v6, v14, v2}, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->mapFactorRxFunc(FFF)F

    .line 476
    .line 477
    .line 478
    move-result v6

    .line 479
    goto :goto_5

    .line 480
    :cond_16
    if-lt v10, v7, :cond_17

    .line 481
    .line 482
    int-to-float v6, v10

    .line 483
    const v14, 0x3e126e98    # 0.143f

    .line 484
    .line 485
    .line 486
    const v15, -0x3f79999a    # -4.2f

    .line 487
    .line 488
    .line 489
    invoke-static {v6, v14, v15}, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->mapFactorRxFunc(FFF)F

    .line 490
    .line 491
    .line 492
    move-result v6

    .line 493
    goto :goto_5

    .line 494
    :cond_17
    int-to-float v6, v10

    .line 495
    const v14, 0x3dcccccd    # 0.1f

    .line 496
    .line 497
    .line 498
    invoke-static {v6, v14, v2}, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->mapFactorRxFunc(FFF)F

    .line 499
    .line 500
    .line 501
    move-result v6

    .line 502
    :goto_5
    int-to-float v14, v10

    .line 503
    mul-float/2addr v14, v6

    .line 504
    int-to-float v15, v4

    .line 505
    mul-float/2addr v15, v3

    .line 506
    const/high16 v38, 0x41000000    # 8.0f

    .line 507
    .line 508
    if-eqz v4, :cond_18

    .line 509
    .line 510
    if-eqz v10, :cond_18

    .line 511
    .line 512
    move/from16 v39, v2

    .line 513
    .line 514
    move/from16 v41, v3

    .line 515
    .line 516
    move-wide/from16 v2, v36

    .line 517
    .line 518
    long-to-float v7, v2

    .line 519
    mul-float v7, v7, v38

    .line 520
    .line 521
    mul-float v7, v7, v41

    .line 522
    .line 523
    move/from16 v37, v6

    .line 524
    .line 525
    move/from16 v41, v7

    .line 526
    .line 527
    move-wide/from16 v6, v32

    .line 528
    .line 529
    move/from16 v32, v13

    .line 530
    .line 531
    long-to-float v13, v6

    .line 532
    mul-float v13, v13, v38

    .line 533
    .line 534
    mul-float v13, v13, v37

    .line 535
    .line 536
    add-float v13, v13, v41

    .line 537
    .line 538
    goto :goto_6

    .line 539
    :cond_18
    move/from16 v39, v2

    .line 540
    .line 541
    move/from16 v41, v3

    .line 542
    .line 543
    move-wide/from16 v2, v36

    .line 544
    .line 545
    move/from16 v37, v6

    .line 546
    .line 547
    move-wide/from16 v6, v32

    .line 548
    .line 549
    move/from16 v32, v13

    .line 550
    .line 551
    if-nez v4, :cond_19

    .line 552
    .line 553
    if-eqz v10, :cond_19

    .line 554
    .line 555
    long-to-float v13, v6

    .line 556
    mul-float v13, v13, v38

    .line 557
    .line 558
    mul-float v13, v13, v37

    .line 559
    .line 560
    goto :goto_6

    .line 561
    :cond_19
    if-eqz v4, :cond_1a

    .line 562
    .line 563
    if-nez v10, :cond_1a

    .line 564
    .line 565
    long-to-float v13, v2

    .line 566
    mul-float v13, v13, v38

    .line 567
    .line 568
    mul-float v13, v13, v41

    .line 569
    .line 570
    goto :goto_6

    .line 571
    :cond_1a
    move/from16 v13, v39

    .line 572
    .line 573
    :goto_6
    const-wide/16 v37, 0x3e8

    .line 574
    .line 575
    cmp-long v33, v29, v37

    .line 576
    .line 577
    if-ltz v33, :cond_1b

    .line 578
    .line 579
    const/high16 v33, 0x43340000    # 180.0f

    .line 580
    .line 581
    move/from16 v37, v14

    .line 582
    .line 583
    move/from16 v42, v33

    .line 584
    .line 585
    move/from16 v33, v13

    .line 586
    .line 587
    move-wide/from16 v13, v29

    .line 588
    .line 589
    move/from16 v30, v42

    .line 590
    .line 591
    move/from16 v29, v15

    .line 592
    .line 593
    goto :goto_7

    .line 594
    :cond_1b
    move/from16 v33, v13

    .line 595
    .line 596
    iget-object v13, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->scpmParameterSet:Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$ScpmParameterSet;

    .line 597
    .line 598
    iget v13, v13, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$ScpmParameterSet;->congestCoe_Tdt:F

    .line 599
    .line 600
    move/from16 v38, v13

    .line 601
    .line 602
    move/from16 v37, v14

    .line 603
    .line 604
    move-wide/from16 v13, v29

    .line 605
    .line 606
    move/from16 v29, v15

    .line 607
    .line 608
    long-to-float v15, v13

    .line 609
    div-float v15, v15, v40

    .line 610
    .line 611
    sub-float v15, p1, v15

    .line 612
    .line 613
    div-float v15, v38, v15

    .line 614
    .line 615
    sub-float v30, v38, p1

    .line 616
    .line 617
    sub-float v15, v15, v30

    .line 618
    .line 619
    move/from16 v30, v15

    .line 620
    .line 621
    :goto_7
    iget v15, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->TxGoodRate_Tdt:F

    .line 622
    .line 623
    const v38, 0x3f666666    # 0.9f

    .line 624
    .line 625
    .line 626
    cmpl-float v38, v15, v38

    .line 627
    .line 628
    if-lez v38, :cond_1d

    .line 629
    .line 630
    div-float v15, p1, v15

    .line 631
    .line 632
    iput v15, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->TxGoodRateAmp_Tdt:F

    .line 633
    .line 634
    :cond_1c
    :goto_8
    move-wide/from16 v34, v8

    .line 635
    .line 636
    goto :goto_9

    .line 637
    :cond_1d
    const v38, 0x3f19999a    # 0.6f

    .line 638
    .line 639
    .line 640
    cmpl-float v38, v15, v38

    .line 641
    .line 642
    if-ltz v38, :cond_1e

    .line 643
    .line 644
    const v25, 0x3f99999a    # 1.2f

    .line 645
    .line 646
    .line 647
    div-float v15, v25, v15

    .line 648
    .line 649
    iput v15, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->TxGoodRateAmp_Tdt:F

    .line 650
    .line 651
    goto :goto_8

    .line 652
    :cond_1e
    cmpl-float v38, v15, v39

    .line 653
    .line 654
    if-lez v38, :cond_1f

    .line 655
    .line 656
    const v25, 0x3fb33333    # 1.4f

    .line 657
    .line 658
    .line 659
    div-float v15, v25, v15

    .line 660
    .line 661
    iput v15, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->TxGoodRateAmp_Tdt:F

    .line 662
    .line 663
    goto :goto_8

    .line 664
    :cond_1f
    cmpl-float v15, v15, v39

    .line 665
    .line 666
    if-nez v15, :cond_1c

    .line 667
    .line 668
    add-long v25, v25, v27

    .line 669
    .line 670
    cmp-long v15, v25, v34

    .line 671
    .line 672
    if-lez v15, :cond_1c

    .line 673
    .line 674
    const-wide/16 v27, 0x1

    .line 675
    .line 676
    move-wide/from16 v34, v8

    .line 677
    .line 678
    add-long v8, v25, v27

    .line 679
    .line 680
    long-to-float v8, v8

    .line 681
    iput v8, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->TxGoodRateAmp_Tdt:F

    .line 682
    .line 683
    :goto_9
    mul-float v8, v33, v32

    .line 684
    .line 685
    mul-float v8, v8, v30

    .line 686
    .line 687
    iget v9, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->TxGoodRateAmp_Tdt:F

    .line 688
    .line 689
    mul-float v15, v8, v9

    .line 690
    .line 691
    move/from16 p1, v8

    .line 692
    .line 693
    iget-object v8, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->scpmParameterSet:Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$ScpmParameterSet;

    .line 694
    .line 695
    move/from16 v26, v9

    .line 696
    .line 697
    move/from16 v25, v10

    .line 698
    .line 699
    iget-wide v9, v8, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$ScpmParameterSet;->overHead_Tdt:J

    .line 700
    .line 701
    move/from16 v27, v15

    .line 702
    .line 703
    long-to-float v15, v9

    .line 704
    mul-float v15, v15, v30

    .line 705
    .line 706
    add-float v15, v15, v27

    .line 707
    .line 708
    move-wide/from16 v27, v11

    .line 709
    .line 710
    iget-wide v11, v8, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$ScpmParameterSet;->constOverHead_Tdt:J

    .line 711
    .line 712
    move/from16 v32, v15

    .line 713
    .line 714
    long-to-float v15, v11

    .line 715
    add-float v15, v32, v15

    .line 716
    .line 717
    move/from16 v32, v15

    .line 718
    .line 719
    aget v15, v23, v22

    .line 720
    .line 721
    move/from16 v33, v4

    .line 722
    .line 723
    move/from16 v4, v18

    .line 724
    .line 725
    if-ne v15, v4, :cond_20

    .line 726
    .line 727
    iget v8, v8, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$ScpmParameterSet;->mBoostFactor1_Tdt:F

    .line 728
    .line 729
    goto :goto_a

    .line 730
    :cond_20
    move/from16 v4, v20

    .line 731
    .line 732
    if-ne v15, v4, :cond_21

    .line 733
    .line 734
    iget v8, v8, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$ScpmParameterSet;->mBoostFactor2_Tdt:F

    .line 735
    .line 736
    goto :goto_a

    .line 737
    :cond_21
    iget v8, v8, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$ScpmParameterSet;->mBoostFactor3_Tdt:F

    .line 738
    .line 739
    :goto_a
    const/4 v4, 0x4

    .line 740
    aget v15, v21, v4

    .line 741
    .line 742
    move/from16 v38, v4

    .line 743
    .line 744
    const/4 v4, 0x1

    .line 745
    if-ne v15, v4, :cond_22

    .line 746
    .line 747
    aget v4, v21, v22

    .line 748
    .line 749
    if-nez v4, :cond_22

    .line 750
    .line 751
    const/high16 v4, 0x40000000    # 2.0f

    .line 752
    .line 753
    invoke-static {v8, v4}, Ljava/lang/Math;->min(FF)F

    .line 754
    .line 755
    .line 756
    move-result v4

    .line 757
    iget v8, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->TxGoodRateAmp_Tdt:F

    .line 758
    .line 759
    mul-float v8, v8, p1

    .line 760
    .line 761
    mul-float/2addr v8, v4

    .line 762
    iget-object v4, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->scpmParameterSet:Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$ScpmParameterSet;

    .line 763
    .line 764
    iget-wide v9, v4, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$ScpmParameterSet;->overHead_Tdt:J

    .line 765
    .line 766
    long-to-float v9, v9

    .line 767
    mul-float v9, v9, v30

    .line 768
    .line 769
    add-float/2addr v9, v8

    .line 770
    iget-wide v10, v4, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$ScpmParameterSet;->constOverHead_Tdt:J

    .line 771
    .line 772
    long-to-float v4, v10

    .line 773
    add-float/2addr v9, v4

    .line 774
    goto :goto_b

    .line 775
    :cond_22
    mul-float v4, p1, v26

    .line 776
    .line 777
    mul-float/2addr v4, v8

    .line 778
    long-to-float v8, v9

    .line 779
    mul-float v8, v8, v30

    .line 780
    .line 781
    add-float/2addr v8, v4

    .line 782
    long-to-float v4, v11

    .line 783
    add-float v9, v8, v4

    .line 784
    .line 785
    :goto_b
    aget v4, v21, v38

    .line 786
    .line 787
    const/4 v8, 0x1

    .line 788
    if-ne v4, v8, :cond_23

    .line 789
    .line 790
    aget v10, v21, v16

    .line 791
    .line 792
    if-nez v10, :cond_23

    .line 793
    .line 794
    iget v10, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->mobileGameCnt_Tdt:I

    .line 795
    .line 796
    move/from16 v11, v38

    .line 797
    .line 798
    if-ge v10, v11, :cond_24

    .line 799
    .line 800
    add-int/2addr v10, v8

    .line 801
    iput v10, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->mobileGameCnt_Tdt:I

    .line 802
    .line 803
    goto :goto_c

    .line 804
    :cond_23
    iget v10, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->mobileGameCnt_Tdt:I

    .line 805
    .line 806
    if-lez v10, :cond_24

    .line 807
    .line 808
    sub-int/2addr v10, v8

    .line 809
    iput v10, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->mobileGameCnt_Tdt:I

    .line 810
    .line 811
    :cond_24
    :goto_c
    iget v8, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->mobileGameCnt_Tdt:I

    .line 812
    .line 813
    iget-object v10, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->scpmParameterSet:Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$ScpmParameterSet;

    .line 814
    .line 815
    iget v11, v10, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$ScpmParameterSet;->mgCntThd_Tdt:I

    .line 816
    .line 817
    if-le v8, v11, :cond_2b

    .line 818
    .line 819
    iget v8, v10, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$ScpmParameterSet;->mgCcaThd1_Tdt:I

    .line 820
    .line 821
    move-wide/from16 v39, v13

    .line 822
    .line 823
    int-to-long v12, v8

    .line 824
    cmp-long v8, v39, v12

    .line 825
    .line 826
    if-gtz v8, :cond_25

    .line 827
    .line 828
    iget v8, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->TxGoodRate_Tdt:F

    .line 829
    .line 830
    iget v11, v10, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$ScpmParameterSet;->mgTxGoodThd1_Tdt:F

    .line 831
    .line 832
    cmpg-float v8, v8, v11

    .line 833
    .line 834
    if-gez v8, :cond_29

    .line 835
    .line 836
    :cond_25
    iget v8, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->mGTwtTearCnt_Tdt:I

    .line 837
    .line 838
    const/16 v11, 0xa

    .line 839
    .line 840
    if-nez v8, :cond_26

    .line 841
    .line 842
    iput v11, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->mGTwtTearCnt_Tdt:I

    .line 843
    .line 844
    goto :goto_d

    .line 845
    :cond_26
    iget v12, v10, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$ScpmParameterSet;->mgCcaThd2_Tdt:I

    .line 846
    .line 847
    int-to-long v12, v12

    .line 848
    cmp-long v12, v39, v12

    .line 849
    .line 850
    if-gtz v12, :cond_27

    .line 851
    .line 852
    iget v12, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->TxGoodRate_Tdt:F

    .line 853
    .line 854
    iget v13, v10, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$ScpmParameterSet;->mgTxGoodThd2_Tdt:F

    .line 855
    .line 856
    cmpg-float v12, v12, v13

    .line 857
    .line 858
    if-gez v12, :cond_28

    .line 859
    .line 860
    :cond_27
    const/4 v12, 0x1

    .line 861
    if-lt v8, v12, :cond_28

    .line 862
    .line 863
    const/16 v12, 0x9

    .line 864
    .line 865
    if-gt v8, v12, :cond_28

    .line 866
    .line 867
    const/16 v12, 0x12c

    .line 868
    .line 869
    iput v12, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->mGTwtTearCnt_Tdt:I

    .line 870
    .line 871
    goto :goto_d

    .line 872
    :cond_28
    if-ge v8, v11, :cond_29

    .line 873
    .line 874
    iput v11, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->mGTwtTearCnt_Tdt:I

    .line 875
    .line 876
    :cond_29
    :goto_d
    iget v8, v10, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$ScpmParameterSet;->mgCcaThd3_Tdt:I

    .line 877
    .line 878
    int-to-long v11, v8

    .line 879
    cmp-long v8, v39, v11

    .line 880
    .line 881
    if-gez v8, :cond_2a

    .line 882
    .line 883
    iget v8, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->TxGoodRate_Tdt:F

    .line 884
    .line 885
    iget v11, v10, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$ScpmParameterSet;->mgTxGoodThd3_Tdt:F

    .line 886
    .line 887
    cmpl-float v8, v8, v11

    .line 888
    .line 889
    if-lez v8, :cond_2a

    .line 890
    .line 891
    iget v8, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->mGTwtTearCnt_Tdt:I

    .line 892
    .line 893
    if-lez v8, :cond_2a

    .line 894
    .line 895
    const/4 v12, 0x1

    .line 896
    sub-int/2addr v8, v12

    .line 897
    iput v8, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->mGTwtTearCnt_Tdt:I

    .line 898
    .line 899
    :goto_e
    move/from16 v8, v22

    .line 900
    .line 901
    goto :goto_f

    .line 902
    :cond_2a
    const/4 v12, 0x1

    .line 903
    goto :goto_e

    .line 904
    :cond_2b
    move-wide/from16 v39, v13

    .line 905
    .line 906
    move/from16 v8, v22

    .line 907
    .line 908
    const/4 v12, 0x1

    .line 909
    iput v8, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->mGTwtTearCnt_Tdt:I

    .line 910
    .line 911
    :goto_f
    if-ne v4, v12, :cond_2f

    .line 912
    .line 913
    aget v4, v21, v8

    .line 914
    .line 915
    if-nez v4, :cond_2e

    .line 916
    .line 917
    aget v4, v21, v16

    .line 918
    .line 919
    if-nez v4, :cond_2c

    .line 920
    .line 921
    iget-wide v11, v10, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$ScpmParameterSet;->mgInterT1_Tdt:J

    .line 922
    .line 923
    iget-wide v13, v10, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$ScpmParameterSet;->mgInterT2_Tdt:J

    .line 924
    .line 925
    iget v4, v10, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$ScpmParameterSet;->mgCca1_Tdt:I

    .line 926
    .line 927
    goto :goto_10

    .line 928
    :cond_2c
    const/4 v8, 0x2

    .line 929
    if-ne v4, v8, :cond_2d

    .line 930
    .line 931
    iget-wide v11, v10, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$ScpmParameterSet;->acInterT1_Tdt:J

    .line 932
    .line 933
    iget-wide v13, v10, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$ScpmParameterSet;->acInterT2_Tdt:J

    .line 934
    .line 935
    iget v4, v10, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$ScpmParameterSet;->acCca1_Tdt:I

    .line 936
    .line 937
    goto :goto_10

    .line 938
    :cond_2d
    iget-wide v11, v10, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$ScpmParameterSet;->vcInterT1_Tdt:J

    .line 939
    .line 940
    iget-wide v13, v10, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$ScpmParameterSet;->vcInterT2_Tdt:J

    .line 941
    .line 942
    iget v4, v10, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$ScpmParameterSet;->vcCca1_Tdt:I

    .line 943
    .line 944
    goto :goto_10

    .line 945
    :cond_2e
    iget-wide v11, v10, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$ScpmParameterSet;->mgInterT1_Tdt:J

    .line 946
    .line 947
    iget-wide v13, v10, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$ScpmParameterSet;->mgInterT2_Tdt:J

    .line 948
    .line 949
    iget v4, v10, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$ScpmParameterSet;->mgCca1_Tdt:I

    .line 950
    .line 951
    goto :goto_10

    .line 952
    :cond_2f
    const-wide/32 v11, 0x1dcd6500

    .line 953
    .line 954
    .line 955
    const-wide/32 v13, 0x1dcd6500

    .line 956
    .line 957
    .line 958
    const/16 v4, 0x64

    .line 959
    .line 960
    :goto_10
    iget v8, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->mInterTAnomDetCnt:I

    .line 961
    .line 962
    if-lez v8, :cond_31

    .line 963
    .line 964
    const/4 v8, 0x0

    .line 965
    :goto_11
    iget v10, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->mInterTAnomDetCnt:I

    .line 966
    .line 967
    if-ge v8, v10, :cond_30

    .line 968
    .line 969
    iget-object v10, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->mInterTAnomLife:[I

    .line 970
    .line 971
    aget v15, v10, v8

    .line 972
    .line 973
    const/16 v18, 0x1

    .line 974
    .line 975
    add-int/lit8 v15, v15, -0x1

    .line 976
    .line 977
    aput v15, v10, v8

    .line 978
    .line 979
    add-int/lit8 v8, v8, 0x1

    .line 980
    .line 981
    goto :goto_11

    .line 982
    :cond_30
    const/16 v18, 0x1

    .line 983
    .line 984
    iget-object v8, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->mInterTAnomLife:[I

    .line 985
    .line 986
    const/16 v22, 0x0

    .line 987
    .line 988
    aget v8, v8, v22

    .line 989
    .line 990
    if-nez v8, :cond_31

    .line 991
    .line 992
    add-int/lit8 v10, v10, -0x1

    .line 993
    .line 994
    iput v10, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->mInterTAnomDetCnt:I

    .line 995
    .line 996
    const/4 v8, 0x0

    .line 997
    :goto_12
    iget v10, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->mInterTAnomDetCnt:I

    .line 998
    .line 999
    if-ge v8, v10, :cond_31

    .line 1000
    .line 1001
    iget-object v10, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->mInterTAnomLife:[I

    .line 1002
    .line 1003
    add-int/lit8 v15, v8, 0x1

    .line 1004
    .line 1005
    aget v20, v10, v15

    .line 1006
    .line 1007
    aput v20, v10, v8

    .line 1008
    .line 1009
    move v8, v15

    .line 1010
    goto :goto_12

    .line 1011
    :cond_31
    iget-boolean v8, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->mTwtNegotiated:Z

    .line 1012
    .line 1013
    const/4 v10, 0x1

    .line 1014
    if-ne v8, v10, :cond_34

    .line 1015
    .line 1016
    iget-object v8, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->mSemServiceInfo:Lcom/samsung/android/server/wifi/servicedetection/SemServiceInfo;

    .line 1017
    .line 1018
    invoke-virtual {v8}, Lcom/samsung/android/server/wifi/servicedetection/SemServiceInfo;->getTrackerStatus()Z

    .line 1019
    .line 1020
    .line 1021
    move-result v8

    .line 1022
    if-ne v8, v10, :cond_33

    .line 1023
    .line 1024
    if-eqz v1, :cond_33

    .line 1025
    .line 1026
    iget v8, v1, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficData;->interTimeDLMax1:F

    .line 1027
    .line 1028
    iget-object v10, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->scpmParameterSet:Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$ScpmParameterSet;

    .line 1029
    .line 1030
    move/from16 v20, v8

    .line 1031
    .line 1032
    move v15, v9

    .line 1033
    iget-wide v8, v10, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$ScpmParameterSet;->qoSInterTimeMaxTh1_Tdt:J

    .line 1034
    .line 1035
    long-to-float v8, v8

    .line 1036
    cmpl-float v8, v20, v8

    .line 1037
    .line 1038
    if-ltz v8, :cond_35

    .line 1039
    .line 1040
    iget-wide v8, v10, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$ScpmParameterSet;->qoSInterTimeMaxTh2_Tdt:J

    .line 1041
    .line 1042
    long-to-float v8, v8

    .line 1043
    cmpg-float v8, v20, v8

    .line 1044
    .line 1045
    if-gtz v8, :cond_35

    .line 1046
    .line 1047
    iget v8, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->mobileGameCnt_Tdt:I

    .line 1048
    .line 1049
    if-lez v8, :cond_35

    .line 1050
    .line 1051
    iget v8, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->mInterTAnomDetCnt:I

    .line 1052
    .line 1053
    iget v9, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->mMaxInterTAnomNum:I

    .line 1054
    .line 1055
    if-ge v8, v9, :cond_35

    .line 1056
    .line 1057
    iget-object v9, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->mInterTAnomLife:[I

    .line 1058
    .line 1059
    iget v10, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->mInterTWinSize:I

    .line 1060
    .line 1061
    aput v10, v9, v8

    .line 1062
    .line 1063
    move/from16 v20, v8

    .line 1064
    .line 1065
    add-int/lit8 v8, v20, 0x1

    .line 1066
    .line 1067
    iput v8, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->mInterTAnomDetCnt:I

    .line 1068
    .line 1069
    move-object/from16 v26, v9

    .line 1070
    .line 1071
    const/4 v9, 0x1

    .line 1072
    if-le v8, v9, :cond_35

    .line 1073
    .line 1074
    add-int/lit8 v8, v20, -0x1

    .line 1075
    .line 1076
    aget v8, v26, v8

    .line 1077
    .line 1078
    sub-int/2addr v10, v9

    .line 1079
    if-ne v8, v10, :cond_32

    .line 1080
    .line 1081
    iget v8, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->mInterTContinueAnom:I

    .line 1082
    .line 1083
    add-int/2addr v8, v9

    .line 1084
    iput v8, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->mInterTContinueAnom:I

    .line 1085
    .line 1086
    goto :goto_13

    .line 1087
    :cond_32
    const/4 v8, 0x0

    .line 1088
    iput v8, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->mInterTContinueAnom:I

    .line 1089
    .line 1090
    goto :goto_13

    .line 1091
    :cond_33
    move v15, v9

    .line 1092
    goto :goto_13

    .line 1093
    :cond_34
    move v15, v9

    .line 1094
    const/4 v8, 0x0

    .line 1095
    iput v8, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->mInterTContinueAnom:I

    .line 1096
    .line 1097
    :cond_35
    :goto_13
    iget v8, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->mInterTAnomDetCnt:I

    .line 1098
    .line 1099
    iget-object v9, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->scpmParameterSet:Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$ScpmParameterSet;

    .line 1100
    .line 1101
    iget v9, v9, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$ScpmParameterSet;->qoSAnomalyCntThd_Tdt:I

    .line 1102
    .line 1103
    if-lt v8, v9, :cond_37

    .line 1104
    .line 1105
    iget v8, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->mBadInterT:I

    .line 1106
    .line 1107
    if-nez v8, :cond_36

    .line 1108
    .line 1109
    const/4 v9, 0x1

    .line 1110
    iput v9, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->mBadInterT:I

    .line 1111
    .line 1112
    iget v8, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->mInterTWinSize:I

    .line 1113
    .line 1114
    add-int/2addr v8, v9

    .line 1115
    iput v8, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->mBadInterTTDCnt:I

    .line 1116
    .line 1117
    goto :goto_14

    .line 1118
    :cond_36
    const/4 v9, 0x1

    .line 1119
    if-le v8, v9, :cond_38

    .line 1120
    .line 1121
    const/16 v8, 0x12c

    .line 1122
    .line 1123
    iput v8, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->mBadInterTTDCnt:I

    .line 1124
    .line 1125
    goto :goto_14

    .line 1126
    :cond_37
    const/4 v9, 0x1

    .line 1127
    :cond_38
    :goto_14
    iget v8, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->mBadInterT:I

    .line 1128
    .line 1129
    if-ne v8, v9, :cond_3a

    .line 1130
    .line 1131
    iget-boolean v8, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->mTwtNegotiated:Z

    .line 1132
    .line 1133
    if-nez v8, :cond_3a

    .line 1134
    .line 1135
    iget-object v8, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->mSemServiceInfo:Lcom/samsung/android/server/wifi/servicedetection/SemServiceInfo;

    .line 1136
    .line 1137
    invoke-virtual {v8}, Lcom/samsung/android/server/wifi/servicedetection/SemServiceInfo;->getTrackerStatus()Z

    .line 1138
    .line 1139
    .line 1140
    move-result v8

    .line 1141
    if-ne v8, v9, :cond_3a

    .line 1142
    .line 1143
    if-eqz v1, :cond_3a

    .line 1144
    .line 1145
    iget v8, v1, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficData;->interTimeDLMax1:F

    .line 1146
    .line 1147
    iget-object v10, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->scpmParameterSet:Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$ScpmParameterSet;

    .line 1148
    .line 1149
    move/from16 v18, v9

    .line 1150
    .line 1151
    iget-wide v9, v10, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$ScpmParameterSet;->qoSGoodInterTime_Tdt:J

    .line 1152
    .line 1153
    long-to-float v9, v9

    .line 1154
    cmpg-float v8, v8, v9

    .line 1155
    .line 1156
    if-gtz v8, :cond_39

    .line 1157
    .line 1158
    iget v8, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->mBadInterTTDCnt:I

    .line 1159
    .line 1160
    if-lez v8, :cond_39

    .line 1161
    .line 1162
    add-int/lit8 v8, v8, -0x1

    .line 1163
    .line 1164
    iput v8, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->mBadInterTTDCnt:I

    .line 1165
    .line 1166
    if-nez v8, :cond_3a

    .line 1167
    .line 1168
    iget v8, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->mBadInterT:I

    .line 1169
    .line 1170
    add-int/lit8 v8, v8, 0x1

    .line 1171
    .line 1172
    iput v8, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->mBadInterT:I

    .line 1173
    .line 1174
    goto :goto_15

    .line 1175
    :cond_39
    iget v8, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->mBadInterTTDCnt:I

    .line 1176
    .line 1177
    if-lez v8, :cond_3a

    .line 1178
    .line 1179
    const/16 v8, 0x12c

    .line 1180
    .line 1181
    iput v8, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->mBadInterTTDCnt:I

    .line 1182
    .line 1183
    :cond_3a
    :goto_15
    iget v8, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->mobileGameCnt_Tdt:I

    .line 1184
    .line 1185
    if-nez v8, :cond_3b

    .line 1186
    .line 1187
    const/4 v8, 0x0

    .line 1188
    iput v8, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->mBadInterTTDCnt:I

    .line 1189
    .line 1190
    iput v8, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->mInterTAnomDetCnt:I

    .line 1191
    .line 1192
    iput v8, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->mInterTContinueAnom:I

    .line 1193
    .line 1194
    iput v8, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->mBadInterT:I

    .line 1195
    .line 1196
    :cond_3b
    iget v8, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->mRTAnomalyDetCnt:I

    .line 1197
    .line 1198
    if-lez v8, :cond_3d

    .line 1199
    .line 1200
    const/4 v8, 0x0

    .line 1201
    :goto_16
    iget v9, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->mRTAnomalyDetCnt:I

    .line 1202
    .line 1203
    if-ge v8, v9, :cond_3c

    .line 1204
    .line 1205
    iget-object v9, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->mAnomalyLife:[I

    .line 1206
    .line 1207
    aget v10, v9, v8

    .line 1208
    .line 1209
    const/16 v18, 0x1

    .line 1210
    .line 1211
    add-int/lit8 v10, v10, -0x1

    .line 1212
    .line 1213
    aput v10, v9, v8

    .line 1214
    .line 1215
    add-int/lit8 v8, v8, 0x1

    .line 1216
    .line 1217
    goto :goto_16

    .line 1218
    :cond_3c
    const/16 v18, 0x1

    .line 1219
    .line 1220
    iget-object v8, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->mAnomalyLife:[I

    .line 1221
    .line 1222
    const/16 v22, 0x0

    .line 1223
    .line 1224
    aget v8, v8, v22

    .line 1225
    .line 1226
    if-nez v8, :cond_3d

    .line 1227
    .line 1228
    add-int/lit8 v9, v9, -0x1

    .line 1229
    .line 1230
    iput v9, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->mRTAnomalyDetCnt:I

    .line 1231
    .line 1232
    const/4 v8, 0x0

    .line 1233
    :goto_17
    iget v9, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->mRTAnomalyDetCnt:I

    .line 1234
    .line 1235
    if-ge v8, v9, :cond_3d

    .line 1236
    .line 1237
    iget-object v9, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->mAnomalyLife:[I

    .line 1238
    .line 1239
    add-int/lit8 v10, v8, 0x1

    .line 1240
    .line 1241
    aget v20, v9, v10

    .line 1242
    .line 1243
    aput v20, v9, v8

    .line 1244
    .line 1245
    move v8, v10

    .line 1246
    goto :goto_17

    .line 1247
    :cond_3d
    iget-boolean v8, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->mTwtNegotiated:Z

    .line 1248
    .line 1249
    if-eqz v8, :cond_41

    .line 1250
    .line 1251
    iget-object v8, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->mSemServiceInfo:Lcom/samsung/android/server/wifi/servicedetection/SemServiceInfo;

    .line 1252
    .line 1253
    invoke-virtual {v8}, Lcom/samsung/android/server/wifi/servicedetection/SemServiceInfo;->getTrackerStatus()Z

    .line 1254
    .line 1255
    .line 1256
    move-result v8

    .line 1257
    if-eqz v8, :cond_42

    .line 1258
    .line 1259
    if-eqz v1, :cond_42

    .line 1260
    .line 1261
    iget v8, v1, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficData;->interTimeDLMax1:F

    .line 1262
    .line 1263
    long-to-float v9, v11

    .line 1264
    cmpl-float v9, v8, v9

    .line 1265
    .line 1266
    if-ltz v9, :cond_3e

    .line 1267
    .line 1268
    int-to-long v9, v4

    .line 1269
    cmp-long v9, v39, v9

    .line 1270
    .line 1271
    if-lez v9, :cond_3f

    .line 1272
    .line 1273
    :cond_3e
    long-to-float v9, v13

    .line 1274
    cmpl-float v8, v8, v9

    .line 1275
    .line 1276
    if-ltz v8, :cond_42

    .line 1277
    .line 1278
    int-to-long v8, v4

    .line 1279
    cmp-long v4, v39, v8

    .line 1280
    .line 1281
    if-lez v4, :cond_42

    .line 1282
    .line 1283
    :cond_3f
    iget v4, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->mRTAnomalyDetCnt:I

    .line 1284
    .line 1285
    iget v8, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->mMaxAnomalyNum:I

    .line 1286
    .line 1287
    if-ge v4, v8, :cond_42

    .line 1288
    .line 1289
    iget-object v8, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->mAnomalyLife:[I

    .line 1290
    .line 1291
    iget v9, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->mAnomalyWinSize:I

    .line 1292
    .line 1293
    aput v9, v8, v4

    .line 1294
    .line 1295
    add-int/lit8 v10, v4, 0x1

    .line 1296
    .line 1297
    iput v10, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->mRTAnomalyDetCnt:I

    .line 1298
    .line 1299
    const/4 v12, 0x1

    .line 1300
    if-le v10, v12, :cond_42

    .line 1301
    .line 1302
    add-int/lit8 v4, v4, -0x1

    .line 1303
    .line 1304
    aget v4, v8, v4

    .line 1305
    .line 1306
    sub-int/2addr v9, v12

    .line 1307
    if-ne v4, v9, :cond_40

    .line 1308
    .line 1309
    iget v4, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->mNumContinueAnomaly:I

    .line 1310
    .line 1311
    add-int/2addr v4, v12

    .line 1312
    iput v4, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->mNumContinueAnomaly:I

    .line 1313
    .line 1314
    goto :goto_18

    .line 1315
    :cond_40
    const/4 v8, 0x0

    .line 1316
    iput v8, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->mNumContinueAnomaly:I

    .line 1317
    .line 1318
    goto :goto_18

    .line 1319
    :cond_41
    const/4 v8, 0x0

    .line 1320
    iput v8, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->mNumContinueAnomaly:I

    .line 1321
    .line 1322
    :cond_42
    :goto_18
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 1323
    .line 1324
    .line 1325
    move-result-wide v8

    .line 1326
    iput-wide v8, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->currentTimeMilliSec:J

    .line 1327
    .line 1328
    iget-wide v10, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->prevTimeMilliSec:J

    .line 1329
    .line 1330
    sub-long/2addr v8, v10

    .line 1331
    iget-object v4, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->scpmParameterSet:Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$ScpmParameterSet;

    .line 1332
    .line 1333
    iget-wide v10, v4, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$ScpmParameterSet;->resetQosPatchTimeThd_Tdt:J

    .line 1334
    .line 1335
    cmp-long v4, v8, v10

    .line 1336
    .line 1337
    if-lez v4, :cond_43

    .line 1338
    .line 1339
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->resetQosTxgoodPatchStat()V

    .line 1340
    .line 1341
    .line 1342
    :cond_43
    iget-wide v8, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->currentTimeMilliSec:J

    .line 1343
    .line 1344
    iget-wide v10, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->prevTimeMilliSec:J

    .line 1345
    .line 1346
    sub-long/2addr v8, v10

    .line 1347
    iget-object v4, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->scpmParameterSet:Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$ScpmParameterSet;

    .line 1348
    .line 1349
    iget-wide v10, v4, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$ScpmParameterSet;->resetAbnormalAPTimeThd_Tdt:J

    .line 1350
    .line 1351
    cmp-long v4, v8, v10

    .line 1352
    .line 1353
    if-lez v4, :cond_44

    .line 1354
    .line 1355
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->resetAbnormalApPatchStat()V

    .line 1356
    .line 1357
    .line 1358
    :cond_44
    iget-wide v8, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->currentTimeMilliSec:J

    .line 1359
    .line 1360
    iput-wide v8, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->prevTimeMilliSec:J

    .line 1361
    .line 1362
    iget-boolean v4, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->mTwtNegotiated:Z

    .line 1363
    .line 1364
    if-eqz v4, :cond_46

    .line 1365
    .line 1366
    iget-boolean v4, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->mIsAbnormalAP:Z

    .line 1367
    .line 1368
    if-nez v4, :cond_46

    .line 1369
    .line 1370
    iget v4, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->mRTAnomalyDetCnt:I

    .line 1371
    .line 1372
    iget-object v10, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->scpmParameterSet:Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$ScpmParameterSet;

    .line 1373
    .line 1374
    iget v11, v10, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$ScpmParameterSet;->abAPCntThd_Tdt:I

    .line 1375
    .line 1376
    if-ge v4, v11, :cond_45

    .line 1377
    .line 1378
    iget v4, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->mNumContinueAnomaly:I

    .line 1379
    .line 1380
    iget v10, v10, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$ScpmParameterSet;->abAPContCntThd_Tdt:I

    .line 1381
    .line 1382
    if-lt v4, v10, :cond_46

    .line 1383
    .line 1384
    :cond_45
    const/4 v12, 0x1

    .line 1385
    iput-boolean v12, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->mIsAbnormalAP:Z

    .line 1386
    .line 1387
    iput-wide v8, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->abnormalApDetMilliSec:J

    .line 1388
    .line 1389
    :cond_46
    iget v4, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->mGTwtTearCnt_Tdt:I

    .line 1390
    .line 1391
    if-gtz v4, :cond_48

    .line 1392
    .line 1393
    iget-boolean v4, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->mIsAbnormalAP:Z

    .line 1394
    .line 1395
    if-nez v4, :cond_48

    .line 1396
    .line 1397
    iget v4, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->mBadInterTTDCnt:I

    .line 1398
    .line 1399
    if-lez v4, :cond_47

    .line 1400
    .line 1401
    goto :goto_1a

    .line 1402
    :cond_47
    move v9, v15

    .line 1403
    move/from16 v15, v32

    .line 1404
    .line 1405
    :goto_19
    move/from16 v4, p2

    .line 1406
    .line 1407
    const/4 v12, 0x1

    .line 1408
    goto :goto_1b

    .line 1409
    :cond_48
    :goto_1a
    const v15, 0x47afc800    # 90000.0f

    .line 1410
    .line 1411
    .line 1412
    const v9, 0x47afc800    # 90000.0f

    .line 1413
    .line 1414
    .line 1415
    goto :goto_19

    .line 1416
    :goto_1b
    if-ne v4, v12, :cond_49

    .line 1417
    .line 1418
    iget v4, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->overflowThreshold:I

    .line 1419
    .line 1420
    sub-int v4, v5, v4

    .line 1421
    .line 1422
    int-to-float v4, v4

    .line 1423
    cmpg-float v4, v4, v9

    .line 1424
    .line 1425
    if-gez v4, :cond_49

    .line 1426
    .line 1427
    iget-object v4, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->mTwtInfo:Lcom/samsung/android/server/wifi/twt/SemTwtInfo;

    .line 1428
    .line 1429
    invoke-virtual {v4}, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->setOverflow()V

    .line 1430
    .line 1431
    .line 1432
    move v4, v12

    .line 1433
    goto :goto_1c

    .line 1434
    :cond_49
    const/4 v4, 0x0

    .line 1435
    :goto_1c
    iget-object v8, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->mTwtInfo:Lcom/samsung/android/server/wifi/twt/SemTwtInfo;

    .line 1436
    .line 1437
    const-string v10, "OW "

    .line 1438
    .line 1439
    const-string v11, " "

    .line 1440
    .line 1441
    move/from16 v12, v24

    .line 1442
    .line 1443
    invoke-static {v10, v11, v4, v12, v11}, Lcom/google/gson/stream/JsonReader$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 1444
    .line 1445
    .line 1446
    move-result-object v4

    .line 1447
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1448
    .line 1449
    .line 1450
    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1451
    .line 1452
    .line 1453
    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 1454
    .line 1455
    .line 1456
    move-result-object v5

    .line 1457
    filled-new-array {v5}, [Ljava/lang/Object;

    .line 1458
    .line 1459
    .line 1460
    move-result-object v5

    .line 1461
    const-string v10, "%.0f"

    .line 1462
    .line 1463
    invoke-static {v10, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 1464
    .line 1465
    .line 1466
    move-result-object v5

    .line 1467
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1468
    .line 1469
    .line 1470
    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1471
    .line 1472
    .line 1473
    invoke-static {v15}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 1474
    .line 1475
    .line 1476
    move-result-object v5

    .line 1477
    filled-new-array {v5}, [Ljava/lang/Object;

    .line 1478
    .line 1479
    .line 1480
    move-result-object v5

    .line 1481
    invoke-static {v10, v5, v4, v11}, Lcom/samsung/android/server/wifi/SemSupportedFeatureLogger$$ExternalSyntheticOutline0;->m(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 1482
    .line 1483
    .line 1484
    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1485
    .line 1486
    .line 1487
    invoke-static {v4, v11, v6, v7, v11}, Lcom/samsung/android/server/wifi/SemApeService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;JLjava/lang/String;)V

    .line 1488
    .line 1489
    .line 1490
    invoke-static/range {v37 .. v37}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 1491
    .line 1492
    .line 1493
    move-result-object v2

    .line 1494
    filled-new-array {v2}, [Ljava/lang/Object;

    .line 1495
    .line 1496
    .line 1497
    move-result-object v2

    .line 1498
    const-string v3, "%.2f"

    .line 1499
    .line 1500
    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 1501
    .line 1502
    .line 1503
    move-result-object v2

    .line 1504
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1505
    .line 1506
    .line 1507
    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1508
    .line 1509
    .line 1510
    invoke-static/range {v29 .. v29}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 1511
    .line 1512
    .line 1513
    move-result-object v2

    .line 1514
    filled-new-array {v2}, [Ljava/lang/Object;

    .line 1515
    .line 1516
    .line 1517
    move-result-object v2

    .line 1518
    invoke-static {v3, v2, v4, v11}, Lcom/samsung/android/server/wifi/SemSupportedFeatureLogger$$ExternalSyntheticOutline0;->m(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 1519
    .line 1520
    .line 1521
    move-wide/from16 v13, v39

    .line 1522
    .line 1523
    invoke-virtual {v4, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1524
    .line 1525
    .line 1526
    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1527
    .line 1528
    .line 1529
    iget v2, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->TxGoodRate_Tdt:F

    .line 1530
    .line 1531
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 1532
    .line 1533
    .line 1534
    move-result-object v2

    .line 1535
    filled-new-array {v2}, [Ljava/lang/Object;

    .line 1536
    .line 1537
    .line 1538
    move-result-object v2

    .line 1539
    invoke-static {v3, v2, v4, v11}, Lcom/samsung/android/server/wifi/SemSupportedFeatureLogger$$ExternalSyntheticOutline0;->m(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 1540
    .line 1541
    .line 1542
    move-wide/from16 v2, v27

    .line 1543
    .line 1544
    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1545
    .line 1546
    .line 1547
    move-wide/from16 v2, v34

    .line 1548
    .line 1549
    invoke-static {v4, v11, v2, v3, v11}, Lcom/samsung/android/server/wifi/SemApeService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;JLjava/lang/String;)V

    .line 1550
    .line 1551
    .line 1552
    move/from16 v3, v25

    .line 1553
    .line 1554
    move/from16 v2, v33

    .line 1555
    .line 1556
    invoke-static {v4, v2, v11, v3, v11}, Lcom/samsung/android/server/wifi/SemApeController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    .line 1557
    .line 1558
    .line 1559
    iget v2, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->mGTwtTearCnt_Tdt:I

    .line 1560
    .line 1561
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1562
    .line 1563
    .line 1564
    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1565
    .line 1566
    .line 1567
    iget-boolean v2, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->mIsAbnormalAP:Z

    .line 1568
    .line 1569
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1570
    .line 1571
    .line 1572
    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1573
    .line 1574
    .line 1575
    if-nez v1, :cond_4a

    .line 1576
    .line 1577
    const-wide/16 v2, 0x0

    .line 1578
    .line 1579
    goto :goto_1d

    .line 1580
    :cond_4a
    iget v2, v1, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficData;->interTimeDLMax1:F

    .line 1581
    .line 1582
    float-to-double v2, v2

    .line 1583
    const-wide v5, 0x412e848000000000L    # 1000000.0

    .line 1584
    .line 1585
    .line 1586
    .line 1587
    .line 1588
    div-double/2addr v2, v5

    .line 1589
    :goto_1d
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 1590
    .line 1591
    .line 1592
    move-result-object v2

    .line 1593
    filled-new-array {v2}, [Ljava/lang/Object;

    .line 1594
    .line 1595
    .line 1596
    move-result-object v2

    .line 1597
    invoke-static {v10, v2, v4, v11}, Lcom/samsung/android/server/wifi/SemSupportedFeatureLogger$$ExternalSyntheticOutline0;->m(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 1598
    .line 1599
    .line 1600
    if-nez v1, :cond_4b

    .line 1601
    .line 1602
    const-wide/16 v1, 0x0

    .line 1603
    .line 1604
    goto :goto_1e

    .line 1605
    :cond_4b
    iget v1, v1, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficData;->interTimeDLMax2:F

    .line 1606
    .line 1607
    float-to-double v1, v1

    .line 1608
    const-wide v5, 0x412e848000000000L    # 1000000.0

    .line 1609
    .line 1610
    .line 1611
    .line 1612
    .line 1613
    div-double/2addr v1, v5

    .line 1614
    :goto_1e
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 1615
    .line 1616
    .line 1617
    move-result-object v1

    .line 1618
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 1619
    .line 1620
    .line 1621
    move-result-object v1

    .line 1622
    invoke-static {v10, v1, v4, v11}, Lcom/samsung/android/server/wifi/SemSupportedFeatureLogger$$ExternalSyntheticOutline0;->m(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 1623
    .line 1624
    .line 1625
    const/16 v22, 0x0

    .line 1626
    .line 1627
    aget v1, v23, v22

    .line 1628
    .line 1629
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1630
    .line 1631
    .line 1632
    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1633
    .line 1634
    .line 1635
    aget v1, v21, v17

    .line 1636
    .line 1637
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1638
    .line 1639
    .line 1640
    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1641
    .line 1642
    .line 1643
    const/16 v38, 0x4

    .line 1644
    .line 1645
    aget v1, v21, v38

    .line 1646
    .line 1647
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1648
    .line 1649
    .line 1650
    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1651
    .line 1652
    .line 1653
    aget v1, v21, v31

    .line 1654
    .line 1655
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1656
    .line 1657
    .line 1658
    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1659
    .line 1660
    .line 1661
    aget v1, v21, v16

    .line 1662
    .line 1663
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1664
    .line 1665
    .line 1666
    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1667
    .line 1668
    .line 1669
    aget v1, v21, v19

    .line 1670
    .line 1671
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1672
    .line 1673
    .line 1674
    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1675
    .line 1676
    .line 1677
    iget-boolean v1, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->mTwtNegotiated:Z

    .line 1678
    .line 1679
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1680
    .line 1681
    .line 1682
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1683
    .line 1684
    .line 1685
    move-result-object v1

    .line 1686
    const/4 v2, 0x0

    .line 1687
    invoke-virtual {v8, v1, v2}, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->addEvent(Ljava/lang/String;I)V

    .line 1688
    .line 1689
    .line 1690
    iget-object v1, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->mTwtInfo:Lcom/samsung/android/server/wifi/twt/SemTwtInfo;

    .line 1691
    .line 1692
    new-instance v2, Ljava/lang/StringBuilder;

    .line 1693
    .line 1694
    const-string v3, "DLinterT "

    .line 1695
    .line 1696
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1697
    .line 1698
    .line 1699
    iget v3, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->mBadInterTTDCnt:I

    .line 1700
    .line 1701
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1702
    .line 1703
    .line 1704
    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1705
    .line 1706
    .line 1707
    iget v3, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->mInterTAnomDetCnt:I

    .line 1708
    .line 1709
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1710
    .line 1711
    .line 1712
    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1713
    .line 1714
    .line 1715
    iget v3, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->mInterTContinueAnom:I

    .line 1716
    .line 1717
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1718
    .line 1719
    .line 1720
    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1721
    .line 1722
    .line 1723
    iget v0, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->mBadInterT:I

    .line 1724
    .line 1725
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1726
    .line 1727
    .line 1728
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1729
    .line 1730
    .line 1731
    move-result-object v0

    .line 1732
    const/4 v8, 0x0

    .line 1733
    invoke-virtual {v1, v0, v8}, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->addEvent(Ljava/lang/String;I)V

    .line 1734
    .line 1735
    .line 1736
    return v9
.end method

.method public twtQuantization(I)I
    .locals 0

    .line 1
    div-int/lit16 p0, p1, 0x800

    .line 2
    .line 3
    rem-int/lit16 p1, p1, 0x800

    .line 4
    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 p1, 0x1

    .line 10
    :goto_0
    add-int/2addr p0, p1

    .line 11
    mul-int/lit16 p0, p0, 0x800

    .line 12
    .line 13
    return p0
.end method

.method public updateDataArray(F)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->mTwtInfo:Lcom/samsung/android/server/wifi/twt/SemTwtInfo;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->getDiffStats()[J

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->pktCntDLPerSP:[J

    .line 8
    .line 9
    iget v2, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->intvIndex:I

    .line 10
    .line 11
    const/4 v3, 0x1

    .line 12
    aget-wide v4, v0, v3

    .line 13
    .line 14
    aput-wide v4, v1, v2

    .line 15
    .line 16
    iget-object v1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->pktCntULPerSP:[J

    .line 17
    .line 18
    const/4 v4, 0x0

    .line 19
    aget-wide v4, v0, v4

    .line 20
    .line 21
    aput-wide v4, v1, v2

    .line 22
    .line 23
    iget-object v1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->pktUlSize:[J

    .line 24
    .line 25
    const/4 v4, 0x2

    .line 26
    aget-wide v4, v0, v4

    .line 27
    .line 28
    aput-wide v4, v1, v2

    .line 29
    .line 30
    iget-object v1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->pktDlSize:[J

    .line 31
    .line 32
    const/4 v4, 0x3

    .line 33
    aget-wide v4, v0, v4

    .line 34
    .line 35
    aput-wide v4, v1, v2

    .line 36
    .line 37
    iget-object v1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->TdtCca:[J

    .line 38
    .line 39
    float-to-long v4, p1

    .line 40
    aput-wide v4, v1, v2

    .line 41
    .line 42
    iget-object p1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->TCca10002TRadio:[J

    .line 43
    .line 44
    const/4 v1, 0x6

    .line 45
    aget-wide v0, v0, v1

    .line 46
    .line 47
    aput-wide v0, p1, v2

    .line 48
    .line 49
    add-int/2addr v2, v3

    .line 50
    and-int/lit16 p1, v2, 0xff

    .line 51
    .line 52
    iput p1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->intvIndex:I

    .line 53
    .line 54
    iget p1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->intvCount:I

    .line 55
    .line 56
    add-int/2addr p1, v3

    .line 57
    iput p1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->intvCount:I

    .line 58
    .line 59
    return-void
.end method

.method public updateStats()V
    .locals 23

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const/16 v1, 0x9

    .line 4
    .line 5
    new-array v1, v1, [J

    .line 6
    .line 7
    const/16 v2, 0x8

    .line 8
    .line 9
    const-wide/16 v3, 0x0

    .line 10
    .line 11
    aput-wide v3, v1, v2

    .line 12
    .line 13
    const/4 v5, 0x7

    .line 14
    aput-wide v3, v1, v5

    .line 15
    .line 16
    const/4 v6, 0x6

    .line 17
    aput-wide v3, v1, v6

    .line 18
    .line 19
    const/4 v7, 0x5

    .line 20
    aput-wide v3, v1, v7

    .line 21
    .line 22
    const/4 v8, 0x4

    .line 23
    aput-wide v3, v1, v8

    .line 24
    .line 25
    const/4 v9, 0x3

    .line 26
    aput-wide v3, v1, v9

    .line 27
    .line 28
    const/4 v10, 0x2

    .line 29
    aput-wide v3, v1, v10

    .line 30
    .line 31
    const/4 v11, 0x1

    .line 32
    aput-wide v3, v1, v11

    .line 33
    .line 34
    const/4 v12, 0x0

    .line 35
    aput-wide v3, v1, v12

    .line 36
    .line 37
    iget v3, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->intvCount:I

    .line 38
    .line 39
    iget v4, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->winSize:I

    .line 40
    .line 41
    if-ge v3, v4, :cond_0

    .line 42
    .line 43
    move v13, v3

    .line 44
    goto :goto_0

    .line 45
    :cond_0
    move v13, v4

    .line 46
    :goto_0
    new-array v14, v13, [J

    .line 47
    .line 48
    if-eqz v3, :cond_3

    .line 49
    .line 50
    if-eqz v4, :cond_3

    .line 51
    .line 52
    move v3, v12

    .line 53
    :goto_1
    if-ge v3, v13, :cond_2

    .line 54
    .line 55
    iget v4, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->intvIndex:I

    .line 56
    .line 57
    sub-int/2addr v4, v11

    .line 58
    sub-int/2addr v4, v3

    .line 59
    and-int/lit16 v4, v4, 0xff

    .line 60
    .line 61
    aget-wide v15, v1, v12

    .line 62
    .line 63
    move/from16 v17, v2

    .line 64
    .line 65
    iget-object v2, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->TdtCca:[J

    .line 66
    .line 67
    aget-wide v18, v2, v4

    .line 68
    .line 69
    add-long v15, v15, v18

    .line 70
    .line 71
    aput-wide v15, v1, v12

    .line 72
    .line 73
    aget-wide v15, v2, v4

    .line 74
    .line 75
    aget-wide v18, v1, v11

    .line 76
    .line 77
    cmp-long v20, v15, v18

    .line 78
    .line 79
    if-lez v20, :cond_1

    .line 80
    .line 81
    goto :goto_2

    .line 82
    :cond_1
    move-wide/from16 v15, v18

    .line 83
    .line 84
    :goto_2
    aput-wide v15, v1, v11

    .line 85
    .line 86
    aget-wide v15, v1, v9

    .line 87
    .line 88
    move/from16 v18, v5

    .line 89
    .line 90
    iget-object v5, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->pktDlSize:[J

    .line 91
    .line 92
    aget-wide v19, v5, v4

    .line 93
    .line 94
    add-long v15, v15, v19

    .line 95
    .line 96
    iget-object v5, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->pktUlSize:[J

    .line 97
    .line 98
    aget-wide v19, v5, v4

    .line 99
    .line 100
    add-long v15, v15, v19

    .line 101
    .line 102
    aput-wide v15, v1, v9

    .line 103
    .line 104
    aget-wide v15, v1, v8

    .line 105
    .line 106
    iget-object v5, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->pktCntDLPerSP:[J

    .line 107
    .line 108
    aget-wide v19, v5, v4

    .line 109
    .line 110
    add-long v15, v15, v19

    .line 111
    .line 112
    move/from16 v19, v6

    .line 113
    .line 114
    iget-object v6, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->pktCntULPerSP:[J

    .line 115
    .line 116
    aget-wide v20, v6, v4

    .line 117
    .line 118
    add-long v15, v15, v20

    .line 119
    .line 120
    aput-wide v15, v1, v8

    .line 121
    .line 122
    aget-wide v15, v1, v7

    .line 123
    .line 124
    move/from16 v20, v7

    .line 125
    .line 126
    iget-object v7, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->TCca10002TRadio:[J

    .line 127
    .line 128
    aget-wide v21, v7, v4

    .line 129
    .line 130
    add-long v15, v15, v21

    .line 131
    .line 132
    aput-wide v15, v1, v20

    .line 133
    .line 134
    aget-wide v15, v1, v19

    .line 135
    .line 136
    aget-wide v21, v5, v4

    .line 137
    .line 138
    add-long v15, v15, v21

    .line 139
    .line 140
    aput-wide v15, v1, v19

    .line 141
    .line 142
    aget-wide v15, v1, v18

    .line 143
    .line 144
    aget-wide v21, v6, v4

    .line 145
    .line 146
    add-long v15, v15, v21

    .line 147
    .line 148
    aput-wide v15, v1, v18

    .line 149
    .line 150
    aget-wide v15, v1, v17

    .line 151
    .line 152
    aget-wide v21, v2, v4

    .line 153
    .line 154
    mul-long v21, v21, v21

    .line 155
    .line 156
    add-long v21, v21, v15

    .line 157
    .line 158
    aput-wide v21, v1, v17

    .line 159
    .line 160
    aget-wide v15, v5, v4

    .line 161
    .line 162
    aget-wide v4, v6, v4

    .line 163
    .line 164
    add-long/2addr v15, v4

    .line 165
    aput-wide v15, v14, v3

    .line 166
    .line 167
    add-int/lit8 v3, v3, 0x1

    .line 168
    .line 169
    move/from16 v2, v17

    .line 170
    .line 171
    move/from16 v5, v18

    .line 172
    .line 173
    move/from16 v6, v19

    .line 174
    .line 175
    move/from16 v7, v20

    .line 176
    .line 177
    goto :goto_1

    .line 178
    :cond_2
    move/from16 v17, v2

    .line 179
    .line 180
    move/from16 v20, v7

    .line 181
    .line 182
    int-to-long v2, v13

    .line 183
    aget-wide v4, v1, v17

    .line 184
    .line 185
    mul-long/2addr v4, v2

    .line 186
    aget-wide v6, v1, v12

    .line 187
    .line 188
    mul-long v15, v6, v6

    .line 189
    .line 190
    sub-long/2addr v4, v15

    .line 191
    mul-long v15, v2, v2

    .line 192
    .line 193
    const-wide/16 v18, 0x2

    .line 194
    .line 195
    div-long v18, v15, v18

    .line 196
    .line 197
    add-long v18, v18, v4

    .line 198
    .line 199
    div-long v18, v18, v15

    .line 200
    .line 201
    aput-wide v18, v1, v17

    .line 202
    .line 203
    div-int/2addr v13, v10

    .line 204
    int-to-long v4, v13

    .line 205
    add-long/2addr v6, v4

    .line 206
    div-long/2addr v6, v2

    .line 207
    aput-wide v6, v1, v12

    .line 208
    .line 209
    aget-wide v6, v1, v9

    .line 210
    .line 211
    add-long/2addr v6, v4

    .line 212
    div-long/2addr v6, v2

    .line 213
    aput-wide v6, v1, v9

    .line 214
    .line 215
    aget-wide v6, v1, v8

    .line 216
    .line 217
    add-long/2addr v6, v4

    .line 218
    div-long/2addr v6, v2

    .line 219
    aput-wide v6, v1, v8

    .line 220
    .line 221
    aget-wide v6, v1, v20

    .line 222
    .line 223
    add-long/2addr v6, v4

    .line 224
    div-long/2addr v6, v2

    .line 225
    aput-wide v6, v1, v20

    .line 226
    .line 227
    :cond_3
    iget-object v0, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->mTwtInfo:Lcom/samsung/android/server/wifi/twt/SemTwtInfo;

    .line 228
    .line 229
    invoke-virtual {v0, v1, v14}, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->setPacketMonitoringStats([J[J)V

    .line 230
    .line 231
    .line 232
    return-void
.end method
