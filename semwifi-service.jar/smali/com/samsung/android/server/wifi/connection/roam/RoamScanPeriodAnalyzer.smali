.class public Lcom/samsung/android/server/wifi/connection/roam/RoamScanPeriodAnalyzer;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"

# interfaces
.implements Lcom/samsung/android/server/wifi/connection/roam/BaseLogAnalyzer;


# static fields
.field private static final CUR_ROAM_SCAN_MIN_SCORE_DIFF:D = 20.0

.field private static final INVALID_SCORE_DIFF:D = 1000.0

.field private static final MAX_TIME_DIFF_MILLISECONDS:I = 0xea60

.field private static final MIN_TIME_DIFF_MILLISECONDS:I = 0x2710

.field private static final PRE_ROAM_SCAN_MAX_SCORE_DIFF:D = 5.0

.field private static final ROAMING_CANDIDATE_DELTA:D = 1.2

.field private static final ROAM_SCAN_REASON_PARTIAL:Ljava/lang/String; = "9"

.field private static final ROAM_SCAN_REASON_RSSI:Ljava/lang/String; = "1"

.field private static final TAG:Ljava/lang/String; = "Conn.RoamScanPeriodAnalyzer"


# instance fields
.field mCurRoamScanSum:Lcom/samsung/android/server/wifi/connection/roam/RoamScanSummary;

.field mPrevRoamScanSum:Lcom/samsung/android/server/wifi/connection/roam/RoamScanSummary;

.field mScanTimeGap:J

.field mSsid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, ""

    .line 5
    .line 6
    iput-object v0, p0, Lcom/samsung/android/server/wifi/connection/roam/RoamScanPeriodAnalyzer;->mSsid:Ljava/lang/String;

    .line 7
    .line 8
    const-wide/16 v0, 0x0

    .line 9
    .line 10
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/connection/roam/RoamScanPeriodAnalyzer;->mScanTimeGap:J

    .line 11
    .line 12
    return-void
.end method

