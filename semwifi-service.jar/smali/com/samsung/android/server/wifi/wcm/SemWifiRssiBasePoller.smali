.class public Lcom/samsung/android/server/wifi/wcm/SemWifiRssiBasePoller;
.super Landroid/os/Handler;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/server/wifi/wcm/SemWifiRssiBasePoller$ISemWifiRssiBasePollerCallBack;
    }
.end annotation


# static fields
.field private static final RSSI_BASE_POLL:I = 0x2

.field private static final RSSI_BASE_POLLING_INTERVAL:I = 0x3e8

.field private static final RSSI_BASE_START:I = 0x1

.field private static final RSSI_BASE_STOP:I = 0x3

.field private static final TAG:Ljava/lang/String; = "SemWifiRssiBasePoller"


# instance fields
.field private mBasePollStarted:Z

.field private mBaseRxGood:D

.field private mBaseTxBad:D

.field private mBaseTxGood:D

.field private mContext:Landroid/content/Context;

.field private mPrevBaseRxGood:D

.field private mPrevBaseTxBad:D

.field private mPrevBaseTxGood:D

.field private mRssi:I

.field private mRssiBasePollStarted:I

.field private mSemWifiRssiBasePollerCallBack:Lcom/samsung/android/server/wifi/wcm/SemWifiRssiBasePoller$ISemWifiRssiBasePollerCallBack;

.field private mTxBadOnGoing:Z

.field private mTxIncreasedCount:I


