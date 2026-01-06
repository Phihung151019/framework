.class public Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RssiLevelQosInfo"
.end annotation


# instance fields
.field public mActiveRxBytes:J

.field public mActiveThroughput:J

.field public mActiveTime:J

.field public mActiveTxBytes:J

.field public mApCountOnChannel:D

.field public mAverageThroughput:J

.field public mCalculatedScore:I

.field public mCumulativeDnsResponseTime:J

.field public mCurrentThroughput:J

.field public mDnsFailCount:I

.field public mDnsPassCount:I

.field public mDwellTime:J

.field public mForcedSetScore:I

.field public mIpReachabilityLostCount:I

.field private mLastActiveRxBytes:J

.field private mLastActiveTime:J

.field private mLastCalculatedScore:J

.field private mLastTxBad:I

.field private mLastTxGood:I

.field public mLatestCloudScoreSummary:Ljava/lang/String;

.field public mLevelValue:I

.field public mMaximumThroughput:J

.field public mPer:D

.field public mQcFailCount:I

.field public mQcPassCount:I

.field public mScore:I

.field public mTotalRxBytes:J

.field public mTotalTxBytes:J

.field public mTxBad:I

.field public mTxGood:I

.field final synthetic this$0:Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;


# direct methods
.method public constructor <init>(Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;I)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->this$0:Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    iput p2, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->mLevelValue:I

    .line 7
    .line 8
    invoke-static {}, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->-$$Nest$sfgetINDEX_TO_SCORE()[I

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    const/4 p2, 0x0

    .line 13
    aget p1, p1, p2

    .line 14
    .line 15
    iput p1, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->mScore:I

    .line 16
    .line 17
    invoke-static {}, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->-$$Nest$sfgetINDEX_TO_SCORE()[I

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    aget p1, p1, p2

    .line 22
    .line 23
    iput p1, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->mCalculatedScore:I

    .line 24
    .line 25
    invoke-static {}, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->-$$Nest$sfgetINDEX_TO_SCORE()[I

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    aget p1, p1, p2

    .line 30
    .line 31
    iput p1, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->mForcedSetScore:I

    .line 32
    .line 33
    const-wide/16 v0, 0x0

    .line 34
    .line 35
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->mMaximumThroughput:J

    .line 36
    .line 37
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->mCurrentThroughput:J

    .line 38
    .line 39
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->mAverageThroughput:J

    .line 40
    .line 41
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->mActiveThroughput:J

    .line 42
    .line 43
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->mTotalTxBytes:J

    .line 44
    .line 45
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->mTotalRxBytes:J

    .line 46
    .line 47
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->mActiveTxBytes:J

    .line 48
    .line 49
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->mActiveRxBytes:J

    .line 50
    .line 51
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->mDwellTime:J

    .line 52
    .line 53
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->mActiveTime:J

    .line 54
    .line 55
    iput p2, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->mTxBad:I

    .line 56
    .line 57
    iput p2, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->mTxGood:I

    .line 58
    .line 59
    iput p2, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->mQcPassCount:I

    .line 60
    .line 61
    iput p2, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->mQcFailCount:I

    .line 62
    .line 63
    iput p2, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->mDnsPassCount:I

    .line 64
    .line 65
    iput p2, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->mDnsFailCount:I

    .line 66
    .line 67
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->mCumulativeDnsResponseTime:J

    .line 68
    .line 69
    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    .line 70
    .line 71
    iput-wide v2, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->mApCountOnChannel:D

    .line 72
    .line 73
    iput p2, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->mIpReachabilityLostCount:I

    .line 74
    .line 75
    const-wide/16 v2, 0x0

    .line 76
    .line 77
    iput-wide v2, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->mPer:D

    .line 78
    .line 79
    iget p1, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->mCalculatedScore:I

    .line 80
    .line 81
    int-to-long v2, p1

    .line 82
    iput-wide v2, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->mLastCalculatedScore:J

    .line 83
    .line 84
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->mLastActiveTime:J

    .line 85
    .line 86
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->mLastActiveRxBytes:J

    .line 87
    .line 88
    iput p2, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->mLastTxBad:I

    .line 89
    .line 90
    iput p2, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->mLastTxGood:I

    .line 91
    .line 92
    const-string p1, ""

    .line 93
    .line 94
    iput-object p1, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->mLatestCloudScoreSummary:Ljava/lang/String;

    .line 95
    .line 96
    return-void
.end method

.method private showToastBssidQosMapInfo(I)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->this$0:Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->-$$Nest$fgettoastCount(Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;)I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x1

    .line 8
    add-int/2addr v1, v2

    .line 9
    invoke-static {v0, v1}, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->-$$Nest$fputtoastCount(Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;I)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->this$0:Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;

    .line 13
    .line 14
    invoke-static {v0}, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->-$$Nest$fgettoastCount(Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;)I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    rem-int/lit8 v0, v0, 0x1e

    .line 19
    .line 20
    const-string v1, "Level["

    .line 21
    .line 22
    if-nez v0, :cond_2

    .line 23
    .line 24
    iget-object v0, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->this$0:Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;

    .line 25
    .line 26
    invoke-static {v0, p1}, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->-$$Nest$mgetLevelValue(Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;I)I

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    new-instance v3, Ljava/text/DecimalFormat;

    .line 31
    .line 32
    const-string v4, "#.##"

    .line 33
    .line 34
    invoke-direct {v3, v4}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    new-instance v4, Ljava/lang/StringBuilder;

    .line 38
    .line 39
    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    const-string v1, "N/A"

    .line 43
    .line 44
    const/16 v5, -0x64

    .line 45
    .line 46
    if-ne p1, v5, :cond_0

    .line 47
    .line 48
    move-object v0, v1

    .line 49
    goto :goto_0

    .line 50
    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    :goto_0
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    const-string v0, "]  "

    .line 58
    .line 59
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    if-ne p1, v5, :cond_1

    .line 63
    .line 64
    goto :goto_1

    .line 65
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 66
    .line 67
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    const-string p1, " dBm "

    .line 74
    .line 75
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v1

    .line 82
    :goto_1
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    iget-wide v0, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->mCurrentThroughput:J

    .line 86
    .line 87
    const-wide/16 v5, 0x3e8

    .line 88
    .line 89
    div-long/2addr v0, v5

    .line 90
    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    const-string p1, " kbps\nMax Tput: "

    .line 94
    .line 95
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    iget-wide v0, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->mMaximumThroughput:J

    .line 99
    .line 100
    const-wide/32 v5, 0xf4240

    .line 101
    .line 102
    .line 103
    div-long/2addr v0, v5

    .line 104
    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    const-string p1, " Mbps - "

    .line 108
    .line 109
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    invoke-static {}, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->-$$Nest$sfgetINDEX_TO_STRING()[Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v0

    .line 116
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->getQualityIndexByMaxTput()I

    .line 117
    .line 118
    .line 119
    move-result v1

    .line 120
    aget-object v0, v0, v1

    .line 121
    .line 122
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    const-string v0, "\nActive Tput: "

    .line 126
    .line 127
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    iget-wide v0, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->mActiveThroughput:J

    .line 131
    .line 132
    div-long/2addr v0, v5

    .line 133
    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    .line 138
    .line 139
    invoke-static {}, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->-$$Nest$sfgetINDEX_TO_STRING()[Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object p1

    .line 143
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->getQualityIndexByActiveTput()I

    .line 144
    .line 145
    .line 146
    move-result v0

    .line 147
    aget-object p1, p1, v0

    .line 148
    .line 149
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    .line 151
    .line 152
    const-string p1, "\nPER: "

    .line 153
    .line 154
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    .line 156
    .line 157
    iget-wide v0, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->mPer:D

    .line 158
    .line 159
    invoke-virtual {v3, v0, v1}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object p1

    .line 163
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    .line 165
    .line 166
    const-string p1, "% - "

    .line 167
    .line 168
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    .line 170
    .line 171
    invoke-static {}, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->-$$Nest$sfgetINDEX_TO_STRING()[Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object p1

    .line 175
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->getQualityIndexByPer()I

    .line 176
    .line 177
    .line 178
    move-result v0

    .line 179
    aget-object p1, p1, v0

    .line 180
    .line 181
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    .line 183
    .line 184
    const-string p1, "\nRESULT: "

    .line 185
    .line 186
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    .line 188
    .line 189
    invoke-static {}, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->-$$Nest$sfgetINDEX_TO_STRING()[Ljava/lang/String;

    .line 190
    .line 191
    .line 192
    move-result-object p1

    .line 193
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->getQualityIndex()I

    .line 194
    .line 195
    .line 196
    move-result v0

    .line 197
    aget-object p1, p1, v0

    .line 198
    .line 199
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    .line 201
    .line 202
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 203
    .line 204
    .line 205
    move-result-object p1

    .line 206
    iget-object p0, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->this$0:Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;

    .line 207
    .line 208
    invoke-static {p0}, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->-$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;)Landroid/content/Context;

    .line 209
    .line 210
    .line 211
    move-result-object p0

    .line 212
    invoke-static {p0, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 213
    .line 214
    .line 215
    move-result-object p0

    .line 216
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    .line 217
    .line 218
    .line 219
    return-void

    .line 220
    :cond_2
    iget-object p1, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->this$0:Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;

    .line 221
    .line 222
    invoke-static {p1}, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->-$$Nest$fgettoastCount(Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;)I

    .line 223
    .line 224
    .line 225
    move-result p1

    .line 226
    rem-int/lit8 p1, p1, 0x1e

    .line 227
    .line 228
    const/16 v0, 0xf

    .line 229
    .line 230
    if-ne p1, v0, :cond_4

    .line 231
    .line 232
    new-instance p1, Ljava/lang/StringBuilder;

    .line 233
    .line 234
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 235
    .line 236
    .line 237
    iget-object v0, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->this$0:Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;

    .line 238
    .line 239
    iget-object v0, v0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->mSsid:Ljava/lang/String;

    .line 240
    .line 241
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 242
    .line 243
    .line 244
    const-string v0, " ["

    .line 245
    .line 246
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 247
    .line 248
    .line 249
    iget-object v0, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->this$0:Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;

    .line 250
    .line 251
    invoke-static {v0}, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->-$$Nest$fgetmBssid(Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;)Ljava/lang/String;

    .line 252
    .line 253
    .line 254
    move-result-object v0

    .line 255
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 256
    .line 257
    .line 258
    const-string v0, "] - #Conn: "

    .line 259
    .line 260
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 261
    .line 262
    .line 263
    iget-object v0, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->this$0:Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;

    .line 264
    .line 265
    iget v0, v0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->mNumberOfConnections:I

    .line 266
    .line 267
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 268
    .line 269
    .line 270
    const-string v0, ", isCaptivePortal: "

    .line 271
    .line 272
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 273
    .line 274
    .line 275
    iget-object v0, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->this$0:Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;

    .line 276
    .line 277
    iget-boolean v0, v0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->mIsCaptivePortal:Z

    .line 278
    .line 279
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 280
    .line 281
    .line 282
    const-string v0, ", Latest DNS Result: "

    .line 283
    .line 284
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 285
    .line 286
    .line 287
    iget-object v0, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->this$0:Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;

    .line 288
    .line 289
    iget v0, v0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->mLatestDnsResult:I

    .line 290
    .line 291
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 292
    .line 293
    .line 294
    const-string v0, "\n"

    .line 295
    .line 296
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 297
    .line 298
    .line 299
    iget-object v0, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->this$0:Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;

    .line 300
    .line 301
    iget-object v0, v0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->mBssidQosMap:Ljava/util/HashMap;

    .line 302
    .line 303
    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 304
    .line 305
    .line 306
    move-result-object v0

    .line 307
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 308
    .line 309
    .line 310
    move-result-object v0

    .line 311
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 312
    .line 313
    .line 314
    move-result v3

    .line 315
    if-eqz v3, :cond_3

    .line 316
    .line 317
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 318
    .line 319
    .line 320
    move-result-object v3

    .line 321
    check-cast v3, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;

    .line 322
    .line 323
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 324
    .line 325
    .line 326
    iget v4, v3, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->mLevelValue:I

    .line 327
    .line 328
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 329
    .line 330
    .line 331
    const-string v4, "] - Quality: "

    .line 332
    .line 333
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 334
    .line 335
    .line 336
    invoke-static {}, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->-$$Nest$sfgetINDEX_TO_STRING()[Ljava/lang/String;

    .line 337
    .line 338
    .line 339
    move-result-object v4

    .line 340
    invoke-virtual {v3}, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->getQualityIndex()I

    .line 341
    .line 342
    .line 343
    move-result v5

    .line 344
    aget-object v4, v4, v5

    .line 345
    .line 346
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 347
    .line 348
    .line 349
    const-string v4, "["

    .line 350
    .line 351
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 352
    .line 353
    .line 354
    invoke-static {}, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->-$$Nest$sfgetINDEX_TO_STRING_SHORT()[Ljava/lang/String;

    .line 355
    .line 356
    .line 357
    move-result-object v4

    .line 358
    invoke-virtual {v3}, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->getQualityIndexByMaxTput()I

    .line 359
    .line 360
    .line 361
    move-result v5

    .line 362
    aget-object v4, v4, v5

    .line 363
    .line 364
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 365
    .line 366
    .line 367
    const-string v4, "/"

    .line 368
    .line 369
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 370
    .line 371
    .line 372
    invoke-static {}, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->-$$Nest$sfgetINDEX_TO_STRING_SHORT()[Ljava/lang/String;

    .line 373
    .line 374
    .line 375
    move-result-object v5

    .line 376
    invoke-virtual {v3}, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->getQualityIndexByActiveTput()I

    .line 377
    .line 378
    .line 379
    move-result v6

    .line 380
    aget-object v5, v5, v6

    .line 381
    .line 382
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 383
    .line 384
    .line 385
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 386
    .line 387
    .line 388
    invoke-static {}, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->-$$Nest$sfgetINDEX_TO_STRING_SHORT()[Ljava/lang/String;

    .line 389
    .line 390
    .line 391
    move-result-object v4

    .line 392
    invoke-virtual {v3}, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->getQualityIndexByPer()I

    .line 393
    .line 394
    .line 395
    move-result v3

    .line 396
    aget-object v3, v4, v3

    .line 397
    .line 398
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 399
    .line 400
    .line 401
    const-string v3, "] \n"

    .line 402
    .line 403
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 404
    .line 405
    .line 406
    goto :goto_2

    .line 407
    :cond_3
    iget-object p0, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->this$0:Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;

    .line 408
    .line 409
    invoke-static {p0}, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->-$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;)Landroid/content/Context;

    .line 410
    .line 411
    .line 412
    move-result-object p0

    .line 413
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 414
    .line 415
    .line 416
    move-result-object p1

    .line 417
    invoke-static {p0, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 418
    .line 419
    .line 420
    move-result-object p0

    .line 421
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    .line 422
    .line 423
    .line 424
    :cond_4
    return-void
.end method


# virtual methods
.method public getQualityIndex()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->this$0:Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;

    .line 2
    .line 3
    iget p0, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->mScore:I

    .line 4
    .line 5
    invoke-static {v0, p0}, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->-$$Nest$mgetQualityIndexFromScore(Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;I)I

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method public getQualityIndexByActiveTput()I
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->mActiveTime:J

    .line 2
    .line 3
    const-wide/16 v2, 0x7530

    .line 4
    .line 5
    cmp-long v0, v0, v2

    .line 6
    .line 7
    if-ltz v0, :cond_1

    .line 8
    .line 9
    iget-wide v0, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->mTotalRxBytes:J

    .line 10
    .line 11
    const-wide/32 v2, 0xf4240

    .line 12
    .line 13
    .line 14
    cmp-long v0, v0, v2

    .line 15
    .line 16
    if-gez v0, :cond_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->this$0:Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;

    .line 20
    .line 21
    iget-wide v1, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->mActiveThroughput:J

    .line 22
    .line 23
    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->activeTputToIndex(J)I

    .line 24
    .line 25
    .line 26
    move-result p0

    .line 27
    return p0

    .line 28
    :cond_1
    :goto_0
    const/4 p0, 0x0

    .line 29
    return p0
.end method

.method public getQualityIndexByMaxTput()I
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->mDwellTime:J

    .line 2
    .line 3
    const-wide/32 v2, 0xea60

    .line 4
    .line 5
    .line 6
    cmp-long v0, v0, v2

    .line 7
    .line 8
    if-ltz v0, :cond_1

    .line 9
    .line 10
    iget-wide v0, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->mTotalRxBytes:J

    .line 11
    .line 12
    const-wide/32 v2, 0xf4240

    .line 13
    .line 14
    .line 15
    cmp-long v0, v0, v2

    .line 16
    .line 17
    if-gez v0, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->this$0:Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;

    .line 21
    .line 22
    iget-wide v1, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->mMaximumThroughput:J

    .line 23
    .line 24
    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->maxTputToIndex(J)I

    .line 25
    .line 26
    .line 27
    move-result p0

    .line 28
    return p0

    .line 29
    :cond_1
    :goto_0
    const/4 p0, 0x0

    .line 30
    return p0
.end method

.method public getQualityIndexByPer()I
    .locals 5

    .line 1
    iget v0, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->mCalculatedScore:I

    .line 2
    .line 3
    invoke-static {}, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->-$$Nest$sfgetINDEX_TO_SCORE()[I

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const/4 v2, 0x0

    .line 8
    aget v1, v1, v2

    .line 9
    .line 10
    if-ne v0, v1, :cond_0

    .line 11
    .line 12
    return v2

    .line 13
    :cond_0
    iget v0, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->mTxBad:I

    .line 14
    .line 15
    iget v1, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->mTxGood:I

    .line 16
    .line 17
    add-int/2addr v0, v1

    .line 18
    int-to-long v0, v0

    .line 19
    const-wide/16 v3, 0x5dc

    .line 20
    .line 21
    cmp-long v0, v0, v3

    .line 22
    .line 23
    if-gez v0, :cond_1

    .line 24
    .line 25
    return v2

    .line 26
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->this$0:Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;

    .line 27
    .line 28
    iget-wide v1, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->mPer:D

    .line 29
    .line 30
    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->perToIndex(D)I

    .line 31
    .line 32
    .line 33
    move-result p0

    .line 34
    return p0
.end method

.method public getScoreForCloud()Landroid/os/Bundle;
    .locals 21

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-wide v1, v0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->mActiveTime:J

    .line 4
    .line 5
    iget-wide v3, v0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->mLastActiveTime:J

    .line 6
    .line 7
    sub-long/2addr v1, v3

    .line 8
    new-instance v3, Landroid/os/Bundle;

    .line 9
    .line 10
    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 11
    .line 12
    .line 13
    const-wide/16 v4, 0x7530

    .line 14
    .line 15
    cmp-long v4, v1, v4

    .line 16
    .line 17
    const-string v5, "weight"

    .line 18
    .line 19
    const-string v6, "score"

    .line 20
    .line 21
    if-gez v4, :cond_0

    .line 22
    .line 23
    invoke-static {}, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->-$$Nest$sfgetINDEX_TO_SCORE()[I

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    const/4 v1, 0x0

    .line 28
    aget v0, v0, v1

    .line 29
    .line 30
    invoke-virtual {v3, v6, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 31
    .line 32
    .line 33
    const-wide/16 v0, 0x0

    .line 34
    .line 35
    invoke-virtual {v3, v5, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 36
    .line 37
    .line 38
    return-object v3

    .line 39
    :cond_0
    iget-wide v7, v0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->mActiveRxBytes:J

    .line 40
    .line 41
    iget-wide v9, v0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->mLastActiveRxBytes:J

    .line 42
    .line 43
    sub-long/2addr v7, v9

    .line 44
    const-wide/16 v9, 0x1f40

    .line 45
    .line 46
    mul-long/2addr v7, v9

    .line 47
    div-long/2addr v7, v1

    .line 48
    iget v4, v0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->mTxBad:I

    .line 49
    .line 50
    iget v9, v0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->mLastTxBad:I

    .line 51
    .line 52
    sub-int/2addr v4, v9

    .line 53
    iget v9, v0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->mTxGood:I

    .line 54
    .line 55
    iget v10, v0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->mLastTxGood:I

    .line 56
    .line 57
    sub-int/2addr v9, v10

    .line 58
    int-to-double v10, v4

    .line 59
    int-to-double v12, v9

    .line 60
    add-double/2addr v12, v10

    .line 61
    div-double/2addr v10, v12

    .line 62
    const-wide/high16 v12, 0x4059000000000000L    # 100.0

    .line 63
    .line 64
    mul-double/2addr v10, v12

    .line 65
    iget-object v12, v0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->this$0:Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;

    .line 66
    .line 67
    iget-wide v13, v0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->mMaximumThroughput:J

    .line 68
    .line 69
    invoke-virtual {v12, v13, v14}, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->maxTputToIndex(J)I

    .line 70
    .line 71
    .line 72
    move-result v13

    .line 73
    iget-object v14, v0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->this$0:Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;

    .line 74
    .line 75
    invoke-virtual {v14, v7, v8}, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->activeTputToIndex(J)I

    .line 76
    .line 77
    .line 78
    move-result v14

    .line 79
    iget-object v15, v0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->this$0:Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;

    .line 80
    .line 81
    invoke-virtual {v15, v10, v11}, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->perToIndex(D)I

    .line 82
    .line 83
    .line 84
    move-result v15

    .line 85
    invoke-virtual {v12, v13, v14, v15}, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->calculateScore(III)I

    .line 86
    .line 87
    .line 88
    move-result v12

    .line 89
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->updateQualityScore()V

    .line 90
    .line 91
    .line 92
    new-instance v13, Ljava/text/DecimalFormat;

    .line 93
    .line 94
    const-string v14, "#.##"

    .line 95
    .line 96
    invoke-direct {v13, v14}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    new-instance v14, Ljava/lang/StringBuilder;

    .line 100
    .line 101
    const-string v15, ""

    .line 102
    .line 103
    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 107
    .line 108
    .line 109
    move-result-wide v15

    .line 110
    const-wide/16 v17, 0x3e8

    .line 111
    .line 112
    move-wide/from16 v19, v7

    .line 113
    .line 114
    div-long v7, v15, v17

    .line 115
    .line 116
    invoke-virtual {v14, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v7

    .line 123
    :try_start_0
    new-instance v8, Ljava/text/SimpleDateFormat;

    .line 124
    .line 125
    const-string v14, "MM-dd HH:mm:ss.SSS"

    .line 126
    .line 127
    sget-object v15, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 128
    .line 129
    invoke-direct {v8, v14, v15}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 130
    .line 131
    .line 132
    new-instance v14, Ljava/util/Date;

    .line 133
    .line 134
    invoke-direct {v14}, Ljava/util/Date;-><init>()V

    .line 135
    .line 136
    .line 137
    invoke-virtual {v8, v14}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v7
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 141
    :catch_0
    const-string v8, "getScoreForCloud["

    .line 142
    .line 143
    const-string v14, "]: LastScore: "

    .line 144
    .line 145
    invoke-static {v8, v7, v14}, Lcom/samsung/android/server/wifi/SemClientModeImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    .line 147
    .line 148
    move-result-object v7

    .line 149
    iget-wide v14, v0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->mLastCalculatedScore:J

    .line 150
    .line 151
    invoke-virtual {v7, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 152
    .line 153
    .line 154
    const-string v8, " @ "

    .line 155
    .line 156
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    .line 158
    .line 159
    iget-wide v14, v0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->mLastActiveTime:J

    .line 160
    .line 161
    invoke-virtual {v7, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 162
    .line 163
    .line 164
    const-string v14, ", CurrentScore: "

    .line 165
    .line 166
    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    .line 168
    .line 169
    iget v14, v0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->mCalculatedScore:I

    .line 170
    .line 171
    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 172
    .line 173
    .line 174
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    .line 176
    .line 177
    iget-wide v14, v0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->mActiveTime:J

    .line 178
    .line 179
    invoke-virtual {v7, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 180
    .line 181
    .line 182
    const-string v14, ", calculatedScoreFromDelta: "

    .line 183
    .line 184
    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    .line 186
    .line 187
    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 188
    .line 189
    .line 190
    const-string v14, ", Mx/dAc: "

    .line 191
    .line 192
    invoke-static {v7, v8, v1, v2, v14}, Lcom/samsung/android/server/wifi/SemApeService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;JLjava/lang/String;)V

    .line 193
    .line 194
    .line 195
    iget-wide v14, v0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->mMaximumThroughput:J

    .line 196
    .line 197
    div-long v14, v14, v17

    .line 198
    .line 199
    invoke-virtual {v7, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 200
    .line 201
    .line 202
    const-string v8, "/"

    .line 203
    .line 204
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    .line 206
    .line 207
    div-long v14, v19, v17

    .line 208
    .line 209
    invoke-virtual {v7, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 210
    .line 211
    .line 212
    const-string v14, ", dTB/dTG: "

    .line 213
    .line 214
    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    .line 216
    .line 217
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 218
    .line 219
    .line 220
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    .line 222
    .line 223
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 224
    .line 225
    .line 226
    const-string v4, " ["

    .line 227
    .line 228
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 229
    .line 230
    .line 231
    invoke-virtual {v13, v10, v11}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    .line 232
    .line 233
    .line 234
    move-result-object v4

    .line 235
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 236
    .line 237
    .line 238
    const-string v4, "%]"

    .line 239
    .line 240
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 241
    .line 242
    .line 243
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 244
    .line 245
    .line 246
    move-result-object v4

    .line 247
    iput-object v4, v0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->mLatestCloudScoreSummary:Ljava/lang/String;

    .line 248
    .line 249
    invoke-static {}, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->-$$Nest$sfgetDBG()Z

    .line 250
    .line 251
    .line 252
    move-result v4

    .line 253
    if-eqz v4, :cond_1

    .line 254
    .line 255
    const-string v4, "OpenNetworkQos[4.00]"

    .line 256
    .line 257
    iget-object v7, v0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->mLatestCloudScoreSummary:Ljava/lang/String;

    .line 258
    .line 259
    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    .line 261
    .line 262
    :cond_1
    iget v4, v0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->mCalculatedScore:I

    .line 263
    .line 264
    int-to-long v7, v4

    .line 265
    iput-wide v7, v0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->mLastCalculatedScore:J

    .line 266
    .line 267
    iget-wide v7, v0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->mActiveRxBytes:J

    .line 268
    .line 269
    iput-wide v7, v0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->mLastActiveRxBytes:J

    .line 270
    .line 271
    iget-wide v7, v0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->mActiveTime:J

    .line 272
    .line 273
    iput-wide v7, v0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->mLastActiveTime:J

    .line 274
    .line 275
    iget v4, v0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->mTxBad:I

    .line 276
    .line 277
    iput v4, v0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->mLastTxBad:I

    .line 278
    .line 279
    iget v4, v0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->mTxGood:I

    .line 280
    .line 281
    iput v4, v0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->mLastTxGood:I

    .line 282
    .line 283
    invoke-virtual {v3, v6, v12}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 284
    .line 285
    .line 286
    invoke-virtual {v3, v5, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 287
    .line 288
    .line 289
    return-object v3
.end method

.method public toString()Ljava/lang/String;
    .locals 13

    .line 1
    new-instance v0, Ljava/text/DecimalFormat;

    .line 2
    .line 3
    const-string v1, "#.##"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    new-instance v1, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 11
    .line 12
    .line 13
    invoke-static {}, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->-$$Nest$sfgetDBG()Z

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    const-wide/16 v3, 0x0

    .line 18
    .line 19
    const-string v5, " ["

    .line 20
    .line 21
    const-string v6, ")-"

    .line 22
    .line 23
    const-string v7, "("

    .line 24
    .line 25
    const-string v8, "["

    .line 26
    .line 27
    const-wide/16 v9, 0x3e8

    .line 28
    .line 29
    const-string v11, "/"

    .line 30
    .line 31
    if-eqz v2, :cond_2

    .line 32
    .line 33
    const-string v2, "RSSI Level["

    .line 34
    .line 35
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    iget v2, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->mLevelValue:I

    .line 39
    .line 40
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string v2, "] - Quality: "

    .line 44
    .line 45
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-static {}, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->-$$Nest$sfgetINDEX_TO_STRING()[Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->getQualityIndex()I

    .line 53
    .line 54
    .line 55
    move-result v12

    .line 56
    aget-object v2, v2, v12

    .line 57
    .line 58
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    iget v2, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->mScore:I

    .line 65
    .line 66
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    iget v2, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->mForcedSetScore:I

    .line 73
    .line 74
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    iget v2, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->mCalculatedScore:I

    .line 81
    .line 82
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-static {}, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->-$$Nest$sfgetINDEX_TO_STRING()[Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v2

    .line 92
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->getQualityIndexByMaxTput()I

    .line 93
    .line 94
    .line 95
    move-result v6

    .line 96
    aget-object v2, v2, v6

    .line 97
    .line 98
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    invoke-static {}, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->-$$Nest$sfgetINDEX_TO_STRING()[Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v2

    .line 108
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->getQualityIndexByActiveTput()I

    .line 109
    .line 110
    .line 111
    move-result v6

    .line 112
    aget-object v2, v2, v6

    .line 113
    .line 114
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    invoke-static {}, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->-$$Nest$sfgetINDEX_TO_STRING()[Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v2

    .line 124
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->getQualityIndexByPer()I

    .line 125
    .line 126
    .line 127
    move-result v6

    .line 128
    aget-object v2, v2, v6

    .line 129
    .line 130
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    const-string v2, "] DwellTime/ActiveTime: "

    .line 134
    .line 135
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    .line 137
    .line 138
    iget-wide v6, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->mDwellTime:J

    .line 139
    .line 140
    div-long/2addr v6, v9

    .line 141
    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 142
    .line 143
    .line 144
    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    .line 146
    .line 147
    iget-wide v6, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->mActiveTime:J

    .line 148
    .line 149
    div-long/2addr v6, v9

    .line 150
    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    .line 153
    const-string v2, " sec, Max/Ave/Active/Curr Tput "

    .line 154
    .line 155
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    .line 157
    .line 158
    iget-wide v6, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->mMaximumThroughput:J

    .line 159
    .line 160
    div-long/2addr v6, v9

    .line 161
    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 162
    .line 163
    .line 164
    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    .line 166
    .line 167
    iget-wide v6, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->mAverageThroughput:J

    .line 168
    .line 169
    div-long/2addr v6, v9

    .line 170
    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 171
    .line 172
    .line 173
    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    .line 175
    .line 176
    iget-wide v6, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->mActiveThroughput:J

    .line 177
    .line 178
    div-long/2addr v6, v9

    .line 179
    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 180
    .line 181
    .line 182
    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    .line 184
    .line 185
    iget-wide v6, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->mCurrentThroughput:J

    .line 186
    .line 187
    div-long/2addr v6, v9

    .line 188
    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 189
    .line 190
    .line 191
    const-string v2, " kbps, TxBad/TxGood: "

    .line 192
    .line 193
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    .line 195
    .line 196
    iget v2, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->mTxBad:I

    .line 197
    .line 198
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 199
    .line 200
    .line 201
    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    .line 203
    .line 204
    iget v2, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->mTxGood:I

    .line 205
    .line 206
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 207
    .line 208
    .line 209
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    .line 211
    .line 212
    iget-wide v5, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->mPer:D

    .line 213
    .line 214
    invoke-virtual {v0, v5, v6}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    .line 215
    .line 216
    .line 217
    move-result-object v2

    .line 218
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 219
    .line 220
    .line 221
    const-string v2, "%], TxBytes: "

    .line 222
    .line 223
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 224
    .line 225
    .line 226
    iget-object v2, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->this$0:Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;

    .line 227
    .line 228
    invoke-static {v2}, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->-$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;)Landroid/content/Context;

    .line 229
    .line 230
    .line 231
    move-result-object v2

    .line 232
    iget-wide v5, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->mTotalTxBytes:J

    .line 233
    .line 234
    invoke-static {v2, v5, v6}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    .line 235
    .line 236
    .line 237
    move-result-object v2

    .line 238
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 239
    .line 240
    .line 241
    const-string v2, ", RxBytes: "

    .line 242
    .line 243
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 244
    .line 245
    .line 246
    iget-object v2, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->this$0:Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;

    .line 247
    .line 248
    invoke-static {v2}, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->-$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;)Landroid/content/Context;

    .line 249
    .line 250
    .line 251
    move-result-object v2

    .line 252
    iget-wide v5, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->mTotalRxBytes:J

    .line 253
    .line 254
    invoke-static {v2, v5, v6}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    .line 255
    .line 256
    .line 257
    move-result-object v2

    .line 258
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 259
    .line 260
    .line 261
    const-string v2, ", QC P/F: "

    .line 262
    .line 263
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 264
    .line 265
    .line 266
    iget v2, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->mQcPassCount:I

    .line 267
    .line 268
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 269
    .line 270
    .line 271
    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 272
    .line 273
    .line 274
    iget v2, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->mQcFailCount:I

    .line 275
    .line 276
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 277
    .line 278
    .line 279
    const-string v2, ", DNS P/F: "

    .line 280
    .line 281
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 282
    .line 283
    .line 284
    iget v2, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->mDnsPassCount:I

    .line 285
    .line 286
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 287
    .line 288
    .line 289
    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 290
    .line 291
    .line 292
    iget v2, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->mQcFailCount:I

    .line 293
    .line 294
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 295
    .line 296
    .line 297
    const-string v2, ", DNS RTT: "

    .line 298
    .line 299
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 300
    .line 301
    .line 302
    iget v2, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->mDnsPassCount:I

    .line 303
    .line 304
    if-nez v2, :cond_0

    .line 305
    .line 306
    goto :goto_0

    .line 307
    :cond_0
    iget-wide v3, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->mCumulativeDnsResponseTime:J

    .line 308
    .line 309
    int-to-long v5, v2

    .line 310
    div-long/2addr v3, v5

    .line 311
    :goto_0
    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 312
    .line 313
    .line 314
    const-string v2, "msec, ApCount: "

    .line 315
    .line 316
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 317
    .line 318
    .line 319
    iget-wide v2, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->mApCountOnChannel:D

    .line 320
    .line 321
    invoke-virtual {v0, v2, v3}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    .line 322
    .line 323
    .line 324
    move-result-object v0

    .line 325
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 326
    .line 327
    .line 328
    const-string v0, ", "

    .line 329
    .line 330
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 331
    .line 332
    .line 333
    iget v0, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->mIpReachabilityLostCount:I

    .line 334
    .line 335
    if-nez v0, :cond_1

    .line 336
    .line 337
    const-string p0, ""

    .line 338
    .line 339
    goto :goto_1

    .line 340
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 341
    .line 342
    const-string v2, "mIpReachabilityLostCount: "

    .line 343
    .line 344
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 345
    .line 346
    .line 347
    iget p0, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->mIpReachabilityLostCount:I

    .line 348
    .line 349
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 350
    .line 351
    .line 352
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 353
    .line 354
    .line 355
    move-result-object p0

    .line 356
    :goto_1
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 357
    .line 358
    .line 359
    goto/16 :goto_3

    .line 360
    .line 361
    :cond_2
    const-string v2, "Lev["

    .line 362
    .line 363
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 364
    .line 365
    .line 366
    iget v2, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->mLevelValue:I

    .line 367
    .line 368
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 369
    .line 370
    .line 371
    const-string v2, "] - Q: "

    .line 372
    .line 373
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 374
    .line 375
    .line 376
    invoke-static {}, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->-$$Nest$sfgetINDEX_TO_STRING_SHORT()[Ljava/lang/String;

    .line 377
    .line 378
    .line 379
    move-result-object v2

    .line 380
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->getQualityIndex()I

    .line 381
    .line 382
    .line 383
    move-result v12

    .line 384
    aget-object v2, v2, v12

    .line 385
    .line 386
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 387
    .line 388
    .line 389
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 390
    .line 391
    .line 392
    iget v2, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->mScore:I

    .line 393
    .line 394
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 395
    .line 396
    .line 397
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 398
    .line 399
    .line 400
    iget v2, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->mForcedSetScore:I

    .line 401
    .line 402
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 403
    .line 404
    .line 405
    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 406
    .line 407
    .line 408
    iget v2, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->mCalculatedScore:I

    .line 409
    .line 410
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 411
    .line 412
    .line 413
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 414
    .line 415
    .line 416
    invoke-static {}, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->-$$Nest$sfgetINDEX_TO_STRING_SHORT()[Ljava/lang/String;

    .line 417
    .line 418
    .line 419
    move-result-object v2

    .line 420
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->getQualityIndexByMaxTput()I

    .line 421
    .line 422
    .line 423
    move-result v6

    .line 424
    aget-object v2, v2, v6

    .line 425
    .line 426
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 427
    .line 428
    .line 429
    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 430
    .line 431
    .line 432
    invoke-static {}, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->-$$Nest$sfgetINDEX_TO_STRING_SHORT()[Ljava/lang/String;

    .line 433
    .line 434
    .line 435
    move-result-object v2

    .line 436
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->getQualityIndexByActiveTput()I

    .line 437
    .line 438
    .line 439
    move-result v6

    .line 440
    aget-object v2, v2, v6

    .line 441
    .line 442
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 443
    .line 444
    .line 445
    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 446
    .line 447
    .line 448
    invoke-static {}, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->-$$Nest$sfgetINDEX_TO_STRING_SHORT()[Ljava/lang/String;

    .line 449
    .line 450
    .line 451
    move-result-object v2

    .line 452
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->getQualityIndexByPer()I

    .line 453
    .line 454
    .line 455
    move-result v6

    .line 456
    aget-object v2, v2, v6

    .line 457
    .line 458
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 459
    .line 460
    .line 461
    const-string v2, "], DT/AT: "

    .line 462
    .line 463
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 464
    .line 465
    .line 466
    iget-wide v6, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->mDwellTime:J

    .line 467
    .line 468
    div-long/2addr v6, v9

    .line 469
    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 470
    .line 471
    .line 472
    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 473
    .line 474
    .line 475
    iget-wide v6, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->mActiveTime:J

    .line 476
    .line 477
    div-long/2addr v6, v9

    .line 478
    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 479
    .line 480
    .line 481
    const-string v2, ", Mx/Av/Ac/Cr: "

    .line 482
    .line 483
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 484
    .line 485
    .line 486
    iget-wide v6, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->mMaximumThroughput:J

    .line 487
    .line 488
    div-long/2addr v6, v9

    .line 489
    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 490
    .line 491
    .line 492
    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 493
    .line 494
    .line 495
    iget-wide v6, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->mAverageThroughput:J

    .line 496
    .line 497
    div-long/2addr v6, v9

    .line 498
    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 499
    .line 500
    .line 501
    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 502
    .line 503
    .line 504
    iget-wide v6, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->mActiveThroughput:J

    .line 505
    .line 506
    div-long/2addr v6, v9

    .line 507
    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 508
    .line 509
    .line 510
    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 511
    .line 512
    .line 513
    iget-wide v6, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->mCurrentThroughput:J

    .line 514
    .line 515
    div-long/2addr v6, v9

    .line 516
    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 517
    .line 518
    .line 519
    const-string v2, ", TB/TG: "

    .line 520
    .line 521
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 522
    .line 523
    .line 524
    iget v2, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->mTxBad:I

    .line 525
    .line 526
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 527
    .line 528
    .line 529
    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 530
    .line 531
    .line 532
    iget v2, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->mTxGood:I

    .line 533
    .line 534
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 535
    .line 536
    .line 537
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 538
    .line 539
    .line 540
    iget-wide v5, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->mPer:D

    .line 541
    .line 542
    invoke-virtual {v0, v5, v6}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    .line 543
    .line 544
    .line 545
    move-result-object v0

    .line 546
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 547
    .line 548
    .line 549
    const-string v0, "%], Tx/Rx: "

    .line 550
    .line 551
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 552
    .line 553
    .line 554
    iget-object v0, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->this$0:Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;

    .line 555
    .line 556
    invoke-static {v0}, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->-$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;)Landroid/content/Context;

    .line 557
    .line 558
    .line 559
    move-result-object v0

    .line 560
    iget-wide v5, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->mTotalTxBytes:J

    .line 561
    .line 562
    invoke-static {v0, v5, v6}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    .line 563
    .line 564
    .line 565
    move-result-object v0

    .line 566
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 567
    .line 568
    .line 569
    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 570
    .line 571
    .line 572
    iget-object v0, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->this$0:Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;

    .line 573
    .line 574
    invoke-static {v0}, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->-$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;)Landroid/content/Context;

    .line 575
    .line 576
    .line 577
    move-result-object v0

    .line 578
    iget-wide v5, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->mTotalRxBytes:J

    .line 579
    .line 580
    invoke-static {v0, v5, v6}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    .line 581
    .line 582
    .line 583
    move-result-object v0

    .line 584
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 585
    .line 586
    .line 587
    const-string v0, ", Q P/F: "

    .line 588
    .line 589
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 590
    .line 591
    .line 592
    iget v0, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->mQcPassCount:I

    .line 593
    .line 594
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 595
    .line 596
    .line 597
    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 598
    .line 599
    .line 600
    iget v0, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->mQcFailCount:I

    .line 601
    .line 602
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 603
    .line 604
    .line 605
    const-string v0, ", D P/F: "

    .line 606
    .line 607
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 608
    .line 609
    .line 610
    iget v0, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->mDnsPassCount:I

    .line 611
    .line 612
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 613
    .line 614
    .line 615
    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 616
    .line 617
    .line 618
    iget v0, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->mQcFailCount:I

    .line 619
    .line 620
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 621
    .line 622
    .line 623
    const-string v0, ", D RTT: "

    .line 624
    .line 625
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 626
    .line 627
    .line 628
    iget v0, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->mDnsPassCount:I

    .line 629
    .line 630
    if-nez v0, :cond_3

    .line 631
    .line 632
    goto :goto_2

    .line 633
    :cond_3
    iget-wide v2, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->mCumulativeDnsResponseTime:J

    .line 634
    .line 635
    int-to-long v4, v0

    .line 636
    div-long v3, v2, v4

    .line 637
    .line 638
    :goto_2
    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 639
    .line 640
    .line 641
    :goto_3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 642
    .line 643
    .line 644
    move-result-object p0

    .line 645
    return-object p0
.end method

.method public updateQualityScore()V
    .locals 1

    const/16 v0, -0x64

    .line 1
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->updateQualityScore(I)V

    return-void
.end method

.method public updateQualityScore(I)V
    .locals 4

    .line 2
    iget-object v0, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->this$0:Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->getQualityIndexByMaxTput()I

    move-result v1

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->getQualityIndexByActiveTput()I

    move-result v2

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->getQualityIndexByPer()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->calculateScore(III)I

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iput v0, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->mCalculatedScore:I

    .line 4
    :cond_0
    iget v0, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->mForcedSetScore:I

    invoke-static {}, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->-$$Nest$sfgetINDEX_TO_SCORE()[I

    move-result-object v1

    const/4 v2, 0x0

    aget v1, v1, v2

    if-eq v0, v1, :cond_1

    .line 5
    iget v0, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->mForcedSetScore:I

    goto :goto_0

    .line 6
    :cond_1
    iget v0, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->mCalculatedScore:I

    .line 7
    :goto_0
    iget v1, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->mScore:I

    if-eq v1, v0, :cond_2

    .line 8
    iput v0, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->mScore:I

    .line 9
    iget-object v0, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->this$0:Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->-$$Nest$mreportOpenNetworkQosQualityScoreChange(Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;)V

    .line 10
    :cond_2
    invoke-static {}, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->-$$Nest$sfgetDBG()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 11
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "updateQualityScore - "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->this$0:Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;

    iget-object v1, v1, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->mSsid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->this$0:Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->-$$Nest$fgetmBssid(Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "], rssi: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, -0x64

    if-ne p1, v1, :cond_3

    .line 12
    const-string v1, "N/A"

    goto :goto_1

    :cond_3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", #Conn: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->this$0:Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;

    iget v1, v1, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->mNumberOfConnections:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 14
    const-string v1, "OpenNetworkQos[4.00]"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    :cond_4
    invoke-static {}, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->-$$Nest$sfgetSMARTCM_DBG()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 16
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->showToastBssidQosMapInfo(I)V

    :cond_5
    return-void
.end method
