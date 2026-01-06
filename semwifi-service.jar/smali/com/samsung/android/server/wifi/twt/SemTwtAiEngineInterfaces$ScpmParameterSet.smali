.class public Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$ScpmParameterSet;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ScpmParameterSet"
.end annotation


# instance fields
.field public abAPCntThd_Tdt:I

.field public abAPContCntThd_Tdt:I

.field public acCca1_Tdt:I

.field public acInterT1_Tdt:J

.field public acInterT2_Tdt:J

.field public congestCoe_Tdt:F

.field public constOverHead_Tdt:J

.field public mBoostFactor1_Tdt:F

.field public mBoostFactor2_Tdt:F

.field public mBoostFactor3_Tdt:F

.field public mCongestionDivider:J

.field public mEpsilonUpdateThreshold:F

.field public mMinSPDuration:I

.field public mOverflowGuardThr:F

.field public mOverflowTdtWeight:F

.field public mOverflowThresholdPercent:F

.field public mStableGuardHiEpsThr:F

.field public mStableGuardLoEpsThr:F

.field public mStableTdtWeight:F

.field public mTdtUpdateMode:I

.field public mgCca1_Tdt:I

.field public mgCcaThd1_Tdt:I

.field public mgCcaThd2_Tdt:I

.field public mgCcaThd3_Tdt:I

.field public mgCntThd_Tdt:I

.field public mgInterT1_Tdt:J

.field public mgInterT2_Tdt:J

.field public mgTxGoodThd1_Tdt:F

.field public mgTxGoodThd2_Tdt:F

.field public mgTxGoodThd3_Tdt:F

.field public overHead_Tdt:J

.field public qoSAnomalyCntThd_Tdt:I

.field public qoSGoodInterTime_Tdt:J

.field public qoSInterTimeMaxTh1_Tdt:J

.field public qoSInterTimeMaxTh2_Tdt:J

.field public resetAbnormalAPTimeThd_Tdt:J

.field public resetQosPatchTimeThd_Tdt:J

.field final synthetic this$0:Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;

.field public vcCca1_Tdt:I

.field public vcInterT1_Tdt:J

.field public vcInterT2_Tdt:J