# direct methods
.method public constructor <init>(Landroid/os/Looper;Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x0

    .line 5
    iput p1, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiRssiBasePoller;->mTxIncreasedCount:I

    .line 6
    .line 7
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiRssiBasePoller;->mBasePollStarted:Z

    .line 8
    .line 9
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiRssiBasePoller;->mTxBadOnGoing:Z

    .line 10
    .line 11
    iput-object p2, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiRssiBasePoller;->mContext:Landroid/content/Context;

    .line 12
    .line 13
    return-void
.end method

.method private setTxBadOnGoing(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiRssiBasePoller;->mTxBadOnGoing:Z

    .line 2
    .line 3
    return-void
.end method


# virtual methods
.method public getTxBadOnGoing()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiRssiBasePoller;->mTxBadOnGoing:Z

    .line 2
    .line 3
    return p0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiRssiBasePoller;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/samsung/android/server/wifi/wcm/WcmUtil;->getInstance(Landroid/content/Context;)Lcom/samsung/android/server/wifi/wcm/WcmUtil;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/wcm/WcmUtil;->getCurrentWifiInfo()Landroid/net/wifi/WifiInfo;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iget v1, p1, Landroid/os/Message;->what:I

    .line 12
    .line 13
    const-wide/16 v2, 0x3e8

    .line 14
    .line 15
    const/4 v4, 0x0

    .line 16
    const/4 v5, 0x2

    .line 17
    const/4 v6, 0x1

    .line 18
    if-eq v1, v6, :cond_8

    .line 19
    .line 20
    if-eq v1, v5, :cond_1

    .line 21
    .line 22
    const/4 v0, 0x3

    .line 23
    const-string v2, "SemWifiRssiBasePoller"

    .line 24
    .line 25
    if-eq v1, v0, :cond_0

    .line 26
    .line 27
    new-instance p0, Ljava/lang/StringBuilder;

    .line 28
    .line 29
    const-string v0, "Ignore msg id : "

    .line 30
    .line 31
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    iget p1, p1, Landroid/os/Message;->what:I

    .line 35
    .line 36
    invoke-static {v2, p1, p0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/StringBuilder;)V

    .line 37
    .line 38
    .line 39
    return-void

    .line 40
    :cond_0
    const-string p1, "RSSI_BASE_STOP"

    .line 41
    .line 42
    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    .line 44
    .line 45
    iput-boolean v4, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiRssiBasePoller;->mBasePollStarted:Z

    .line 46
    .line 47
    return-void

    .line 48
    :cond_1
    iget-boolean p1, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiRssiBasePoller;->mBasePollStarted:Z

    .line 49
    .line 50
    if-nez p1, :cond_2

    .line 51
    .line 52
    goto/16 :goto_2

    .line 53
    .line 54
    :cond_2
    if-nez v0, :cond_3

    .line 55
    .line 56
    goto/16 :goto_2

    .line 57
    .line 58
    :cond_3
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getSuccessfulTxPacketsPerSecond()D

    .line 59
    .line 60
    .line 61
    move-result-wide v7

    .line 62
    iput-wide v7, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiRssiBasePoller;->mBaseTxGood:D

    .line 63
    .line 64
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getLostTxPacketsPerSecond()D

    .line 65
    .line 66
    .line 67
    move-result-wide v7

    .line 68
    iput-wide v7, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiRssiBasePoller;->mBaseTxBad:D

    .line 69
    .line 70
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getSuccessfulRxPacketsPerSecond()D

    .line 71
    .line 72
    .line 73
    move-result-wide v7

    .line 74
    iput-wide v7, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiRssiBasePoller;->mBaseRxGood:D

    .line 75
    .line 76
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getRssi()I

    .line 77
    .line 78
    .line 79
    move-result p1

    .line 80
    iput p1, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiRssiBasePoller;->mRssi:I

    .line 81
    .line 82
    invoke-direct {p0, v4}, Lcom/samsung/android/server/wifi/wcm/SemWifiRssiBasePoller;->setTxBadOnGoing(Z)V

    .line 83
    .line 84
    .line 85
    iget-wide v0, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiRssiBasePoller;->mBaseTxGood:D

    .line 86
    .line 87
    iget-wide v7, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiRssiBasePoller;->mPrevBaseTxGood:D

    .line 88
    .line 89
    sub-double/2addr v0, v7

    .line 90
    iget-wide v7, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiRssiBasePoller;->mBaseTxBad:D

    .line 91
    .line 92
    iget-wide v9, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiRssiBasePoller;->mPrevBaseTxBad:D

    .line 93
    .line 94
    sub-double/2addr v7, v9

    .line 95
    add-double/2addr v0, v7

    .line 96
    iget p1, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiRssiBasePoller;->mRssi:I

    .line 97
    .line 98
    iget v9, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiRssiBasePoller;->mRssiBasePollStarted:I

    .line 99
    .line 100
    sub-int/2addr p1, v9

    .line 101
    const-wide/high16 v9, 0x4008000000000000L    # 3.0

    .line 102
    .line 103
    cmpl-double v9, v0, v9

    .line 104
    .line 105
    if-gtz v9, :cond_5

    .line 106
    .line 107
    const/4 v9, -0x7

    .line 108
    if-ge p1, v9, :cond_4

    .line 109
    .line 110
    goto :goto_0

    .line 111
    :cond_4
    iput v4, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiRssiBasePoller;->mTxIncreasedCount:I

    .line 112
    .line 113
    goto :goto_1

    .line 114
    :cond_5
    :goto_0
    const-wide/16 v9, 0x0

    .line 115
    .line 116
    cmpl-double p1, v0, v9

    .line 117
    .line 118
    if-lez p1, :cond_6

    .line 119
    .line 120
    div-double/2addr v7, v0

    .line 121
    const-wide v0, 0x3fb999999999999aL    # 0.1

    .line 122
    .line 123
    .line 124
    .line 125
    .line 126
    cmpl-double p1, v7, v0

    .line 127
    .line 128
    if-ltz p1, :cond_6

    .line 129
    .line 130
    invoke-direct {p0, v6}, Lcom/samsung/android/server/wifi/wcm/SemWifiRssiBasePoller;->setTxBadOnGoing(Z)V

    .line 131
    .line 132
    .line 133
    :cond_6
    iget p1, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiRssiBasePoller;->mTxIncreasedCount:I

    .line 134
    .line 135
    add-int/2addr p1, v6

    .line 136
    iput p1, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiRssiBasePoller;->mTxIncreasedCount:I

    .line 137
    .line 138
    :goto_1
    iget p1, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiRssiBasePoller;->mTxIncreasedCount:I

    .line 139
    .line 140
    if-lt p1, v6, :cond_7

    .line 141
    .line 142
    iget-object p1, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiRssiBasePoller;->mSemWifiRssiBasePollerCallBack:Lcom/samsung/android/server/wifi/wcm/SemWifiRssiBasePoller$ISemWifiRssiBasePollerCallBack;

    .line 143
    .line 144
    invoke-interface {p1}, Lcom/samsung/android/server/wifi/wcm/SemWifiRssiBasePoller$ISemWifiRssiBasePollerCallBack;->notifyBaseTrafficDetected()V

    .line 145
    .line 146
    .line 147
    :cond_7
    iget-wide v0, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiRssiBasePoller;->mBaseTxGood:D

    .line 148
    .line 149
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiRssiBasePoller;->mPrevBaseTxGood:D

    .line 150
    .line 151
    iget-wide v0, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiRssiBasePoller;->mBaseTxBad:D

    .line 152
    .line 153
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiRssiBasePoller;->mPrevBaseTxBad:D

    .line 154
    .line 155
    iget-wide v0, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiRssiBasePoller;->mBaseRxGood:D

    .line 156
    .line 157
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiRssiBasePoller;->mPrevBaseRxGood:D

    .line 158
    .line 159
    invoke-virtual {p0, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 160
    .line 161
    .line 162
    invoke-virtual {p0, v5, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 163
    .line 164
    .line 165
    return-void

    .line 166
    :cond_8
    iget-boolean p1, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiRssiBasePoller;->mBasePollStarted:Z

    .line 167
    .line 168
    if-eqz p1, :cond_9

    .line 169
    .line 170
    goto :goto_2

    .line 171
    :cond_9
    if-nez v0, :cond_a

    .line 172
    .line 173
    :goto_2
    return-void

    .line 174
    :cond_a
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getSuccessfulTxPacketsPerSecond()D

    .line 175
    .line 176
    .line 177
    move-result-wide v7

    .line 178
    iput-wide v7, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiRssiBasePoller;->mPrevBaseTxGood:D

    .line 179
    .line 180
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getLostTxPacketsPerSecond()D

    .line 181
    .line 182
    .line 183
    move-result-wide v7

    .line 184
    iput-wide v7, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiRssiBasePoller;->mPrevBaseTxBad:D

    .line 185
    .line 186
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getSuccessfulRxPacketsPerSecond()D

    .line 187
    .line 188
    .line 189
    move-result-wide v7

    .line 190
    iput-wide v7, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiRssiBasePoller;->mPrevBaseRxGood:D

    .line 191
    .line 192
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getRssi()I

    .line 193
    .line 194
    .line 195
    move-result p1

    .line 196
    iput p1, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiRssiBasePoller;->mRssiBasePollStarted:I

    .line 197
    .line 198
    invoke-virtual {p0, v5, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 199
    .line 200
    .line 201
    iput v4, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiRssiBasePoller;->mTxIncreasedCount:I

    .line 202
    .line 203
    iput-boolean v6, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiRssiBasePoller;->mBasePollStarted:Z

    .line 204
    .line 205
    return-void
.end method

.method public setSemWifiRssiBasePollerCallBack(Lcom/samsung/android/server/wifi/wcm/SemWifiRssiBasePoller$ISemWifiRssiBasePollerCallBack;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiRssiBasePoller;->mSemWifiRssiBasePollerCallBack:Lcom/samsung/android/server/wifi/wcm/SemWifiRssiBasePoller$ISemWifiRssiBasePollerCallBack;

    .line 2
    .line 3
    return-void
.end method

.method public start()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public stop()V
    .locals 1

    .line 1
    const/4 v0, 0x3

    .line 2
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 3
    .line 4
    .line 5
    return-void
.end method
