.class public Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;
.super Landroid/os/Handler;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer$INetworkStatsAnalyzerCallBack;
    }
.end annotation


# static fields
.field private static final ACTIVITY_POLLING_INTERVAL:I = 0x3e8

.field private static final BACKHAUL_DETECTION_REASON_DNS_CHECK_INTERVAL:I = 0x10

.field private static final BACKHAUL_DETECTION_REASON_IN_ERROR_SEG_FAIL:I = 0x4

.field private static final BACKHAUL_DETECTION_REASON_NO_RESPONSE_FAIL:I = 0x8

.field private static final BACKHAUL_DETECTION_REASON_RETRANS_SEG_FAIL:I = 0x2

.field private static final BACKHAUL_DETECTION_REASON_TCP_SOCKET_FAIL:I = 0x1

.field private static DBG:Z = false

.field public static final EVENT_RESULT_DNS_CHECK:I = 0xa

.field private static final FILE_NAME_SNMP:Ljava/lang/String; = "/proc/net/snmp"

.field private static final FILE_NAME_SOCKSTAT_IPV4:Ljava/lang/String; = "/proc/net/sockstat"

.field private static final FILE_NAME_SOCKSTAT_IPV6:Ljava/lang/String; = "/proc/net/sockstat6"

.field private static final MSG_ACTIVITY_CHECK_POLL:I = 0x3

.field private static final MSG_ACTIVITY_CHECK_START:I = 0x1

.field private static final MSG_ACTIVITY_CHECK_STOP:I = 0x2

.field private static final MSG_EVENT_SCAN_STARTED_OR_DONE:I = 0x9

.field private static final MSG_NETWORK_STAT_CHECK_DNS:I = 0x5

.field private static final MSG_TCP_BACKHAUL_DETECTION_START:I = 0x8

.field private static final NETWORK_STAT_HISTORY_COUNT_MAX:I = 0xa

.field private static final RSSI_QC_TRIGGER_INTERVAL:I = -0x3

.field private static final SNMP_TCP_COUNT_ROW:I = 0x6

.field private static final SNMP_TCP_ESTABLISH_COUNT_COLUMN:I = 0x9

.field private static final SNMP_TCP_IN_SEG_COUNT_COLUMN:I = 0xa

.field private static final SNMP_TCP_IN_SEG_ERROR_COUNT_COLUMN:I = 0xd

.field private static final SNMP_TCP_OUT_SEG_COUNT_COLUMN:I = 0xb

.field private static final SNMP_TCP_RETRANS_SEG_COUNT_COLUMN:I = 0xe

.field private static final SOCKSTAT6_SOCK_COUNT_ROW:I = 0x1

.field private static final SOCKSTAT6_TCP_INUSE_COUNT_COLOUMN:I = 0x2

.field private static final SOCKSTAT_ORPHAN_COUNT_COLUMN:I = 0x4

.field private static final SOCKSTAT_TCP_COUNT_ROW:I = 0x2

.field private static final SOCKSTAT_TCP_INUSE_COUNT_COLUMN:I = 0x2

.field private static final SOCKSTAT_TIMEWAIT_COUNT_COLUMN:I = 0x6

.field private static final TAG:Ljava/lang/String; = "WifiConnectivityMonitor.NetworkStatsAnalyzer"

.field private static final THRESHOLD_BACKHAUL_CONNECTIVITY_CHECK_HIGH:I = 0x5

.field private static final THRESHOLD_BACKHAUL_CONNECTIVITY_CHECK_LOW:I = 0x2

.field private static final THRESHOLD_BACKHAUL_CONNECTIVITY_CHECK_POOR:I = 0x2

.field private static final THRESHOLD_MAX_WAITING_CYCLE:I = 0x3c

.field private static final THRESHOLD_RSSI_LOW_SIGNAL:I = -0x46

.field private static final THRESHOLD_RSSI_POOR_SIGNAL:I = -0x53

.field private static final THRESHOLD_TCP_POOR_SEG_RX_TX:I = 0xf

.field private static final THRESHOLD_WAITING_CYCLE_CHECK_HIGH:I = 0x5

.field private static final THRESHOLD_WAITING_CYCLE_CHECK_LOW:I = 0x3

.field private static final THRESHOLD_WAITING_CYCLE_CHECK_POOR:I = 0x2

.field private static final TIME_QC_TRIGGER_INTERVAL:I = 0x2710


# instance fields
.field private mBackhaulDetectionReason:I

.field private mContext:Landroid/content/Context;

.field private mCumulativePoorRx:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentBssid:Lcom/samsung/android/server/wifi/wcm/BssidStatistics;

.field private mCurrentMode:I

.field private mDnsInterrupted:Z

.field private mDnsQueried:Z

.field private mDnsThread:Lcom/samsung/android/server/wifi/wcm/DnsThread;

.field private mDnsThreadID:J

.field private mInErrorSegWaitingCycle:I

.field private mInternetConnectivityCounter:I

.field private mInternetConnectivityWaitingCycle:I

.field private mIsAggGoodStateNow:Z

.field private mIsChinaNetwork:Z

.field private mIsInDhcpSession:Z

.field private mIsInRoamSession:Z

.field private mIsPollingStarted:Z

.field private mIsScanning:Z

.field private mIsVPNOnlyNetwork:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mLastDnsCheckTime:J

.field private mLastNeedCheckByPoorRxTime:J

.field private mLastPollTime:J

.field private mLastRssi:I

.field private mLinkProperties:Landroid/net/LinkProperties;

.field private mMaybeUseStreaming:I