.method private checkValidRoamScanSummary()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/connection/roam/RoamScanPeriodAnalyzer;->mPrevRoamScanSum:Lcom/samsung/android/server/wifi/connection/roam/RoamScanSummary;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/connection/roam/RoamScanSummary;->isCompleted()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    iget-object v0, p0, Lcom/samsung/android/server/wifi/connection/roam/RoamScanPeriodAnalyzer;->mPrevRoamScanSum:Lcom/samsung/android/server/wifi/connection/roam/RoamScanSummary;

    .line 10
    .line 11
    iget-object v1, v0, Lcom/samsung/android/server/wifi/connection/roam/RoamScanSummary;->mCurrentApScore:Ljava/lang/String;

    .line 12
    .line 13
    iget-object v0, v0, Lcom/samsung/android/server/wifi/connection/roam/RoamScanSummary;->mRoamedApScore:Ljava/lang/String;

    .line 14
    .line 15
    invoke-static {v1, v0}, Lcom/samsung/android/server/wifi/connection/roam/RoamScanPeriodAnalyzer;->getScoreDifference(Ljava/lang/String;Ljava/lang/String;)D

    .line 16
    .line 17
    .line 18
    move-result-wide v0

    .line 19
    iget-object v2, p0, Lcom/samsung/android/server/wifi/connection/roam/RoamScanPeriodAnalyzer;->mPrevRoamScanSum:Lcom/samsung/android/server/wifi/connection/roam/RoamScanSummary;

    .line 20
    .line 21
    iget-object v2, v2, Lcom/samsung/android/server/wifi/connection/roam/RoamScanSummary;->mRoamReason:Ljava/lang/String;

    .line 22
    .line 23
    const-string v3, "9"

    .line 24
    .line 25
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    if-eqz v2, :cond_0

    .line 30
    .line 31
    iget-object v2, p0, Lcom/samsung/android/server/wifi/connection/roam/RoamScanPeriodAnalyzer;->mPrevRoamScanSum:Lcom/samsung/android/server/wifi/connection/roam/RoamScanSummary;

    .line 32
    .line 33
    iget-object v2, v2, Lcom/samsung/android/server/wifi/connection/roam/RoamScanSummary;->mRoamedApScore:Ljava/lang/String;

    .line 34
    .line 35
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    if-nez v2, :cond_3

    .line 40
    .line 41
    const-wide/high16 v2, 0x4014000000000000L    # 5.0

    .line 42
    .line 43
    cmpl-double v0, v0, v2

    .line 44
    .line 45
    if-lez v0, :cond_3

    .line 46
    .line 47
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/connection/roam/RoamScanPeriodAnalyzer;->clearAllRoamScanSummary()V

    .line 48
    .line 49
    .line 50
    return-void

    .line 51
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/connection/roam/RoamScanPeriodAnalyzer;->mCurRoamScanSum:Lcom/samsung/android/server/wifi/connection/roam/RoamScanSummary;

    .line 52
    .line 53
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/connection/roam/RoamScanSummary;->isCompleted()Z

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    if-eqz v0, :cond_3

    .line 58
    .line 59
    iget-object v0, p0, Lcom/samsung/android/server/wifi/connection/roam/RoamScanPeriodAnalyzer;->mCurRoamScanSum:Lcom/samsung/android/server/wifi/connection/roam/RoamScanSummary;

    .line 60
    .line 61
    iget-object v1, v0, Lcom/samsung/android/server/wifi/connection/roam/RoamScanSummary;->mCurrentApScore:Ljava/lang/String;

    .line 62
    .line 63
    iget-object v0, v0, Lcom/samsung/android/server/wifi/connection/roam/RoamScanSummary;->mRoamedApScore:Ljava/lang/String;

    .line 64
    .line 65
    invoke-static {v1, v0}, Lcom/samsung/android/server/wifi/connection/roam/RoamScanPeriodAnalyzer;->getScoreDifference(Ljava/lang/String;Ljava/lang/String;)D

    .line 66
    .line 67
    .line 68
    move-result-wide v0

    .line 69
    iget-object v2, p0, Lcom/samsung/android/server/wifi/connection/roam/RoamScanPeriodAnalyzer;->mCurRoamScanSum:Lcom/samsung/android/server/wifi/connection/roam/RoamScanSummary;

    .line 70
    .line 71
    iget-object v2, v2, Lcom/samsung/android/server/wifi/connection/roam/RoamScanSummary;->mRoamReason:Ljava/lang/String;

    .line 72
    .line 73
    const-string v3, "1"

    .line 74
    .line 75
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 76
    .line 77
    .line 78
    move-result v2

    .line 79
    if-eqz v2, :cond_2

    .line 80
    .line 81
    iget-object v2, p0, Lcom/samsung/android/server/wifi/connection/roam/RoamScanPeriodAnalyzer;->mCurRoamScanSum:Lcom/samsung/android/server/wifi/connection/roam/RoamScanSummary;

    .line 82
    .line 83
    iget-object v2, v2, Lcom/samsung/android/server/wifi/connection/roam/RoamScanSummary;->mRssiThreshold:Ljava/lang/String;

    .line 84
    .line 85
    const-string v3, "-75"

    .line 86
    .line 87
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 88
    .line 89
    .line 90
    move-result v2

    .line 91
    if-nez v2, :cond_2

    .line 92
    .line 93
    const-wide v2, 0x408f400000000000L    # 1000.0

    .line 94
    .line 95
    .line 96
    .line 97
    .line 98
    cmpl-double v2, v0, v2

    .line 99
    .line 100
    if-eqz v2, :cond_2

    .line 101
    .line 102
    const-wide/high16 v2, 0x4034000000000000L    # 20.0

    .line 103
    .line 104
    cmpg-double v0, v0, v2

    .line 105
    .line 106
    if-gez v0, :cond_3

    .line 107
    .line 108
    :cond_2
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/connection/roam/RoamScanPeriodAnalyzer;->clearAllRoamScanSummary()V

    .line 109
    .line 110
    .line 111
    :cond_3
    return-void
.end method

.method private checkValidScanTimeGap()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/connection/roam/RoamScanPeriodAnalyzer;->mCurRoamScanSum:Lcom/samsung/android/server/wifi/connection/roam/RoamScanSummary;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/samsung/android/server/wifi/connection/roam/RoamScanSummary;->mRoamStartTime:Ljava/util/Date;

    .line 4
    .line 5
    iget-object v1, p0, Lcom/samsung/android/server/wifi/connection/roam/RoamScanPeriodAnalyzer;->mPrevRoamScanSum:Lcom/samsung/android/server/wifi/connection/roam/RoamScanSummary;

    .line 6
    .line 7
    iget-object v1, v1, Lcom/samsung/android/server/wifi/connection/roam/RoamScanSummary;->mRoamStartTime:Ljava/util/Date;

    .line 8
    .line 9
    invoke-direct {p0, v0, v1}, Lcom/samsung/android/server/wifi/connection/roam/RoamScanPeriodAnalyzer;->getTimeDifference(Ljava/util/Date;Ljava/util/Date;)J

    .line 10
    .line 11
    .line 12
    move-result-wide v0

    .line 13
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/connection/roam/RoamScanPeriodAnalyzer;->mScanTimeGap:J

    .line 14
    .line 15
    const-wide/16 v2, 0x2710

    .line 16
    .line 17
    cmp-long p0, v0, v2

    .line 18
    .line 19
    if-lez p0, :cond_0

    .line 20
    .line 21
    const-wide/32 v2, 0xea60

    .line 22
    .line 23
    .line 24
    cmp-long p0, v0, v2

    .line 25
    .line 26
    if-gez p0, :cond_0

    .line 27
    .line 28
    const/4 p0, 0x1

    .line 29
    return p0

    .line 30
    :cond_0
    const/4 p0, 0x0

    .line 31
    return p0
