.class public Lcom/samsung/android/server/wifi/SemUserConnectionSaLogging$SaLoggingStats;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/SemUserConnectionSaLogging;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SaLoggingStats"
.end annotation


# instance fields
.field public mConnectionCountAfterNotFoundNetwork:I

.field public mDisconnectCountAsCurrentDisabledNetwork:I

.field public mDisconnectCountAsCurrentMaybeHighScoredNetwork:I

.field public mDisconnectCountAsCurrentNoSeenNetwork:I

.field public mDisconnectCountAsCurrentNotAllowedNetwork:I

.field public mDisconnectCountAsPrevForcedUserConnect:I

.field public mDisconnectCountAsUnwantedCarrierNetwork:I

.field public mDisconnectCountAsUnwantedConnectChoiceNetwork:I

.field public mDisconnectCountAsUnwantedSilentRoaming:I

.field public mMaxNotFoundNetworkCount:I

.field public mNumOfDisconnectByUser:I

.field public mNumOfSaLoggingEvent:I

.field private mStatCreatedTime:J

.field public mTotalConnectionDuration:I

.field public mTotalManyAssocNetworkCount:I

.field public mTotalOverOneHourConnectionCount:I

.field public mTotalUserManualConnectCount:I


# direct methods
.method static bridge synthetic -$$Nest$fgetmStatCreatedTime(Lcom/samsung/android/server/wifi/SemUserConnectionSaLogging$SaLoggingStats;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/samsung/android/server/wifi/SemUserConnectionSaLogging$SaLoggingStats;->mStatCreatedTime:J

    .line 2
    .line 3
    return-wide v0
.end method

.method private constructor <init>()V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/server/wifi/SemUserConnectionSaLogging$SaLoggingStats;->mStatCreatedTime:J

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lcom/samsung/android/server/wifi/SemUserConnectionSaLogging$SaLoggingStats;->mNumOfSaLoggingEvent:I

    .line 5
    iput v0, p0, Lcom/samsung/android/server/wifi/SemUserConnectionSaLogging$SaLoggingStats;->mTotalUserManualConnectCount:I

    .line 6
    iput v0, p0, Lcom/samsung/android/server/wifi/SemUserConnectionSaLogging$SaLoggingStats;->mTotalOverOneHourConnectionCount:I

    .line 7
    iput v0, p0, Lcom/samsung/android/server/wifi/SemUserConnectionSaLogging$SaLoggingStats;->mTotalConnectionDuration:I

    .line 8
    iput v0, p0, Lcom/samsung/android/server/wifi/SemUserConnectionSaLogging$SaLoggingStats;->mMaxNotFoundNetworkCount:I

    .line 9
    iput v0, p0, Lcom/samsung/android/server/wifi/SemUserConnectionSaLogging$SaLoggingStats;->mTotalManyAssocNetworkCount:I

    .line 10
    iput v0, p0, Lcom/samsung/android/server/wifi/SemUserConnectionSaLogging$SaLoggingStats;->mNumOfDisconnectByUser:I

    .line 11
    iput v0, p0, Lcom/samsung/android/server/wifi/SemUserConnectionSaLogging$SaLoggingStats;->mConnectionCountAfterNotFoundNetwork:I

    .line 12
    iput v0, p0, Lcom/samsung/android/server/wifi/SemUserConnectionSaLogging$SaLoggingStats;->mDisconnectCountAsPrevForcedUserConnect:I

    .line 13
    iput v0, p0, Lcom/samsung/android/server/wifi/SemUserConnectionSaLogging$SaLoggingStats;->mDisconnectCountAsUnwantedConnectChoiceNetwork:I

    .line 14
    iput v0, p0, Lcom/samsung/android/server/wifi/SemUserConnectionSaLogging$SaLoggingStats;->mDisconnectCountAsUnwantedSilentRoaming:I

    .line 15
    iput v0, p0, Lcom/samsung/android/server/wifi/SemUserConnectionSaLogging$SaLoggingStats;->mDisconnectCountAsUnwantedCarrierNetwork:I

    .line 16
    iput v0, p0, Lcom/samsung/android/server/wifi/SemUserConnectionSaLogging$SaLoggingStats;->mDisconnectCountAsCurrentNoSeenNetwork:I

    .line 17
    iput v0, p0, Lcom/samsung/android/server/wifi/SemUserConnectionSaLogging$SaLoggingStats;->mDisconnectCountAsCurrentDisabledNetwork:I

    .line 18
    iput v0, p0, Lcom/samsung/android/server/wifi/SemUserConnectionSaLogging$SaLoggingStats;->mDisconnectCountAsCurrentNotAllowedNetwork:I

    .line 19
    iput v0, p0, Lcom/samsung/android/server/wifi/SemUserConnectionSaLogging$SaLoggingStats;->mDisconnectCountAsCurrentMaybeHighScoredNetwork:I

    return-void
.end method

.method synthetic constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemUserConnectionSaLogging$SaLoggingStats;-><init>()V

    return-void
.end method


# virtual methods
.method public isElapsed24h(J)Z
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/samsung/android/server/wifi/SemUserConnectionSaLogging$SaLoggingStats;->mStatCreatedTime:J

    .line 2
    .line 3
    sub-long/2addr p1, v0

    .line 4
    const-wide/32 v0, 0x5265c00

    .line 5
    .line 6
    .line 7
    cmp-long p0, p1, v0

    .line 8
    .line 9
    if-ltz p0, :cond_0

    .line 10
    .line 11
    const/4 p0, 0x1

    .line 12
    return p0

    .line 13
    :cond_0
    const/4 p0, 0x0

    .line 14
    return p0
.end method

.method public reset()V
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/SemUserConnectionSaLogging$SaLoggingStats;->mStatCreatedTime:J

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput v0, p0, Lcom/samsung/android/server/wifi/SemUserConnectionSaLogging$SaLoggingStats;->mNumOfSaLoggingEvent:I

    .line 9
    .line 10
    iput v0, p0, Lcom/samsung/android/server/wifi/SemUserConnectionSaLogging$SaLoggingStats;->mTotalUserManualConnectCount:I

    .line 11
    .line 12
    iput v0, p0, Lcom/samsung/android/server/wifi/SemUserConnectionSaLogging$SaLoggingStats;->mTotalOverOneHourConnectionCount:I

    .line 13
    .line 14
    iput v0, p0, Lcom/samsung/android/server/wifi/SemUserConnectionSaLogging$SaLoggingStats;->mTotalConnectionDuration:I

    .line 15
    .line 16
    iput v0, p0, Lcom/samsung/android/server/wifi/SemUserConnectionSaLogging$SaLoggingStats;->mMaxNotFoundNetworkCount:I

    .line 17
    .line 18
    iput v0, p0, Lcom/samsung/android/server/wifi/SemUserConnectionSaLogging$SaLoggingStats;->mTotalManyAssocNetworkCount:I

    .line 19
    .line 20
    iput v0, p0, Lcom/samsung/android/server/wifi/SemUserConnectionSaLogging$SaLoggingStats;->mNumOfDisconnectByUser:I

    .line 21
    .line 22
    iput v0, p0, Lcom/samsung/android/server/wifi/SemUserConnectionSaLogging$SaLoggingStats;->mConnectionCountAfterNotFoundNetwork:I

    .line 23
    .line 24
    iput v0, p0, Lcom/samsung/android/server/wifi/SemUserConnectionSaLogging$SaLoggingStats;->mDisconnectCountAsPrevForcedUserConnect:I

    .line 25
    .line 26
    iput v0, p0, Lcom/samsung/android/server/wifi/SemUserConnectionSaLogging$SaLoggingStats;->mDisconnectCountAsUnwantedConnectChoiceNetwork:I

    .line 27
    .line 28
    iput v0, p0, Lcom/samsung/android/server/wifi/SemUserConnectionSaLogging$SaLoggingStats;->mDisconnectCountAsUnwantedSilentRoaming:I

    .line 29
    .line 30
    iput v0, p0, Lcom/samsung/android/server/wifi/SemUserConnectionSaLogging$SaLoggingStats;->mDisconnectCountAsUnwantedCarrierNetwork:I

    .line 31
    .line 32
    iput v0, p0, Lcom/samsung/android/server/wifi/SemUserConnectionSaLogging$SaLoggingStats;->mDisconnectCountAsCurrentNoSeenNetwork:I

    .line 33
    .line 34
    iput v0, p0, Lcom/samsung/android/server/wifi/SemUserConnectionSaLogging$SaLoggingStats;->mDisconnectCountAsCurrentDisabledNetwork:I

    .line 35
    .line 36
    iput v0, p0, Lcom/samsung/android/server/wifi/SemUserConnectionSaLogging$SaLoggingStats;->mDisconnectCountAsCurrentNotAllowedNetwork:I

    .line 37
    .line 38
    iput v0, p0, Lcom/samsung/android/server/wifi/SemUserConnectionSaLogging$SaLoggingStats;->mDisconnectCountAsCurrentMaybeHighScoredNetwork:I

    .line 39
    .line 40
    return-void
.end method