# direct methods
.method public constructor <init>(Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$ScpmParameterSet;->this$0:Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    const-wide/16 v0, 0x5dc

    .line 7
    .line 8
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$ScpmParameterSet;->overHead_Tdt:J

    .line 9
    .line 10
    const-wide/16 v0, 0x9c4

    .line 11
    .line 12
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$ScpmParameterSet;->constOverHead_Tdt:J

    .line 13
    .line 14
    const p1, 0x3ff33333    # 1.9f

    .line 15
    .line 16
    .line 17
    iput p1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$ScpmParameterSet;->congestCoe_Tdt:F

    .line 18
    .line 19
    const/4 p1, 0x1

    .line 20
    iput p1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$ScpmParameterSet;->mgCntThd_Tdt:I

    .line 21
    .line 22
    const/16 p1, 0x186

    .line 23
    .line 24
    iput p1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$ScpmParameterSet;->mgCcaThd1_Tdt:I

    .line 25
    .line 26
    const/16 p1, 0x1e0

    .line 27
    .line 28
    iput p1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$ScpmParameterSet;->mgCcaThd2_Tdt:I

    .line 29
    .line 30
    const/16 p1, 0x12c

    .line 31
    .line 32
    iput p1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$ScpmParameterSet;->mgCcaThd3_Tdt:I

    .line 33
    .line 34
    const v0, 0x3f19999a    # 0.6f

    .line 35
    .line 36
    .line 37
    iput v0, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$ScpmParameterSet;->mgTxGoodThd1_Tdt:F

    .line 38
    .line 39
    const/high16 v0, 0x3f000000    # 0.5f

    .line 40
    .line 41
    iput v0, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$ScpmParameterSet;->mgTxGoodThd2_Tdt:F

    .line 42
    .line 43
    const v1, 0x3f4ccccd    # 0.8f

    .line 44
    .line 45
    .line 46
    iput v1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$ScpmParameterSet;->mgTxGoodThd3_Tdt:F

    .line 47
    .line 48
    const/high16 v1, 0x40600000    # 3.5f

    .line 49
    .line 50
    iput v1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$ScpmParameterSet;->mBoostFactor1_Tdt:F

    .line 51
    .line 52
    const/high16 v1, 0x40000000    # 2.0f

    .line 53
    .line 54
    iput v1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$ScpmParameterSet;->mBoostFactor2_Tdt:F

    .line 55
    .line 56
    const/high16 v1, 0x3f800000    # 1.0f

    .line 57
    .line 58
    iput v1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$ScpmParameterSet;->mBoostFactor3_Tdt:F

    .line 59
    .line 60
    const-wide/16 v1, 0x1770

    .line 61
    .line 62
    iput-wide v1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$ScpmParameterSet;->resetQosPatchTimeThd_Tdt:J

    .line 63
    .line 64
    const-wide/16 v1, 0x3a98

    .line 65
    .line 66
    iput-wide v1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$ScpmParameterSet;->resetAbnormalAPTimeThd_Tdt:J

    .line 67
    .line 68
    const-wide/32 v1, 0x55d4a80

    .line 69
    .line 70
    .line 71
    iput-wide v1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$ScpmParameterSet;->qoSInterTimeMaxTh1_Tdt:J

    .line 72
    .line 73
    const-wide/32 v1, 0xb532b80

    .line 74
    .line 75
    .line 76
    iput-wide v1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$ScpmParameterSet;->qoSInterTimeMaxTh2_Tdt:J

    .line 77
    .line 78
    const-wide/32 v3, 0x47868c0

    .line 79
    .line 80
    .line 81
    iput-wide v3, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$ScpmParameterSet;->qoSGoodInterTime_Tdt:J

    .line 82
    .line 83
    const/4 v3, 0x3

    .line 84
    iput v3, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$ScpmParameterSet;->qoSAnomalyCntThd_Tdt:I

    .line 85
    .line 86
    iput v3, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$ScpmParameterSet;->abAPCntThd_Tdt:I

    .line 87
    .line 88
    iput v3, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$ScpmParameterSet;->abAPContCntThd_Tdt:I

    .line 89
    .line 90
    iput-wide v1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$ScpmParameterSet;->mgInterT1_Tdt:J

    .line 91
    .line 92
    const-wide/32 v1, 0xee6b280

    .line 93
    .line 94
    .line 95
    iput-wide v1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$ScpmParameterSet;->mgInterT2_Tdt:J

    .line 96
    .line 97
    iput p1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$ScpmParameterSet;->mgCca1_Tdt:I

    .line 98
    .line 99
    const-wide/32 v1, 0x1d34ce80

    .line 100
    .line 101
    .line 102
    iput-wide v1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$ScpmParameterSet;->acInterT1_Tdt:J

    .line 103
    .line 104
    const-wide/32 v1, 0x2160ec00

    .line 105
    .line 106
    .line 107
    iput-wide v1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$ScpmParameterSet;->acInterT2_Tdt:J

    .line 108
    .line 109
    iput p1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$ScpmParameterSet;->acCca1_Tdt:I

    .line 110
    .line 111
    const-wide/32 v1, 0xf7f4900

    .line 112
    .line 113
    .line 114
    iput-wide v1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$ScpmParameterSet;->vcInterT1_Tdt:J

    .line 115
    .line 116
    const-wide/32 v1, 0x11490c80

    .line 117
    .line 118
    .line 119
    iput-wide v1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$ScpmParameterSet;->vcInterT2_Tdt:J

    .line 120
    .line 121
    iput p1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$ScpmParameterSet;->vcCca1_Tdt:I

    .line 122
    .line 123
    const p1, 0x3e4ccccd    # 0.2f

    .line 124
    .line 125
    .line 126
    iput p1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$ScpmParameterSet;->mOverflowGuardThr:F

    .line 127
    .line 128
    const p1, 0x3d4ccccd    # 0.05f

    .line 129
    .line 130
    .line 131
    iput p1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$ScpmParameterSet;->mStableGuardLoEpsThr:F

    .line 132
    .line 133
    const v1, 0x3dcccccd    # 0.1f

    .line 134
    .line 135
    .line 136
    iput v1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$ScpmParameterSet;->mStableGuardHiEpsThr:F

    .line 137
    .line 138
    const-wide/32 v1, 0x11170

    .line 139
    .line 140
    .line 141
    iput-wide v1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$ScpmParameterSet;->mCongestionDivider:J

    .line 142
    .line 143
    iput p1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$ScpmParameterSet;->mOverflowThresholdPercent:F

    .line 144
    .line 145
    const/high16 p1, 0x42480000    # 50.0f

    .line 146
    .line 147
    iput p1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$ScpmParameterSet;->mEpsilonUpdateThreshold:F

    .line 148
    .line 149
    const/16 p1, 0x400

    .line 150
    .line 151
    iput p1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$ScpmParameterSet;->mMinSPDuration:I

    .line 152
    .line 153
    iput v0, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$ScpmParameterSet;->mStableTdtWeight:F

    .line 154
    .line 155
    iput v0, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$ScpmParameterSet;->mOverflowTdtWeight:F

    .line 156
    .line 157
    const/4 p1, 0x0

    .line 158
    iput p1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$ScpmParameterSet;->mTdtUpdateMode:I

    .line 159
    .line 160
    return-void
.end method


# virtual methods
.method public updateParameters()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$ScpmParameterSet;->this$0:Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->-$$Nest$fgetspDuration(Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;)Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget v1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$ScpmParameterSet;->mOverflowGuardThr:F

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;->setmOverflowGuardThr(F)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$ScpmParameterSet;->this$0:Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;

    .line 13
    .line 14
    invoke-static {v0}, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->-$$Nest$fgetspDuration(Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;)Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    iget v1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$ScpmParameterSet;->mStableGuardLoEpsThr:F

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;->setmStableGuardLoEpsThr(F)V

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$ScpmParameterSet;->this$0:Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;

    .line 24
    .line 25
    invoke-static {v0}, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->-$$Nest$fgetspDuration(Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;)Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    iget v1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$ScpmParameterSet;->mStableGuardHiEpsThr:F

    .line 30
    .line 31
    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;->setmStableGuardHiEpsThr(F)V

    .line 32
    .line 33
    .line 34
    iget-object v0, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$ScpmParameterSet;->this$0:Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;

    .line 35
    .line 36
    invoke-static {v0}, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->-$$Nest$fgetspDuration(Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;)Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    iget-wide v1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$ScpmParameterSet;->mCongestionDivider:J

    .line 41
    .line 42
    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;->setmCongestionDivider(J)V

    .line 43
    .line 44
    .line 45
    iget-object v0, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$ScpmParameterSet;->this$0:Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;

    .line 46
    .line 47
    invoke-static {v0}, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->-$$Nest$fgetspDuration(Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;)Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    iget v1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$ScpmParameterSet;->mOverflowThresholdPercent:F

    .line 52
    .line 53
    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;->setmOverflowThresholdPercent(F)V

    .line 54
    .line 55
    .line 56
    iget-object v0, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$ScpmParameterSet;->this$0:Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;

    .line 57
    .line 58
    invoke-static {v0}, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->-$$Nest$fgetspDuration(Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;)Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    iget v1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$ScpmParameterSet;->mEpsilonUpdateThreshold:F

    .line 63
    .line 64
    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;->setmEpsilonUpdateThreshold(F)V

    .line 65
    .line 66
    .line 67
    iget-object v0, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$ScpmParameterSet;->this$0:Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;

    .line 68
    .line 69
    invoke-static {v0}, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->-$$Nest$fgetspDuration(Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;)Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    iget v1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$ScpmParameterSet;->mMinSPDuration:I

    .line 74
    .line 75
    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;->setmMinSPDuration(I)V

    .line 76
    .line 77
    .line 78
    iget-object v0, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$ScpmParameterSet;->this$0:Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;

    .line 79
    .line 80
    invoke-static {v0}, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->-$$Nest$fgetspDuration(Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;)Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    iget v1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$ScpmParameterSet;->mStableTdtWeight:F

    .line 85
    .line 86
    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;->setmStableTdtWeight(F)V

    .line 87
    .line 88
    .line 89
    iget-object v0, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$ScpmParameterSet;->this$0:Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;

    .line 90
    .line 91
    invoke-static {v0}, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->-$$Nest$fgetspDuration(Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;)Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    iget v1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$ScpmParameterSet;->mOverflowTdtWeight:F

    .line 96
    .line 97
    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;->setmOverflowTdtWeight(F)V

    .line 98
    .line 99
    .line 100
    iget-object v0, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$ScpmParameterSet;->this$0:Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;

    .line 101
    .line 102
    invoke-static {v0}, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->-$$Nest$fgetspDuration(Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;)Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    iget p0, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$ScpmParameterSet;->mTdtUpdateMode:I

    .line 107
    .line 108
    invoke-virtual {v0, p0}, Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;->setmTdtUpdateMode(I)V

    .line 109
    .line 110
    .line 111
    return-void
.end method