.end method

.method private clearAllRoamScanSummary()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/connection/roam/RoamScanPeriodAnalyzer;->mCurRoamScanSum:Lcom/samsung/android/server/wifi/connection/roam/RoamScanSummary;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/connection/roam/RoamScanSummary;->clear()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/samsung/android/server/wifi/connection/roam/RoamScanPeriodAnalyzer;->mPrevRoamScanSum:Lcom/samsung/android/server/wifi/connection/roam/RoamScanSummary;

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/connection/roam/RoamScanSummary;->clear()V

    .line 9
    .line 10
    .line 11
    const-wide/16 v0, 0x0

    .line 12
    .line 13
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/connection/roam/RoamScanPeriodAnalyzer;->mScanTimeGap:J

    .line 14
    .line 15
    return-void
.end method

.method private static convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "\""

    .line 2
    .line 3
    invoke-static {v0, p0, v0}, Lcom/samsung/android/server/wifi/abtest/AbTestManager$4$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method private fromRoamScanSumToJson(Lcom/samsung/android/server/wifi/connection/roam/RoamScanSummary;)Ljava/lang/String;
    .locals 3

    .line 1
    new-instance p0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v0, "{"

    .line 4
    .line 5
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const-string v0, "btcoex"

    .line 9
    .line 10
    invoke-static {v0}, Lcom/samsung/android/server/wifi/connection/roam/RoamScanPeriodAnalyzer;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const-string v0, ":"

    .line 18
    .line 19
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    iget-object v1, p1, Lcom/samsung/android/server/wifi/connection/roam/RoamScanSummary;->mBtCoexMode:Ljava/lang/String;

    .line 23
    .line 24
    invoke-static {v1}, Lcom/samsung/android/server/wifi/connection/roam/RoamScanPeriodAnalyzer;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    const-string v1, ","

    .line 32
    .line 33
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    const-string v2, "c_rssi"

    .line 37
    .line 38
    invoke-static {v2}, Lcom/samsung/android/server/wifi/connection/roam/RoamScanPeriodAnalyzer;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    iget-object v2, p1, Lcom/samsung/android/server/wifi/connection/roam/RoamScanSummary;->mCurrentApRssi:Ljava/lang/String;

    .line 49
    .line 50
    invoke-static {v2}, Lcom/samsung/android/server/wifi/connection/roam/RoamScanPeriodAnalyzer;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    const-string v2, "c_cu"

    .line 61
    .line 62
    invoke-static {v2}, Lcom/samsung/android/server/wifi/connection/roam/RoamScanPeriodAnalyzer;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v2

    .line 66
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    iget-object v2, p1, Lcom/samsung/android/server/wifi/connection/roam/RoamScanSummary;->mCurrentApCu:Ljava/lang/String;

    .line 73
    .line 74
    invoke-static {v2}, Lcom/samsung/android/server/wifi/connection/roam/RoamScanPeriodAnalyzer;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v2

    .line 78
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    const-string v2, "c_score"

    .line 85
    .line 86
    invoke-static {v2}, Lcom/samsung/android/server/wifi/connection/roam/RoamScanPeriodAnalyzer;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v2

    .line 90
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    iget-object v2, p1, Lcom/samsung/android/server/wifi/connection/roam/RoamScanSummary;->mCurrentApScore:Ljava/lang/String;

    .line 97
    .line 98
    invoke-static {v2}, Lcom/samsung/android/server/wifi/connection/roam/RoamScanPeriodAnalyzer;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v2

    .line 102
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    const-string v2, "r_rssi"

    .line 109
    .line 110
    invoke-static {v2}, Lcom/samsung/android/server/wifi/connection/roam/RoamScanPeriodAnalyzer;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v2

    .line 114
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    iget-object v2, p1, Lcom/samsung/android/server/wifi/connection/roam/RoamScanSummary;->mRoamedApRssi:Ljava/lang/String;

    .line 121
    .line 122
    invoke-static {v2}, Lcom/samsung/android/server/wifi/connection/roam/RoamScanPeriodAnalyzer;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v2

    .line 126
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    const-string v2, "r_cu"

    .line 133
    .line 134
    invoke-static {v2}, Lcom/samsung/android/server/wifi/connection/roam/RoamScanPeriodAnalyzer;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v2

    .line 138
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    .line 140
    .line 141
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    .line 143
    .line 144
    iget-object v2, p1, Lcom/samsung/android/server/wifi/connection/roam/RoamScanSummary;->mRoamedApCu:Ljava/lang/String;

    .line 145
    .line 146
    invoke-static {v2}, Lcom/samsung/android/server/wifi/connection/roam/RoamScanPeriodAnalyzer;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object v2

    .line 150
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    .line 153
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    .line 155
    .line 156
    const-string v1, "r_score"

    .line 157
    .line 158
    invoke-static {v1}, Lcom/samsung/android/server/wifi/connection/roam/RoamScanPeriodAnalyzer;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object v1

    .line 162
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    .line 164
    .line 165
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    .line 167
    .line 168
    iget-object p1, p1, Lcom/samsung/android/server/wifi/connection/roam/RoamScanSummary;->mRoamedApScore:Ljava/lang/String;

    .line 169
    .line 170
    invoke-static {p1}, Lcom/samsung/android/server/wifi/connection/roam/RoamScanPeriodAnalyzer;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    .line 171
    .line 172
    .line 173
    move-result-object p1

    .line 174
    const-string v0, "}"

    .line 175
    .line 176
    invoke-static {p0, p1, v0}, Lcom/samsung/android/mcf/continuity/common/DLog$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object p0

    .line 180
    return-object p0