.field private mNetworkStatHistory:[Ljava/lang/String;

.field private mNetworkStatHistoryIndex:I

.field private mNetworkStatsAnalyzerCallBack:Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer$INetworkStatsAnalyzerCallBack;

.field private mNsaQcStep:I

.field private mNsaQcTrigger:I

.field private mPrevInSegCount:I

.field private mPrevInSegErrorCount:I

.field private mPrevOutSegCount:I

.field private mPrevRetranSegCount:I

.field private mPrevTcpEstablishedCount:I

.field private mPrevTcpInUseCount:I

.field private mPrevTimeWaitCount:I

.field private mPrevTotalRxPkt:J

.field private mPrevTotalTxPkt:J

.field private mPublicDnsCheckProcess:Z

.field private mRetransSegWaitingCycle:I

.field private mRxBytes:J

.field private mRxHistory:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mRxPackets:J

.field private mSYNPacketOnly:Z

.field private mSemTrafficStats:Lcom/samsung/android/server/wifi/SemWifiTrafficStats;

.field private mStayingPoorRssi:I

.field private mTxBytes:J

.field private mTxPackets:J

.field private mWifiInfo:Landroid/net/wifi/WifiInfo;


# direct methods
.method static bridge synthetic -$$Nest$fgetmNetworkStatsAnalyzerCallBack(Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;)Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer$INetworkStatsAnalyzerCallBack;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mNetworkStatsAnalyzerCallBack:Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer$INetworkStatsAnalyzerCallBack;

    .line 2
    .line 3
    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 1
    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    sput-boolean v0, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->DBG:Z

    .line 6
    .line 7
    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x0

    .line 5
    iput p1, p0, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mPrevTcpEstablishedCount:I

    .line 6
    .line 7
    iput p1, p0, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mPrevTimeWaitCount:I

    .line 8
    .line 9
    iput p1, p0, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mPrevTcpInUseCount:I

    .line 10
    .line 11
    iput p1, p0, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mInternetConnectivityCounter:I

    .line 12
    .line 13
    iput p1, p0, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mInternetConnectivityWaitingCycle:I

    .line 14
    .line 15
    iput p1, p0, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mPrevInSegCount:I

    .line 16
    .line 17
    iput p1, p0, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mPrevOutSegCount:I

    .line 18
    .line 19
    iput p1, p0, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mPrevInSegErrorCount:I

    .line 20
    .line 21
    iput p1, p0, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mPrevRetranSegCount:I

    .line 22
    .line 23
    iput p1, p0, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mRetransSegWaitingCycle:I

    .line 24
    .line 25
    iput p1, p0, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mInErrorSegWaitingCycle:I

    .line 26
    .line 27
    iput p1, p0, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mBackhaulDetectionReason:I

    .line 28
    .line 29
    const/4 v0, 0x1

    .line 30
    iput v0, p0, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mCurrentMode:I

    .line 31
    .line 32
    iput p1, p0, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mStayingPoorRssi:I

    .line 33
    .line 34
    iput p1, p0, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mMaybeUseStreaming:I

    .line 35
    .line 36
    iput p1, p0, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mLastRssi:I

    .line 37
    .line 38
    iput p1, p0, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mNsaQcStep:I

    .line 39
    .line 40
    iput p1, p0, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mNsaQcTrigger:I

    .line 41
    .line 42
    const-wide/16 v0, 0x0

    .line 43
    .line 44
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mDnsThreadID:J

    .line 45
    .line 46
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mPrevTotalTxPkt:J

    .line 47
    .line 48
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mPrevTotalRxPkt:J

    .line 49
    .line 50
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mTxPackets:J

    .line 51
    .line 52
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mRxPackets:J

    .line 53
    .line 54
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mTxBytes:J

    .line 55
    .line 56
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mRxBytes:J

    .line 57
    .line 58
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mLastDnsCheckTime:J

    .line 59
    .line 60
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mLastNeedCheckByPoorRxTime:J

    .line 61
    .line 62
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mLastPollTime:J

    .line 63
    .line 64
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mIsAggGoodStateNow:Z

    .line 65
    .line 66
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mIsChinaNetwork:Z

    .line 67
    .line 68
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mIsPollingStarted:Z

    .line 69
    .line 70
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mDnsQueried:Z

    .line 71
    .line 72
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mDnsInterrupted:Z

    .line 73
    .line 74
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mSYNPacketOnly:Z

    .line 75
    .line 76
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mPublicDnsCheckProcess:Z

    .line 77
    .line 78
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mIsScanning:Z

    .line 79
    .line 80
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mIsInRoamSession:Z

    .line 81
    .line 82
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mIsInDhcpSession:Z

    .line 83
    .line 84
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 85
    .line 86
    invoke-direct {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 87
    .line 88
    .line 89
    iput-object v0, p0, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mIsVPNOnlyNetwork:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 90
    .line 91
    new-instance p1, Landroid/net/wifi/WifiInfo;

    .line 92
    .line 93
    invoke-direct {p1}, Landroid/net/wifi/WifiInfo;-><init>()V

    .line 94
    .line 95
    .line 96
    iput-object p1, p0, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    .line 97
    .line 98
    iput-object p2, p0, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mContext:Landroid/content/Context;

    .line 99
    .line 100
    new-instance p1, Ljava/util/ArrayList;

    .line 101
    .line 102
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 103
    .line 104
    .line 105
    iput-object p1, p0, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mCumulativePoorRx:Ljava/util/ArrayList;

    .line 106
    .line 107
    new-instance p1, Ljava/util/ArrayList;

    .line 108
    .line 109
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 110
    .line 111
    .line 112
    iput-object p1, p0, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mRxHistory:Ljava/util/ArrayList;

    .line 113
    .line 114
    return-void
.end method

.method private addNetworkStatHistory(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mNetworkStatHistory:[Ljava/lang/String;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    iget v1, p0, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mNetworkStatHistoryIndex:I

    .line 7
    .line 8
    aput-object p1, v0, v1

    .line 9
    .line 10
    add-int/lit8 v1, v1, 0x1

    .line 11
    .line 12
    iput v1, p0, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mNetworkStatHistoryIndex:I

    .line 13
    .line 14
    const/16 p1, 0xa

    .line 15
    .line 16
    if-lt v1, p1, :cond_1

    .line 17
    .line 18
    const/4 p1, 0x0

    .line 19
    iput p1, p0, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mNetworkStatHistoryIndex:I

    .line 20
    .line 21
    :cond_1
    :goto_0
    return-void
.end method

.method private checkDnsThreadResult(II)I
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "DNS resultType : "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    const-string v1, ", responseTime : "

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    const-string v1, "WifiConnectivityMonitor.NetworkStatsAnalyzer"

    .line 24
    .line 25
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    .line 27
    .line 28
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->isUsingProxy()Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    if-eqz v0, :cond_0

    .line 33
    .line 34
    if-eqz p1, :cond_0

    .line 35
    .line 36
    const-string p0, "DNS check result is not successful. TYPE: "

    .line 37
    .line 38
    const-string p2, " Proxy is being used. Ignore the result."

    .line 39
    .line 40
    invoke-static {p0, p1, p2}, Lcom/samsung/android/server/wifi/SemSwitchBoardService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    .line 46
    .line 47
    const/16 p0, 0xb

    .line 48
    .line 49
    return p0

    .line 50
    :cond_0
    const/4 v0, 0x3

    .line 51
    if-ne p1, v0, :cond_2

    .line 52
    .line 53
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->syncGetCurrentWifiInfo()V

    .line 54
    .line 55
    .line 56
    iget-object v0, p0, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    .line 57
    .line 58
    if-eqz v0, :cond_2

    .line 59
    .line 60
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getRssi()I

    .line 61
    .line 62
    .line 63
    move-result v0

    .line 64
    const/16 v2, -0x32

    .line 65
    .line 66
    if-lt v0, v2, :cond_2

    .line 67
    .line 68
    sget-boolean p1, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->DBG:Z

    .line 69
    .line 70
    if-eqz p1, :cond_1

    .line 71
    .line 72
    const-string p1, "Dns Timeout but RSSI high : "

    .line 73
    .line 74
    const-string v2, " dBm. Link is okay and DNG service is not responsive. -> NO_INTERNET"

    .line 75
    .line 76
    invoke-static {p1, v0, v2}, Lcom/samsung/android/server/wifi/SemSwitchBoardService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    .line 82
    .line 83
    :cond_1
    const/4 p1, 0x5

    .line 84
    :cond_2
    iget-object p0, p0, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mNetworkStatsAnalyzerCallBack:Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer$INetworkStatsAnalyzerCallBack;

    .line 85
    .line 86
    invoke-interface {p0, p1, p2}, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer$INetworkStatsAnalyzerCallBack;->notifyDnsResultType(II)V

    .line 87
    .line 88
    .line 89
    return p1
.end method

.method private checkPublicDns()V
    .locals 8

    .line 1
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mIsChinaNetwork:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mIsVPNOnlyNetwork:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    :cond_0
    move-object v4, p0

    .line 14
    goto :goto_0

    .line 15
    :cond_1
    const/4 v0, 0x1

    .line 16
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mPublicDnsCheckProcess:Z

    .line 17
    .line 18
    iput v0, p0, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mNsaQcStep:I

    .line 19
    .line 20
    new-instance v1, Lcom/samsung/android/server/wifi/wcm/DnsThread;

    .line 21
    .line 22
    sget-object v3, Lcom/samsung/android/server/wifi/wcm/Constant;->DEFAULT_URL_STRING:Ljava/lang/String;

    .line 23
    .line 24
    const-wide/16 v5, 0x2710

    .line 25
    .line 26
    iget-object v7, p0, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mContext:Landroid/content/Context;

    .line 27
    .line 28
    const/4 v2, 0x1

    .line 29
    move-object v4, p0

    .line 30
    invoke-direct/range {v1 .. v7}, Lcom/samsung/android/server/wifi/wcm/DnsThread;-><init>(ZLjava/lang/String;Landroid/os/Handler;JLandroid/content/Context;)V

    .line 31
    .line 32
    .line 33
    iput-object v1, v4, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mDnsThread:Lcom/samsung/android/server/wifi/wcm/DnsThread;

    .line 34
    .line 35
    new-instance p0, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer$1;

    .line 36
    .line 37
    invoke-direct {p0, v4}, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer$1;-><init>(Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1, p0}, Lcom/samsung/android/server/wifi/wcm/DnsThread;->setDnsThreadCallBack(Lcom/samsung/android/server/wifi/wcm/DnsThread$IDnsThreadCallBack;)V

    .line 41
    .line 42
    .line 43
    iget-object p0, v4, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mDnsThread:Lcom/samsung/android/server/wifi/wcm/DnsThread;

    .line 44
    .line 45
    iget-object v0, v4, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mLinkProperties:Landroid/net/LinkProperties;

    .line 46
    .line 47
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/wcm/DnsThread;->updateLinkProperties(Landroid/net/LinkProperties;)V

    .line 48
    .line 49
    .line 50
    iget-object p0, v4, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mDnsThread:Lcom/samsung/android/server/wifi/wcm/DnsThread;

    .line 51
    .line 52
    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    .line 53
    .line 54
    .line 55
    iget-object p0, v4, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mDnsThread:Lcom/samsung/android/server/wifi/wcm/DnsThread;

    .line 56
    .line 57
    invoke-virtual {p0}, Ljava/lang/Thread;->getId()J

    .line 58
    .line 59
    .line 60
    move-result-wide v0

    .line 61
    iput-wide v0, v4, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mDnsThreadID:J

    .line 62
    .line 63
    sget-boolean p0, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->DBG:Z

    .line 64
    .line 65
    if-eqz p0, :cond_2

    .line 66
    .line 67
    new-instance p0, Ljava/lang/StringBuilder;

    .line 68
    .line 69
    const-string v0, "wait publicDnsThread results ["

    .line 70
    .line 71
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    iget-wide v0, v4, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mDnsThreadID:J

    .line 75
    .line 76
    const-string v2, "]"

    .line 77
    .line 78
    invoke-static {v0, v1, v2, p0}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$1$$ExternalSyntheticOutline0;->m(JLjava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object p0

    .line 82
    const-string v0, "WifiConnectivityMonitor.NetworkStatsAnalyzer"

    .line 83
    .line 84
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    .line 86
    .line 87
    :cond_2
    return-void

    .line 88
    :goto_0
    const/4 p0, 0x0

    .line 89
    iput-boolean p0, v4, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mPublicDnsCheckProcess:Z

    .line 90
    .line 91
    return-void
.end method

.method private generateDnsTargetForCountry(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    new-instance p0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    .line 8
    .line 9
    const-string p1, "."

    .line 10
    .line 11
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    return-object p0
.end method

.method private initNetworkStatHistory()V
    .locals 1

    .line 1
    const/16 v0, 0xa

    .line 2
    .line 3
    new-array v0, v0, [Ljava/lang/String;

    .line 4
    .line 5
    iput-object v0, p0, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mNetworkStatHistory:[Ljava/lang/String;

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput v0, p0, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mNetworkStatHistoryIndex:I

    .line 9
    .line 10
    return-void
.end method

.method private isBackhaulDetectionEnabled()Z
    .locals 1

    .line 1
    iget p0, p0, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mCurrentMode:I

    .line 2
    .line 3
    const/4 v0, 0x2

    .line 4
    if-eq p0, v0, :cond_1

    .line 5
    .line 6
    const/4 v0, 0x3

    .line 7
    if-ne p0, v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 p0, 0x0

    .line 11
    return p0

    .line 12
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 13
    return p0
.end method

.method private isUsingProxy()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mLinkProperties:Landroid/net/LinkProperties;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    invoke-virtual {v0}, Landroid/net/LinkProperties;->getHttpProxy()Landroid/net/ProxyInfo;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mLinkProperties:Landroid/net/LinkProperties;

    .line 13
    .line 14
    invoke-virtual {v0}, Landroid/net/LinkProperties;->getHttpProxy()Landroid/net/ProxyInfo;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {v0}, Landroid/net/ProxyInfo;->getHost()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    iget-object v0, p0, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mLinkProperties:Landroid/net/LinkProperties;

    .line 25
    .line 26
    invoke-virtual {v0}, Landroid/net/LinkProperties;->getHttpProxy()Landroid/net/ProxyInfo;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-virtual {v0}, Landroid/net/ProxyInfo;->getPort()I

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    const/4 v2, -0x1

    .line 35
    if-eq v0, v2, :cond_0

    .line 36
    .line 37
    const/4 v1, 0x1

    .line 38
    :cond_0
    if-eqz v1, :cond_1

    .line 39
    .line 40
    sget-boolean v0, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->DBG:Z

    .line 41
    .line 42
    if-eqz v0, :cond_1

    .line 43
    .line 44
    new-instance v0, Ljava/lang/StringBuilder;

    .line 45
    .line 46
    const-string v2, "HTTP Proxy is in use. Proxy: "

    .line 47
    .line 48
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    iget-object v2, p0, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mLinkProperties:Landroid/net/LinkProperties;

    .line 52
    .line 53
    invoke-virtual {v2}, Landroid/net/LinkProperties;->getHttpProxy()Landroid/net/ProxyInfo;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    invoke-virtual {v2}, Landroid/net/ProxyInfo;->getHost()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    const-string v2, ":"

    .line 65
    .line 66
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    iget-object p0, p0, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mLinkProperties:Landroid/net/LinkProperties;

    .line 70
    .line 71
    invoke-virtual {p0}, Landroid/net/LinkProperties;->getHttpProxy()Landroid/net/ProxyInfo;

    .line 72
    .line 73
    .line 74
    move-result-object p0

    .line 75
    invoke-virtual {p0}, Landroid/net/ProxyInfo;->getPort()I

    .line 76
    .line 77
    .line 78
    move-result p0

    .line 79
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object p0

    .line 86
    const-string v0, "WifiConnectivityMonitor.NetworkStatsAnalyzer"

    .line 87
    .line 88
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    .line 90
    .line 91
    :cond_1
    return v1
.end method

.method private syncGetCurrentWifiInfo()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mContext:Landroid/content/Context;

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
    iput-object v0, p0, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public getAggGoodStateNow()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mIsAggGoodStateNow:Z

    .line 2
    .line 3
    return p0
.end method

.method public getNetworkStatHistory()Ljava/lang/String;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mNetworkStatHistory:[Ljava/lang/String;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 p0, 0x0

    .line 6
    return-object p0

    .line 7
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    .line 11
    .line 12
    iget v1, p0, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mNetworkStatHistoryIndex:I

    .line 13
    .line 14
    const/4 v2, 0x0

    .line 15
    :goto_0
    const/16 v3, 0xa

    .line 16
    .line 17
    if-ge v2, v3, :cond_2

    .line 18
    .line 19
    iget-object v4, p0, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mNetworkStatHistory:[Ljava/lang/String;

    .line 20
    .line 21
    aget-object v4, v4, v1

    .line 22
    .line 23
    if-eqz v4, :cond_1

    .line 24
    .line 25
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    const-string v4, "/"

    .line 29
    .line 30
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 34
    .line 35
    rem-int/2addr v1, v3

    .line 36
    add-int/lit8 v2, v2, 0x1

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    return-object p0
.end method

.method public getStayingPoorRssi()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mStayingPoorRssi:I

    .line 2
    .line 3
    return p0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 43

    .line 1
    move-object/from16 v3, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    const-string v1, "Exception: "

    .line 6
    .line 7
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 8
    .line 9
    .line 10
    move-result-wide v7

    .line 11
    iget v2, v0, Landroid/os/Message;->what:I

    .line 12
    .line 13
    const/4 v9, 0x3

    .line 14
    const-string v10, "WifiConnectivityMonitor.NetworkStatsAnalyzer"

    .line 15
    .line 16
    const/4 v11, 0x1

    .line 17
    const/4 v12, 0x0

    .line 18
    if-eq v2, v11, :cond_7f

    .line 19
    .line 20
    const/4 v5, 0x2

    .line 21
    if-eq v2, v5, :cond_7d

    .line 22
    .line 23
    const/16 v15, -0x53

    .line 24
    .line 25
    const-wide/16 v16, 0x0

    .line 26
    .line 27
    const/16 v13, -0x46

    .line 28
    .line 29
    const/4 v6, 0x5

    .line 30
    if-eq v2, v9, :cond_35

    .line 31
    .line 32
    if-eq v2, v6, :cond_34

    .line 33
    .line 34
    packed-switch v2, :pswitch_data_0

    .line 35
    .line 36
    .line 37
    new-instance v1, Ljava/lang/StringBuilder;

    .line 38
    .line 39
    const-string v2, "Ignore msg id : "

    .line 40
    .line 41
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    iget v0, v0, Landroid/os/Message;->what:I

    .line 45
    .line 46
    invoke-static {v10, v0, v1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/StringBuilder;)V

    .line 47
    .line 48
    .line 49
    return-void

    .line 50
    :pswitch_0
    sget-boolean v1, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->DBG:Z

    .line 51
    .line 52
    if-eqz v1, :cond_0

    .line 53
    .line 54
    new-instance v1, Ljava/lang/StringBuilder;

    .line 55
    .line 56
    const-string v2, "[RESULT_DNS_CHECK] : "

    .line 57
    .line 58
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    iget v2, v0, Landroid/os/Message;->arg1:I

    .line 62
    .line 63
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    const-string v2, ", from DnsThread id("

    .line 67
    .line 68
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    iget-wide v4, v3, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mDnsThreadID:J

    .line 72
    .line 73
    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    const-string v2, ")"

    .line 77
    .line 78
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v1

    .line 85
    invoke-static {v10, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    .line 87
    .line 88
    :cond_0
    iget v1, v0, Landroid/os/Message;->arg1:I

    .line 89
    .line 90
    iget v0, v0, Landroid/os/Message;->arg2:I

    .line 91
    .line 92
    invoke-direct {v3, v1, v0}, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->checkDnsThreadResult(II)I

    .line 93
    .line 94
    .line 95
    move-result v0

    .line 96
    iget-object v1, v3, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mNetworkStatsAnalyzerCallBack:Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer$INetworkStatsAnalyzerCallBack;

    .line 97
    .line 98
    invoke-interface {v1, v0}, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer$INetworkStatsAnalyzerCallBack;->notifyDnsCheckResult(I)V

    .line 99
    .line 100
    .line 101
    iput-boolean v12, v3, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mDnsQueried:Z

    .line 102
    .line 103
    iget-boolean v1, v3, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mDnsInterrupted:Z

    .line 104
    .line 105
    if-eqz v1, :cond_1

    .line 106
    .line 107
    iput-boolean v12, v3, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mDnsInterrupted:Z

    .line 108
    .line 109
    sget-boolean v1, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->DBG:Z

    .line 110
    .line 111
    if-eqz v1, :cond_5

    .line 112
    .line 113
    const-string v1, "Result: "

    .line 114
    .line 115
    const-string v2, " - This DNS query is interrupted."

    .line 116
    .line 117
    invoke-static {v1, v0, v2}, Lcom/samsung/android/server/wifi/SemSwitchBoardService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v0

    .line 121
    invoke-static {v10, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    .line 123
    .line 124
    goto :goto_1

    .line 125
    :cond_1
    if-eqz v0, :cond_5

    .line 126
    .line 127
    sget-boolean v0, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->DBG:Z

    .line 128
    .line 129
    if-eqz v0, :cond_2

    .line 130
    .line 131
    const-string v0, "single DNS Checking FAILURE"

    .line 132
    .line 133
    invoke-static {v10, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    .line 135
    .line 136
    :cond_2
    iget v0, v3, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mCurrentMode:I

    .line 137
    .line 138
    if-ne v0, v9, :cond_3

    .line 139
    .line 140
    iget-boolean v0, v3, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mIsAggGoodStateNow:Z

    .line 141
    .line 142
    if-eqz v0, :cond_3

    .line 143
    .line 144
    sget-boolean v0, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->DBG:Z

    .line 145
    .line 146
    if-eqz v0, :cond_5

    .line 147
    .line 148
    const-string v0, "But, do not check the quality in AGG good rx state"

    .line 149
    .line 150
    invoke-static {v10, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    .line 152
    .line 153
    goto :goto_1

    .line 154
    :cond_3
    invoke-direct {v3}, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->isBackhaulDetectionEnabled()Z

    .line 155
    .line 156
    .line 157
    move-result v0

    .line 158
    if-eqz v0, :cond_4

    .line 159
    .line 160
    iget v0, v3, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mBackhaulDetectionReason:I

    .line 161
    .line 162
    add-int/lit16 v0, v0, 0x80

    .line 163
    .line 164
    iput v0, v3, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mNsaQcTrigger:I

    .line 165
    .line 166
    goto :goto_0

    .line 167
    :cond_4
    const/16 v0, 0x2a

    .line 168
    .line 169
    iput v0, v3, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mNsaQcTrigger:I

    .line 170
    .line 171
    :goto_0
    iget-object v0, v3, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mNetworkStatsAnalyzerCallBack:Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer$INetworkStatsAnalyzerCallBack;

    .line 172
    .line 173
    iget v1, v3, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mNsaQcStep:I

    .line 174
    .line 175
    iget v2, v3, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mNsaQcTrigger:I

    .line 176
    .line 177
    invoke-interface {v0, v1, v2}, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer$INetworkStatsAnalyzerCallBack;->needInternetCheck(II)V

    .line 178
    .line 179
    .line 180
    :cond_5
    :goto_1
    iput-boolean v12, v3, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mPublicDnsCheckProcess:Z

    .line 181
    .line 182
    return-void

    .line 183
    :pswitch_1
    invoke-virtual {v3, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 184
    .line 185
    .line 186
    iget-boolean v1, v3, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mDnsQueried:Z

    .line 187
    .line 188
    if-eqz v1, :cond_80

    .line 189
    .line 190
    sget-boolean v1, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->DBG:Z

    .line 191
    .line 192
    if-eqz v1, :cond_6

    .line 193
    .line 194
    new-instance v1, Ljava/lang/StringBuilder;

    .line 195
    .line 196
    const-string v2, "["

    .line 197
    .line 198
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 199
    .line 200
    .line 201
    iget v0, v0, Landroid/os/Message;->what:I

    .line 202
    .line 203
    const-string v2, "] DNS query ongoing. -> Pass the next result"

    .line 204
    .line 205
    invoke-static {v2, v0, v1}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/StringBuilder;)Ljava/lang/String;

    .line 206
    .line 207
    .line 208
    move-result-object v0

    .line 209
    invoke-static {v10, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    .line 211
    .line 212
    :cond_6
    iput-boolean v11, v3, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mDnsInterrupted:Z

    .line 213
    .line 214
    return-void

    .line 215
    :pswitch_2
    iget-boolean v0, v3, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mIsPollingStarted:Z

    .line 216
    .line 217
    if-nez v0, :cond_7

    .line 218
    .line 219
    goto/16 :goto_53

    .line 220
    .line 221
    :cond_7
    move-wide/from16 v19, v7

    .line 222
    .line 223
    invoke-static {}, Landroid/net/TrafficStats;->getTotalTxPackets()J

    .line 224
    .line 225
    .line 226
    move-result-wide v6

    .line 227
    move v8, v11

    .line 228
    move/from16 v21, v12

    .line 229
    .line 230
    invoke-static {}, Landroid/net/TrafficStats;->getTotalRxPackets()J

    .line 231
    .line 232
    .line 233
    move-result-wide v11

    .line 234
    move/from16 p1, v8

    .line 235
    .line 236
    iget-wide v8, v3, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mPrevTotalRxPkt:J

    .line 237
    .line 238
    sub-long v8, v11, v8

    .line 239
    .line 240
    move-object v2, v1

    .line 241
    iget-wide v0, v3, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mPrevTotalTxPkt:J

    .line 242
    .line 243
    const/16 v24, 0x8

    .line 244
    .line 245
    sub-long v4, v6, v0

    .line 246
    .line 247
    iget-object v0, v3, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    .line 248
    .line 249
    if-eqz v0, :cond_a

    .line 250
    .line 251
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getRssi()I

    .line 252
    .line 253
    .line 254
    move-result v0

    .line 255
    if-lt v0, v13, :cond_8

    .line 256
    .line 257
    move v15, v0

    .line 258
    const/4 v1, 0x5

    .line 259
    const/4 v13, 0x5

    .line 260
    goto :goto_2

    .line 261
    :cond_8
    if-ge v0, v13, :cond_9

    .line 262
    .line 263
    if-le v0, v15, :cond_9

    .line 264
    .line 265
    move v15, v0

    .line 266
    const/4 v1, 0x2

    .line 267
    const/4 v13, 0x3

    .line 268
    goto :goto_2

    .line 269
    :cond_9
    move v15, v0

    .line 270
    const/4 v1, 0x2

    .line 271
    const/4 v13, 0x2

    .line 272
    goto :goto_2

    .line 273
    :cond_a
    move/from16 v1, v21

    .line 274
    .line 275
    move v13, v1

    .line 276
    move v15, v13

    .line 277
    :goto_2
    const/16 v16, 0x0

    .line 278
    .line 279
    const/4 v0, 0x6

    .line 280
    :try_start_0
    new-instance v14, Ljava/io/FileReader;

    .line 281
    .line 282
    move/from16 v26, v0

    .line 283
    .line 284
    const-string v0, "/proc/net/snmp"

    .line 285
    .line 286
    invoke-direct {v14, v0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_18
    .catchall {:try_start_0 .. :try_end_0} :catchall_a

    .line 287
    .line 288
    .line 289
    move-object/from16 v17, v2

    .line 290
    .line 291
    :try_start_1
    new-instance v2, Ljava/io/FileReader;

    .line 292
    .line 293
    const-string v0, "/proc/net/sockstat"

    .line 294
    .line 295
    invoke-direct {v2, v0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_17
    .catchall {:try_start_1 .. :try_end_1} :catchall_9

    .line 296
    .line 297
    .line 298
    move-wide/from16 v27, v6

    .line 299
    .line 300
    :try_start_2
    new-instance v6, Ljava/io/FileReader;

    .line 301
    .line 302
    const-string v0, "/proc/net/sockstat6"

    .line 303
    .line 304
    invoke-direct {v6, v0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_16
    .catchall {:try_start_2 .. :try_end_2} :catchall_8

    .line 305
    .line 306
    .line 307
    :try_start_3
    new-instance v7, Ljava/io/BufferedReader;

    .line 308
    .line 309
    invoke-direct {v7, v14}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_15
    .catchall {:try_start_3 .. :try_end_3} :catchall_7

    .line 310
    .line 311
    .line 312
    move-object/from16 v22, v7

    .line 313
    .line 314
    :try_start_4
    new-instance v7, Ljava/io/BufferedReader;

    .line 315
    .line 316
    invoke-direct {v7, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_14
    .catchall {:try_start_4 .. :try_end_4} :catchall_6

    .line 317
    .line 318
    .line 319
    move-object/from16 v23, v2

    .line 320
    .line 321
    :try_start_5
    new-instance v2, Ljava/io/BufferedReader;

    .line 322
    .line 323
    invoke-direct {v2, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_13
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    .line 324
    .line 325
    .line 326
    move-object/from16 v29, v2

    .line 327
    .line 328
    move/from16 v16, v21

    .line 329
    .line 330
    move/from16 v0, v26

    .line 331
    .line 332
    :goto_3
    :try_start_6
    invoke-virtual/range {v22 .. v22}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 333
    .line 334
    .line 335
    move-result-object v2
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_12
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    .line 336
    move-object/from16 v30, v6

    .line 337
    .line 338
    const-string v6, " +"

    .line 339
    .line 340
    move-object/from16 v31, v7

    .line 341
    .line 342
    if-eqz v2, :cond_e

    .line 343
    .line 344
    add-int/lit8 v7, v16, 0x1

    .line 345
    .line 346
    if-ne v7, v0, :cond_d

    .line 347
    .line 348
    :try_start_7
    invoke-virtual {v2, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 349
    .line 350
    .line 351
    move-result-object v2

    .line 352
    move-object/from16 v16, v2

    .line 353
    .line 354
    aget-object v2, v16, v21

    .line 355
    .line 356
    move/from16 v32, v7

    .line 357
    .line 358
    const-string v7, "Icmp"

    .line 359
    .line 360
    invoke-virtual {v2, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 361
    .line 362
    .line 363
    move-result v2

    .line 364
    if-eqz v2, :cond_c

    .line 365
    .line 366
    sget-boolean v2, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->DBG:Z

    .line 367
    .line 368
    if-eqz v2, :cond_b

    .line 369
    .line 370
    new-instance v2, Ljava/lang/StringBuilder;

    .line 371
    .line 372
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 373
    .line 374
    .line 375
    const-string v6, "checkBackhaulConnection: "

    .line 376
    .line 377
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 378
    .line 379
    .line 380
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 381
    .line 382
    .line 383
    const-string v6, ", "

    .line 384
    .line 385
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 386
    .line 387
    .line 388
    aget-object v6, v16, v21

    .line 389
    .line 390
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 391
    .line 392
    .line 393
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 394
    .line 395
    .line 396
    move-result-object v2

    .line 397
    invoke-static {v10, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    .line 399
    .line 400
    goto :goto_6

    .line 401
    :catchall_0
    move-exception v0

    .line 402
    move-object v1, v0

    .line 403
    move-object v9, v10

    .line 404
    move-object/from16 v16, v14

    .line 405
    .line 406
    move-object/from16 v2, v17

    .line 407
    .line 408
    goto/16 :goto_2a

    .line 409
    .line 410
    :catch_0
    move-exception v0

    .line 411
    move-object/from16 v39, v14

    .line 412
    .line 413
    move-object/from16 v2, v17

    .line 414
    .line 415
    move/from16 v6, v21

    .line 416
    .line 417
    move v7, v6

    .line 418
    move/from16 v16, v7

    .line 419
    .line 420
    move/from16 v25, v16

    .line 421
    .line 422
    move/from16 v26, v25

    .line 423
    .line 424
    :goto_4
    move/from16 v32, v26

    .line 425
    .line 426
    move/from16 v33, v32

    .line 427
    .line 428
    move/from16 v34, v33

    .line 429
    .line 430
    move/from16 v36, v34

    .line 431
    .line 432
    move/from16 v37, v36

    .line 433
    .line 434
    :goto_5
    move/from16 v38, v37

    .line 435
    .line 436
    goto/16 :goto_24

    .line 437
    .line 438
    :cond_b
    :goto_6
    add-int/lit8 v0, v0, 0x2

    .line 439
    .line 440
    :goto_7
    move-object/from16 v6, v30

    .line 441
    .line 442
    move-object/from16 v7, v31

    .line 443
    .line 444
    move/from16 v16, v32

    .line 445
    .line 446
    goto :goto_3

    .line 447
    :cond_c
    const/16 v0, 0x9

    .line 448
    .line 449
    aget-object v0, v16, v0

    .line 450
    .line 451
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 452
    .line 453
    .line 454
    move-result v2
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 455
    const/16 v0, 0xe

    .line 456
    .line 457
    :try_start_8
    aget-object v0, v16, v0

    .line 458
    .line 459
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 460
    .line 461
    .line 462
    move-result v7
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 463
    const/16 v0, 0xd

    .line 464
    .line 465
    :try_start_9
    aget-object v0, v16, v0

    .line 466
    .line 467
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 468
    .line 469
    .line 470
    move-result v32
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 471
    const/16 v0, 0xa

    .line 472
    .line 473
    :try_start_a
    aget-object v0, v16, v0

    .line 474
    .line 475
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 476
    .line 477
    .line 478
    move-result v33
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_2
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 479
    const/16 v0, 0xb

    .line 480
    .line 481
    :try_start_b
    aget-object v0, v16, v0

    .line 482
    .line 483
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 484
    .line 485
    .line 486
    move-result v0
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_1
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 487
    move/from16 v16, v0

    .line 488
    .line 489
    goto/16 :goto_b

    .line 490
    .line 491
    :catch_1
    move-exception v0

    .line 492
    move/from16 v25, v2

    .line 493
    .line 494
    move/from16 v36, v7

    .line 495
    .line 496
    move-object/from16 v39, v14

    .line 497
    .line 498
    move-object/from16 v2, v17

    .line 499
    .line 500
    move/from16 v6, v21

    .line 501
    .line 502
    move v7, v6

    .line 503
    move/from16 v16, v7

    .line 504
    .line 505
    move/from16 v26, v16

    .line 506
    .line 507
    :goto_8
    move/from16 v34, v26

    .line 508
    .line 509
    :goto_9
    move/from16 v37, v34

    .line 510
    .line 511
    goto :goto_5

    .line 512
    :catch_2
    move-exception v0

    .line 513
    move/from16 v25, v2

    .line 514
    .line 515
    move/from16 v36, v7

    .line 516
    .line 517
    move-object/from16 v39, v14

    .line 518
    .line 519
    move-object/from16 v2, v17

    .line 520
    .line 521
    move/from16 v6, v21

    .line 522
    .line 523
    move v7, v6

    .line 524
    move/from16 v16, v7

    .line 525
    .line 526
    move/from16 v26, v16

    .line 527
    .line 528
    move/from16 v33, v26

    .line 529
    .line 530
    :goto_a
    move/from16 v34, v33

    .line 531
    .line 532
    goto :goto_9

    .line 533
    :catch_3
    move-exception v0

    .line 534
    move/from16 v25, v2

    .line 535
    .line 536
    move/from16 v36, v7

    .line 537
    .line 538
    move-object/from16 v39, v14

    .line 539
    .line 540
    move-object/from16 v2, v17

    .line 541
    .line 542
    move/from16 v6, v21

    .line 543
    .line 544
    move v7, v6

    .line 545
    move/from16 v16, v7

    .line 546
    .line 547
    move/from16 v26, v16

    .line 548
    .line 549
    move/from16 v32, v26

    .line 550
    .line 551
    move/from16 v33, v32

    .line 552
    .line 553
    goto :goto_a

    .line 554
    :catch_4
    move-exception v0

    .line 555
    move/from16 v25, v2

    .line 556
    .line 557
    move-object/from16 v39, v14

    .line 558
    .line 559
    move-object/from16 v2, v17

    .line 560
    .line 561
    move/from16 v6, v21

    .line 562
    .line 563
    move v7, v6

    .line 564
    move/from16 v16, v7

    .line 565
    .line 566
    move/from16 v26, v16

    .line 567
    .line 568
    goto/16 :goto_4

    .line 569
    .line 570
    :cond_d
    move/from16 v32, v7

    .line 571
    .line 572
    goto/16 :goto_7

    .line 573
    .line 574
    :cond_e
    move/from16 v2, v21

    .line 575
    .line 576
    move v7, v2

    .line 577
    move/from16 v16, v7

    .line 578
    .line 579
    move/from16 v32, v16

    .line 580
    .line 581
    move/from16 v33, v32

    .line 582
    .line 583
    :goto_b
    move/from16 v34, v21

    .line 584
    .line 585
    :goto_c
    :try_start_c
    invoke-virtual/range {v31 .. v31}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 586
    .line 587
    .line 588
    move-result-object v0
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_11
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    .line 589
    const/16 v35, 0x4

    .line 590
    .line 591
    move/from16 v36, v7

    .line 592
    .line 593
    if-eqz v0, :cond_10

    .line 594
    .line 595
    add-int/lit8 v7, v34, 0x1

    .line 596
    .line 597
    :try_start_d
    invoke-virtual {v0, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 598
    .line 599
    .line 600
    move-result-object v0

    .line 601
    move-object/from16 v34, v0

    .line 602
    .line 603
    const/4 v0, 0x2

    .line 604
    if-ne v7, v0, :cond_f

    .line 605
    .line 606
    aget-object v7, v34, v0

    .line 607
    .line 608
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 609
    .line 610
    .line 611
    move-result v7
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_6
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 612
    :try_start_e
    aget-object v0, v34, v35

    .line 613
    .line 614
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 615
    .line 616
    .line 617
    move-result v0

    .line 618
    aget-object v26, v34, v26

    .line 619
    .line 620
    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 621
    .line 622
    .line 623
    move-result v26
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_5
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    .line 624
    move/from16 v34, v26

    .line 625
    .line 626
    move/from16 v26, v7

    .line 627
    .line 628
    move/from16 v7, v34

    .line 629
    .line 630
    move/from16 v34, v0

    .line 631
    .line 632
    goto :goto_e

    .line 633
    :catch_5
    move-exception v0

    .line 634
    move/from16 v25, v2

    .line 635
    .line 636
    move v6, v7

    .line 637
    move-object/from16 v39, v14

    .line 638
    .line 639
    move-object/from16 v2, v17

    .line 640
    .line 641
    move/from16 v7, v21

    .line 642
    .line 643
    :goto_d
    move/from16 v26, v7

    .line 644
    .line 645
    goto/16 :goto_8

    .line 646
    .line 647
    :catch_6
    move-exception v0

    .line 648
    move/from16 v25, v2

    .line 649
    .line 650
    move-object/from16 v39, v14

    .line 651
    .line 652
    move-object/from16 v2, v17

    .line 653
    .line 654
    move/from16 v6, v21

    .line 655
    .line 656
    move v7, v6

    .line 657
    goto :goto_d

    .line 658
    :cond_f
    move/from16 v34, v7

    .line 659
    .line 660
    move/from16 v7, v36

    .line 661
    .line 662
    goto :goto_c

    .line 663
    :cond_10
    move/from16 v7, v21

    .line 664
    .line 665
    move/from16 v26, v7

    .line 666
    .line 667
    move/from16 v34, v26

    .line 668
    .line 669
    :goto_e
    :try_start_f
    invoke-virtual/range {v29 .. v29}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 670
    .line 671
    .line 672
    move-result-object v0
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_10
    .catchall {:try_start_f .. :try_end_f} :catchall_3

    .line 673
    if-eqz v0, :cond_11

    .line 674
    .line 675
    :try_start_10
    invoke-virtual {v0, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 676
    .line 677
    .line 678
    move-result-object v0

    .line 679
    const/16 v25, 0x2

    .line 680
    .line 681
    aget-object v0, v0, v25

    .line 682
    .line 683
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 684
    .line 685
    .line 686
    move-result v0
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_7
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    .line 687
    add-int v0, v26, v0

    .line 688
    .line 689
    goto :goto_f

    .line 690
    :catch_7
    move-exception v0

    .line 691
    move/from16 v25, v2

    .line 692
    .line 693
    move-object/from16 v39, v14

    .line 694
    .line 695
    move-object/from16 v2, v17

    .line 696
    .line 697
    move/from16 v34, v21

    .line 698
    .line 699
    move/from16 v37, v34

    .line 700
    .line 701
    move/from16 v38, v37

    .line 702
    .line 703
    move/from16 v6, v26

    .line 704
    .line 705
    move/from16 v26, v38

    .line 706
    .line 707
    goto/16 :goto_24

    .line 708
    .line 709
    :cond_11
    move/from16 v0, v26

    .line 710
    .line 711
    :goto_f
    sub-int v6, v0, v34

    .line 712
    .line 713
    :try_start_11
    iget v0, v3, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mPrevInSegCount:I
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_f
    .catchall {:try_start_11 .. :try_end_11} :catchall_3

    .line 714
    .line 715
    sub-int v26, v33, v0

    .line 716
    .line 717
    :try_start_12
    iget v0, v3, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mPrevOutSegCount:I
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_e
    .catchall {:try_start_12 .. :try_end_12} :catchall_3

    .line 718
    .line 719
    sub-int v34, v16, v0

    .line 720
    .line 721
    :try_start_13
    iget v0, v3, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mPrevInSegErrorCount:I
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_d
    .catchall {:try_start_13 .. :try_end_13} :catchall_3

    .line 722
    .line 723
    sub-int v37, v32, v0

    .line 724
    .line 725
    :try_start_14
    iget v0, v3, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mPrevRetranSegCount:I
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_c
    .catchall {:try_start_14 .. :try_end_14} :catchall_3

    .line 726
    .line 727
    sub-int v38, v36, v0

    .line 728
    .line 729
    if-lez v37, :cond_12

    .line 730
    .line 731
    add-int v0, v26, v34

    .line 732
    .line 733
    move-object/from16 v39, v14

    .line 734
    .line 735
    const/16 v14, 0xf

    .line 736
    .line 737
    if-lt v0, v14, :cond_13

    .line 738
    .line 739
    goto :goto_10

    .line 740
    :cond_12
    move-object/from16 v39, v14

    .line 741
    .line 742
    :goto_10
    :try_start_15
    iget v0, v3, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mInErrorSegWaitingCycle:I
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_9
    .catchall {:try_start_15 .. :try_end_15} :catchall_2

    .line 743
    .line 744
    if-lez v0, :cond_14

    .line 745
    .line 746
    :cond_13
    :try_start_16
    iget v0, v3, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mInErrorSegWaitingCycle:I

    .line 747
    .line 748
    add-int/lit8 v0, v0, 0x1

    .line 749
    .line 750
    iput v0, v3, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mInErrorSegWaitingCycle:I
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_8
    .catchall {:try_start_16 .. :try_end_16} :catchall_1

    .line 751
    .line 752
    goto :goto_13

    .line 753
    :catchall_1
    move-exception v0

    .line 754
    move-object v1, v0

    .line 755
    move-object v9, v10

    .line 756
    move-object/from16 v2, v17

    .line 757
    .line 758
    :goto_11
    move-object/from16 v16, v39

    .line 759
    .line 760
    goto/16 :goto_2a

    .line 761
    .line 762
    :catch_8
    move-exception v0

    .line 763
    :goto_12
    move/from16 v25, v2

    .line 764
    .line 765
    move-object/from16 v2, v17

    .line 766
    .line 767
    goto/16 :goto_24

    .line 768
    .line 769
    :cond_14
    :goto_13
    if-lez v38, :cond_15

    .line 770
    .line 771
    if-eqz v26, :cond_16

    .line 772
    .line 773
    :cond_15
    :try_start_17
    iget v0, v3, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mRetransSegWaitingCycle:I
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_9
    .catchall {:try_start_17 .. :try_end_17} :catchall_2

    .line 774
    .line 775
    if-lez v0, :cond_17

    .line 776
    .line 777
    :cond_16
    :try_start_18
    iget v0, v3, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mRetransSegWaitingCycle:I

    .line 778
    .line 779
    add-int/lit8 v0, v0, 0x1

    .line 780
    .line 781
    iput v0, v3, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mRetransSegWaitingCycle:I
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_8
    .catchall {:try_start_18 .. :try_end_18} :catchall_1

    .line 782
    .line 783
    :cond_17
    :try_start_19
    iget v0, v3, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mPrevTcpEstablishedCount:I
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_19} :catch_9
    .catchall {:try_start_19 .. :try_end_19} :catchall_2

    .line 784
    .line 785
    if-le v2, v0, :cond_18

    .line 786
    .line 787
    move/from16 v14, v21

    .line 788
    .line 789
    :try_start_1a
    iput v14, v3, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mInternetConnectivityCounter:I

    .line 790
    .line 791
    iput v14, v3, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mInternetConnectivityWaitingCycle:I

    .line 792
    .line 793
    iput v14, v3, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mInErrorSegWaitingCycle:I

    .line 794
    .line 795
    iput v14, v3, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mRetransSegWaitingCycle:I
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1a} :catch_9
    .catchall {:try_start_1a .. :try_end_1a} :catchall_1

    .line 796
    .line 797
    goto :goto_14

    .line 798
    :catch_9
    move-exception v0

    .line 799
    move/from16 v25, v2

    .line 800
    .line 801
    move-object/from16 v2, v17

    .line 802
    .line 803
    const/16 v21, 0x0

    .line 804
    .line 805
    goto/16 :goto_24

    .line 806
    .line 807
    :cond_18
    :try_start_1b
    iget v0, v3, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mPrevTimeWaitCount:I
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1b} :catch_9
    .catchall {:try_start_1b .. :try_end_1b} :catchall_2

    .line 808
    .line 809
    if-le v7, v0, :cond_19

    .line 810
    .line 811
    const/4 v0, 0x2

    .line 812
    if-le v13, v0, :cond_19

    .line 813
    .line 814
    const/4 v14, 0x0

    .line 815
    :try_start_1c
    iput v14, v3, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mInternetConnectivityCounter:I

    .line 816
    .line 817
    iput v14, v3, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mInternetConnectivityWaitingCycle:I
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1c} :catch_9
    .catchall {:try_start_1c .. :try_end_1c} :catchall_1

    .line 818
    .line 819
    goto :goto_14

    .line 820
    :cond_19
    :try_start_1d
    iget v0, v3, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mPrevTcpInUseCount:I
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_1d} :catch_9
    .catchall {:try_start_1d .. :try_end_1d} :catchall_2

    .line 821
    .line 822
    if-le v6, v0, :cond_1a

    .line 823
    .line 824
    :try_start_1e
    iget v14, v3, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mInternetConnectivityCounter:I

    .line 825
    .line 826
    sub-int v0, v6, v0

    .line 827
    .line 828
    add-int/2addr v0, v14

    .line 829
    iput v0, v3, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mInternetConnectivityCounter:I
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_1e} :catch_9
    .catchall {:try_start_1e .. :try_end_1e} :catchall_1

    .line 830
    .line 831
    :cond_1a
    :goto_14
    :try_start_1f
    iget v0, v3, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mInternetConnectivityCounter:I
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_1f} :catch_9
    .catchall {:try_start_1f .. :try_end_1f} :catchall_2

    .line 832
    .line 833
    if-lez v0, :cond_1b

    .line 834
    .line 835
    :try_start_20
    iget v14, v3, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mInternetConnectivityWaitingCycle:I

    .line 836
    .line 837
    add-int/lit8 v14, v14, 0x1

    .line 838
    .line 839
    iput v14, v3, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mInternetConnectivityWaitingCycle:I
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_20} :catch_9
    .catchall {:try_start_20 .. :try_end_20} :catchall_1

    .line 840
    .line 841
    :cond_1b
    const/4 v14, 0x0

    .line 842
    :try_start_21
    iput v14, v3, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mBackhaulDetectionReason:I
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_21} :catch_9
    .catchall {:try_start_21 .. :try_end_21} :catchall_2

    .line 843
    .line 844
    if-le v0, v1, :cond_1c

    .line 845
    .line 846
    :try_start_22
    iget v0, v3, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mInternetConnectivityWaitingCycle:I

    .line 847
    .line 848
    if-le v0, v13, :cond_1c

    .line 849
    .line 850
    const-string v0, "Backhaul Disconnection due to TCP Sockets"

    .line 851
    .line 852
    invoke-static {v10, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 853
    .line 854
    .line 855
    iget v0, v3, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mBackhaulDetectionReason:I

    .line 856
    .line 857
    add-int/lit8 v0, v0, 0x1

    .line 858
    .line 859
    iput v0, v3, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mBackhaulDetectionReason:I
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_22} :catch_9
    .catchall {:try_start_22 .. :try_end_22} :catchall_1

    .line 860
    .line 861
    :cond_1c
    :try_start_23
    iget v0, v3, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mRetransSegWaitingCycle:I
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_23} :catch_9
    .catchall {:try_start_23 .. :try_end_23} :catchall_2

    .line 862
    .line 863
    if-le v0, v13, :cond_1d

    .line 864
    .line 865
    :try_start_24
    const-string v0, "Backhaul Disconnection due to RetransSeg"

    .line 866
    .line 867
    invoke-static {v10, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 868
    .line 869
    .line 870
    iget v0, v3, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mBackhaulDetectionReason:I

    .line 871
    .line 872
    const/16 v25, 0x2

    .line 873
    .line 874
    add-int/lit8 v0, v0, 0x2

    .line 875
    .line 876
    iput v0, v3, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mBackhaulDetectionReason:I
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_24} :catch_9
    .catchall {:try_start_24 .. :try_end_24} :catchall_1

    .line 877
    .line 878
    :cond_1d
    :try_start_25
    iget v0, v3, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mInErrorSegWaitingCycle:I
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_25} :catch_9
    .catchall {:try_start_25 .. :try_end_25} :catchall_2

    .line 879
    .line 880
    if-le v0, v13, :cond_1e

    .line 881
    .line 882
    :try_start_26
    const-string v0, "Backhaul Disconnection due to InErrorSeg"

    .line 883
    .line 884
    invoke-static {v10, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 885
    .line 886
    .line 887
    iget v0, v3, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mBackhaulDetectionReason:I

    .line 888
    .line 889
    add-int/lit8 v0, v0, 0x4

    .line 890
    .line 891
    iput v0, v3, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mBackhaulDetectionReason:I
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_26} :catch_9
    .catchall {:try_start_26 .. :try_end_26} :catchall_1

    .line 892
    .line 893
    :cond_1e
    :try_start_27
    iget v0, v3, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mInternetConnectivityWaitingCycle:I
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_27} :catch_9
    .catchall {:try_start_27 .. :try_end_27} :catchall_2

    .line 894
    .line 895
    const/16 v14, 0x3c

    .line 896
    .line 897
    if-le v0, v14, :cond_1f

    .line 898
    .line 899
    :try_start_28
    const-string v0, "Backhaul Disconnection due to no response from network"

    .line 900
    .line 901
    invoke-static {v10, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 902
    .line 903
    .line 904
    iget v0, v3, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mBackhaulDetectionReason:I

    .line 905
    .line 906
    add-int/lit8 v0, v0, 0x8

    .line 907
    .line 908
    iput v0, v3, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mBackhaulDetectionReason:I
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_28} :catch_9
    .catchall {:try_start_28 .. :try_end_28} :catchall_1

    .line 909
    .line 910
    :cond_1f
    :try_start_29
    iget v0, v3, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mBackhaulDetectionReason:I
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_29} :catch_9
    .catchall {:try_start_29 .. :try_end_29} :catchall_2

    .line 911
    .line 912
    if-lez v0, :cond_20

    .line 913
    .line 914
    :goto_15
    move/from16 v21, p1

    .line 915
    .line 916
    goto :goto_16

    .line 917
    :cond_20
    const-wide/32 v40, 0xea60

    .line 918
    .line 919
    .line 920
    cmp-long v0, v19, v40

    .line 921
    .line 922
    if-lez v0, :cond_22

    .line 923
    .line 924
    :try_start_2a
    sget-boolean v0, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->DBG:Z

    .line 925
    .line 926
    if-eqz v0, :cond_21

    .line 927
    .line 928
    const-string v0, "Do 1 min DNS check"

    .line 929
    .line 930
    invoke-static {v10, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_2a} :catch_9
    .catchall {:try_start_2a .. :try_end_2a} :catchall_1

    .line 931
    .line 932
    .line 933
    :cond_21
    const/16 v0, 0x10

    .line 934
    .line 935
    :try_start_2b
    iput v0, v3, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mBackhaulDetectionReason:I
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_2b} :catch_a
    .catchall {:try_start_2b .. :try_end_2b} :catchall_1

    .line 936
    .line 937
    goto :goto_15

    .line 938
    :catch_a
    move-exception v0

    .line 939
    move/from16 v21, p1

    .line 940
    .line 941
    goto/16 :goto_12

    .line 942
    .line 943
    :cond_22
    const/16 v21, 0x0

    .line 944
    .line 945
    :goto_16
    :try_start_2c
    invoke-virtual/range {v39 .. v39}, Ljava/io/FileReader;->close()V

    .line 946
    .line 947
    .line 948
    invoke-virtual/range {v23 .. v23}, Ljava/io/FileReader;->close()V

    .line 949
    .line 950
    .line 951
    invoke-virtual/range {v30 .. v30}, Ljava/io/FileReader;->close()V

    .line 952
    .line 953
    .line 954
    invoke-virtual/range {v23 .. v23}, Ljava/io/FileReader;->close()V

    .line 955
    .line 956
    .line 957
    invoke-virtual/range {v22 .. v22}, Ljava/io/BufferedReader;->close()V

    .line 958
    .line 959
    .line 960
    invoke-virtual/range {v31 .. v31}, Ljava/io/BufferedReader;->close()V

    .line 961
    .line 962
    .line 963
    invoke-virtual/range {v29 .. v29}, Ljava/io/BufferedReader;->close()V
    :try_end_2c
    .catch Ljava/io/IOException; {:try_start_2c .. :try_end_2c} :catch_b

    .line 964
    .line 965
    .line 966
    move/from16 v25, v2

    .line 967
    .line 968
    goto :goto_18

    .line 969
    :catch_b
    move-exception v0

    .line 970
    new-instance v14, Ljava/lang/StringBuilder;

    .line 971
    .line 972
    move/from16 v25, v2

    .line 973
    .line 974
    move-object/from16 v2, v17

    .line 975
    .line 976
    invoke-direct {v14, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 977
    .line 978
    .line 979
    :goto_17
    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 980
    .line 981
    .line 982
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 983
    .line 984
    .line 985
    move-result-object v2

    .line 986
    invoke-static {v10, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 987
    .line 988
    .line 989
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 990
    .line 991
    .line 992
    :cond_23
    :goto_18
    move/from16 v0, v21

    .line 993
    .line 994
    move/from16 v2, v25

    .line 995
    .line 996
    move/from16 v17, v32

    .line 997
    .line 998
    move/from16 v42, v33

    .line 999
    .line 1000
    move/from16 v19, v36

    .line 1001
    .line 1002
    move/from16 v20, v37

    .line 1003
    .line 1004
    move-wide/from16 v32, v11

    .line 1005
    .line 1006
    move/from16 v11, v26

    .line 1007
    .line 1008
    move/from16 v12, v34

    .line 1009
    .line 1010
    move-object/from16 v34, v10

    .line 1011
    .line 1012
    move/from16 v10, v38

    .line 1013
    .line 1014
    goto/16 :goto_27

    .line 1015
    .line 1016
    :catchall_2
    move-exception v0

    .line 1017
    :goto_19
    move-object/from16 v2, v17

    .line 1018
    .line 1019
    move-object v1, v0

    .line 1020
    move-object v9, v10

    .line 1021
    goto/16 :goto_11

    .line 1022
    .line 1023
    :catchall_3
    move-exception v0

    .line 1024
    :goto_1a
    move-object/from16 v39, v14

    .line 1025
    .line 1026
    goto :goto_19

    .line 1027
    :catch_c
    move-exception v0

    .line 1028
    move/from16 v25, v2

    .line 1029
    .line 1030
    move-object/from16 v39, v14

    .line 1031
    .line 1032
    move-object/from16 v2, v17

    .line 1033
    .line 1034
    const/16 v21, 0x0

    .line 1035
    .line 1036
    :goto_1b
    const/16 v38, 0x0

    .line 1037
    .line 1038
    goto/16 :goto_24

    .line 1039
    .line 1040
    :catch_d
    move-exception v0

    .line 1041
    move/from16 v25, v2

    .line 1042
    .line 1043
    move-object/from16 v39, v14

    .line 1044
    .line 1045
    move-object/from16 v2, v17

    .line 1046
    .line 1047
    const/16 v21, 0x0

    .line 1048
    .line 1049
    :goto_1c
    const/16 v37, 0x0

    .line 1050
    .line 1051
    goto :goto_1b

    .line 1052
    :catch_e
    move-exception v0

    .line 1053
    move/from16 v25, v2

    .line 1054
    .line 1055
    move-object/from16 v39, v14

    .line 1056
    .line 1057
    move-object/from16 v2, v17

    .line 1058
    .line 1059
    const/16 v21, 0x0

    .line 1060
    .line 1061
    :goto_1d
    const/16 v34, 0x0

    .line 1062
    .line 1063
    goto :goto_1c

    .line 1064
    :catch_f
    move-exception v0

    .line 1065
    move/from16 v25, v2

    .line 1066
    .line 1067
    move-object/from16 v39, v14

    .line 1068
    .line 1069
    move-object/from16 v2, v17

    .line 1070
    .line 1071
    :goto_1e
    const/16 v21, 0x0

    .line 1072
    .line 1073
    const/16 v26, 0x0

    .line 1074
    .line 1075
    goto :goto_1d

    .line 1076
    :catch_10
    move-exception v0

    .line 1077
    move/from16 v25, v2

    .line 1078
    .line 1079
    move-object/from16 v39, v14

    .line 1080
    .line 1081
    move-object/from16 v2, v17

    .line 1082
    .line 1083
    move/from16 v6, v26

    .line 1084
    .line 1085
    goto :goto_1e

    .line 1086
    :catch_11
    move-exception v0

    .line 1087
    move/from16 v25, v2

    .line 1088
    .line 1089
    move/from16 v36, v7

    .line 1090
    .line 1091
    move-object/from16 v39, v14

    .line 1092
    .line 1093
    move-object/from16 v2, v17

    .line 1094
    .line 1095
    const/4 v6, 0x0

    .line 1096
    const/4 v7, 0x0

    .line 1097
    goto :goto_1e

    .line 1098
    :catchall_4
    move-exception v0

    .line 1099
    move-object/from16 v30, v6

    .line 1100
    .line 1101
    move-object/from16 v31, v7

    .line 1102
    .line 1103
    goto :goto_1a

    .line 1104
    :catch_12
    move-exception v0

    .line 1105
    move-object/from16 v30, v6

    .line 1106
    .line 1107
    move-object/from16 v31, v7

    .line 1108
    .line 1109
    move-object/from16 v39, v14

    .line 1110
    .line 1111
    move-object/from16 v2, v17

    .line 1112
    .line 1113
    :goto_1f
    const/4 v6, 0x0

    .line 1114
    const/4 v7, 0x0

    .line 1115
    const/16 v16, 0x0

    .line 1116
    .line 1117
    const/16 v21, 0x0

    .line 1118
    .line 1119
    const/16 v25, 0x0

    .line 1120
    .line 1121
    const/16 v26, 0x0

    .line 1122
    .line 1123
    const/16 v32, 0x0

    .line 1124
    .line 1125
    const/16 v33, 0x0

    .line 1126
    .line 1127
    const/16 v34, 0x0

    .line 1128
    .line 1129
    const/16 v36, 0x0

    .line 1130
    .line 1131
    goto :goto_1c

    .line 1132
    :catchall_5
    move-exception v0

    .line 1133
    move-object/from16 v30, v6

    .line 1134
    .line 1135
    move-object/from16 v31, v7

    .line 1136
    .line 1137
    move-object/from16 v39, v14

    .line 1138
    .line 1139
    move-object/from16 v2, v17

    .line 1140
    .line 1141
    move-object v1, v0

    .line 1142
    move-object v9, v10

    .line 1143
    move-object/from16 v29, v16

    .line 1144
    .line 1145
    goto/16 :goto_11

    .line 1146
    .line 1147
    :catch_13
    move-exception v0

    .line 1148
    move-object/from16 v30, v6

    .line 1149
    .line 1150
    move-object/from16 v31, v7

    .line 1151
    .line 1152
    move-object/from16 v39, v14

    .line 1153
    .line 1154
    move-object/from16 v2, v17

    .line 1155
    .line 1156
    move-object/from16 v29, v16

    .line 1157
    .line 1158
    goto :goto_1f

    .line 1159
    :catchall_6
    move-exception v0

    .line 1160
    move-object/from16 v23, v2

    .line 1161
    .line 1162
    move-object/from16 v30, v6

    .line 1163
    .line 1164
    move-object/from16 v39, v14

    .line 1165
    .line 1166
    move-object/from16 v2, v17

    .line 1167
    .line 1168
    move-object v1, v0

    .line 1169
    move-object v9, v10

    .line 1170
    move-object/from16 v29, v16

    .line 1171
    .line 1172
    :goto_20
    move-object/from16 v31, v29

    .line 1173
    .line 1174
    goto/16 :goto_11

    .line 1175
    .line 1176
    :catch_14
    move-exception v0

    .line 1177
    move-object/from16 v23, v2

    .line 1178
    .line 1179
    move-object/from16 v30, v6

    .line 1180
    .line 1181
    move-object/from16 v39, v14

    .line 1182
    .line 1183
    move-object/from16 v2, v17

    .line 1184
    .line 1185
    move-object/from16 v29, v16

    .line 1186
    .line 1187
    :goto_21
    move-object/from16 v31, v29

    .line 1188
    .line 1189
    goto :goto_1f

    .line 1190
    :catchall_7
    move-exception v0

    .line 1191
    move-object/from16 v23, v2

    .line 1192
    .line 1193
    move-object/from16 v30, v6

    .line 1194
    .line 1195
    move-object/from16 v39, v14

    .line 1196
    .line 1197
    move-object/from16 v2, v17

    .line 1198
    .line 1199
    move-object v1, v0

    .line 1200
    move-object v9, v10

    .line 1201
    move-object/from16 v22, v16

    .line 1202
    .line 1203
    move-object/from16 v29, v22

    .line 1204
    .line 1205
    goto :goto_20

    .line 1206
    :catch_15
    move-exception v0

    .line 1207
    move-object/from16 v23, v2

    .line 1208
    .line 1209
    move-object/from16 v30, v6

    .line 1210
    .line 1211
    move-object/from16 v39, v14

    .line 1212
    .line 1213
    move-object/from16 v2, v17

    .line 1214
    .line 1215
    move-object/from16 v22, v16

    .line 1216
    .line 1217
    move-object/from16 v29, v22

    .line 1218
    .line 1219
    goto :goto_21

    .line 1220
    :catchall_8
    move-exception v0

    .line 1221
    move-object/from16 v23, v2

    .line 1222
    .line 1223
    move-object/from16 v39, v14

    .line 1224
    .line 1225
    move-object/from16 v2, v17

    .line 1226
    .line 1227
    move-object v1, v0

    .line 1228
    move-object v9, v10

    .line 1229
    move-object/from16 v22, v16

    .line 1230
    .line 1231
    move-object/from16 v29, v22

    .line 1232
    .line 1233
    :goto_22
    move-object/from16 v30, v29

    .line 1234
    .line 1235
    move-object/from16 v31, v30

    .line 1236
    .line 1237
    goto/16 :goto_11

    .line 1238
    .line 1239
    :catch_16
    move-exception v0

    .line 1240
    move-object/from16 v23, v2

    .line 1241
    .line 1242
    move-object/from16 v39, v14

    .line 1243
    .line 1244
    move-object/from16 v2, v17

    .line 1245
    .line 1246
    move-object/from16 v22, v16

    .line 1247
    .line 1248
    move-object/from16 v29, v22

    .line 1249
    .line 1250
    :goto_23
    move-object/from16 v30, v29

    .line 1251
    .line 1252
    move-object/from16 v31, v30

    .line 1253
    .line 1254
    goto/16 :goto_1f

    .line 1255
    .line 1256
    :catchall_9
    move-exception v0

    .line 1257
    move-object/from16 v39, v14

    .line 1258
    .line 1259
    move-object/from16 v2, v17

    .line 1260
    .line 1261
    move-object v1, v0

    .line 1262
    move-object v9, v10

    .line 1263
    move-object/from16 v22, v16

    .line 1264
    .line 1265
    move-object/from16 v23, v22

    .line 1266
    .line 1267
    move-object/from16 v29, v23

    .line 1268
    .line 1269
    goto :goto_22

    .line 1270
    :catch_17
    move-exception v0

    .line 1271
    move-wide/from16 v27, v6

    .line 1272
    .line 1273
    move-object/from16 v39, v14

    .line 1274
    .line 1275
    move-object/from16 v2, v17

    .line 1276
    .line 1277
    move-object/from16 v22, v16

    .line 1278
    .line 1279
    move-object/from16 v23, v22

    .line 1280
    .line 1281
    move-object/from16 v29, v23

    .line 1282
    .line 1283
    goto :goto_23

    .line 1284
    :catchall_a
    move-exception v0

    .line 1285
    move-object v1, v0

    .line 1286
    move-object v9, v10

    .line 1287
    move-object/from16 v22, v16

    .line 1288
    .line 1289
    move-object/from16 v23, v22

    .line 1290
    .line 1291
    move-object/from16 v29, v23

    .line 1292
    .line 1293
    move-object/from16 v30, v29

    .line 1294
    .line 1295
    move-object/from16 v31, v30

    .line 1296
    .line 1297
    goto/16 :goto_2a

    .line 1298
    .line 1299
    :catch_18
    move-exception v0

    .line 1300
    move-wide/from16 v27, v6

    .line 1301
    .line 1302
    move-object/from16 v22, v16

    .line 1303
    .line 1304
    move-object/from16 v23, v22

    .line 1305
    .line 1306
    move-object/from16 v29, v23

    .line 1307
    .line 1308
    move-object/from16 v30, v29

    .line 1309
    .line 1310
    move-object/from16 v31, v30

    .line 1311
    .line 1312
    move-object/from16 v39, v31

    .line 1313
    .line 1314
    goto/16 :goto_1f

    .line 1315
    .line 1316
    :goto_24
    :try_start_2d
    new-instance v14, Ljava/lang/StringBuilder;

    .line 1317
    .line 1318
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .line 1319
    .line 1320
    .line 1321
    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1322
    .line 1323
    .line 1324
    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1325
    .line 1326
    .line 1327
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1328
    .line 1329
    .line 1330
    move-result-object v14

    .line 1331
    invoke-static {v10, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1332
    .line 1333
    .line 1334
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2d
    .catchall {:try_start_2d .. :try_end_2d} :catchall_b

    .line 1335
    .line 1336
    .line 1337
    if-eqz v39, :cond_24

    .line 1338
    .line 1339
    :try_start_2e
    invoke-virtual/range {v39 .. v39}, Ljava/io/FileReader;->close()V

    .line 1340
    .line 1341
    .line 1342
    goto :goto_25

    .line 1343
    :catch_19
    move-exception v0

    .line 1344
    goto :goto_26

    .line 1345
    :cond_24
    :goto_25
    if-eqz v23, :cond_25

    .line 1346
    .line 1347
    invoke-virtual/range {v23 .. v23}, Ljava/io/FileReader;->close()V

    .line 1348
    .line 1349
    .line 1350
    :cond_25
    if-eqz v30, :cond_26

    .line 1351
    .line 1352
    invoke-virtual/range {v30 .. v30}, Ljava/io/FileReader;->close()V

    .line 1353
    .line 1354
    .line 1355
    :cond_26
    if-eqz v23, :cond_27

    .line 1356
    .line 1357
    invoke-virtual/range {v23 .. v23}, Ljava/io/FileReader;->close()V

    .line 1358
    .line 1359
    .line 1360
    :cond_27
    if-eqz v22, :cond_28

    .line 1361
    .line 1362
    invoke-virtual/range {v22 .. v22}, Ljava/io/BufferedReader;->close()V

    .line 1363
    .line 1364
    .line 1365
    :cond_28
    if-eqz v31, :cond_29

    .line 1366
    .line 1367
    invoke-virtual/range {v31 .. v31}, Ljava/io/BufferedReader;->close()V

    .line 1368
    .line 1369
    .line 1370
    :cond_29
    if-eqz v29, :cond_23

    .line 1371
    .line 1372
    invoke-virtual/range {v29 .. v29}, Ljava/io/BufferedReader;->close()V
    :try_end_2e
    .catch Ljava/io/IOException; {:try_start_2e .. :try_end_2e} :catch_19

    .line 1373
    .line 1374
    .line 1375
    goto/16 :goto_18

    .line 1376
    .line 1377
    :goto_26
    new-instance v14, Ljava/lang/StringBuilder;

    .line 1378
    .line 1379
    invoke-direct {v14, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1380
    .line 1381
    .line 1382
    goto/16 :goto_17

    .line 1383
    .line 1384
    :goto_27
    const-string v14, "RSSI:"

    .line 1385
    .line 1386
    move/from16 v21, v10

    .line 1387
    .line 1388
    const-string v10, ", CE:"

    .line 1389
    .line 1390
    move/from16 v25, v13

    .line 1391
    .line 1392
    const-string v13, ", PE:"

    .line 1393
    .line 1394
    invoke-static {v14, v10, v15, v2, v13}, Lcom/google/gson/stream/JsonReader$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 1395
    .line 1396
    .line 1397
    move-result-object v10

    .line 1398
    iget v13, v3, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mPrevTcpEstablishedCount:I

    .line 1399
    .line 1400
    const-string v14, ", TI:"

    .line 1401
    .line 1402
    const-string v15, ", PTI:"

    .line 1403
    .line 1404
    invoke-static {v10, v13, v14, v6, v15}, Lcom/samsung/android/server/wifi/SemApeController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    .line 1405
    .line 1406
    .line 1407
    iget v13, v3, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mPrevTcpInUseCount:I

    .line 1408
    .line 1409
    const-string v14, ", TW:"

    .line 1410
    .line 1411
    const-string v15, ", PTW:"

    .line 1412
    .line 1413
    invoke-static {v10, v13, v14, v7, v15}, Lcom/samsung/android/server/wifi/SemApeController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    .line 1414
    .line 1415
    .line 1416
    iget v13, v3, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mPrevTimeWaitCount:I

    .line 1417
    .line 1418
    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1419
    .line 1420
    .line 1421
    const-string v13, ", Tx:"

    .line 1422
    .line 1423
    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1424
    .line 1425
    .line 1426
    invoke-virtual {v10, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1427
    .line 1428
    .line 1429
    const-string v4, ", Rx:"

    .line 1430
    .line 1431
    const-string v5, ", TxS:"

    .line 1432
    .line 1433
    invoke-static {v10, v4, v8, v9, v5}, Lcom/samsung/android/server/wifi/SemApeService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;JLjava/lang/String;)V

    .line 1434
    .line 1435
    .line 1436
    const-string v4, ", RxS:"

    .line 1437
    .line 1438
    const-string v5, ", RESULT:"

    .line 1439
    .line 1440
    invoke-static {v10, v12, v4, v11, v5}, Lcom/samsung/android/server/wifi/SemApeController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    .line 1441
    .line 1442
    .line 1443
    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1444
    .line 1445
    .line 1446
    const-string v4, ", IC:"

    .line 1447
    .line 1448
    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1449
    .line 1450
    .line 1451
    iget v4, v3, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mInternetConnectivityCounter:I

    .line 1452
    .line 1453
    const-string v5, ", ICT:"

    .line 1454
    .line 1455
    const-string v8, ", WC:"

    .line 1456
    .line 1457
    invoke-static {v10, v4, v5, v1, v8}, Lcom/samsung/android/server/wifi/SemApeController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    .line 1458
    .line 1459
    .line 1460
    iget v1, v3, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mInternetConnectivityWaitingCycle:I

    .line 1461
    .line 1462
    const-string v4, ", WCT:"

    .line 1463
    .line 1464
    const-string v5, ", R:"

    .line 1465
    .line 1466
    move/from16 v8, v25

    .line 1467
    .line 1468
    invoke-static {v10, v1, v4, v8, v5}, Lcom/samsung/android/server/wifi/SemApeController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    .line 1469
    .line 1470
    .line 1471
    move/from16 v1, v21

    .line 1472
    .line 1473
    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1474
    .line 1475
    .line 1476
    const-string v1, ", RC:"

    .line 1477
    .line 1478
    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1479
    .line 1480
    .line 1481
    iget v1, v3, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mRetransSegWaitingCycle:I

    .line 1482
    .line 1483
    const-string v4, ", IE:"

    .line 1484
    .line 1485
    const-string v5, ", EC:"

    .line 1486
    .line 1487
    move/from16 v8, v20

    .line 1488
    .line 1489
    invoke-static {v10, v1, v4, v8, v5}, Lcom/samsung/android/server/wifi/SemApeController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    .line 1490
    .line 1491
    .line 1492
    iget v1, v3, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mInErrorSegWaitingCycle:I

    .line 1493
    .line 1494
    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1495
    .line 1496
    .line 1497
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1498
    .line 1499
    .line 1500
    move-result-object v1

    .line 1501
    if-nez v0, :cond_2a

    .line 1502
    .line 1503
    sget-boolean v4, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->DBG:Z

    .line 1504
    .line 1505
    if-eqz v4, :cond_2b

    .line 1506
    .line 1507
    :cond_2a
    const-string v4, "Backhaul result - "

    .line 1508
    .line 1509
    invoke-static {v4, v1}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1510
    .line 1511
    .line 1512
    move-result-object v1

    .line 1513
    move-object/from16 v9, v34

    .line 1514
    .line 1515
    invoke-static {v9, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1516
    .line 1517
    .line 1518
    :cond_2b
    iput v2, v3, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mPrevTcpEstablishedCount:I

    .line 1519
    .line 1520
    iput v7, v3, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mPrevTimeWaitCount:I

    .line 1521
    .line 1522
    iput v6, v3, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mPrevTcpInUseCount:I

    .line 1523
    .line 1524
    move/from16 v1, v19

    .line 1525
    .line 1526
    iput v1, v3, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mPrevRetranSegCount:I

    .line 1527
    .line 1528
    move/from16 v1, v17

    .line 1529
    .line 1530
    iput v1, v3, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mPrevInSegErrorCount:I

    .line 1531
    .line 1532
    move-wide/from16 v1, v32

    .line 1533
    .line 1534
    iput-wide v1, v3, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mPrevTotalRxPkt:J

    .line 1535
    .line 1536
    move-wide/from16 v1, v27

    .line 1537
    .line 1538
    iput-wide v1, v3, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mPrevTotalTxPkt:J

    .line 1539
    .line 1540
    move/from16 v1, v42

    .line 1541
    .line 1542
    iput v1, v3, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mPrevInSegCount:I

    .line 1543
    .line 1544
    move/from16 v1, v16

    .line 1545
    .line 1546
    iput v1, v3, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mPrevOutSegCount:I

    .line 1547
    .line 1548
    if-eqz v0, :cond_2c

    .line 1549
    .line 1550
    const/16 v6, 0x2710

    .line 1551
    .line 1552
    :goto_28
    move/from16 v1, v24

    .line 1553
    .line 1554
    goto :goto_29

    .line 1555
    :cond_2c
    const/16 v6, 0x3e8

    .line 1556
    .line 1557
    goto :goto_28

    .line 1558
    :goto_29
    invoke-virtual {v3, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1559
    .line 1560
    .line 1561
    int-to-long v4, v6

    .line 1562
    invoke-virtual {v3, v1, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1563
    .line 1564
    .line 1565
    goto/16 :goto_53

    .line 1566
    .line 1567
    :catchall_b
    move-exception v0

    .line 1568
    move-object v9, v10

    .line 1569
    move-object v1, v0

    .line 1570
    goto/16 :goto_11

    .line 1571
    .line 1572
    :goto_2a
    if-eqz v16, :cond_2d

    .line 1573
    .line 1574
    :try_start_2f
    invoke-virtual/range {v16 .. v16}, Ljava/io/FileReader;->close()V

    .line 1575
    .line 1576
    .line 1577
    goto :goto_2b

    .line 1578
    :catch_1a
    move-exception v0

    .line 1579
    goto :goto_2c

    .line 1580
    :cond_2d
    :goto_2b
    if-eqz v23, :cond_2e

    .line 1581
    .line 1582
    invoke-virtual/range {v23 .. v23}, Ljava/io/FileReader;->close()V

    .line 1583
    .line 1584
    .line 1585
    :cond_2e
    if-eqz v30, :cond_2f

    .line 1586
    .line 1587
    invoke-virtual/range {v30 .. v30}, Ljava/io/FileReader;->close()V

    .line 1588
    .line 1589
    .line 1590
    :cond_2f
    if-eqz v23, :cond_30

    .line 1591
    .line 1592
    invoke-virtual/range {v23 .. v23}, Ljava/io/FileReader;->close()V

    .line 1593
    .line 1594
    .line 1595
    :cond_30
    if-eqz v22, :cond_31

    .line 1596
    .line 1597
    invoke-virtual/range {v22 .. v22}, Ljava/io/BufferedReader;->close()V

    .line 1598
    .line 1599
    .line 1600
    :cond_31
    if-eqz v31, :cond_32

    .line 1601
    .line 1602
    invoke-virtual/range {v31 .. v31}, Ljava/io/BufferedReader;->close()V

    .line 1603
    .line 1604
    .line 1605
    :cond_32
    if-eqz v29, :cond_33

    .line 1606
    .line 1607
    invoke-virtual/range {v29 .. v29}, Ljava/io/BufferedReader;->close()V
    :try_end_2f
    .catch Ljava/io/IOException; {:try_start_2f .. :try_end_2f} :catch_1a

    .line 1608
    .line 1609
    .line 1610
    goto :goto_2d

    .line 1611
    :goto_2c
    new-instance v3, Ljava/lang/StringBuilder;

    .line 1612
    .line 1613
    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1614
    .line 1615
    .line 1616
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1617
    .line 1618
    .line 1619
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1620
    .line 1621
    .line 1622
    move-result-object v2

    .line 1623
    invoke-static {v9, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1624
    .line 1625
    .line 1626
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 1627
    .line 1628
    .line 1629
    :cond_33
    :goto_2d
    throw v1

    .line 1630
    :cond_34
    invoke-direct {v3}, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->checkPublicDns()V

    .line 1631
    .line 1632
    .line 1633
    return-void

    .line 1634
    :cond_35
    move-wide/from16 v19, v7

    .line 1635
    .line 1636
    move-object v9, v10

    .line 1637
    move/from16 p1, v11

    .line 1638
    .line 1639
    const/16 v26, 0x6

    .line 1640
    .line 1641
    iget-boolean v0, v3, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mIsPollingStarted:Z

    .line 1642
    .line 1643
    if-nez v0, :cond_36

    .line 1644
    .line 1645
    goto/16 :goto_53

    .line 1646
    .line 1647
    :cond_36
    invoke-direct {v3}, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->syncGetCurrentWifiInfo()V

    .line 1648
    .line 1649
    .line 1650
    iget-object v0, v3, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mCurrentBssid:Lcom/samsung/android/server/wifi/wcm/BssidStatistics;

    .line 1651
    .line 1652
    if-eqz v0, :cond_7c

    .line 1653
    .line 1654
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/wcm/BssidStatistics;->getBssid()Ljava/lang/String;

    .line 1655
    .line 1656
    .line 1657
    move-result-object v0

    .line 1658
    const-string v1, "00:00:00:00:00:00"

    .line 1659
    .line 1660
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1661
    .line 1662
    .line 1663
    move-result v0

    .line 1664
    if-eqz v0, :cond_37

    .line 1665
    .line 1666
    goto/16 :goto_52

    .line 1667
    .line 1668
    :cond_37
    iget-object v0, v3, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    .line 1669
    .line 1670
    if-nez v0, :cond_38

    .line 1671
    .line 1672
    const-string v0, "wifiInfo is null."

    .line 1673
    .line 1674
    invoke-static {v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1675
    .line 1676
    .line 1677
    const/4 v0, 0x3

    .line 1678
    invoke-virtual {v3, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 1679
    .line 1680
    .line 1681
    const/4 v0, 0x2

    .line 1682
    invoke-virtual {v3, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1683
    .line 1684
    .line 1685
    return-void

    .line 1686
    :cond_38
    iget-object v0, v3, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mNetworkStatsAnalyzerCallBack:Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer$INetworkStatsAnalyzerCallBack;

    .line 1687
    .line 1688
    invoke-interface {v0}, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer$INetworkStatsAnalyzerCallBack;->notifyActivityCheckPoll()V

    .line 1689
    .line 1690
    .line 1691
    iget-object v0, v3, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    .line 1692
    .line 1693
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getRssi()I

    .line 1694
    .line 1695
    .line 1696
    move-result v0

    .line 1697
    const/16 v1, -0x5a

    .line 1698
    .line 1699
    if-ge v0, v1, :cond_3b

    .line 1700
    .line 1701
    iget-object v1, v3, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    .line 1702
    .line 1703
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getSupplicantState()Landroid/net/wifi/SupplicantState;

    .line 1704
    .line 1705
    .line 1706
    move-result-object v1

    .line 1707
    invoke-static {v1}, Landroid/net/wifi/WifiInfo;->getDetailedStateOf(Landroid/net/wifi/SupplicantState;)Landroid/net/NetworkInfo$DetailedState;

    .line 1708
    .line 1709
    .line 1710
    move-result-object v1

    .line 1711
    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    .line 1712
    .line 1713
    if-ne v1, v2, :cond_39

    .line 1714
    .line 1715
    new-instance v1, Ljava/lang/StringBuilder;

    .line 1716
    .line 1717
    const-string v2, "already disconnected : "

    .line 1718
    .line 1719
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1720
    .line 1721
    .line 1722
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1723
    .line 1724
    .line 1725
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1726
    .line 1727
    .line 1728
    move-result-object v0

    .line 1729
    invoke-static {v9, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1730
    .line 1731
    .line 1732
    const/4 v0, 0x3

    .line 1733
    invoke-virtual {v3, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 1734
    .line 1735
    .line 1736
    const/4 v0, 0x2

    .line 1737
    invoke-virtual {v3, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1738
    .line 1739
    .line 1740
    return-void

    .line 1741
    :cond_39
    const/16 v1, -0x5f

    .line 1742
    .line 1743
    if-ge v0, v1, :cond_3b

    .line 1744
    .line 1745
    const/16 v2, -0x7f

    .line 1746
    .line 1747
    if-ne v0, v2, :cond_3a

    .line 1748
    .line 1749
    goto/16 :goto_53

    .line 1750
    .line 1751
    :cond_3a
    move v7, v1

    .line 1752
    goto :goto_2e

    .line 1753
    :cond_3b
    move v7, v0

    .line 1754
    :goto_2e
    iget v0, v3, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mLastRssi:I

    .line 1755
    .line 1756
    add-int/2addr v0, v7

    .line 1757
    const/4 v1, 0x2

    .line 1758
    div-int/lit8 v10, v0, 0x2

    .line 1759
    .line 1760
    iput v7, v3, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mLastRssi:I

    .line 1761
    .line 1762
    iget-object v0, v3, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    .line 1763
    .line 1764
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getLinkSpeed()I

    .line 1765
    .line 1766
    .line 1767
    move-result v0

    .line 1768
    move/from16 v2, v26

    .line 1769
    .line 1770
    if-gt v0, v2, :cond_3c

    .line 1771
    .line 1772
    move/from16 v2, p1

    .line 1773
    .line 1774
    goto :goto_2f

    .line 1775
    :cond_3c
    const/4 v2, 0x0

    .line 1776
    :goto_2f
    iget v4, v3, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mLastRssi:I

    .line 1777
    .line 1778
    const/16 v11, -0x4b

    .line 1779
    .line 1780
    if-ge v4, v11, :cond_3d

    .line 1781
    .line 1782
    iget v5, v3, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mCurrentMode:I

    .line 1783
    .line 1784
    if-eq v5, v1, :cond_3e

    .line 1785
    .line 1786
    :cond_3d
    if-ge v4, v15, :cond_3f

    .line 1787
    .line 1788
    iget v1, v3, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mCurrentMode:I

    .line 1789
    .line 1790
    move/from16 v8, p1

    .line 1791
    .line 1792
    if-ne v1, v8, :cond_3f

    .line 1793
    .line 1794
    :cond_3e
    const/4 v2, 0x1

    .line 1795
    :cond_3f
    iget-object v1, v3, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mSemTrafficStats:Lcom/samsung/android/server/wifi/SemWifiTrafficStats;

    .line 1796
    .line 1797
    if-nez v1, :cond_40

    .line 1798
    .line 1799
    const-string v0, "mSemTrafficStats is null."

    .line 1800
    .line 1801
    invoke-static {v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1802
    .line 1803
    .line 1804
    const/4 v0, 0x3

    .line 1805
    invoke-virtual {v3, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 1806
    .line 1807
    .line 1808
    const-wide/16 v1, 0x3e8

    .line 1809
    .line 1810
    invoke-virtual {v3, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1811
    .line 1812
    .line 1813
    return-void

    .line 1814
    :cond_40
    iget-wide v4, v3, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mTxPackets:J

    .line 1815
    .line 1816
    iget-wide v14, v3, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mRxPackets:J

    .line 1817
    .line 1818
    iget-wide v11, v1, Lcom/samsung/android/server/wifi/SemWifiTrafficStats;->txPackets:J

    .line 1819
    .line 1820
    iput-wide v11, v3, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mTxPackets:J

    .line 1821
    .line 1822
    move-wide/from16 v24, v14

    .line 1823
    .line 1824
    iget-wide v13, v1, Lcom/samsung/android/server/wifi/SemWifiTrafficStats;->rxPackets:J

    .line 1825
    .line 1826
    iput-wide v13, v3, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mRxPackets:J

    .line 1827
    .line 1828
    sub-long/2addr v11, v4

    .line 1829
    sub-long v13, v13, v24

    .line 1830
    .line 1831
    iget-wide v4, v3, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mTxBytes:J

    .line 1832
    .line 1833
    move/from16 v28, v7

    .line 1834
    .line 1835
    iget-wide v6, v3, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mRxBytes:J

    .line 1836
    .line 1837
    move-object/from16 v34, v9

    .line 1838
    .line 1839
    iget-wide v8, v1, Lcom/samsung/android/server/wifi/SemWifiTrafficStats;->txBytes:J

    .line 1840
    .line 1841
    iput-wide v8, v3, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mTxBytes:J

    .line 1842
    .line 1843
    iget-wide v0, v1, Lcom/samsung/android/server/wifi/SemWifiTrafficStats;->rxBytes:J

    .line 1844
    .line 1845
    iput-wide v0, v3, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mRxBytes:J

    .line 1846
    .line 1847
    sub-long v4, v8, v4

    .line 1848
    .line 1849
    sub-long/2addr v0, v6

    .line 1850
    cmp-long v6, v13, v16

    .line 1851
    .line 1852
    if-lez v6, :cond_41

    .line 1853
    .line 1854
    div-long v7, v0, v13

    .line 1855
    .line 1856
    goto :goto_30

    .line 1857
    :cond_41
    move-wide/from16 v7, v16

    .line 1858
    .line 1859
    :goto_30
    long-to-int v7, v7

    .line 1860
    cmp-long v9, v11, v16

    .line 1861
    .line 1862
    if-lez v9, :cond_42

    .line 1863
    .line 1864
    div-long v29, v4, v11

    .line 1865
    .line 1866
    move/from16 v25, v9

    .line 1867
    .line 1868
    move-wide/from16 v8, v29

    .line 1869
    .line 1870
    goto :goto_31

    .line 1871
    :cond_42
    move/from16 v25, v9

    .line 1872
    .line 1873
    move-wide/from16 v8, v16

    .line 1874
    .line 1875
    :goto_31
    long-to-int v9, v8

    .line 1876
    new-instance v8, Ljava/lang/StringBuilder;

    .line 1877
    .line 1878
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 1879
    .line 1880
    .line 1881
    invoke-virtual {v8, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1882
    .line 1883
    .line 1884
    const-string v15, ","

    .line 1885
    .line 1886
    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1887
    .line 1888
    .line 1889
    invoke-virtual {v8, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1890
    .line 1891
    .line 1892
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1893
    .line 1894
    .line 1895
    move-result-object v8

    .line 1896
    invoke-direct {v3, v8}, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->addNetworkStatHistory(Ljava/lang/String;)V

    .line 1897
    .line 1898
    .line 1899
    iget-object v8, v3, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mRxHistory:Ljava/util/ArrayList;

    .line 1900
    .line 1901
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    .line 1902
    .line 1903
    .line 1904
    move-result v8

    .line 1905
    const/4 v15, 0x6

    .line 1906
    if-ne v8, v15, :cond_43

    .line 1907
    .line 1908
    iget-object v8, v3, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mRxHistory:Ljava/util/ArrayList;

    .line 1909
    .line 1910
    const/4 v15, 0x0

    .line 1911
    invoke-virtual {v8, v15}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1912
    .line 1913
    .line 1914
    iget-object v8, v3, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mRxHistory:Ljava/util/ArrayList;

    .line 1915
    .line 1916
    invoke-virtual {v8}, Ljava/util/ArrayList;->trimToSize()V

    .line 1917
    .line 1918
    .line 1919
    :cond_43
    iget-object v8, v3, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mRxHistory:Ljava/util/ArrayList;

    .line 1920
    .line 1921
    long-to-int v15, v13

    .line 1922
    move/from16 v26, v2

    .line 1923
    .line 1924
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1925
    .line 1926
    .line 1927
    move-result-object v2

    .line 1928
    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1929
    .line 1930
    .line 1931
    const/16 v2, 0x596

    .line 1932
    .line 1933
    if-le v7, v2, :cond_44

    .line 1934
    .line 1935
    const/4 v2, 0x1

    .line 1936
    goto :goto_32

    .line 1937
    :cond_44
    const/4 v2, 0x0

    .line 1938
    :goto_32
    iget-object v8, v3, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mCurrentBssid:Lcom/samsung/android/server/wifi/wcm/BssidStatistics;

    .line 1939
    .line 1940
    invoke-virtual {v8, v10, v0, v1, v2}, Lcom/samsung/android/server/wifi/wcm/BssidStatistics;->updateMaxThroughput(IJZ)V

    .line 1941
    .line 1942
    .line 1943
    if-nez v2, :cond_45

    .line 1944
    .line 1945
    const-wide/32 v29, 0x36588

    .line 1946
    .line 1947
    .line 1948
    cmp-long v8, v0, v29

    .line 1949
    .line 1950
    if-gez v8, :cond_46

    .line 1951
    .line 1952
    :cond_45
    const-wide/32 v29, 0x21f750

    .line 1953
    .line 1954
    .line 1955
    cmp-long v8, v0, v29

    .line 1956
    .line 1957
    if-ltz v8, :cond_47

    .line 1958
    .line 1959
    :cond_46
    const/4 v8, 0x1

    .line 1960
    goto :goto_33

    .line 1961
    :cond_47
    const/4 v8, 0x0

    .line 1962
    :goto_33
    iput-boolean v8, v3, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mIsAggGoodStateNow:Z

    .line 1963
    .line 1964
    move/from16 v29, v2

    .line 1965
    .line 1966
    iget v2, v3, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mCurrentMode:I

    .line 1967
    .line 1968
    move/from16 v30, v6

    .line 1969
    .line 1970
    const/4 v6, 0x3

    .line 1971
    if-ne v2, v6, :cond_48

    .line 1972
    .line 1973
    if-eqz v8, :cond_48

    .line 1974
    .line 1975
    iget-object v2, v3, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mCurrentBssid:Lcom/samsung/android/server/wifi/wcm/BssidStatistics;

    .line 1976
    .line 1977
    invoke-virtual {v2, v10}, Lcom/samsung/android/server/wifi/wcm/BssidStatistics;->updateGoodRssi(I)V

    .line 1978
    .line 1979
    .line 1980
    :cond_48
    iget-boolean v2, v3, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mIsScanning:Z

    .line 1981
    .line 1982
    if-nez v2, :cond_73

    .line 1983
    .line 1984
    iget-boolean v2, v3, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mIsInRoamSession:Z

    .line 1985
    .line 1986
    if-nez v2, :cond_73

    .line 1987
    .line 1988
    iget-boolean v2, v3, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mIsInDhcpSession:Z

    .line 1989
    .line 1990
    if-nez v2, :cond_73

    .line 1991
    .line 1992
    iget-object v2, v3, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mContext:Landroid/content/Context;

    .line 1993
    .line 1994
    invoke-static {v2}, Lcom/samsung/android/server/wifi/wcm/WcmUtil;->getInstance(Landroid/content/Context;)Lcom/samsung/android/server/wifi/wcm/WcmUtil;

    .line 1995
    .line 1996
    .line 1997
    move-result-object v2

    .line 1998
    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/wcm/WcmUtil;->getScreenStatus()Z

    .line 1999
    .line 2000
    .line 2001
    move-result v2

    .line 2002
    if-nez v2, :cond_49

    .line 2003
    .line 2004
    move-wide/from16 v33, v0

    .line 2005
    .line 2006
    move-wide/from16 v31, v4

    .line 2007
    .line 2008
    move-wide/from16 v11, v19

    .line 2009
    .line 2010
    const/4 v14, 0x0

    .line 2011
    const/16 v23, 0x5

    .line 2012
    .line 2013
    goto/16 :goto_4e

    .line 2014
    .line 2015
    :cond_49
    iget-boolean v2, v3, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mPublicDnsCheckProcess:Z

    .line 2016
    .line 2017
    if-nez v2, :cond_72

    .line 2018
    .line 2019
    iget v2, v3, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mCurrentMode:I

    .line 2020
    .line 2021
    if-eqz v2, :cond_72

    .line 2022
    .line 2023
    iget-boolean v6, v3, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mDnsQueried:Z

    .line 2024
    .line 2025
    if-eqz v6, :cond_4e

    .line 2026
    .line 2027
    new-instance v2, Ljava/lang/StringBuilder;

    .line 2028
    .line 2029
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 2030
    .line 2031
    .line 2032
    invoke-virtual {v2, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 2033
    .line 2034
    .line 2035
    const-string v6, " "

    .line 2036
    .line 2037
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2038
    .line 2039
    .line 2040
    invoke-virtual {v2, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 2041
    .line 2042
    .line 2043
    invoke-static {v2, v6, v0, v1, v6}, Lcom/samsung/android/server/wifi/SemApeService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;JLjava/lang/String;)V

    .line 2044
    .line 2045
    .line 2046
    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 2047
    .line 2048
    .line 2049
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2050
    .line 2051
    .line 2052
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2053
    .line 2054
    .line 2055
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2056
    .line 2057
    .line 2058
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2059
    .line 2060
    .line 2061
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2062
    .line 2063
    .line 2064
    move-result-object v2

    .line 2065
    move-object/from16 v6, v34

    .line 2066
    .line 2067
    invoke-static {v6, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2068
    .line 2069
    .line 2070
    iget v2, v3, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mCurrentMode:I

    .line 2071
    .line 2072
    const/4 v6, 0x3

    .line 2073
    if-ne v2, v6, :cond_4a

    .line 2074
    .line 2075
    iget-boolean v2, v3, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mIsAggGoodStateNow:Z

    .line 2076
    .line 2077
    if-eqz v2, :cond_4a

    .line 2078
    .line 2079
    :goto_34
    const/4 v8, 0x0

    .line 2080
    goto :goto_35

    .line 2081
    :cond_4a
    const-wide/16 v8, 0x1e

    .line 2082
    .line 2083
    cmp-long v2, v13, v8

    .line 2084
    .line 2085
    if-ltz v2, :cond_4b

    .line 2086
    .line 2087
    const/16 v2, 0x1f4

    .line 2088
    .line 2089
    if-le v7, v2, :cond_4b

    .line 2090
    .line 2091
    goto :goto_34

    .line 2092
    :cond_4b
    const-wide/32 v6, 0x186a0

    .line 2093
    .line 2094
    .line 2095
    cmp-long v2, v4, v6

    .line 2096
    .line 2097
    if-ltz v2, :cond_4c

    .line 2098
    .line 2099
    goto :goto_34

    .line 2100
    :goto_35
    iput-boolean v8, v3, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mDnsQueried:Z

    .line 2101
    .line 2102
    iput-boolean v8, v3, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mDnsInterrupted:Z

    .line 2103
    .line 2104
    goto :goto_36

    .line 2105
    :cond_4c
    const/4 v8, 0x0

    .line 2106
    :cond_4d
    :goto_36
    move-wide/from16 v33, v0

    .line 2107
    .line 2108
    move-wide/from16 v31, v4

    .line 2109
    .line 2110
    move-wide/from16 v11, v19

    .line 2111
    .line 2112
    const/4 v0, 0x3

    .line 2113
    const/16 v23, 0x5

    .line 2114
    .line 2115
    goto/16 :goto_4f

    .line 2116
    .line 2117
    :cond_4e
    move-object/from16 v6, v34

    .line 2118
    .line 2119
    const/4 v8, 0x3

    .line 2120
    if-ne v2, v8, :cond_50

    .line 2121
    .line 2122
    iget-boolean v8, v3, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mIsAggGoodStateNow:Z

    .line 2123
    .line 2124
    if-eqz v8, :cond_50

    .line 2125
    .line 2126
    iget-object v2, v3, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mCumulativePoorRx:Ljava/util/ArrayList;

    .line 2127
    .line 2128
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 2129
    .line 2130
    .line 2131
    const/4 v14, 0x0

    .line 2132
    iput-boolean v14, v3, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mSYNPacketOnly:Z

    .line 2133
    .line 2134
    if-eqz v29, :cond_4f

    .line 2135
    .line 2136
    iget v2, v3, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mMaybeUseStreaming:I

    .line 2137
    .line 2138
    const/4 v8, 0x1

    .line 2139
    add-int/2addr v2, v8

    .line 2140
    iput v2, v3, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mMaybeUseStreaming:I

    .line 2141
    .line 2142
    :cond_4f
    iget-wide v6, v3, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mLastDnsCheckTime:J

    .line 2143
    .line 2144
    sub-long v6, v19, v6

    .line 2145
    .line 2146
    const-wide/16 v11, 0x1b58

    .line 2147
    .line 2148
    cmp-long v2, v6, v11

    .line 2149
    .line 2150
    if-lez v2, :cond_4d

    .line 2151
    .line 2152
    const-wide/16 v6, 0x1b58

    .line 2153
    .line 2154
    sub-long v6, v19, v6

    .line 2155
    .line 2156
    iput-wide v6, v3, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mLastDnsCheckTime:J

    .line 2157
    .line 2158
    goto :goto_36

    .line 2159
    :cond_50
    if-gtz v30, :cond_51

    .line 2160
    .line 2161
    if-lez v25, :cond_52

    .line 2162
    .line 2163
    :cond_51
    move/from16 v31, v9

    .line 2164
    .line 2165
    goto :goto_37

    .line 2166
    :cond_52
    move-wide/from16 v33, v0

    .line 2167
    .line 2168
    move/from16 v31, v9

    .line 2169
    .line 2170
    goto :goto_39

    .line 2171
    :goto_37
    iget-wide v8, v3, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mLastDnsCheckTime:J

    .line 2172
    .line 2173
    sub-long v8, v19, v8

    .line 2174
    .line 2175
    move-wide/from16 v33, v0

    .line 2176
    .line 2177
    const/4 v0, 0x3

    .line 2178
    if-ne v2, v0, :cond_53

    .line 2179
    .line 2180
    const/16 v0, 0x7530

    .line 2181
    .line 2182
    goto :goto_38

    .line 2183
    :cond_53
    const v0, 0xea60

    .line 2184
    .line 2185
    .line 2186
    :goto_38
    int-to-long v0, v0

    .line 2187
    cmp-long v0, v8, v0

    .line 2188
    .line 2189
    if-lez v0, :cond_54

    .line 2190
    .line 2191
    const/16 v0, 0x29

    .line 2192
    .line 2193
    iput v0, v3, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mNsaQcTrigger:I

    .line 2194
    .line 2195
    const/4 v8, 0x1

    .line 2196
    goto :goto_3a

    .line 2197
    :cond_54
    :goto_39
    const/4 v8, 0x0

    .line 2198
    :goto_3a
    const-wide/16 v0, 0x2

    .line 2199
    .line 2200
    cmp-long v0, v13, v0

    .line 2201
    .line 2202
    if-gtz v0, :cond_55

    .line 2203
    .line 2204
    const-wide/16 v1, 0xa

    .line 2205
    .line 2206
    cmp-long v1, v11, v1

    .line 2207
    .line 2208
    if-ltz v1, :cond_55

    .line 2209
    .line 2210
    move/from16 v2, v31

    .line 2211
    .line 2212
    const/16 v1, 0x3e8

    .line 2213
    .line 2214
    if-ge v2, v1, :cond_56

    .line 2215
    .line 2216
    const-string v1, "pull out the line???"

    .line 2217
    .line 2218
    invoke-static {v6, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2219
    .line 2220
    .line 2221
    const/16 v1, 0x1f

    .line 2222
    .line 2223
    iput v1, v3, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mNsaQcTrigger:I

    .line 2224
    .line 2225
    const/4 v8, 0x1

    .line 2226
    goto :goto_3b

    .line 2227
    :cond_55
    move/from16 v2, v31

    .line 2228
    .line 2229
    :cond_56
    :goto_3b
    if-lez v0, :cond_59

    .line 2230
    .line 2231
    iget-wide v0, v3, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mLastNeedCheckByPoorRxTime:J

    .line 2232
    .line 2233
    sub-long v0, v19, v0

    .line 2234
    .line 2235
    const-wide/16 v30, 0x7530

    .line 2236
    .line 2237
    cmp-long v0, v0, v30

    .line 2238
    .line 2239
    if-lez v0, :cond_57

    .line 2240
    .line 2241
    const-wide/32 v0, 0x19797c

    .line 2242
    .line 2243
    .line 2244
    cmp-long v0, v33, v0

    .line 2245
    .line 2246
    if-gez v0, :cond_57

    .line 2247
    .line 2248
    const-wide/16 v0, 0x1e

    .line 2249
    .line 2250
    cmp-long v0, v13, v0

    .line 2251
    .line 2252
    if-gez v0, :cond_57

    .line 2253
    .line 2254
    if-lez v25, :cond_57

    .line 2255
    .line 2256
    const/16 v0, -0x46

    .line 2257
    .line 2258
    if-ge v10, v0, :cond_57

    .line 2259
    .line 2260
    iget-object v0, v3, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mCumulativePoorRx:Ljava/util/ArrayList;

    .line 2261
    .line 2262
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2263
    .line 2264
    .line 2265
    move-result-object v1

    .line 2266
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2267
    .line 2268
    .line 2269
    goto :goto_3c

    .line 2270
    :cond_57
    iget-object v0, v3, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mCumulativePoorRx:Ljava/util/ArrayList;

    .line 2271
    .line 2272
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2273
    .line 2274
    .line 2275
    :goto_3c
    const/16 v0, 0x38

    .line 2276
    .line 2277
    if-ge v0, v2, :cond_58

    .line 2278
    .line 2279
    const/16 v0, 0x49

    .line 2280
    .line 2281
    if-ge v2, v0, :cond_58

    .line 2282
    .line 2283
    const-wide/16 v0, 0x64

    .line 2284
    .line 2285
    mul-long/2addr v0, v11

    .line 2286
    div-long/2addr v0, v13

    .line 2287
    long-to-int v0, v0

    .line 2288
    const/16 v1, 0x5a

    .line 2289
    .line 2290
    if-ge v1, v0, :cond_58

    .line 2291
    .line 2292
    const/16 v1, 0x6e

    .line 2293
    .line 2294
    if-ge v0, v1, :cond_58

    .line 2295
    .line 2296
    add-int/lit8 v9, v2, -0xa

    .line 2297
    .line 2298
    if-ge v9, v7, :cond_58

    .line 2299
    .line 2300
    if-gt v7, v2, :cond_58

    .line 2301
    .line 2302
    const/16 v0, 0x20

    .line 2303
    .line 2304
    iput v0, v3, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mNsaQcTrigger:I

    .line 2305
    .line 2306
    const/4 v8, 0x1

    .line 2307
    :cond_58
    const/4 v0, 0x0

    .line 2308
    const/4 v9, 0x3

    .line 2309
    goto :goto_41

    .line 2310
    :cond_59
    iget-boolean v0, v3, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mSYNPacketOnly:Z

    .line 2311
    .line 2312
    if-eqz v0, :cond_5b

    .line 2313
    .line 2314
    if-eqz v26, :cond_5a

    .line 2315
    .line 2316
    const/16 v0, 0x22

    .line 2317
    .line 2318
    iput v0, v3, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mNsaQcTrigger:I

    .line 2319
    .line 2320
    const/4 v0, 0x1

    .line 2321
    :goto_3d
    const/4 v15, 0x0

    .line 2322
    goto :goto_3e

    .line 2323
    :cond_5a
    const/4 v0, 0x0

    .line 2324
    goto :goto_3d

    .line 2325
    :goto_3e
    iput-boolean v15, v3, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mSYNPacketOnly:Z

    .line 2326
    .line 2327
    goto :goto_40

    .line 2328
    :cond_5b
    if-lez v25, :cond_5d

    .line 2329
    .line 2330
    if-nez v30, :cond_5c

    .line 2331
    .line 2332
    iget-object v0, v3, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mCumulativePoorRx:Ljava/util/ArrayList;

    .line 2333
    .line 2334
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2335
    .line 2336
    .line 2337
    goto :goto_3f

    .line 2338
    :cond_5c
    iget-object v0, v3, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mCumulativePoorRx:Ljava/util/ArrayList;

    .line 2339
    .line 2340
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2341
    .line 2342
    .line 2343
    move-result-object v1

    .line 2344
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2345
    .line 2346
    .line 2347
    goto :goto_3f

    .line 2348
    :cond_5d
    iget-object v0, v3, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mCumulativePoorRx:Ljava/util/ArrayList;

    .line 2349
    .line 2350
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2351
    .line 2352
    .line 2353
    :goto_3f
    const/4 v0, 0x0

    .line 2354
    :goto_40
    iget v1, v3, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mMaybeUseStreaming:I

    .line 2355
    .line 2356
    const/4 v9, 0x3

    .line 2357
    if-lt v1, v9, :cond_5e

    .line 2358
    .line 2359
    if-eqz v26, :cond_5e

    .line 2360
    .line 2361
    const/16 v1, 0x23

    .line 2362
    .line 2363
    iput v1, v3, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mNsaQcTrigger:I

    .line 2364
    .line 2365
    const/4 v8, 0x1

    .line 2366
    :cond_5e
    :goto_41
    iget-object v1, v3, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mCumulativePoorRx:Ljava/util/ArrayList;

    .line 2367
    .line 2368
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 2369
    .line 2370
    .line 2371
    move-result v1

    .line 2372
    if-ne v1, v9, :cond_66

    .line 2373
    .line 2374
    iget-object v1, v3, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mCumulativePoorRx:Ljava/util/ArrayList;

    .line 2375
    .line 2376
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 2377
    .line 2378
    .line 2379
    move-result v9

    .line 2380
    move/from16 v18, v0

    .line 2381
    .line 2382
    const/4 v0, 0x0

    .line 2383
    const/4 v15, 0x0

    .line 2384
    :goto_42
    if-ge v0, v9, :cond_5f

    .line 2385
    .line 2386
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 2387
    .line 2388
    .line 2389
    move-result-object v25

    .line 2390
    add-int/lit8 v0, v0, 0x1

    .line 2391
    .line 2392
    check-cast v25, Ljava/lang/Integer;

    .line 2393
    .line 2394
    invoke-virtual/range {v25 .. v25}, Ljava/lang/Integer;->intValue()I

    .line 2395
    .line 2396
    .line 2397
    move-result v25

    .line 2398
    add-int v15, v25, v15

    .line 2399
    .line 2400
    goto :goto_42

    .line 2401
    :cond_5f
    const/16 v0, 0x2d

    .line 2402
    .line 2403
    if-ge v15, v0, :cond_65

    .line 2404
    .line 2405
    move-wide/from16 v0, v19

    .line 2406
    .line 2407
    iput-wide v0, v3, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mLastNeedCheckByPoorRxTime:J

    .line 2408
    .line 2409
    if-eqz v26, :cond_60

    .line 2410
    .line 2411
    const/16 v9, 0x24

    .line 2412
    .line 2413
    iput v9, v3, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mNsaQcTrigger:I

    .line 2414
    .line 2415
    const/4 v9, 0x1

    .line 2416
    goto :goto_43

    .line 2417
    :cond_60
    const/4 v9, 0x0

    .line 2418
    :goto_43
    move-wide/from16 v31, v4

    .line 2419
    .line 2420
    const/4 v15, 0x0

    .line 2421
    :goto_44
    const/4 v4, 0x3

    .line 2422
    if-ge v15, v4, :cond_62

    .line 2423
    .line 2424
    iget-object v4, v3, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mRxHistory:Ljava/util/ArrayList;

    .line 2425
    .line 2426
    invoke-virtual {v4, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 2427
    .line 2428
    .line 2429
    move-result-object v4

    .line 2430
    check-cast v4, Ljava/lang/Integer;

    .line 2431
    .line 2432
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 2433
    .line 2434
    .line 2435
    move-result v4

    .line 2436
    const/16 v5, 0x1e

    .line 2437
    .line 2438
    if-lt v4, v5, :cond_61

    .line 2439
    .line 2440
    const/4 v9, 0x0

    .line 2441
    goto :goto_45

    .line 2442
    :cond_61
    add-int/lit8 v15, v15, 0x1

    .line 2443
    .line 2444
    goto :goto_44

    .line 2445
    :cond_62
    :goto_45
    if-eqz v9, :cond_64

    .line 2446
    .line 2447
    iget v4, v3, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mCurrentMode:I

    .line 2448
    .line 2449
    const/4 v5, 0x3

    .line 2450
    if-ne v4, v5, :cond_63

    .line 2451
    .line 2452
    const/16 v4, 0x26

    .line 2453
    .line 2454
    iput v4, v3, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mNsaQcTrigger:I

    .line 2455
    .line 2456
    const/4 v8, 0x1

    .line 2457
    :goto_46
    const/4 v9, 0x0

    .line 2458
    goto :goto_47

    .line 2459
    :cond_63
    const/4 v15, 0x0

    .line 2460
    goto :goto_47

    .line 2461
    :cond_64
    iget-object v4, v3, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mCumulativePoorRx:Ljava/util/ArrayList;

    .line 2462
    .line 2463
    const/4 v15, 0x0

    .line 2464
    invoke-virtual {v4, v15}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2465
    .line 2466
    .line 2467
    iget-object v4, v3, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mCumulativePoorRx:Ljava/util/ArrayList;

    .line 2468
    .line 2469
    invoke-virtual {v4}, Ljava/util/ArrayList;->trimToSize()V

    .line 2470
    .line 2471
    .line 2472
    goto :goto_47

    .line 2473
    :cond_65
    move-wide/from16 v31, v4

    .line 2474
    .line 2475
    move-wide/from16 v0, v19

    .line 2476
    .line 2477
    const/4 v15, 0x0

    .line 2478
    iget-object v4, v3, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mCumulativePoorRx:Ljava/util/ArrayList;

    .line 2479
    .line 2480
    invoke-virtual {v4, v15}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2481
    .line 2482
    .line 2483
    iget-object v4, v3, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mCumulativePoorRx:Ljava/util/ArrayList;

    .line 2484
    .line 2485
    invoke-virtual {v4}, Ljava/util/ArrayList;->trimToSize()V

    .line 2486
    .line 2487
    .line 2488
    goto :goto_46

    .line 2489
    :cond_66
    move/from16 v18, v0

    .line 2490
    .line 2491
    move-wide/from16 v31, v4

    .line 2492
    .line 2493
    move-wide/from16 v0, v19

    .line 2494
    .line 2495
    goto :goto_46

    .line 2496
    :goto_47
    iget-wide v4, v3, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mLastDnsCheckTime:J

    .line 2497
    .line 2498
    sub-long v19, v0, v4

    .line 2499
    .line 2500
    const-wide/16 v35, 0x5dc

    .line 2501
    .line 2502
    cmp-long v15, v19, v35

    .line 2503
    .line 2504
    if-lez v15, :cond_68

    .line 2505
    .line 2506
    const-wide/16 v19, 0x2

    .line 2507
    .line 2508
    cmp-long v11, v11, v19

    .line 2509
    .line 2510
    if-ltz v11, :cond_68

    .line 2511
    .line 2512
    const/16 v11, 0x3b

    .line 2513
    .line 2514
    if-gt v11, v2, :cond_68

    .line 2515
    .line 2516
    const/16 v11, 0x3e

    .line 2517
    .line 2518
    if-gt v2, v11, :cond_68

    .line 2519
    .line 2520
    cmp-long v2, v33, v31

    .line 2521
    .line 2522
    if-lez v2, :cond_67

    .line 2523
    .line 2524
    const/16 v2, 0x1f4

    .line 2525
    .line 2526
    if-ge v7, v2, :cond_68

    .line 2527
    .line 2528
    const-wide/16 v11, 0x1cfc

    .line 2529
    .line 2530
    cmp-long v2, v33, v11

    .line 2531
    .line 2532
    if-gez v2, :cond_68

    .line 2533
    .line 2534
    :cond_67
    const/4 v2, 0x1

    .line 2535
    goto :goto_48

    .line 2536
    :cond_68
    const/4 v2, 0x0

    .line 2537
    :goto_48
    iput-boolean v2, v3, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mSYNPacketOnly:Z

    .line 2538
    .line 2539
    iget v2, v3, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mMaybeUseStreaming:I

    .line 2540
    .line 2541
    const-wide/16 v11, 0xf

    .line 2542
    .line 2543
    cmp-long v7, v13, v11

    .line 2544
    .line 2545
    if-lez v7, :cond_69

    .line 2546
    .line 2547
    if-eqz v29, :cond_69

    .line 2548
    .line 2549
    add-int/lit8 v7, v2, 0x1

    .line 2550
    .line 2551
    goto :goto_49

    .line 2552
    :cond_69
    const/4 v7, 0x0

    .line 2553
    :goto_49
    iput v7, v3, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mMaybeUseStreaming:I

    .line 2554
    .line 2555
    const/4 v11, 0x5

    .line 2556
    if-lt v2, v11, :cond_6a

    .line 2557
    .line 2558
    if-nez v7, :cond_6a

    .line 2559
    .line 2560
    if-eqz v26, :cond_6a

    .line 2561
    .line 2562
    const/16 v2, 0x27

    .line 2563
    .line 2564
    iput v2, v3, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mNsaQcTrigger:I

    .line 2565
    .line 2566
    const/4 v8, 0x1

    .line 2567
    :cond_6a
    if-nez v9, :cond_6b

    .line 2568
    .line 2569
    if-eqz v18, :cond_6c

    .line 2570
    .line 2571
    :cond_6b
    sub-long v4, v0, v4

    .line 2572
    .line 2573
    const-wide/16 v12, 0x4e20

    .line 2574
    .line 2575
    cmp-long v2, v4, v12

    .line 2576
    .line 2577
    if-ltz v2, :cond_6c

    .line 2578
    .line 2579
    iget-object v2, v3, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mCumulativePoorRx:Ljava/util/ArrayList;

    .line 2580
    .line 2581
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 2582
    .line 2583
    .line 2584
    iput-wide v0, v3, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mLastDnsCheckTime:J

    .line 2585
    .line 2586
    iget-object v2, v3, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mNetworkStatsAnalyzerCallBack:Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer$INetworkStatsAnalyzerCallBack;

    .line 2587
    .line 2588
    iget v4, v3, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mNsaQcStep:I

    .line 2589
    .line 2590
    iget v5, v3, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mNsaQcTrigger:I

    .line 2591
    .line 2592
    invoke-interface {v2, v4, v5}, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer$INetworkStatsAnalyzerCallBack;->needInternetCheck(II)V

    .line 2593
    .line 2594
    .line 2595
    const/4 v8, 0x0

    .line 2596
    :cond_6c
    if-eqz v8, :cond_71

    .line 2597
    .line 2598
    iget-object v2, v3, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mIsVPNOnlyNetwork:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2599
    .line 2600
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 2601
    .line 2602
    .line 2603
    move-result v2

    .line 2604
    if-eqz v2, :cond_6d

    .line 2605
    .line 2606
    sget-boolean v0, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->DBG:Z

    .line 2607
    .line 2608
    if-eqz v0, :cond_80

    .line 2609
    .line 2610
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2611
    .line 2612
    const-string v1, "The function of the  VPN only Network enabled . SKIP DNS Query. mIsVPNOnlyNetwork: "

    .line 2613
    .line 2614
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2615
    .line 2616
    .line 2617
    iget-object v1, v3, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mIsVPNOnlyNetwork:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2618
    .line 2619
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 2620
    .line 2621
    .line 2622
    move-result v1

    .line 2623
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 2624
    .line 2625
    .line 2626
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2627
    .line 2628
    .line 2629
    move-result-object v0

    .line 2630
    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2631
    .line 2632
    .line 2633
    return-void

    .line 2634
    :cond_6d
    iget-wide v4, v3, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mLastDnsCheckTime:J

    .line 2635
    .line 2636
    sub-long v7, v0, v4

    .line 2637
    .line 2638
    const-wide/16 v4, 0x4e20

    .line 2639
    .line 2640
    cmp-long v2, v7, v4

    .line 2641
    .line 2642
    if-ltz v2, :cond_71

    .line 2643
    .line 2644
    iget-object v2, v3, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mCumulativePoorRx:Ljava/util/ArrayList;

    .line 2645
    .line 2646
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 2647
    .line 2648
    .line 2649
    const/4 v8, 0x1

    .line 2650
    iput-boolean v8, v3, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mDnsQueried:Z

    .line 2651
    .line 2652
    iput v8, v3, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mNsaQcStep:I

    .line 2653
    .line 2654
    iget v2, v3, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mCurrentMode:I

    .line 2655
    .line 2656
    const/4 v4, 0x3

    .line 2657
    if-ne v2, v4, :cond_6e

    .line 2658
    .line 2659
    const/16 v15, 0x1388

    .line 2660
    .line 2661
    goto :goto_4a

    .line 2662
    :cond_6e
    const/16 v15, 0x2710

    .line 2663
    .line 2664
    :goto_4a
    iget-boolean v2, v3, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mIsChinaNetwork:Z

    .line 2665
    .line 2666
    if-nez v2, :cond_6f

    .line 2667
    .line 2668
    sget-object v2, Lcom/samsung/android/server/wifi/wcm/Constant;->DEFAULT_URL_STRING:Ljava/lang/String;

    .line 2669
    .line 2670
    :goto_4b
    move-wide/from16 v19, v0

    .line 2671
    .line 2672
    goto :goto_4c

    .line 2673
    :cond_6f
    const-string v2, "connectivity.samsung.com"

    .line 2674
    .line 2675
    const-string v4, "cn"

    .line 2676
    .line 2677
    invoke-direct {v3, v2, v4}, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->generateDnsTargetForCountry(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 2678
    .line 2679
    .line 2680
    move-result-object v2

    .line 2681
    goto :goto_4b

    .line 2682
    :goto_4c
    new-instance v0, Lcom/samsung/android/server/wifi/wcm/DnsThread;

    .line 2683
    .line 2684
    int-to-long v4, v15

    .line 2685
    move-object v9, v6

    .line 2686
    iget-object v6, v3, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mContext:Landroid/content/Context;

    .line 2687
    .line 2688
    const/4 v1, 0x1

    .line 2689
    move/from16 v23, v11

    .line 2690
    .line 2691
    move-wide/from16 v11, v19

    .line 2692
    .line 2693
    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/server/wifi/wcm/DnsThread;-><init>(ZLjava/lang/String;Landroid/os/Handler;JLandroid/content/Context;)V

    .line 2694
    .line 2695
    .line 2696
    iput-object v0, v3, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mDnsThread:Lcom/samsung/android/server/wifi/wcm/DnsThread;

    .line 2697
    .line 2698
    new-instance v1, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer$2;

    .line 2699
    .line 2700
    invoke-direct {v1, v3}, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer$2;-><init>(Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;)V

    .line 2701
    .line 2702
    .line 2703
    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/wcm/DnsThread;->setDnsThreadCallBack(Lcom/samsung/android/server/wifi/wcm/DnsThread$IDnsThreadCallBack;)V

    .line 2704
    .line 2705
    .line 2706
    iget-object v0, v3, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mDnsThread:Lcom/samsung/android/server/wifi/wcm/DnsThread;

    .line 2707
    .line 2708
    iget-object v1, v3, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mLinkProperties:Landroid/net/LinkProperties;

    .line 2709
    .line 2710
    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/wcm/DnsThread;->updateLinkProperties(Landroid/net/LinkProperties;)V

    .line 2711
    .line 2712
    .line 2713
    iget-object v0, v3, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mDnsThread:Lcom/samsung/android/server/wifi/wcm/DnsThread;

    .line 2714
    .line 2715
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 2716
    .line 2717
    .line 2718
    iput-wide v11, v3, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mLastDnsCheckTime:J

    .line 2719
    .line 2720
    iget-object v0, v3, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mDnsThread:Lcom/samsung/android/server/wifi/wcm/DnsThread;

    .line 2721
    .line 2722
    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    .line 2723
    .line 2724
    .line 2725
    move-result-wide v0

    .line 2726
    iput-wide v0, v3, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mDnsThreadID:J

    .line 2727
    .line 2728
    sget-boolean v0, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->DBG:Z

    .line 2729
    .line 2730
    if-eqz v0, :cond_70

    .line 2731
    .line 2732
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2733
    .line 2734
    const-string v1, "wait needCheck DnsThread results ["

    .line 2735
    .line 2736
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2737
    .line 2738
    .line 2739
    iget-wide v1, v3, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mDnsThreadID:J

    .line 2740
    .line 2741
    const-string v4, "]"

    .line 2742
    .line 2743
    invoke-static {v1, v2, v4, v0}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$1$$ExternalSyntheticOutline0;->m(JLjava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 2744
    .line 2745
    .line 2746
    move-result-object v0

    .line 2747
    invoke-static {v9, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2748
    .line 2749
    .line 2750
    :cond_70
    :goto_4d
    const/4 v0, 0x3

    .line 2751
    goto :goto_4f

    .line 2752
    :cond_71
    move/from16 v23, v11

    .line 2753
    .line 2754
    move-wide v11, v0

    .line 2755
    goto :goto_4d

    .line 2756
    :cond_72
    move-wide/from16 v33, v0

    .line 2757
    .line 2758
    move-wide/from16 v31, v4

    .line 2759
    .line 2760
    move-wide/from16 v11, v19

    .line 2761
    .line 2762
    const/16 v23, 0x5

    .line 2763
    .line 2764
    goto :goto_4d

    .line 2765
    :cond_73
    move-wide/from16 v33, v0

    .line 2766
    .line 2767
    move-wide/from16 v31, v4

    .line 2768
    .line 2769
    move-wide/from16 v11, v19

    .line 2770
    .line 2771
    const/16 v23, 0x5

    .line 2772
    .line 2773
    const/4 v14, 0x0

    .line 2774
    :goto_4e
    iput-boolean v14, v3, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mSYNPacketOnly:Z

    .line 2775
    .line 2776
    iget-object v0, v3, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mCumulativePoorRx:Ljava/util/ArrayList;

    .line 2777
    .line 2778
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2779
    .line 2780
    .line 2781
    iput v14, v3, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mMaybeUseStreaming:I

    .line 2782
    .line 2783
    goto :goto_4d

    .line 2784
    :goto_4f
    invoke-virtual {v3, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 2785
    .line 2786
    .line 2787
    const-wide/16 v1, 0x3e8

    .line 2788
    .line 2789
    invoke-virtual {v3, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 2790
    .line 2791
    .line 2792
    iget v1, v3, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mCurrentMode:I

    .line 2793
    .line 2794
    if-ne v1, v0, :cond_7a

    .line 2795
    .line 2796
    const/16 v0, -0x63

    .line 2797
    .line 2798
    if-ge v10, v0, :cond_74

    .line 2799
    .line 2800
    const/16 v0, -0x63

    .line 2801
    .line 2802
    goto :goto_50

    .line 2803
    :cond_74
    move v0, v10

    .line 2804
    :goto_50
    if-lez v0, :cond_75

    .line 2805
    .line 2806
    const/4 v0, 0x0

    .line 2807
    :cond_75
    iget-object v1, v3, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mCurrentBssid:Lcom/samsung/android/server/wifi/wcm/BssidStatistics;

    .line 2808
    .line 2809
    iget v2, v1, Lcom/samsung/android/server/wifi/wcm/BssidStatistics;->mLastPoorRssi:I

    .line 2810
    .line 2811
    if-gt v0, v2, :cond_79

    .line 2812
    .line 2813
    const-wide/32 v4, 0xd962

    .line 2814
    .line 2815
    .line 2816
    cmp-long v2, v33, v4

    .line 2817
    .line 2818
    if-gez v2, :cond_78

    .line 2819
    .line 2820
    cmp-long v2, v31, v4

    .line 2821
    .line 2822
    if-gez v2, :cond_78

    .line 2823
    .line 2824
    iget-object v1, v1, Lcom/samsung/android/server/wifi/wcm/BssidStatistics;->mMaxThroughput:[J

    .line 2825
    .line 2826
    neg-int v2, v0

    .line 2827
    aget-wide v1, v1, v2

    .line 2828
    .line 2829
    cmp-long v1, v1, v4

    .line 2830
    .line 2831
    if-gez v1, :cond_78

    .line 2832
    .line 2833
    iget-object v1, v3, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    .line 2834
    .line 2835
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->is24GHz()Z

    .line 2836
    .line 2837
    .line 2838
    move-result v1

    .line 2839
    if-eqz v1, :cond_76

    .line 2840
    .line 2841
    const/16 v1, -0x4b

    .line 2842
    .line 2843
    if-le v0, v1, :cond_77

    .line 2844
    .line 2845
    :cond_76
    const/16 v1, -0x50

    .line 2846
    .line 2847
    if-gt v0, v1, :cond_78

    .line 2848
    .line 2849
    :cond_77
    iget v0, v3, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mStayingPoorRssi:I

    .line 2850
    .line 2851
    const/4 v8, 0x1

    .line 2852
    add-int/2addr v0, v8

    .line 2853
    iput v0, v3, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mStayingPoorRssi:I

    .line 2854
    .line 2855
    goto :goto_51

    .line 2856
    :cond_78
    const/4 v14, 0x0

    .line 2857
    iput v14, v3, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mStayingPoorRssi:I

    .line 2858
    .line 2859
    iget-object v0, v3, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mCurrentBssid:Lcom/samsung/android/server/wifi/wcm/BssidStatistics;

    .line 2860
    .line 2861
    iget v1, v0, Lcom/samsung/android/server/wifi/wcm/BssidStatistics;->mLastPoorRssi:I

    .line 2862
    .line 2863
    add-int/lit8 v1, v1, -0x5

    .line 2864
    .line 2865
    iput v1, v0, Lcom/samsung/android/server/wifi/wcm/BssidStatistics;->mLastPoorRssi:I

    .line 2866
    .line 2867
    goto :goto_51

    .line 2868
    :cond_79
    const/4 v14, 0x0

    .line 2869
    iput v14, v3, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mStayingPoorRssi:I

    .line 2870
    .line 2871
    :cond_7a
    :goto_51
    iget-wide v0, v3, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mLastPollTime:J

    .line 2872
    .line 2873
    cmp-long v2, v0, v16

    .line 2874
    .line 2875
    if-eqz v2, :cond_7b

    .line 2876
    .line 2877
    iget-object v2, v3, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mNetworkStatsAnalyzerCallBack:Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer$INetworkStatsAnalyzerCallBack;

    .line 2878
    .line 2879
    sub-long v29, v11, v0

    .line 2880
    .line 2881
    move-object/from16 v27, v2

    .line 2882
    .line 2883
    invoke-interface/range {v27 .. v34}, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer$INetworkStatsAnalyzerCallBack;->notifyThroughputUpdate(IJJJ)V

    .line 2884
    .line 2885
    .line 2886
    :cond_7b
    iput-wide v11, v3, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mLastPollTime:J

    .line 2887
    .line 2888
    return-void

    .line 2889
    :cond_7c
    :goto_52
    const-string v0, "mCurrentBssid is null."

    .line 2890
    .line 2891
    invoke-static {v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2892
    .line 2893
    .line 2894
    const/4 v0, 0x3

    .line 2895
    invoke-virtual {v3, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 2896
    .line 2897
    .line 2898
    const/4 v0, 0x2

    .line 2899
    invoke-virtual {v3, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2900
    .line 2901
    .line 2902
    return-void

    .line 2903
    :cond_7d
    move v0, v9

    .line 2904
    move-object v9, v10

    .line 2905
    const-wide/16 v16, 0x0

    .line 2906
    .line 2907
    sget-boolean v1, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->DBG:Z

    .line 2908
    .line 2909
    if-eqz v1, :cond_7e

    .line 2910
    .line 2911
    const-string v1, "MSG_ACTIVITY_CHECK_STOP"

    .line 2912
    .line 2913
    invoke-static {v9, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2914
    .line 2915
    .line 2916
    :cond_7e
    invoke-virtual {v3, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 2917
    .line 2918
    .line 2919
    const/16 v1, 0x8

    .line 2920
    .line 2921
    invoke-virtual {v3, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2922
    .line 2923
    .line 2924
    const/4 v14, 0x0

    .line 2925
    iput-boolean v14, v3, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mIsPollingStarted:Z

    .line 2926
    .line 2927
    iput-boolean v14, v3, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mPublicDnsCheckProcess:Z

    .line 2928
    .line 2929
    iget-object v0, v3, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mCumulativePoorRx:Ljava/util/ArrayList;

    .line 2930
    .line 2931
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2932
    .line 2933
    .line 2934
    iget-object v0, v3, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mRxHistory:Ljava/util/ArrayList;

    .line 2935
    .line 2936
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2937
    .line 2938
    .line 2939
    iput-boolean v14, v3, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mDnsQueried:Z

    .line 2940
    .line 2941
    iput-boolean v14, v3, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mDnsInterrupted:Z

    .line 2942
    .line 2943
    iput v14, v3, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mMaybeUseStreaming:I

    .line 2944
    .line 2945
    iput-boolean v14, v3, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mSYNPacketOnly:Z

    .line 2946
    .line 2947
    iput v14, v3, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mNsaQcStep:I

    .line 2948
    .line 2949
    iput v14, v3, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mNsaQcTrigger:I

    .line 2950
    .line 2951
    iput v14, v3, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mStayingPoorRssi:I

    .line 2952
    .line 2953
    iput-boolean v14, v3, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mIsAggGoodStateNow:Z

    .line 2954
    .line 2955
    move-wide/from16 v0, v16

    .line 2956
    .line 2957
    iput-wide v0, v3, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mLastPollTime:J

    .line 2958
    .line 2959
    return-void

    .line 2960
    :cond_7f
    move-object v9, v10

    .line 2961
    move v14, v12

    .line 2962
    iget-boolean v0, v3, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mIsPollingStarted:Z

    .line 2963
    .line 2964
    if-eqz v0, :cond_81

    .line 2965
    .line 2966
    :cond_80
    :goto_53
    return-void

    .line 2967
    :cond_81
    sget-boolean v0, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->DBG:Z

    .line 2968
    .line 2969
    if-eqz v0, :cond_82

    .line 2970
    .line 2971
    const-string v0, "MSG_ACTIVITY_CHECK_START"

    .line 2972
    .line 2973
    invoke-static {v9, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2974
    .line 2975
    .line 2976
    :cond_82
    invoke-direct {v3}, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->isBackhaulDetectionEnabled()Z

    .line 2977
    .line 2978
    .line 2979
    move-result v0

    .line 2980
    if-eqz v0, :cond_83

    .line 2981
    .line 2982
    const/16 v1, 0x8

    .line 2983
    .line 2984
    invoke-virtual {v3, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2985
    .line 2986
    .line 2987
    :cond_83
    const/4 v0, 0x3

    .line 2988
    invoke-virtual {v3, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2989
    .line 2990
    .line 2991
    invoke-direct {v3}, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->initNetworkStatHistory()V

    .line 2992
    .line 2993
    .line 2994
    invoke-direct {v3}, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->syncGetCurrentWifiInfo()V

    .line 2995
    .line 2996
    .line 2997
    iget-object v0, v3, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    .line 2998
    .line 2999
    if-eqz v0, :cond_84

    .line 3000
    .line 3001
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getRssi()I

    .line 3002
    .line 3003
    .line 3004
    move-result v12

    .line 3005
    goto :goto_54

    .line 3006
    :cond_84
    move v12, v14

    .line 3007
    :goto_54
    iput v12, v3, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mLastRssi:I

    .line 3008
    .line 3009
    const/4 v8, 0x1

    .line 3010
    iput-boolean v8, v3, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mIsPollingStarted:Z

    .line 3011
    .line 3012
    return-void

    .line 3013
    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public initStayingPoorRssi()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mStayingPoorRssi:I

    .line 3
    .line 4
    return-void
.end method

.method public isDnsCheckOnGoing()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mPublicDnsCheckProcess:Z

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mDnsQueried:Z

    .line 6
    .line 7
    if-eqz p0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 p0, 0x0

    .line 11
    return p0

    .line 12
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 13
    return p0
.end method

.method public setCurrentBssidStatistics(Lcom/samsung/android/server/wifi/wcm/BssidStatistics;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mCurrentBssid:Lcom/samsung/android/server/wifi/wcm/BssidStatistics;

    .line 2
    .line 3
    return-void
.end method

.method public setCurrentNetwork(Landroid/net/Network;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mDnsThread:Lcom/samsung/android/server/wifi/wcm/DnsThread;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/wcm/DnsThread;->setCurrentNetwork(Landroid/net/Network;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public setCurrentTrafficStats(Lcom/samsung/android/server/wifi/SemWifiTrafficStats;)V
    .locals 1

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    new-instance v0, Lcom/samsung/android/server/wifi/SemWifiTrafficStats;

    .line 5
    .line 6
    invoke-direct {v0, p1}, Lcom/samsung/android/server/wifi/SemWifiTrafficStats;-><init>(Lcom/samsung/android/server/wifi/SemWifiTrafficStats;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mSemTrafficStats:Lcom/samsung/android/server/wifi/SemWifiTrafficStats;

    .line 10
    .line 11
    return-void
.end method

.method public setCurrentWCMMode(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mCurrentMode:I

    .line 2
    .line 3
    return-void
.end method

.method public setIsChinaNetwork(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mIsChinaNetwork:Z

    .line 2
    .line 3
    return-void
.end method

.method public setIsVPNOnlyNetwork(Z)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mIsVPNOnlyNetwork:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setNetworkStatCheckDns(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mIsChinaNetwork:Z

    .line 2
    .line 3
    const/4 p1, 0x5

    .line 4
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public setNetworkStatsAnalyzerCallBack(Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer$INetworkStatsAnalyzerCallBack;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mNetworkStatsAnalyzerCallBack:Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer$INetworkStatsAnalyzerCallBack;

    .line 2
    .line 3
    return-void
.end method

.method public setRoamAndDhcp(ZZ)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mIsInRoamSession:Z

    .line 2
    .line 3
    iput-boolean p2, p0, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mIsInDhcpSession:Z

    .line 4
    .line 5
    return-void
.end method

.method public setScanStartedOrDone(ZZ)V
    .locals 0

    .line 1
    iput-boolean p2, p0, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mIsScanning:Z

    .line 2
    .line 3
    if-nez p1, :cond_1

    .line 4
    .line 5
    iget-boolean p1, p0, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mIsPollingStarted:Z

    .line 6
    .line 7
    if-nez p1, :cond_0

    .line 8
    .line 9
    iget-boolean p1, p0, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mDnsQueried:Z

    .line 10
    .line 11
    if-eqz p1, :cond_1

    .line 12
    .line 13
    :cond_0
    const/4 p1, 0x2

    .line 14
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :cond_1
    const/16 p1, 0x9

    .line 19
    .line 20
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public startActivityCheck(Z)V
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    const/4 p1, 0x1

    .line 4
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 5
    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    const/4 p1, 0x2

    .line 9
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public updateLinkProperties(Landroid/net/LinkProperties;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mLinkProperties:Landroid/net/LinkProperties;

    .line 2
    .line 3
    return-void
.end method
