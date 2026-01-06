.class public Lcom/samsung/android/server/wifi/twt/SemTwtInfo;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/server/wifi/twt/SemTwtInfo$TwtStats;
    }
.end annotation


# static fields
.field private static final DUMPSYS_ENTRY_COUNT_LIMIT:I = 0x3e8

.field private static final DUMP_ARG:Ljava/lang/String; = "SemWifiTwtMonitor history:"

.field public static final LOG_TYPE_D:I = 0x0

.field public static final LOG_TYPE_E:I = 0x1

.field public static final LOG_TYPE_I:I = 0x2

.field private static final TAG:Ljava/lang/String; = "SemTwtInfo"

.field private static mHistory:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAverageContentionTime:J

.field private mAverageTdt:J

.field public mCcaBusyTimeMs:J

.field public mCcaBusyTimeMsDiff:J

.field private mDataTime:J

.field private mDlPktCnt:J

.field private mFlowId:I

.field private mFreq:I

.field private mLastTime:J

.field private mMaxTdt:J

.field private mNegoCompleted:Z

.field private mPackageNameChangFlag:Z

.field private mPacketCount:J

.field private mPacketSize:J

.field private mPktCntSize:J

.field public mRadioOnTimeMs:J

.field public mRadioOnTimeMsDiff:J