.end method

.method private static getScoreDifference(Ljava/lang/String;Ljava/lang/String;)D
    .locals 6

    .line 1
    const-wide v0, 0x408f400000000000L    # 1000.0

    .line 2
    .line 3
    .line 4
    .line 5
    .line 6
    if-eqz p0, :cond_1

    .line 7
    .line 8
    if-eqz p1, :cond_1

    .line 9
    .line 10
    :try_start_0
    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 11
    .line 12
    .line 13
    move-result-wide v2

    .line 14
    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 15
    .line 16
    .line 17
    move-result-wide p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 18
    const-wide v0, 0x3ff3333333333333L    # 1.2

    .line 19
    .line 20
    .line 21
    .line 22
    .line 23
    mul-double/2addr v0, v2

    .line 24
    const-wide/high16 v4, 0x402e000000000000L    # 15.0

    .line 25
    .line 26
    add-double/2addr v2, v4

    .line 27
    cmpg-double v4, v0, v2

    .line 28
    .line 29
    if-gez v4, :cond_0

    .line 30
    .line 31
    sub-double/2addr v2, p0

    .line 32
    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    .line 33
    .line 34
    .line 35
    move-result-wide p0

    .line 36
    return-wide p0

    .line 37
    :cond_0
    sub-double/2addr v0, p0

    .line 38
    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    .line 39
    .line 40
    .line 41
    move-result-wide p0

    .line 42
    return-wide p0

    .line 43
    :catch_0
    :cond_1
    return-wide v0
.end method

.method private getTimeDifference(Ljava/util/Date;Ljava/util/Date;)J
    .locals 2

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    if-eqz p2, :cond_0

    .line 4
    .line 5
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    .line 6
    .line 7
    .line 8
    move-result-wide p0

    .line 9
    invoke-virtual {p2}, Ljava/util/Date;->getTime()J

    .line 10
    .line 11
    .line 12
    move-result-wide v0

    .line 13
    sub-long/2addr p0, v0

    .line 14
    return-wide p0

    .line 15
    :cond_0
    const-wide/32 p0, 0x3938700

    .line 16
    .line 17
    .line 18
    return-wide p0
.end method

