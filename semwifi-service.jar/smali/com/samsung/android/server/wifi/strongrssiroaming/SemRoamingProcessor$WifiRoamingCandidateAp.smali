.class public Lcom/samsung/android/server/wifi/strongrssiroaming/SemRoamingProcessor$WifiRoamingCandidateAp;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/strongrssiroaming/SemRoamingProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WifiRoamingCandidateAp"
.end annotation


# instance fields
.field private final mBssid:Ljava/lang/String;

.field private final mChannelUtilization:I

.field private final mChannelWidth:I

.field private final mFrequency:I

.field private final mLog:Lcom/samsung/android/server/wifi/util/LogUtils;

.field private final mMaxNumberSpatialStreams:I

.field private final mPredictedThroughputMbps:I

.field private final mScanRssi:I


# direct methods
.method static bridge synthetic -$$Nest$fgetmBssid(Lcom/samsung/android/server/wifi/strongrssiroaming/SemRoamingProcessor$WifiRoamingCandidateAp;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemRoamingProcessor$WifiRoamingCandidateAp;->mBssid:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmFrequency(Lcom/samsung/android/server/wifi/strongrssiroaming/SemRoamingProcessor$WifiRoamingCandidateAp;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemRoamingProcessor$WifiRoamingCandidateAp;->mFrequency:I

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmScanRssi(Lcom/samsung/android/server/wifi/strongrssiroaming/SemRoamingProcessor$WifiRoamingCandidateAp;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemRoamingProcessor$WifiRoamingCandidateAp;->mScanRssi:I

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$mgetPredictedThroughputMbps(Lcom/samsung/android/server/wifi/strongrssiroaming/SemRoamingProcessor$WifiRoamingCandidateAp;)I
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/strongrssiroaming/SemRoamingProcessor$WifiRoamingCandidateAp;->getPredictedThroughputMbps()I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method constructor <init>(Ljava/lang/String;IIIIII)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/samsung/android/server/wifi/util/LogUtils;

    .line 5
    .line 6
    invoke-direct {v0}, Lcom/samsung/android/server/wifi/util/LogUtils;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemRoamingProcessor$WifiRoamingCandidateAp;->mLog:Lcom/samsung/android/server/wifi/util/LogUtils;

    .line 10
    .line 11
    iput-object p1, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemRoamingProcessor$WifiRoamingCandidateAp;->mBssid:Ljava/lang/String;

    .line 12
    .line 13
    iput p2, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemRoamingProcessor$WifiRoamingCandidateAp;->mScanRssi:I

    .line 14
    .line 15
    iput p3, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemRoamingProcessor$WifiRoamingCandidateAp;->mFrequency:I

    .line 16
    .line 17
    iput p4, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemRoamingProcessor$WifiRoamingCandidateAp;->mChannelWidth:I

    .line 18
    .line 19
    iput p5, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemRoamingProcessor$WifiRoamingCandidateAp;->mChannelUtilization:I

    .line 20
    .line 21
    iput p6, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemRoamingProcessor$WifiRoamingCandidateAp;->mMaxNumberSpatialStreams:I

    .line 22
    .line 23
    iput p7, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemRoamingProcessor$WifiRoamingCandidateAp;->mPredictedThroughputMbps:I

    .line 24
    .line 25
    return-void
.end method

.method private getPredictedThroughputMbps()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemRoamingProcessor$WifiRoamingCandidateAp;->mPredictedThroughputMbps:I

    .line 2
    .line 3
    return p0
.end method


# virtual methods
.method public getBssid()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemRoamingProcessor$WifiRoamingCandidateAp;->mBssid:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public toPrintableString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "bssid="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemRoamingProcessor$WifiRoamingCandidateAp;->mLog:Lcom/samsung/android/server/wifi/util/LogUtils;

    .line 9
    .line 10
    iget-object v2, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemRoamingProcessor$WifiRoamingCandidateAp;->mBssid:Ljava/lang/String;

    .line 11
    .line 12
    invoke-virtual {v1, v2}, Lcom/samsung/android/server/wifi/util/LogUtils;->getPrintableLog(Ljava/lang/String;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    const-string v1, " tp="

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    iget v1, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemRoamingProcessor$WifiRoamingCandidateAp;->mPredictedThroughputMbps:I

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    const-string v1, "mbps freq="

    .line 30
    .line 31
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    iget v1, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemRoamingProcessor$WifiRoamingCandidateAp;->mFrequency:I

    .line 35
    .line 36
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    const-string v1, " rssi="

    .line 40
    .line 41
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    iget v1, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemRoamingProcessor$WifiRoamingCandidateAp;->mScanRssi:I

    .line 45
    .line 46
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    const-string v1, " cu="

    .line 50
    .line 51
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    iget v1, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemRoamingProcessor$WifiRoamingCandidateAp;->mChannelUtilization:I

    .line 55
    .line 56
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    const-string v1, " cw="

    .line 60
    .line 61
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    iget v1, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemRoamingProcessor$WifiRoamingCandidateAp;->mChannelWidth:I

    .line 65
    .line 66
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    const-string v1, " ss="

    .line 70
    .line 71
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    iget p0, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemRoamingProcessor$WifiRoamingCandidateAp;->mMaxNumberSpatialStreams:I

    .line 75
    .line 76
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object p0

    .line 83
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "bssid="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemRoamingProcessor$WifiRoamingCandidateAp;->mBssid:Ljava/lang/String;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, " tp="

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget v1, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemRoamingProcessor$WifiRoamingCandidateAp;->mPredictedThroughputMbps:I

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, "mbps freq="

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget v1, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemRoamingProcessor$WifiRoamingCandidateAp;->mFrequency:I

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v1, " rssi="

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    iget v1, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemRoamingProcessor$WifiRoamingCandidateAp;->mScanRssi:I

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string v1, " cu="

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    iget v1, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemRoamingProcessor$WifiRoamingCandidateAp;->mChannelUtilization:I

    .line 49
    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    const-string v1, " cw="

    .line 54
    .line 55
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    iget v1, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemRoamingProcessor$WifiRoamingCandidateAp;->mChannelWidth:I

    .line 59
    .line 60
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    const-string v1, " ss="

    .line 64
    .line 65
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    iget p0, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemRoamingProcessor$WifiRoamingCandidateAp;->mMaxNumberSpatialStreams:I

    .line 69
    .line 70
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object p0

    .line 77
    return-object p0
.end method