.field private mRawPacketCount:[J

.field private mRssi:I

.field private mRxGood:J

.field private mRxGoodDiff:J

.field private mRxLinkSpeed:I

.field private mRxPktBytes:J

.field private mRxPktBytesDiff:J

.field private mRxPktBytesLink:J

.field private mRxPktBytesLinkDiff:J

.field private mRxPktCnt:J

.field private mRxPktCntDiff:J

.field private mSP:I

.field public mScanTimeMs:J

.field public mScanTimeMsDiff:J

.field private mTrafficTime:J

.field private mTwtInterval:I

.field private mTxBad:J

.field private mTxBadDiff:J

.field private mTxGood:J

.field private mTxGoodDiff:J

.field private mTxLinkSpeed:I

.field private mTxPktBytes:J

.field private mTxPktBytesDiff:J

.field private mTxPktBytesLink:J

.field private mTxPktBytesLinkDiff:J

.field private mTxPktCnt:J

.field private mTxPktCntDiff:J

.field private mTxRetry:J

.field private mTxRetryDiff:J

.field private mUlPktCnt:J

.field private mUsageStatsPackageName:Ljava/lang/String;

.field private mVarTdt:J

.field private mVerboseLoggingEnabled:Z

.field private overflowDetected:I

.field public tdtMode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/LinkedList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->mHistory:Ljava/util/LinkedList;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->mVerboseLoggingEnabled:Z

    .line 6
    .line 7
    const/4 v1, 0x1

    .line 8
    iput v1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->mFlowId:I

    .line 9
    .line 10
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->mNegoCompleted:Z

    .line 11
    .line 12
    const/16 v2, 0x2800

    .line 13
    .line 14
    iput v2, p0, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->mSP:I

    .line 15
    .line 16
    const v2, 0x19000

    .line 17
    .line 18
    .line 19
    iput v2, p0, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->mTwtInterval:I

    .line 20
    .line 21
    const-wide/16 v2, 0x0

    .line 22
    .line 23
    iput-wide v2, p0, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->mAverageTdt:J

    .line 24
    .line 25
    iput-wide v2, p0, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->mMaxTdt:J

    .line 26
    .line 27
    iput-wide v2, p0, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->mVarTdt:J

    .line 28
    .line 29
    iput-wide v2, p0, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->mDataTime:J

    .line 30
    .line 31
    iput-wide v2, p0, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->mPacketSize:J

    .line 32
    .line 33
    iput-wide v2, p0, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->mPacketCount:J

    .line 34
    .line 35
    iput-wide v2, p0, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->mAverageContentionTime:J

    .line 36
    .line 37
    const/16 v4, 0xfa

    .line 38
    .line 39
    new-array v4, v4, [J

    .line 40
    .line 41
    iput-object v4, p0, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->mRawPacketCount:[J

    .line 42
    .line 43
    iput v0, p0, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->overflowDetected:I

    .line 44
    .line 45
    iput-wide v2, p0, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->mPktCntSize:J

    .line 46
    .line 47
    iput-wide v2, p0, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->mDlPktCnt:J

    .line 48
    .line 49
    iput-wide v2, p0, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->mUlPktCnt:J

    .line 50
    .line 51
    iput v1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->mTxLinkSpeed:I

    .line 52
    .line 53
    iput v1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->mRxLinkSpeed:I

    .line 54
    .line 55
    iput-wide v2, p0, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->mRadioOnTimeMs:J

    .line 56
    .line 57
    iput-wide v2, p0, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->mCcaBusyTimeMs:J

    .line 58
    .line 59
    iput-wide v2, p0, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->mScanTimeMs:J

    .line 60
    .line 61
    iput-wide v2, p0, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->mTxPktCnt:J

    .line 62
    .line 63
    iput-wide v2, p0, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->mRxPktCnt:J

    .line 64
    .line 65
    iput-wide v2, p0, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->mTxPktBytes:J

    .line 66
    .line 67
    iput-wide v2, p0, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->mRxPktBytes:J

    .line 68
    .line 69
    iput-wide v2, p0, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->mLastTime:J

    .line 70
    .line 71
    iput-wide v2, p0, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->mTxPktBytesLink:J

    .line 72
    .line 73
    iput-wide v2, p0, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->mRxPktBytesLink:J

    .line 74
    .line 75
    iput-wide v2, p0, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->mTxPktBytesLinkDiff:J

    .line 76
    .line 77
    iput-wide v2, p0, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->mRxPktBytesLinkDiff:J

    .line 78
    .line 79
    const-string v2, "default"

    .line 80
    .line 81
    iput-object v2, p0, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->mUsageStatsPackageName:Ljava/lang/String;

    .line 82
    .line 83
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->mPackageNameChangFlag:Z

    .line 84
    .line 85
    iput v1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->tdtMode:I

    .line 86
    .line 87
    return-void
.end method


# virtual methods
.method public addEvent(Ljava/lang/String;I)V
    .locals 2

    .line 1
    if-nez p2, :cond_1

    .line 2
    .line 3
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->mVerboseLoggingEnabled:Z

    .line 4
    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    const-string p0, "SemTwtInfo"

    .line 8
    .line 9
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void

    .line 13
    :cond_1
    const/4 p0, 0x2

    .line 14
    if-ne p2, p0, :cond_2

    .line 15
    .line 16
    const-string p0, "SemTwtInfo"

    .line 17
    .line 18
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_2
    const-string p0, "SemTwtInfo"

    .line 23
    .line 24
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    .line 26
    .line 27
    :goto_0
    :try_start_0
    new-instance p0, Ljava/text/SimpleDateFormat;

    .line 28
    .line 29
    const-string p2, "MM-dd HH:mm:ss.SSS"

    .line 30
    .line 31
    invoke-direct {p0, p2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    new-instance p2, Ljava/util/Date;

    .line 35
    .line 36
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 37
    .line 38
    .line 39
    move-result-wide v0

    .line 40
    invoke-direct {p2, v0, v1}, Ljava/util/Date;-><init>(J)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0, p2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    new-instance p2, Ljava/lang/StringBuilder;

    .line 48
    .line 49
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    const-string p0, " "

    .line 56
    .line 57
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    sget-object p1, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->mHistory:Ljava/util/LinkedList;

    .line 68
    .line 69
    monitor-enter p1

    .line 70
    :try_start_1
    sget-object p2, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->mHistory:Ljava/util/LinkedList;

    .line 71
    .line 72
    invoke-virtual {p2, p0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    :goto_1
    sget-object p0, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->mHistory:Ljava/util/LinkedList;

    .line 76
    .line 77
    invoke-virtual {p0}, Ljava/util/LinkedList;->size()I

    .line 78
    .line 79
    .line 80
    move-result p0

    .line 81
    const/16 p2, 0x3e8

    .line 82
    .line 83
    if-le p0, p2, :cond_3

    .line 84
    .line 85
    sget-object p0, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->mHistory:Ljava/util/LinkedList;

    .line 86
    .line 87
    invoke-virtual {p0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    goto :goto_1

    .line 91
    :catchall_0
    move-exception p0

    .line 92
    goto :goto_2

    .line 93
    :cond_3
    monitor-exit p1

    .line 94
    return-void

    .line 95
    :goto_2
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 96
    throw p0

    .line 97
    :catch_0
    move-exception p0

    .line 98
    const-string p1, "SemTwtInfo"

    .line 99
    .line 100
    const-string p2, "format problem"

    .line 101
    .line 102
    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 103
    .line 104
    .line 105
    return-void
.end method

.method public clearPackageChangeFlag()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->mPackageNameChangFlag:Z

    .line 3
    .line 4
    return-void
.end method

.method public clrOverflow()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->overflowDetected:I

    .line 3
    .line 4
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 2

    .line 1
    sget-object p0, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->mHistory:Ljava/util/LinkedList;

    .line 2
    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    new-instance v0, Ljava/util/LinkedList;

    .line 5
    .line 6
    sget-object v1, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->mHistory:Ljava/util/LinkedList;

    .line 7
    .line 8
    invoke-direct {v0, v1}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    .line 9
    .line 10
    .line 11
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    const-string p0, "SemWifiTwtMonitor history:"

    .line 13
    .line 14
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-eqz v1, :cond_0

    .line 26
    .line 27
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    check-cast v1, Ljava/lang/String;

    .line 32
    .line 33
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_0
    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 41
    .line 42
    .line 43
    return-void

    .line 44
    :catchall_0
    move-exception p1

    .line 45
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 46
    throw p1
.end method

.method public enableVerboseLogging(I)V
    .locals 0

    .line 1
    if-lez p1, :cond_0

    .line 2
    .line 3
    const/4 p1, 0x1

    .line 4
    goto :goto_0

    .line 5
    :cond_0
    const/4 p1, 0x0

    .line 6
    :goto_0
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->mVerboseLoggingEnabled:Z

    .line 7
    .line 8
    return-void
.end method

.method public getDiffStats()[J
    .locals 9

    .line 1
    const/16 v0, 0x9

    .line 2
    .line 3
    new-array v0, v0, [J

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    iget-wide v2, p0, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->mTxPktCntDiff:J

    .line 7
    .line 8
    aput-wide v2, v0, v1

    .line 9
    .line 10
    const/4 v1, 0x1

    .line 11
    iget-wide v2, p0, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->mRxPktCntDiff:J

    .line 12
    .line 13
    aput-wide v2, v0, v1

    .line 14
    .line 15
    const/4 v1, 0x2

    .line 16
    iget-wide v2, p0, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->mTxPktBytesDiff:J

    .line 17
    .line 18
    aput-wide v2, v0, v1

    .line 19
    .line 20
    const/4 v1, 0x3

    .line 21
    iget-wide v2, p0, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->mRxPktBytesDiff:J

    .line 22
    .line 23
    aput-wide v2, v0, v1

    .line 24
    .line 25
    iget-wide v1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->mRadioOnTimeMsDiff:J

    .line 26
    .line 27
    const/4 v3, 0x4

    .line 28
    aput-wide v1, v0, v3

    .line 29
    .line 30
    iget-wide v3, p0, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->mCcaBusyTimeMsDiff:J

    .line 31
    .line 32
    const/4 v5, 0x5

    .line 33
    aput-wide v3, v0, v5

    .line 34
    .line 35
    const-wide/16 v5, 0x0

    .line 36
    .line 37
    cmp-long v7, v1, v5

    .line 38
    .line 39
    const/4 v8, 0x6

    .line 40
    if-nez v7, :cond_0

    .line 41
    .line 42
    aput-wide v5, v0, v8

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_0
    const-wide/16 v5, 0x3e8

    .line 46
    .line 47
    mul-long/2addr v3, v5

    .line 48
    div-long/2addr v3, v1

    .line 49
    aput-wide v3, v0, v8

    .line 50
    .line 51
    :goto_0
    const/4 v1, 0x7

    .line 52
    iget-wide v2, p0, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->mTrafficTime:J

    .line 53
    .line 54
    aput-wide v2, v0, v1

    .line 55
    .line 56
    const/16 v1, 0x8

    .line 57
    .line 58
    iget-wide v2, p0, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->mScanTimeMsDiff:J

    .line 59
    .line 60
    aput-wide v2, v0, v1

    .line 61
    .line 62
    return-object v0
.end method

.method public getLinkLayerDiffStats()[J
    .locals 13

    .line 1
    iget-wide v0, p0, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->mTxGoodDiff:J

    .line 2
    .line 3
    iget-wide v2, p0, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->mTxRetryDiff:J

    .line 4
    .line 5
    iget-wide v4, p0, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->mTxBadDiff:J

    .line 6
    .line 7
    iget-wide v6, p0, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->mRxGoodDiff:J

    .line 8
    .line 9
    iget-wide v8, p0, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->mTxPktBytesLinkDiff:J

    .line 10
    .line 11
    iget-wide v10, p0, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->mRxPktBytesLinkDiff:J

    .line 12
    .line 13
    const/4 p0, 0x6

    .line 14
    new-array p0, p0, [J

    .line 15
    .line 16
    const/4 v12, 0x0

    .line 17
    aput-wide v0, p0, v12

    .line 18
    .line 19
    const/4 v0, 0x1

    .line 20
    aput-wide v2, p0, v0

    .line 21
    .line 22
    const/4 v0, 0x2

    .line 23
    aput-wide v4, p0, v0

    .line 24
    .line 25
    const/4 v0, 0x3

    .line 26
    aput-wide v6, p0, v0

    .line 27
    .line 28
    const/4 v0, 0x4

    .line 29
    aput-wide v8, p0, v0

    .line 30
    .line 31
    const/4 v0, 0x5

    .line 32
    aput-wide v10, p0, v0

    .line 33
    .line 34
    return-object p0
.end method

.method public getLinkLayerStats()[J
    .locals 11

    .line 1
    iget-wide v0, p0, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->mTxGood:J

    .line 2
    .line 3
    iget-wide v2, p0, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->mTxRetry:J

    .line 4
    .line 5
    iget-wide v4, p0, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->mTxBad:J

    .line 6
    .line 7
    iget-wide v6, p0, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->mRadioOnTimeMs:J

    .line 8
    .line 9
    iget-wide v8, p0, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->mCcaBusyTimeMs:J

    .line 10
    .line 11
    const/4 p0, 0x5

    .line 12
    new-array p0, p0, [J

    .line 13
    .line 14
    const/4 v10, 0x0

    .line 15
    aput-wide v0, p0, v10

    .line 16
    .line 17
    const/4 v0, 0x1

    .line 18
    aput-wide v2, p0, v0

    .line 19
    .line 20
    const/4 v0, 0x2

    .line 21
    aput-wide v4, p0, v0

    .line 22
    .line 23
    const/4 v0, 0x3

    .line 24
    aput-wide v6, p0, v0

    .line 25
    .line 26
    const/4 v0, 0x4

    .line 27
    aput-wide v8, p0, v0

    .line 28
    .line 29
    return-object p0
.end method

.method public getLinkSpeed()[I
    .locals 3

    .line 1
    iget v0, p0, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->mTxLinkSpeed:I

    .line 2
    .line 3
    iget v1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->mRxLinkSpeed:I

    .line 4
    .line 5
    iget v2, p0, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->mRssi:I

    .line 6
    .line 7
    iget p0, p0, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->mFreq:I

    .line 8
    .line 9
    filled-new-array {v0, v1, v2, p0}, [I

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    return-object p0
.end method

.method public getPackageChangeFlag()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->mPackageNameChangFlag:Z

    .line 2
    .line 3
    return p0
.end method

.method public getPacketMonitoringStats()[J
    .locals 24

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-wide v1, v0, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->mAverageTdt:J

    .line 4
    .line 5
    iget-wide v3, v0, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->mMaxTdt:J

    .line 6
    .line 7
    iget-wide v5, v0, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->mDataTime:J

    .line 8
    .line 9
    iget-wide v7, v0, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->mPacketSize:J

    .line 10
    .line 11
    iget-wide v9, v0, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->mPacketCount:J

    .line 12
    .line 13
    iget-wide v11, v0, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->mAverageContentionTime:J

    .line 14
    .line 15
    iget-wide v13, v0, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->mPktCntSize:J

    .line 16
    .line 17
    move-wide v15, v1

    .line 18
    iget-wide v1, v0, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->mDlPktCnt:J

    .line 19
    .line 20
    move-wide/from16 v17, v1

    .line 21
    .line 22
    iget-wide v1, v0, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->mUlPktCnt:J

    .line 23
    .line 24
    move-wide/from16 v19, v1

    .line 25
    .line 26
    iget-wide v1, v0, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->mRadioOnTimeMsDiff:J

    .line 27
    .line 28
    move-wide/from16 v21, v1

    .line 29
    .line 30
    iget-wide v0, v0, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->mVarTdt:J

    .line 31
    .line 32
    const/16 v2, 0xb

    .line 33
    .line 34
    new-array v2, v2, [J

    .line 35
    .line 36
    const/16 v23, 0x0

    .line 37
    .line 38
    aput-wide v15, v2, v23

    .line 39
    .line 40
    const/4 v15, 0x1

    .line 41
    aput-wide v3, v2, v15

    .line 42
    .line 43
    const/4 v3, 0x2

    .line 44
    aput-wide v5, v2, v3

    .line 45
    .line 46
    const/4 v3, 0x3

    .line 47
    aput-wide v7, v2, v3

    .line 48
    .line 49
    const/4 v3, 0x4

    .line 50
    aput-wide v9, v2, v3

    .line 51
    .line 52
    const/4 v3, 0x5

    .line 53
    aput-wide v11, v2, v3

    .line 54
    .line 55
    const/4 v3, 0x6

    .line 56
    aput-wide v13, v2, v3

    .line 57
    .line 58
    const/4 v3, 0x7

    .line 59
    aput-wide v17, v2, v3

    .line 60
    .line 61
    const/16 v3, 0x8

    .line 62
    .line 63
    aput-wide v19, v2, v3

    .line 64
    .line 65
    const/16 v3, 0x9

    .line 66
    .line 67
    aput-wide v21, v2, v3

    .line 68
    .line 69
    const/16 v3, 0xa

    .line 70
    .line 71
    aput-wide v0, v2, v3

    .line 72
    .line 73
    return-object v2
.end method

.method public getTWTParams()[I
    .locals 3

    .line 1
    iget v0, p0, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->mFlowId:I

    .line 2
    .line 3
    iget v1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->mSP:I

    .line 4
    .line 5
    iget v2, p0, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->mTwtInterval:I

    .line 6
    .line 7
    iget p0, p0, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->overflowDetected:I

    .line 8
    .line 9
    filled-new-array {v0, v1, v2, p0}, [I

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    return-object p0
.end method

.method public getTWTStatus()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->mNegoCompleted:Z

    .line 2
    .line 3
    return p0
.end method

.method public getTdtMode()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->tdtMode:I

    .line 2
    .line 3
    return p0
.end method

.method public getTwtStats()Lcom/samsung/android/server/wifi/twt/SemTwtInfo$TwtStats;
    .locals 3

    .line 1
    new-instance v0, Lcom/samsung/android/server/wifi/twt/SemTwtInfo$TwtStats;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/samsung/android/server/wifi/twt/SemTwtInfo$TwtStats;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-wide v1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->mRadioOnTimeMsDiff:J

    .line 7
    .line 8
    iput-wide v1, v0, Lcom/samsung/android/server/wifi/twt/SemTwtInfo$TwtStats;->radioOnTimeMs:J

    .line 9
    .line 10
    iget-wide v1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->mCcaBusyTimeMsDiff:J

    .line 11
    .line 12
    iput-wide v1, v0, Lcom/samsung/android/server/wifi/twt/SemTwtInfo$TwtStats;->ccaBusyTimeMs:J

    .line 13
    .line 14
    iget-wide v1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->mScanTimeMsDiff:J

    .line 15
    .line 16
    iput-wide v1, v0, Lcom/samsung/android/server/wifi/twt/SemTwtInfo$TwtStats;->scanTimeMs:J

    .line 17
    .line 18
    iget-wide v1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->mTxGoodDiff:J

    .line 19
    .line 20
    iput-wide v1, v0, Lcom/samsung/android/server/wifi/twt/SemTwtInfo$TwtStats;->txGood:J

    .line 21
    .line 22
    iget-wide v1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->mTxRetryDiff:J

    .line 23
    .line 24
    iput-wide v1, v0, Lcom/samsung/android/server/wifi/twt/SemTwtInfo$TwtStats;->txRetry:J

    .line 25
    .line 26
    iget-wide v1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->mTxBadDiff:J

    .line 27
    .line 28
    iput-wide v1, v0, Lcom/samsung/android/server/wifi/twt/SemTwtInfo$TwtStats;->txBad:J

    .line 29
    .line 30
    iget-wide v1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->mRxGoodDiff:J

    .line 31
    .line 32
    iput-wide v1, v0, Lcom/samsung/android/server/wifi/twt/SemTwtInfo$TwtStats;->rxGood:J

    .line 33
    .line 34
    iget-wide v1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->mTxPktCntDiff:J

    .line 35
    .line 36
    iput-wide v1, v0, Lcom/samsung/android/server/wifi/twt/SemTwtInfo$TwtStats;->txPktCnt:J

    .line 37
    .line 38
    iget-wide v1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->mRxPktCntDiff:J

    .line 39
    .line 40
    iput-wide v1, v0, Lcom/samsung/android/server/wifi/twt/SemTwtInfo$TwtStats;->rxPktCnt:J

    .line 41
    .line 42
    iget-wide v1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->mTxPktBytesDiff:J

    .line 43
    .line 44
    iput-wide v1, v0, Lcom/samsung/android/server/wifi/twt/SemTwtInfo$TwtStats;->txPktBytes:J

    .line 45
    .line 46
    iget-wide v1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->mRxPktBytesDiff:J

    .line 47
    .line 48
    iput-wide v1, v0, Lcom/samsung/android/server/wifi/twt/SemTwtInfo$TwtStats;->rxPktBytes:J

    .line 49
    .line 50
    return-object v0
.end method

.method public getUsageStatsPackage()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->mUsageStatsPackageName:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public getmRawPacketCount()[J
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->mRawPacketCount:[J

    .line 2
    .line 3
    return-object p0
.end method

.method public setLinkLayerStats(IIIIJJJJJJJ)V
    .locals 26

    move-object/from16 v0, p0

    move-wide/from16 v1, p5

    move-wide/from16 v3, p7

    move-wide/from16 v5, p9

    move-wide/from16 v7, p11

    .line 1
    iget-wide v13, v0, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->mRadioOnTimeMs:J

    cmp-long v15, p13, v13

    const-wide/16 v16, 0x0

    if-lez v15, :cond_0

    sub-long v13, p13, v13

    goto :goto_0

    :cond_0
    move-wide/from16 v13, v16

    :goto_0
    iput-wide v13, v0, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->mRadioOnTimeMsDiff:J

    .line 2
    iget-wide v13, v0, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->mCcaBusyTimeMs:J

    cmp-long v15, p15, v13

    if-lez v15, :cond_1

    sub-long v13, p15, v13

    goto :goto_1

    :cond_1
    move-wide/from16 v13, v16

    :goto_1
    iput-wide v13, v0, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->mCcaBusyTimeMsDiff:J

    .line 3
    iget-wide v13, v0, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->mScanTimeMs:J

    cmp-long v15, p17, v13

    if-lez v15, :cond_2

    sub-long v13, p17, v13

    goto :goto_2

    :cond_2
    move-wide/from16 v13, v16

    :goto_2
    iput-wide v13, v0, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->mScanTimeMsDiff:J

    .line 4
    iget-wide v13, v0, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->mTxGood:J

    cmp-long v15, v1, v13

    if-lez v15, :cond_3

    sub-long v13, v1, v13

    goto :goto_3

    :cond_3
    move-wide/from16 v13, v16

    :goto_3
    iput-wide v13, v0, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->mTxGoodDiff:J

    move-wide/from16 v18, v13

    .line 5
    iget-wide v13, v0, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->mTxRetry:J

    cmp-long v15, v3, v13

    if-lez v15, :cond_4

    sub-long v13, v3, v13

    goto :goto_4

    :cond_4
    move-wide/from16 v13, v16

    :goto_4
    iput-wide v13, v0, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->mTxRetryDiff:J

    move-wide/from16 v20, v13

    .line 6
    iget-wide v13, v0, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->mTxBad:J

    cmp-long v15, v5, v13

    if-lez v15, :cond_5

    sub-long v13, v5, v13

    goto :goto_5

    :cond_5
    move-wide/from16 v13, v16

    :goto_5
    iput-wide v13, v0, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->mTxBadDiff:J

    move-wide/from16 v22, v13

    .line 7
    iget-wide v13, v0, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->mRxGood:J

    cmp-long v15, v7, v13

    if-lez v15, :cond_6

    sub-long v13, v7, v13

    goto :goto_6

    :cond_6
    move-wide/from16 v13, v16

    :goto_6
    iput-wide v13, v0, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->mRxGoodDiff:J

    move-wide/from16 v24, v13

    .line 8
    iget-wide v13, v0, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->mTxPktBytes:J

    iget-wide v11, v0, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->mTxPktBytesLink:J

    cmp-long v15, v13, v11

    if-lez v15, :cond_7

    sub-long v11, v13, v11

    goto :goto_7

    :cond_7
    move-wide/from16 v11, v16

    :goto_7
    iput-wide v11, v0, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->mTxPktBytesLinkDiff:J

    .line 9
    iget-wide v11, v0, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->mRxPktBytes:J

    iget-wide v9, v0, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->mRxPktBytesLink:J

    cmp-long v15, v11, v9

    if-lez v15, :cond_8

    sub-long v9, v11, v9

    goto :goto_8

    :cond_8
    move-wide/from16 v9, v16

    :goto_8
    iput-wide v9, v0, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->mRxPktBytesLinkDiff:J

    add-long v9, v18, v20

    add-long v9, v9, v22

    cmp-long v9, v9, v16

    if-lez v9, :cond_9

    .line 10
    iput-wide v13, v0, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->mTxPktBytesLink:J

    :cond_9
    cmp-long v9, v24, v16

    if-lez v9, :cond_a

    .line 11
    iput-wide v11, v0, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->mRxPktBytesLink:J

    :cond_a
    move/from16 v9, p4

    .line 12
    iput v9, v0, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->mRssi:I

    move/from16 v9, p3

    .line 13
    iput v9, v0, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->mFreq:I

    if-lez p1, :cond_b

    move/from16 v9, p1

    goto :goto_9

    .line 14
    :cond_b
    iget v9, v0, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->mTxLinkSpeed:I

    :goto_9
    iput v9, v0, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->mTxLinkSpeed:I

    if-lez p2, :cond_c

    move/from16 v9, p2

    goto :goto_a

    .line 15
    :cond_c
    iget v9, v0, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->mRxLinkSpeed:I

    :goto_a
    iput v9, v0, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->mRxLinkSpeed:I

    .line 16
    iput-wide v1, v0, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->mTxGood:J

    .line 17
    iput-wide v3, v0, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->mTxRetry:J

    .line 18
    iput-wide v5, v0, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->mTxBad:J

    .line 19
    iput-wide v7, v0, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->mRxGood:J

    move-wide/from16 v9, p13

    .line 20
    iput-wide v9, v0, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->mRadioOnTimeMs:J

    move-wide/from16 v11, p15

    .line 21
    iput-wide v11, v0, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->mCcaBusyTimeMs:J

    move-wide/from16 v1, p17

    .line 22
    iput-wide v1, v0, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->mScanTimeMs:J

    return-void
.end method

.method public setNegoStatus(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->mNegoCompleted:Z

    .line 2
    .line 3
    return-void
.end method

.method public setNegotiationResult(ZIII)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->mNegoCompleted:Z

    .line 2
    .line 3
    iput p2, p0, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->mFlowId:I

    .line 4
    .line 5
    iput p3, p0, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->mSP:I

    .line 6
    .line 7
    iput p4, p0, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->mTwtInterval:I

    .line 8
    .line 9
    const/4 p1, 0x0

    .line 10
    iput p1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->overflowDetected:I

    .line 11
    .line 12
    return-void
.end method

.method public setOverflow()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->overflowDetected:I

    .line 3
    .line 4
    return-void
.end method

.method public setPacketMonitoringStats([J[J)V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    aget-wide v1, p1, v0

    .line 3
    .line 4
    iput-wide v1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->mAverageTdt:J

    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    aget-wide v1, p1, v1

    .line 8
    .line 9
    iput-wide v1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->mMaxTdt:J

    .line 10
    .line 11
    const/4 v1, 0x2

    .line 12
    aget-wide v1, p1, v1

    .line 13
    .line 14
    iput-wide v1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->mDataTime:J

    .line 15
    .line 16
    const/4 v1, 0x3

    .line 17
    aget-wide v1, p1, v1

    .line 18
    .line 19
    iput-wide v1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->mPacketSize:J

    .line 20
    .line 21
    const/4 v1, 0x4

    .line 22
    aget-wide v1, p1, v1

    .line 23
    .line 24
    iput-wide v1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->mPacketCount:J

    .line 25
    .line 26
    const/4 v1, 0x5

    .line 27
    aget-wide v1, p1, v1

    .line 28
    .line 29
    iput-wide v1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->mAverageContentionTime:J

    .line 30
    .line 31
    const/4 v1, 0x6

    .line 32
    aget-wide v1, p1, v1

    .line 33
    .line 34
    iput-wide v1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->mDlPktCnt:J

    .line 35
    .line 36
    const/4 v1, 0x7

    .line 37
    aget-wide v1, p1, v1

    .line 38
    .line 39
    iput-wide v1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->mUlPktCnt:J

    .line 40
    .line 41
    const/16 v1, 0x8

    .line 42
    .line 43
    aget-wide v1, p1, v1

    .line 44
    .line 45
    iput-wide v1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->mVarTdt:J

    .line 46
    .line 47
    array-length p1, p2

    .line 48
    int-to-long v1, p1

    .line 49
    iput-wide v1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->mPktCntSize:J

    .line 50
    .line 51
    :goto_0
    array-length p1, p2

    .line 52
    if-ge v0, p1, :cond_0

    .line 53
    .line 54
    iget-object p1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->mRawPacketCount:[J

    .line 55
    .line 56
    aget-wide v1, p2, v0

    .line 57
    .line 58
    aput-wide v1, p1, v0

    .line 59
    .line 60
    add-int/lit8 v0, v0, 0x1

    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_0
    array-length p1, p2

    .line 64
    :goto_1
    const/16 p2, 0x32

    .line 65
    .line 66
    if-ge p1, p2, :cond_1

    .line 67
    .line 68
    iget-object p2, p0, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->mRawPacketCount:[J

    .line 69
    .line 70
    const-wide/16 v0, 0x0

    .line 71
    .line 72
    aput-wide v0, p2, p1

    .line 73
    .line 74
    add-int/lit8 p1, p1, 0x1

    .line 75
    .line 76
    goto :goto_1

    .line 77
    :cond_1
    return-void
.end method

.method public setTdtMode(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->tdtMode:I

    .line 2
    .line 3
    return-void
.end method

.method public setTrafficStats(JJJJJ)V
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->mTxPktCnt:J

    .line 2
    .line 3
    sub-long v0, p1, v0

    .line 4
    .line 5
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->mTxPktCntDiff:J

    .line 6
    .line 7
    iget-wide v0, p0, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->mRxPktCnt:J

    .line 8
    .line 9
    sub-long v0, p3, v0

    .line 10
    .line 11
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->mRxPktCntDiff:J

    .line 12
    .line 13
    iget-wide v0, p0, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->mTxPktBytes:J

    .line 14
    .line 15
    sub-long v0, p5, v0

    .line 16
    .line 17
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->mTxPktBytesDiff:J

    .line 18
    .line 19
    iget-wide v0, p0, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->mRxPktBytes:J

    .line 20
    .line 21
    sub-long v0, p7, v0

    .line 22
    .line 23
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->mRxPktBytesDiff:J

    .line 24
    .line 25
    iget-wide v0, p0, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->mLastTime:J

    .line 26
    .line 27
    sub-long v0, p9, v0

    .line 28
    .line 29
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->mTrafficTime:J

    .line 30
    .line 31
    iput-wide p1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->mTxPktCnt:J

    .line 32
    .line 33
    iput-wide p3, p0, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->mRxPktCnt:J

    .line 34
    .line 35
    iput-wide p5, p0, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->mTxPktBytes:J

    .line 36
    .line 37
    iput-wide p7, p0, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->mRxPktBytes:J

    .line 38
    .line 39
    iput-wide p9, p0, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->mLastTime:J

    .line 40
    .line 41
    return-void
.end method

.method public setUsageStatsPackage(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->mUsageStatsPackageName:Ljava/lang/String;

    .line 2
    .line 3
    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->mPackageNameChangFlag:Z

    .line 5
    .line 6
    return-void
.end method