.method private makeAndSendBigDataEvent(Lcom/samsung/android/server/wifi/connection/roam/BigdataEventManager;)V
    .locals 7

    .line 1
    new-instance v0, Lcom/samsung/android/server/wifi/connection/roam/BigdataEvent;

    .line 2
    .line 3
    const/4 v1, 0x4

    .line 4
    invoke-direct {v0, v1}, Lcom/samsung/android/server/wifi/connection/roam/BigdataEvent;-><init>(I)V

    .line 5
    .line 6
    .line 7
    iget-object v1, v0, Lcom/samsung/android/server/wifi/connection/roam/BigdataEvent;->dimensions:Ljava/util/HashMap;

    .line 8
    .line 9
    new-instance v2, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    const-string v3, ""

    .line 12
    .line 13
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    iget-wide v3, p0, Lcom/samsung/android/server/wifi/connection/roam/RoamScanPeriodAnalyzer;->mScanTimeGap:J

    .line 17
    .line 18
    const-wide/16 v5, 0x3e8

    .line 19
    .line 20
    div-long/2addr v3, v5

    .line 21
    long-to-int v3, v3

    .line 22
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    const-string v3, "scan_gap"

    .line 30
    .line 31
    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    iget-object v1, v0, Lcom/samsung/android/server/wifi/connection/roam/BigdataEvent;->dimensions:Ljava/util/HashMap;

    .line 35
    .line 36
    iget-object v2, p0, Lcom/samsung/android/server/wifi/connection/roam/RoamScanPeriodAnalyzer;->mCurRoamScanSum:Lcom/samsung/android/server/wifi/connection/roam/RoamScanSummary;

    .line 37
    .line 38
    invoke-direct {p0, v2}, Lcom/samsung/android/server/wifi/connection/roam/RoamScanPeriodAnalyzer;->fromRoamScanSumToJson(Lcom/samsung/android/server/wifi/connection/roam/RoamScanSummary;)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    const-string v3, "cur_scan"

    .line 43
    .line 44
    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    iget-object v1, v0, Lcom/samsung/android/server/wifi/connection/roam/BigdataEvent;->dimensions:Ljava/util/HashMap;

    .line 48
    .line 49
    iget-object v2, p0, Lcom/samsung/android/server/wifi/connection/roam/RoamScanPeriodAnalyzer;->mPrevRoamScanSum:Lcom/samsung/android/server/wifi/connection/roam/RoamScanSummary;

    .line 50
    .line 51
    invoke-direct {p0, v2}, Lcom/samsung/android/server/wifi/connection/roam/RoamScanPeriodAnalyzer;->fromRoamScanSumToJson(Lcom/samsung/android/server/wifi/connection/roam/RoamScanSummary;)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    const-string v2, "pre_scan"

    .line 56
    .line 57
    invoke-virtual {v1, v2, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    invoke-virtual {p1, v0}, Lcom/samsung/android/server/wifi/connection/roam/BigdataEventManager;->add(Lcom/samsung/android/server/wifi/connection/roam/BigdataEvent;)Z

    .line 61
    .line 62
    .line 63
    return-void
.end method

.method private makeRoamScanSummary(Ljava/lang/String;Lcom/samsung/android/server/wifi/connection/roam/RoamScanSummary;)V
    .locals 4

    .line 1
    const-string p0, "SCAN_START"

    .line 2
    .line 3
    invoke-virtual {p1, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    if-eqz p0, :cond_0

    .line 8
    .line 9
    invoke-static {p1}, Lcom/samsung/android/server/wifi/connection/Util;->parseDate(Ljava/lang/String;)Ljava/util/Date;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    iput-object p0, p2, Lcom/samsung/android/server/wifi/connection/roam/RoamScanSummary;->mRoamStartTime:Ljava/util/Date;

    .line 14
    .line 15
    const-string p0, "reason="

    .line 16
    .line 17
    invoke-static {p1, p0}, Lcom/samsung/android/server/wifi/connection/Util;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    iput-object p0, p2, Lcom/samsung/android/server/wifi/connection/roam/RoamScanSummary;->mRoamReason:Ljava/lang/String;

    .line 22
    .line 23
    const-string p0, "rssi_thres="

    .line 24
    .line 25
    invoke-static {p1, p0}, Lcom/samsung/android/server/wifi/connection/Util;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    iput-object p0, p2, Lcom/samsung/android/server/wifi/connection/roam/RoamScanSummary;->mRssiThreshold:Ljava/lang/String;

    .line 30
    .line 31
    invoke-virtual {p2}, Lcom/samsung/android/server/wifi/connection/roam/RoamScanSummary;->setStatusCompleted()V

    .line 32
    .line 33
    .line 34
    return-void

    .line 35
    :cond_0
    const-string p0, "SCAN_DONE"

    .line 36
    .line 37
    invoke-virtual {p1, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 38
    .line 39
    .line 40
    move-result p0

    .line 41
    if-eqz p0, :cond_1

    .line 42
    .line 43
    const-string p0, "btcoex="

    .line 44
    .line 45
    invoke-static {p1, p0}, Lcom/samsung/android/server/wifi/connection/Util;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    iput-object p0, p2, Lcom/samsung/android/server/wifi/connection/roam/RoamScanSummary;->mBtCoexMode:Ljava/lang/String;

    .line 50
    .line 51
    return-void

    .line 52
    :cond_1
    const-string p0, "SCORE_CUR_AP"

    .line 53
    .line 54
    invoke-virtual {p1, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 55
    .line 56
    .line 57
    move-result p0

    .line 58
    const-string v0, "score="

    .line 59
    .line 60
    const-string v1, "cu="

    .line 61
    .line 62
    const-string v2, "rssi="

    .line 63
    .line 64
    const-string v3, "bssid="

    .line 65
    .line 66
    if-eqz p0, :cond_2

    .line 67
    .line 68
    invoke-static {p1, v3}, Lcom/samsung/android/server/wifi/connection/Util;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object p0

    .line 72
    iput-object p0, p2, Lcom/samsung/android/server/wifi/connection/roam/RoamScanSummary;->mCurrentBssid:Ljava/lang/String;

    .line 73
    .line 74
    invoke-static {p1, v2}, Lcom/samsung/android/server/wifi/connection/Util;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object p0

    .line 78
    iput-object p0, p2, Lcom/samsung/android/server/wifi/connection/roam/RoamScanSummary;->mCurrentApRssi:Ljava/lang/String;

    .line 79
    .line 80
    invoke-static {p1, v1}, Lcom/samsung/android/server/wifi/connection/Util;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object p0

    .line 84
    iput-object p0, p2, Lcom/samsung/android/server/wifi/connection/roam/RoamScanSummary;->mCurrentApCu:Ljava/lang/String;

    .line 85
    .line 86
    invoke-static {p1, v0}, Lcom/samsung/android/server/wifi/connection/Util;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object p0

    .line 90
    iput-object p0, p2, Lcom/samsung/android/server/wifi/connection/roam/RoamScanSummary;->mCurrentApScore:Ljava/lang/String;

    .line 91
    .line 92
    return-void

    .line 93
    :cond_2
    const-string p0, "SCORE_CANDI"

    .line 94
    .line 95
    invoke-virtual {p1, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 96
    .line 97
    .line 98
    move-result p0

    .line 99
    if-eqz p0, :cond_3

    .line 100
    .line 101
    iget-object p0, p2, Lcom/samsung/android/server/wifi/connection/roam/RoamScanSummary;->mRoamedBssid:Ljava/lang/String;

    .line 102
    .line 103
    invoke-static {p1, v3}, Lcom/samsung/android/server/wifi/connection/Util;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v3

    .line 107
    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 108
    .line 109
    .line 110
    move-result p0

    .line 111
    if-eqz p0, :cond_3

    .line 112
    .line 113
    invoke-static {p1, v2}, Lcom/samsung/android/server/wifi/connection/Util;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object p0

    .line 117
    iput-object p0, p2, Lcom/samsung/android/server/wifi/connection/roam/RoamScanSummary;->mRoamedApRssi:Ljava/lang/String;

    .line 118
    .line 119
    invoke-static {p1, v1}, Lcom/samsung/android/server/wifi/connection/Util;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object p0

    .line 123
    iput-object p0, p2, Lcom/samsung/android/server/wifi/connection/roam/RoamScanSummary;->mRoamedApCu:Ljava/lang/String;

    .line 124
    .line 125
    invoke-static {p1, v0}, Lcom/samsung/android/server/wifi/connection/Util;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object p0

    .line 129
    iput-object p0, p2, Lcom/samsung/android/server/wifi/connection/roam/RoamScanSummary;->mRoamedApScore:Ljava/lang/String;

    .line 130
    .line 131
    :cond_3
    return-void
.end method

.method private updateSsid(Lcom/samsung/android/server/wifi/connection/LogSet;)V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p1, Lcom/samsung/android/server/wifi/connection/LogSet;->logs:Ljava/util/ArrayList;

    .line 3
    .line 4
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    if-ge v0, v1, :cond_1

    .line 9
    .line 10
    iget-object v1, p1, Lcom/samsung/android/server/wifi/connection/LogSet;->logs:Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    check-cast v1, Ljava/lang/String;

    .line 17
    .line 18
    const-string v2, "CONNECTING"

    .line 19
    .line 20
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    if-eqz v2, :cond_0

    .line 25
    .line 26
    invoke-static {v1}, Lcom/samsung/android/server/wifi/connection/Util;->parseSsid(Ljava/lang/String;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    iput-object p1, p0, Lcom/samsung/android/server/wifi/connection/roam/RoamScanPeriodAnalyzer;->mSsid:Ljava/lang/String;

    .line 31
    .line 32
    return-void

    .line 33
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_1
    return-void
.end method


# virtual methods
.method public analyze(Lcom/samsung/android/server/wifi/connection/LogManager;Lcom/samsung/android/server/wifi/connection/roam/BigdataEventManager;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/connection/LogManager;->requestRecent()Lcom/samsung/android/server/wifi/connection/LogSet;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    new-instance v0, Lcom/samsung/android/server/wifi/connection/roam/RoamScanSummary;

    .line 6
    .line 7
    invoke-direct {v0}, Lcom/samsung/android/server/wifi/connection/roam/RoamScanSummary;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/samsung/android/server/wifi/connection/roam/RoamScanPeriodAnalyzer;->mCurRoamScanSum:Lcom/samsung/android/server/wifi/connection/roam/RoamScanSummary;

    .line 11
    .line 12
    new-instance v0, Lcom/samsung/android/server/wifi/connection/roam/RoamScanSummary;

    .line 13
    .line 14
    invoke-direct {v0}, Lcom/samsung/android/server/wifi/connection/roam/RoamScanSummary;-><init>()V

    .line 15
    .line 16
    .line 17
    iput-object v0, p0, Lcom/samsung/android/server/wifi/connection/roam/RoamScanPeriodAnalyzer;->mPrevRoamScanSum:Lcom/samsung/android/server/wifi/connection/roam/RoamScanSummary;

    .line 18
    .line 19
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/connection/roam/RoamScanPeriodAnalyzer;->updateSsid(Lcom/samsung/android/server/wifi/connection/LogSet;)V

    .line 20
    .line 21
    .line 22
    iget-object v0, p1, Lcom/samsung/android/server/wifi/connection/LogSet;->logs:Ljava/util/ArrayList;

    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    :goto_0
    if-lez v0, :cond_7

    .line 29
    .line 30
    iget-object v1, p1, Lcom/samsung/android/server/wifi/connection/LogSet;->logs:Ljava/util/ArrayList;

    .line 31
    .line 32
    add-int/lit8 v2, v0, -0x1

    .line 33
    .line 34
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    check-cast v1, Ljava/lang/String;

    .line 39
    .line 40
    const-string v2, "CONNECTING"

    .line 41
    .line 42
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 43
    .line 44
    .line 45
    move-result v2

    .line 46
    if-eqz v2, :cond_0

    .line 47
    .line 48
    goto/16 :goto_2

    .line 49
    .line 50
    :cond_0
    const-string v2, "RESULT ROAM"

    .line 51
    .line 52
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 53
    .line 54
    .line 55
    move-result v2

    .line 56
    if-eqz v2, :cond_1

    .line 57
    .line 58
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/connection/roam/RoamScanPeriodAnalyzer;->clearAllRoamScanSummary()V

    .line 59
    .line 60
    .line 61
    iget-object v2, p0, Lcom/samsung/android/server/wifi/connection/roam/RoamScanPeriodAnalyzer;->mCurRoamScanSum:Lcom/samsung/android/server/wifi/connection/roam/RoamScanSummary;

    .line 62
    .line 63
    const-string v3, "bssid="

    .line 64
    .line 65
    invoke-static {v1, v3}, Lcom/samsung/android/server/wifi/connection/Util;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    iput-object v1, v2, Lcom/samsung/android/server/wifi/connection/roam/RoamScanSummary;->mRoamedBssid:Ljava/lang/String;

    .line 70
    .line 71
    iget-object v1, p0, Lcom/samsung/android/server/wifi/connection/roam/RoamScanPeriodAnalyzer;->mCurRoamScanSum:Lcom/samsung/android/server/wifi/connection/roam/RoamScanSummary;

    .line 72
    .line 73
    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/connection/roam/RoamScanSummary;->setStatusProcessing()V

    .line 74
    .line 75
    .line 76
    goto :goto_1

    .line 77
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/server/wifi/connection/roam/RoamScanPeriodAnalyzer;->mCurRoamScanSum:Lcom/samsung/android/server/wifi/connection/roam/RoamScanSummary;

    .line 78
    .line 79
    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/connection/roam/RoamScanSummary;->isProcessing()Z

    .line 80
    .line 81
    .line 82
    move-result v2

    .line 83
    if-eqz v2, :cond_2

    .line 84
    .line 85
    iget-object v2, p0, Lcom/samsung/android/server/wifi/connection/roam/RoamScanPeriodAnalyzer;->mCurRoamScanSum:Lcom/samsung/android/server/wifi/connection/roam/RoamScanSummary;

    .line 86
    .line 87
    invoke-direct {p0, v1, v2}, Lcom/samsung/android/server/wifi/connection/roam/RoamScanPeriodAnalyzer;->makeRoamScanSummary(Ljava/lang/String;Lcom/samsung/android/server/wifi/connection/roam/RoamScanSummary;)V

    .line 88
    .line 89
    .line 90
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/connection/roam/RoamScanPeriodAnalyzer;->checkValidRoamScanSummary()V

    .line 91
    .line 92
    .line 93
    goto :goto_1

    .line 94
    :cond_2
    const-string v2, "RESULT NO_ROAM"

    .line 95
    .line 96
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 97
    .line 98
    .line 99
    move-result v2

    .line 100
    if-eqz v2, :cond_3

    .line 101
    .line 102
    iget-object v2, p0, Lcom/samsung/android/server/wifi/connection/roam/RoamScanPeriodAnalyzer;->mCurRoamScanSum:Lcom/samsung/android/server/wifi/connection/roam/RoamScanSummary;

    .line 103
    .line 104
    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/connection/roam/RoamScanSummary;->isCompleted()Z

    .line 105
    .line 106
    .line 107
    move-result v2

    .line 108
    if-eqz v2, :cond_3

    .line 109
    .line 110
    iget-object v1, p0, Lcom/samsung/android/server/wifi/connection/roam/RoamScanPeriodAnalyzer;->mPrevRoamScanSum:Lcom/samsung/android/server/wifi/connection/roam/RoamScanSummary;

    .line 111
    .line 112
    iget-object v2, p0, Lcom/samsung/android/server/wifi/connection/roam/RoamScanPeriodAnalyzer;->mCurRoamScanSum:Lcom/samsung/android/server/wifi/connection/roam/RoamScanSummary;

    .line 113
    .line 114
    iget-object v2, v2, Lcom/samsung/android/server/wifi/connection/roam/RoamScanSummary;->mRoamedBssid:Ljava/lang/String;

    .line 115
    .line 116
    iput-object v2, v1, Lcom/samsung/android/server/wifi/connection/roam/RoamScanSummary;->mRoamedBssid:Ljava/lang/String;

    .line 117
    .line 118
    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/connection/roam/RoamScanSummary;->setStatusProcessing()V

    .line 119
    .line 120
    .line 121
    goto :goto_1

    .line 122
    :cond_3
    iget-object v2, p0, Lcom/samsung/android/server/wifi/connection/roam/RoamScanPeriodAnalyzer;->mPrevRoamScanSum:Lcom/samsung/android/server/wifi/connection/roam/RoamScanSummary;

    .line 123
    .line 124
    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/connection/roam/RoamScanSummary;->isProcessing()Z

    .line 125
    .line 126
    .line 127
    move-result v2

    .line 128
    if-eqz v2, :cond_4

    .line 129
    .line 130
    iget-object v2, p0, Lcom/samsung/android/server/wifi/connection/roam/RoamScanPeriodAnalyzer;->mPrevRoamScanSum:Lcom/samsung/android/server/wifi/connection/roam/RoamScanSummary;

    .line 131
    .line 132
    invoke-direct {p0, v1, v2}, Lcom/samsung/android/server/wifi/connection/roam/RoamScanPeriodAnalyzer;->makeRoamScanSummary(Ljava/lang/String;Lcom/samsung/android/server/wifi/connection/roam/RoamScanSummary;)V

    .line 133
    .line 134
    .line 135
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/connection/roam/RoamScanPeriodAnalyzer;->checkValidRoamScanSummary()V

    .line 136
    .line 137
    .line 138
    :cond_4
    :goto_1
    iget-object v1, p0, Lcom/samsung/android/server/wifi/connection/roam/RoamScanPeriodAnalyzer;->mCurRoamScanSum:Lcom/samsung/android/server/wifi/connection/roam/RoamScanSummary;

    .line 139
    .line 140
    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/connection/roam/RoamScanSummary;->isCompleted()Z

    .line 141
    .line 142
    .line 143
    move-result v1

    .line 144
    if-eqz v1, :cond_6

    .line 145
    .line 146
    iget-object v1, p0, Lcom/samsung/android/server/wifi/connection/roam/RoamScanPeriodAnalyzer;->mPrevRoamScanSum:Lcom/samsung/android/server/wifi/connection/roam/RoamScanSummary;

    .line 147
    .line 148
    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/connection/roam/RoamScanSummary;->isCompleted()Z

    .line 149
    .line 150
    .line 151
    move-result v1

    .line 152
    if-eqz v1, :cond_6

    .line 153
    .line 154
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/connection/roam/RoamScanPeriodAnalyzer;->checkValidScanTimeGap()Z

    .line 155
    .line 156
    .line 157
    move-result v1

    .line 158
    if-eqz v1, :cond_5

    .line 159
    .line 160
    invoke-direct {p0, p2}, Lcom/samsung/android/server/wifi/connection/roam/RoamScanPeriodAnalyzer;->makeAndSendBigDataEvent(Lcom/samsung/android/server/wifi/connection/roam/BigdataEventManager;)V

    .line 161
    .line 162
    .line 163
    :cond_5
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/connection/roam/RoamScanPeriodAnalyzer;->clearAllRoamScanSummary()V

    .line 164
    .line 165
    .line 166
    :cond_6
    add-int/lit8 v0, v0, -0x1

    .line 167
    .line 168
    goto/16 :goto_0

    .line 169
    .line 170
    :cond_7
    :goto_2
    return-void
.end method
