.class Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$SearchFavoriteNetworkState;
.super Lcom/android/internal/util/State;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SearchFavoriteNetworkState"
.end annotation


# static fields
.field private static final MAX_AVERAGE_TIME:J = 0x1b7740L

.field private static final MAX_COUNT_OF_ELAPSED_NUMBER:I = 0x40

.field private static final THRESHOLD_RATIO_FOR_AVERAGE_TIME_CALCULATION:I = 0xc8


# instance fields
.field private mAheadTimeForEstimatedArrivalTime:J

.field private mAverageTime:J

.field private mConfigKey:Ljava/lang/String;

.field private mEstimatedTimeOfArrival:J

.field private mForceAverageTime:J

.field private mForceTotalNumberOfAverageTime:I

.field mHiddenNetworks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/net/wifi/WifiScanner$ScanSettings$HiddenNetwork;",
            ">;"
        }
    .end annotation
.end field

.field private mIsFirstScanAfterScreenOn:Z

.field private mNextIntervalMs:J

.field mPnoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/net/wifi/WifiScanner$PnoSettings$PnoNetwork;",
            ">;"
        }
    .end annotation
.end field

.field private mPrevScanInterval:J

.field private mScanCount:I

.field private mStartAt:J

.field private mTotalNumberOfAverageTime:I

.field final synthetic this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;


# direct methods
.method public static synthetic $r8$lambda$v1z1urFknVcOZICoqJ0f2q56Ato(Ljava/util/List;Landroid/net/wifi/ScanResult;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$SearchFavoriteNetworkState;->lambda$setupPnoTargetNetworks$0(Ljava/util/List;Landroid/net/wifi/ScanResult;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmAheadTimeForEstimatedArrivalTime(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$SearchFavoriteNetworkState;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$SearchFavoriteNetworkState;->mAheadTimeForEstimatedArrivalTime:J

    .line 2
    .line 3
    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetmEstimatedTimeOfArrival(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$SearchFavoriteNetworkState;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$SearchFavoriteNetworkState;->mEstimatedTimeOfArrival:J

    .line 2
    .line 3
    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetmNextIntervalMs(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$SearchFavoriteNetworkState;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$SearchFavoriteNetworkState;->mNextIntervalMs:J

    .line 2
    .line 3
    return-wide v0
.end method

.method static bridge synthetic -$$Nest$mgetDurationForBigdata(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$SearchFavoriteNetworkState;)I
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$SearchFavoriteNetworkState;->getDurationForBigdata()I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method static bridge synthetic -$$Nest$mgetScanCountForBigdata(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$SearchFavoriteNetworkState;)I
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$SearchFavoriteNetworkState;->getScanCountForBigdata()I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method static bridge synthetic -$$Nest$msetForceAverageTime(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$SearchFavoriteNetworkState;J)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$SearchFavoriteNetworkState;->setForceAverageTime(J)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$msetForceTotalNumberOfAverage(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$SearchFavoriteNetworkState;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$SearchFavoriteNetworkState;->setForceTotalNumberOfAverage(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method constructor <init>(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$SearchFavoriteNetworkState;->this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 p1, 0x1

    .line 7
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$SearchFavoriteNetworkState;->mIsFirstScanAfterScreenOn:Z

    .line 8
    .line 9
    new-instance p1, Ljava/util/ArrayList;

    .line 10
    .line 11
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object p1, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$SearchFavoriteNetworkState;->mHiddenNetworks:Ljava/util/List;

    .line 15
    .line 16
    new-instance p1, Ljava/util/ArrayList;

    .line 17
    .line 18
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 19
    .line 20
    .line 21
    iput-object p1, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$SearchFavoriteNetworkState;->mPnoList:Ljava/util/List;

    .line 22
    .line 23
    return-void
.end method

.method private calculateAverageTime(J)V
    .locals 7

    .line 1
    iget-wide v0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$SearchFavoriteNetworkState;->mAverageTime:J

    .line 2
    .line 3
    iget v2, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$SearchFavoriteNetworkState;->mTotalNumberOfAverageTime:I

    .line 4
    .line 5
    int-to-long v3, v2

    .line 6
    mul-long/2addr v3, v0

    .line 7
    add-long/2addr v3, p1

    .line 8
    add-int/lit8 v2, v2, 0x1

    .line 9
    .line 10
    int-to-long p1, v2

    .line 11
    div-long/2addr v3, p1

    .line 12
    sub-long p1, v3, v0

    .line 13
    .line 14
    const-wide/32 v5, 0xea60

    .line 15
    .line 16
    .line 17
    cmp-long p1, p1, v5

    .line 18
    .line 19
    if-lez p1, :cond_0

    .line 20
    .line 21
    add-long v3, v0, v5

    .line 22
    .line 23
    :cond_0
    const-wide/32 p1, 0x1b7740

    .line 24
    .line 25
    .line 26
    cmp-long v0, v3, p1

    .line 27
    .line 28
    if-lez v0, :cond_1

    .line 29
    .line 30
    move-wide v3, p1

    .line 31
    :cond_1
    iput-wide v3, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$SearchFavoriteNetworkState;->mAverageTime:J

    .line 32
    .line 33
    return-void
.end method

.method private calculateElapsedTime()J
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$SearchFavoriteNetworkState;->this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->-$$Nest$fgetmClock(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)Lcom/samsung/android/server/wifi/util/SemClock;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/util/SemClock;->getElapsedSinceBootMillis()J

    .line 8
    .line 9
    .line 10
    move-result-wide v0

    .line 11
    iget-wide v2, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$SearchFavoriteNetworkState;->mStartAt:J

    .line 12
    .line 13
    sub-long/2addr v0, v2

    .line 14
    iget-wide v2, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$SearchFavoriteNetworkState;->mAverageTime:J

    .line 15
    .line 16
    const-wide/16 v4, 0x2

    .line 17
    .line 18
    mul-long/2addr v2, v4

    .line 19
    const-wide/16 v4, 0x0

    .line 20
    .line 21
    cmp-long p0, v2, v4

    .line 22
    .line 23
    if-eqz p0, :cond_0

    .line 24
    .line 25
    cmp-long p0, v0, v2

    .line 26
    .line 27
    if-lez p0, :cond_0

    .line 28
    .line 29
    return-wide v2

    .line 30
    :cond_0
    return-wide v0
.end method

.method private calculateEstimatedTimeOfArrival()J
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$SearchFavoriteNetworkState;->getInRangeConfigKey()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$SearchFavoriteNetworkState;->mConfigKey:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$SearchFavoriteNetworkState;->this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    .line 8
    .line 9
    invoke-static {v0}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->-$$Nest$fgetmFacade(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iget-object v1, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$SearchFavoriteNetworkState;->this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    .line 14
    .line 15
    invoke-static {v1}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->-$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)Landroid/content/Context;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    const-string v2, "sem_auto_wifi_average_time_to_favorite_ap"

    .line 20
    .line 21
    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->getSecureStringSetting(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    if-eqz v0, :cond_0

    .line 26
    .line 27
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    .line 28
    .line 29
    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    iget-object v0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$SearchFavoriteNetworkState;->mConfigKey:Ljava/lang/String;

    .line 33
    .line 34
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    if-nez v0, :cond_0

    .line 39
    .line 40
    iget-object v0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$SearchFavoriteNetworkState;->mConfigKey:Ljava/lang/String;

    .line 41
    .line 42
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    check-cast v0, Ljava/lang/String;

    .line 47
    .line 48
    const-string v1, ","

    .line 49
    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    const/4 v1, 0x0

    .line 55
    aget-object v1, v0, v1

    .line 56
    .line 57
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 58
    .line 59
    .line 60
    move-result-wide v1

    .line 61
    iput-wide v1, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$SearchFavoriteNetworkState;->mAverageTime:J

    .line 62
    .line 63
    const/4 v1, 0x1

    .line 64
    aget-object v0, v0, v1

    .line 65
    .line 66
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 67
    .line 68
    .line 69
    move-result v0

    .line 70
    iput v0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$SearchFavoriteNetworkState;->mTotalNumberOfAverageTime:I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    .line 72
    goto :goto_0

    .line 73
    :catch_0
    move-exception v0

    .line 74
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 75
    .line 76
    .line 77
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$SearchFavoriteNetworkState;->this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    .line 78
    .line 79
    invoke-static {v0}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->-$$Nest$fgetmManualGeofenceControl(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)Z

    .line 80
    .line 81
    .line 82
    move-result v0

    .line 83
    if-eqz v0, :cond_1

    .line 84
    .line 85
    iget-wide v0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$SearchFavoriteNetworkState;->mForceAverageTime:J

    .line 86
    .line 87
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$SearchFavoriteNetworkState;->mAverageTime:J

    .line 88
    .line 89
    iget v0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$SearchFavoriteNetworkState;->mForceTotalNumberOfAverageTime:I

    .line 90
    .line 91
    iput v0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$SearchFavoriteNetworkState;->mTotalNumberOfAverageTime:I

    .line 92
    .line 93
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 94
    .line 95
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 96
    .line 97
    .line 98
    iget-object v1, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$SearchFavoriteNetworkState;->this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    .line 99
    .line 100
    invoke-static {v1}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->-$$Nest$fgetmManualGeofenceControl(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)Z

    .line 101
    .line 102
    .line 103
    move-result v1

    .line 104
    if-eqz v1, :cond_2

    .line 105
    .line 106
    const-string v1, "[MANUAL_MODE] "

    .line 107
    .line 108
    goto :goto_1

    .line 109
    :cond_2
    const-string v1, ""

    .line 110
    .line 111
    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    const-string v1, "mAverageTime="

    .line 115
    .line 116
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    iget-wide v1, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$SearchFavoriteNetworkState;->mAverageTime:J

    .line 120
    .line 121
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    const-string v1, ", mTotalNumberOfAverageTime="

    .line 125
    .line 126
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    iget v1, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$SearchFavoriteNetworkState;->mTotalNumberOfAverageTime:I

    .line 130
    .line 131
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v0

    .line 138
    const-string v1, "AutoWifiController"

    .line 139
    .line 140
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    .line 142
    .line 143
    iget-wide v0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$SearchFavoriteNetworkState;->mStartAt:J

    .line 144
    .line 145
    iget-wide v2, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$SearchFavoriteNetworkState;->mAverageTime:J

    .line 146
    .line 147
    add-long/2addr v0, v2

    .line 148
    iget-wide v2, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$SearchFavoriteNetworkState;->mAheadTimeForEstimatedArrivalTime:J

    .line 149
    .line 150
    sub-long/2addr v0, v2

    .line 151
    return-wide v0
.end method

.method private calculateTotalNumberOfAverage()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$SearchFavoriteNetworkState;->mTotalNumberOfAverageTime:I

    .line 2
    .line 3
    const/16 v1, 0x40

    .line 4
    .line 5
    if-lt v0, v1, :cond_0

    .line 6
    .line 7
    const/16 v0, 0x3f

    .line 8
    .line 9
    iput v0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$SearchFavoriteNetworkState;->mTotalNumberOfAverageTime:I

    .line 10
    .line 11
    :cond_0
    iget v0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$SearchFavoriteNetworkState;->mTotalNumberOfAverageTime:I

    .line 12
    .line 13
    add-int/lit8 v0, v0, 0x1

    .line 14
    .line 15
    iput v0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$SearchFavoriteNetworkState;->mTotalNumberOfAverageTime:I

    .line 16
    .line 17
    return-void
.end method

.method private getDurationForBigdata()I
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$SearchFavoriteNetworkState;->this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->-$$Nest$fgetmClock(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)Lcom/samsung/android/server/wifi/util/SemClock;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/util/SemClock;->getElapsedSinceBootMillis()J

    .line 8
    .line 9
    .line 10
    move-result-wide v0

    .line 11
    iget-wide v2, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$SearchFavoriteNetworkState;->mStartAt:J

    .line 12
    .line 13
    sub-long/2addr v0, v2

    .line 14
    long-to-int p0, v0

    .line 15
    return p0
.end method

.method private getInRangeConfigKey()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$SearchFavoriteNetworkState;->this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->-$$Nest$mgetInRangedConfigKey(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)Ljava/util/Set;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Ljava/lang/String;

    .line 22
    .line 23
    iget-object v2, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$SearchFavoriteNetworkState;->this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    .line 24
    .line 25
    invoke-static {v2}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->-$$Nest$fgetmFavoriteNetworks(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)Ljava/util/Set;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    invoke-interface {v2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    if-eqz v2, :cond_0

    .line 34
    .line 35
    return-object v1

    .line 36
    :cond_1
    const/4 p0, 0x0

    .line 37
    return-object p0
.end method

.method private getNextIntervalMs()J
    .locals 10

    .line 1
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$SearchFavoriteNetworkState;->mIsFirstScanAfterScreenOn:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iput-boolean v1, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$SearchFavoriteNetworkState;->mIsFirstScanAfterScreenOn:Z

    .line 7
    .line 8
    const-wide/16 v0, 0x1f40

    .line 9
    .line 10
    return-wide v0

    .line 11
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$SearchFavoriteNetworkState;->this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    .line 12
    .line 13
    invoke-static {v0}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->-$$Nest$fgetmClock(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)Lcom/samsung/android/server/wifi/util/SemClock;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/util/SemClock;->getElapsedSinceBootMillis()J

    .line 18
    .line 19
    .line 20
    move-result-wide v2

    .line 21
    iget-wide v4, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$SearchFavoriteNetworkState;->mEstimatedTimeOfArrival:J

    .line 22
    .line 23
    :goto_0
    sget-object p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mPeriodicScanIntervals:[J

    .line 24
    .line 25
    array-length v0, p0

    .line 26
    const-wide/32 v6, 0x1f400

    .line 27
    .line 28
    .line 29
    if-ge v1, v0, :cond_3

    .line 30
    .line 31
    aget-wide v8, p0, v1

    .line 32
    .line 33
    add-long/2addr v4, v8

    .line 34
    cmp-long p0, v2, v4

    .line 35
    .line 36
    if-gez p0, :cond_2

    .line 37
    .line 38
    sub-long/2addr v4, v2

    .line 39
    cmp-long p0, v4, v6

    .line 40
    .line 41
    if-lez p0, :cond_1

    .line 42
    .line 43
    return-wide v6

    .line 44
    :cond_1
    return-wide v4

    .line 45
    :cond_2
    add-int/lit8 v1, v1, 0x1

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_3
    return-wide v6
.end method

.method private getScanCountForBigdata()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$SearchFavoriteNetworkState;->mScanCount:I

    .line 2
    .line 3
    return p0
.end method

.method private initAheadTimeForEstimatedArrivalTime()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$SearchFavoriteNetworkState;->this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->-$$Nest$fgetmFeature(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)Lcom/samsung/android/server/wifi/diagnostics/WifiFeatureController;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/diagnostics/WifiFeatureController;->getAutoWifiAheadTimeForEstimatedArrivalTime()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    const-wide/32 v1, 0xea60

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    int-to-long v1, v0

    .line 18
    const-wide/16 v3, 0x3e8

    .line 19
    .line 20
    mul-long/2addr v1, v3

    .line 21
    :goto_0
    iput-wide v1, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$SearchFavoriteNetworkState;->mAheadTimeForEstimatedArrivalTime:J

    .line 22
    .line 23
    const-string v1, "aheadTime="

    .line 24
    .line 25
    const-string v2, ", mAheadTimeForEstimatedArrivalTime="

    .line 26
    .line 27
    invoke-static {v1, v0, v2}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    iget-wide v1, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$SearchFavoriteNetworkState;->mAheadTimeForEstimatedArrivalTime:J

    .line 32
    .line 33
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    const-string v0, "AutoWifiController"

    .line 41
    .line 42
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    .line 44
    .line 45
    return-void
.end method

.method private static synthetic lambda$setupPnoTargetNetworks$0(Ljava/util/List;Landroid/net/wifi/ScanResult;)V
    .locals 0

    .line 1
    iget p1, p1, Landroid/net/wifi/ScanResult;->frequency:I

    .line 2
    .line 3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method private setForceAverageTime(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$SearchFavoriteNetworkState;->mForceAverageTime:J

    .line 2
    .line 3
    iput-wide p1, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$SearchFavoriteNetworkState;->mAverageTime:J

    .line 4
    .line 5
    return-void
.end method

.method private setForceTotalNumberOfAverage(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$SearchFavoriteNetworkState;->mForceTotalNumberOfAverageTime:I

    .line 2
    .line 3
    iput p1, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$SearchFavoriteNetworkState;->mTotalNumberOfAverageTime:I

    .line 4
    .line 5
    return-void
.end method

.method private setupHiddenNetworks()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$SearchFavoriteNetworkState;->mHiddenNetworks:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$SearchFavoriteNetworkState;->this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    .line 7
    .line 8
    invoke-static {v0}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->-$$Nest$mgetInRangedConfigKey(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)Ljava/util/Set;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    iget-object v1, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$SearchFavoriteNetworkState;->this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    .line 13
    .line 14
    invoke-static {v1}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->-$$Nest$fgetmFavoriteNetworks(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)Ljava/util/Set;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    if-eqz v2, :cond_2

    .line 27
    .line 28
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    check-cast v2, Ljava/lang/String;

    .line 33
    .line 34
    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    move-result v3

    .line 38
    if-nez v3, :cond_1

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_1
    iget-object v3, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$SearchFavoriteNetworkState;->this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    .line 42
    .line 43
    invoke-static {v3}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->-$$Nest$fgetmWifiConfigManager(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)Lcom/samsung/android/server/wifi/SemWifiConfigManager;

    .line 44
    .line 45
    .line 46
    move-result-object v3

    .line 47
    invoke-virtual {v3, v2}, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->getSavedNetwork(Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    if-eqz v2, :cond_0

    .line 52
    .line 53
    iget-boolean v3, v2, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    .line 54
    .line 55
    if-eqz v3, :cond_0

    .line 56
    .line 57
    iget-object v3, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$SearchFavoriteNetworkState;->mHiddenNetworks:Ljava/util/List;

    .line 58
    .line 59
    new-instance v4, Landroid/net/wifi/WifiScanner$ScanSettings$HiddenNetwork;

    .line 60
    .line 61
    iget-object v2, v2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 62
    .line 63
    invoke-direct {v4, v2}, Landroid/net/wifi/WifiScanner$ScanSettings$HiddenNetwork;-><init>(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 67
    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_2
    invoke-static {}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->-$$Nest$sfgetDBG_PRODUCT_DEV()Z

    .line 71
    .line 72
    .line 73
    move-result v0

    .line 74
    if-eqz v0, :cond_3

    .line 75
    .line 76
    new-instance v0, Ljava/lang/StringBuilder;

    .line 77
    .line 78
    const-string v1, "hidden network size: "

    .line 79
    .line 80
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    iget-object p0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$SearchFavoriteNetworkState;->mHiddenNetworks:Ljava/util/List;

    .line 84
    .line 85
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 86
    .line 87
    .line 88
    move-result p0

    .line 89
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object p0

    .line 96
    const-string v0, "AutoWifiController"

    .line 97
    .line 98
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    .line 100
    .line 101
    :cond_3
    return-void
.end method

.method private setupPnoTargetNetworks()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$SearchFavoriteNetworkState;->mPnoList:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$SearchFavoriteNetworkState;->this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    .line 7
    .line 8
    invoke-static {v0}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->-$$Nest$mgetInRangedConfigKey(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)Ljava/util/Set;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    new-instance v1, Ljava/util/HashSet;

    .line 13
    .line 14
    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 15
    .line 16
    .line 17
    iget-object v2, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$SearchFavoriteNetworkState;->this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    .line 18
    .line 19
    invoke-static {v2}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->-$$Nest$fgetmFavoriteNetworks(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)Ljava/util/Set;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 28
    .line 29
    .line 30
    move-result v3

    .line 31
    if-eqz v3, :cond_4

    .line 32
    .line 33
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    check-cast v3, Ljava/lang/String;

    .line 38
    .line 39
    invoke-interface {v0, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result v4

    .line 43
    if-nez v4, :cond_0

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_0
    iget-object v4, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$SearchFavoriteNetworkState;->this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    .line 47
    .line 48
    invoke-static {v4}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->-$$Nest$fgetmWifiConfigManager(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)Lcom/samsung/android/server/wifi/SemWifiConfigManager;

    .line 49
    .line 50
    .line 51
    move-result-object v4

    .line 52
    invoke-virtual {v4, v3}, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->getSavedNetwork(Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    .line 53
    .line 54
    .line 55
    move-result-object v4

    .line 56
    if-nez v4, :cond_1

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_1
    new-instance v5, Ljava/util/ArrayList;

    .line 60
    .line 61
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 62
    .line 63
    .line 64
    iget-object v6, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$SearchFavoriteNetworkState;->this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    .line 65
    .line 66
    invoke-static {v6}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->-$$Nest$fgetmScanPool(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)Lcom/samsung/android/server/wifi/util/ScanPool;

    .line 67
    .line 68
    .line 69
    move-result-object v6

    .line 70
    invoke-virtual {v6, v3}, Lcom/samsung/android/server/wifi/util/ScanPool;->getScanResults(Ljava/lang/String;)Ljava/util/Set;

    .line 71
    .line 72
    .line 73
    move-result-object v3

    .line 74
    new-instance v6, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$SearchFavoriteNetworkState$$ExternalSyntheticLambda0;

    .line 75
    .line 76
    invoke-direct {v6, v5}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$SearchFavoriteNetworkState$$ExternalSyntheticLambda0;-><init>(Ljava/util/List;)V

    .line 77
    .line 78
    .line 79
    invoke-interface {v3, v6}, Ljava/util/Set;->forEach(Ljava/util/function/Consumer;)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 83
    .line 84
    .line 85
    move-result v3

    .line 86
    new-array v3, v3, [I

    .line 87
    .line 88
    const/4 v6, 0x0

    .line 89
    :goto_1
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 90
    .line 91
    .line 92
    move-result v7

    .line 93
    if-ge v6, v7, :cond_2

    .line 94
    .line 95
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    move-result-object v7

    .line 99
    check-cast v7, Ljava/lang/Integer;

    .line 100
    .line 101
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    .line 102
    .line 103
    .line 104
    move-result v7

    .line 105
    aput v7, v3, v6

    .line 106
    .line 107
    add-int/lit8 v6, v6, 0x1

    .line 108
    .line 109
    goto :goto_1

    .line 110
    :cond_2
    invoke-static {v4, v3}, Lcom/samsung/android/server/wifi/autowifi/Scanner;->createPnoNetwork(Landroid/net/wifi/WifiConfiguration;[I)Landroid/net/wifi/WifiScanner$PnoSettings$PnoNetwork;

    .line 111
    .line 112
    .line 113
    move-result-object v3

    .line 114
    invoke-virtual {v1, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 115
    .line 116
    .line 117
    move-result v4

    .line 118
    if-eqz v4, :cond_3

    .line 119
    .line 120
    goto :goto_0

    .line 121
    :cond_3
    iget-object v4, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$SearchFavoriteNetworkState;->mPnoList:Ljava/util/List;

    .line 122
    .line 123
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 124
    .line 125
    .line 126
    invoke-virtual {v1, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 127
    .line 128
    .line 129
    goto :goto_0

    .line 130
    :cond_4
    return-void
.end method

.method private startPeriodicScan()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$SearchFavoriteNetworkState;->mHiddenNetworks:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$SearchFavoriteNetworkState;->this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->-$$Nest$fgetmScanner(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)Lcom/samsung/android/server/wifi/autowifi/Scanner;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/autowifi/Scanner;->startScan()V

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$SearchFavoriteNetworkState;->this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    .line 20
    .line 21
    invoke-static {v0}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->-$$Nest$fgetmScanner(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)Lcom/samsung/android/server/wifi/autowifi/Scanner;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    iget-object v1, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$SearchFavoriteNetworkState;->mHiddenNetworks:Ljava/util/List;

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/autowifi/Scanner;->startScan(Ljava/util/List;)V

    .line 28
    .line 29
    .line 30
    :goto_0
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$SearchFavoriteNetworkState;->getNextIntervalMs()J

    .line 31
    .line 32
    .line 33
    move-result-wide v6

    .line 34
    iput-wide v6, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$SearchFavoriteNetworkState;->mNextIntervalMs:J

    .line 35
    .line 36
    const-string v0, "getNextIntervalMs="

    .line 37
    .line 38
    invoke-static {v0, v6, v7}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;J)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    const-string v1, "AutoWifiController"

    .line 43
    .line 44
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    .line 46
    .line 47
    iget-object v2, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$SearchFavoriteNetworkState;->this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    .line 48
    .line 49
    iget-wide v0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$SearchFavoriteNetworkState;->mPrevScanInterval:J

    .line 50
    .line 51
    const-wide/16 v3, 0x3e8

    .line 52
    .line 53
    div-long/2addr v0, v3

    .line 54
    long-to-int v4, v0

    .line 55
    const/4 v5, 0x0

    .line 56
    const/16 v3, 0x9

    .line 57
    .line 58
    invoke-virtual/range {v2 .. v7}, Lcom/android/internal/util/StateMachine;->sendMessageDelayed(IIIJ)V

    .line 59
    .line 60
    .line 61
    iput-wide v6, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$SearchFavoriteNetworkState;->mPrevScanInterval:J

    .line 62
    .line 63
    return-void
.end method

.method private startPnoScan()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$SearchFavoriteNetworkState;->this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->-$$Nest$fgetmScanner(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)Lcom/samsung/android/server/wifi/autowifi/Scanner;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object p0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$SearchFavoriteNetworkState;->mPnoList:Ljava/util/List;

    .line 8
    .line 9
    invoke-virtual {v0, p0}, Lcom/samsung/android/server/wifi/autowifi/Scanner;->startDisconnectedPnoScan(Ljava/util/List;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method private startScan(Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$SearchFavoriteNetworkState;->stopScan()V

    .line 2
    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$SearchFavoriteNetworkState;->setupHiddenNetworks()V

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$SearchFavoriteNetworkState;->startPeriodicScan()V

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$SearchFavoriteNetworkState;->setupPnoTargetNetworks()V

    .line 14
    .line 15
    .line 16
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$SearchFavoriteNetworkState;->startPnoScan()V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method private stopPeriodicScan()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$SearchFavoriteNetworkState;->this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    .line 2
    .line 3
    const/16 v1, 0x9

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->access$400(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;I)V

    .line 6
    .line 7
    .line 8
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$SearchFavoriteNetworkState;->calculateEstimatedTimeOfArrival()J

    .line 9
    .line 10
    .line 11
    move-result-wide v0

    .line 12
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$SearchFavoriteNetworkState;->mEstimatedTimeOfArrival:J

    .line 13
    .line 14
    const-wide/16 v0, 0x0

    .line 15
    .line 16
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$SearchFavoriteNetworkState;->mPrevScanInterval:J

    .line 17
    .line 18
    return-void
.end method

.method private stopPnoScan()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$SearchFavoriteNetworkState;->this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    .line 2
    .line 3
    invoke-static {p0}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->-$$Nest$fgetmScanner(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)Lcom/samsung/android/server/wifi/autowifi/Scanner;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/autowifi/Scanner;->stopPnoScan()V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method private stopScan()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$SearchFavoriteNetworkState;->stopPeriodicScan()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$SearchFavoriteNetworkState;->stopPnoScan()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method private updateAverageTime()V
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$SearchFavoriteNetworkState;->calculateElapsedTime()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    invoke-direct {p0, v0, v1}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$SearchFavoriteNetworkState;->calculateAverageTime(J)V

    .line 6
    .line 7
    .line 8
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$SearchFavoriteNetworkState;->calculateTotalNumberOfAverage()V

    .line 9
    .line 10
    .line 11
    new-instance v2, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    const-string v3, "updateAverageTime - currentElapsedTime="

    .line 14
    .line 15
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    const-string v0, ", mAverageTime="

    .line 22
    .line 23
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    iget-wide v0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$SearchFavoriteNetworkState;->mAverageTime:J

    .line 27
    .line 28
    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    const-string v0, ", mTotalNumberOfAverageTime="

    .line 32
    .line 33
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    iget v0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$SearchFavoriteNetworkState;->mTotalNumberOfAverageTime:I

    .line 37
    .line 38
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    const-string v1, "AutoWifiController"

    .line 46
    .line 47
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    .line 49
    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    .line 51
    .line 52
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 53
    .line 54
    .line 55
    iget-wide v1, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$SearchFavoriteNetworkState;->mAverageTime:J

    .line 56
    .line 57
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    const-string v1, ","

    .line 61
    .line 62
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    iget v1, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$SearchFavoriteNetworkState;->mTotalNumberOfAverageTime:I

    .line 66
    .line 67
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    new-instance v1, Lorg/json/JSONObject;

    .line 75
    .line 76
    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 77
    .line 78
    .line 79
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$SearchFavoriteNetworkState;->mConfigKey:Ljava/lang/String;

    .line 80
    .line 81
    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    iget-object v1, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$SearchFavoriteNetworkState;->this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    .line 89
    .line 90
    invoke-static {v1}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->-$$Nest$fgetmFacade(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    .line 91
    .line 92
    .line 93
    move-result-object v1

    .line 94
    iget-object p0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$SearchFavoriteNetworkState;->this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    .line 95
    .line 96
    invoke-static {p0}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->-$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)Landroid/content/Context;

    .line 97
    .line 98
    .line 99
    move-result-object p0

    .line 100
    const-string v2, "sem_auto_wifi_average_time_to_favorite_ap"

    .line 101
    .line 102
    invoke-virtual {v1, p0, v2, v0}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->setSecureStringSetting(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    .line 104
    .line 105
    return-void

    .line 106
    :catch_0
    move-exception p0

    .line 107
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    .line 108
    .line 109
    .line 110
    return-void
.end method


# virtual methods
.method public enter()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$SearchFavoriteNetworkState;->this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->-$$Nest$fgetmClock(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)Lcom/samsung/android/server/wifi/util/SemClock;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/util/SemClock;->getElapsedSinceBootMillis()J

    .line 8
    .line 9
    .line 10
    move-result-wide v0

    .line 11
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$SearchFavoriteNetworkState;->mStartAt:J

    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    iput v0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$SearchFavoriteNetworkState;->mScanCount:I

    .line 15
    .line 16
    const-wide/16 v1, 0x0

    .line 17
    .line 18
    iput-wide v1, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$SearchFavoriteNetworkState;->mAverageTime:J

    .line 19
    .line 20
    iput v0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$SearchFavoriteNetworkState;->mTotalNumberOfAverageTime:I

    .line 21
    .line 22
    const/4 v0, 0x1

    .line 23
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$SearchFavoriteNetworkState;->mIsFirstScanAfterScreenOn:Z

    .line 24
    .line 25
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$SearchFavoriteNetworkState;->initAheadTimeForEstimatedArrivalTime()V

    .line 26
    .line 27
    .line 28
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$SearchFavoriteNetworkState;->calculateEstimatedTimeOfArrival()J

    .line 29
    .line 30
    .line 31
    move-result-wide v0

    .line 32
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$SearchFavoriteNetworkState;->mEstimatedTimeOfArrival:J

    .line 33
    .line 34
    new-instance v0, Ljava/lang/StringBuilder;

    .line 35
    .line 36
    const-string v1, "mStartAt="

    .line 37
    .line 38
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    iget-wide v1, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$SearchFavoriteNetworkState;->mStartAt:J

    .line 42
    .line 43
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    const-string v1, ", mEstimatedTimeOfArrival="

    .line 47
    .line 48
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    iget-wide v1, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$SearchFavoriteNetworkState;->mEstimatedTimeOfArrival:J

    .line 52
    .line 53
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    const-string v1, "AutoWifiController"

    .line 61
    .line 62
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    .line 64
    .line 65
    iget-object v0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$SearchFavoriteNetworkState;->this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    .line 66
    .line 67
    invoke-static {v0}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->-$$Nest$fgetmScanner(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)Lcom/samsung/android/server/wifi/autowifi/Scanner;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    iget-object v1, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$SearchFavoriteNetworkState;->this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    .line 72
    .line 73
    invoke-static {v1}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->-$$Nest$fgetmFavoriteNetworks(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)Ljava/util/Set;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    iget-object v2, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$SearchFavoriteNetworkState;->this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    .line 78
    .line 79
    iget-object v2, v2, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mScanListener:Lcom/samsung/android/server/wifi/autowifi/Scanner$Listener;

    .line 80
    .line 81
    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/server/wifi/autowifi/Scanner;->registerListener(Ljava/util/Set;Lcom/samsung/android/server/wifi/autowifi/Scanner$Listener;)V

    .line 82
    .line 83
    .line 84
    iget-object v0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$SearchFavoriteNetworkState;->this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    .line 85
    .line 86
    invoke-static {v0}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->-$$Nest$fgetmLastScreenState(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)Z

    .line 87
    .line 88
    .line 89
    move-result v0

    .line 90
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$SearchFavoriteNetworkState;->startScan(Z)V

    .line 91
    .line 92
    .line 93
    return-void
.end method

.method public exit()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$SearchFavoriteNetworkState;->stopScan()V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$SearchFavoriteNetworkState;->this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    .line 5
    .line 6
    invoke-static {p0}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->-$$Nest$fgetmScanner(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)Lcom/samsung/android/server/wifi/autowifi/Scanner;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/autowifi/Scanner;->unregisterListener()V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public getDebugLog()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, " - Average Time: "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-wide v1, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$SearchFavoriteNetworkState;->mAverageTime:J

    .line 9
    .line 10
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, "\n - Total Number Of Average Time: "

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget p0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$SearchFavoriteNetworkState;->mTotalNumberOfAverageTime:I

    .line 19
    .line 20
    const-string v1, "\n"

    .line 21
    .line 22
    invoke-static {v1, p0, v0}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/StringBuilder;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    return-object p0
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 4

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    .line 2
    .line 3
    const/4 v1, 0x7

    .line 4
    const/4 v2, 0x1

    .line 5
    if-eq v0, v1, :cond_6

    .line 6
    .line 7
    const/16 v1, 0x8

    .line 8
    .line 9
    if-eq v0, v1, :cond_5

    .line 10
    .line 11
    const/16 v1, 0x9

    .line 12
    .line 13
    if-eq v0, v1, :cond_4

    .line 14
    .line 15
    const/16 v1, 0x69

    .line 16
    .line 17
    const/4 v3, 0x0

    .line 18
    if-eq v0, v1, :cond_2

    .line 19
    .line 20
    packed-switch v0, :pswitch_data_0

    .line 21
    .line 22
    .line 23
    return v3

    .line 24
    :pswitch_0
    iget-object p1, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$SearchFavoriteNetworkState;->this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    .line 25
    .line 26
    invoke-static {p1}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->-$$Nest$fgetmWifiManagerProxy(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->isWifiEnabled()Z

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    if-eqz p1, :cond_0

    .line 35
    .line 36
    iget-object p1, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$SearchFavoriteNetworkState;->this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    .line 37
    .line 38
    invoke-static {p1}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->-$$Nest$fgetmAutoWifiStartedState(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)Lcom/android/internal/util/State;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    invoke-virtual {p1, v0}, Lcom/android/internal/util/StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    .line 43
    .line 44
    .line 45
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$SearchFavoriteNetworkState;->this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    .line 46
    .line 47
    invoke-static {p1}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->-$$Nest$mcheckAndEnableWifi(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)Z

    .line 48
    .line 49
    .line 50
    move-result p1

    .line 51
    if-eqz p1, :cond_1

    .line 52
    .line 53
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$SearchFavoriteNetworkState;->updateAverageTime()V

    .line 54
    .line 55
    .line 56
    iget-object p0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$SearchFavoriteNetworkState;->this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    .line 57
    .line 58
    invoke-static {p0, v2}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->-$$Nest$maddWifiOnOffHistory(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;Z)V

    .line 59
    .line 60
    .line 61
    return v2

    .line 62
    :pswitch_1
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 63
    .line 64
    if-ne p1, v2, :cond_1

    .line 65
    .line 66
    iget-object p0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$SearchFavoriteNetworkState;->this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    .line 67
    .line 68
    invoke-static {p0}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->-$$Nest$fgetmAutoWifiStartedState(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)Lcom/android/internal/util/State;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    invoke-virtual {p0, p1}, Lcom/android/internal/util/StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    .line 73
    .line 74
    .line 75
    :cond_1
    :pswitch_2
    return v2

    .line 76
    :cond_2
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 77
    .line 78
    if-ne p1, v2, :cond_3

    .line 79
    .line 80
    move v3, v2

    .line 81
    :cond_3
    iput-boolean v3, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$SearchFavoriteNetworkState;->mIsFirstScanAfterScreenOn:Z

    .line 82
    .line 83
    invoke-direct {p0, v3}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$SearchFavoriteNetworkState;->startScan(Z)V

    .line 84
    .line 85
    .line 86
    return v2

    .line 87
    :cond_4
    iget p1, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$SearchFavoriteNetworkState;->mScanCount:I

    .line 88
    .line 89
    add-int/2addr p1, v2

    .line 90
    iput p1, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$SearchFavoriteNetworkState;->mScanCount:I

    .line 91
    .line 92
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$SearchFavoriteNetworkState;->startPeriodicScan()V

    .line 93
    .line 94
    .line 95
    return v2

    .line 96
    :cond_5
    iget-object p0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$SearchFavoriteNetworkState;->this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    .line 97
    .line 98
    invoke-static {p0}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->-$$Nest$fgetmAutoWifiStartedState(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)Lcom/android/internal/util/State;

    .line 99
    .line 100
    .line 101
    move-result-object p1

    .line 102
    invoke-virtual {p0, p1}, Lcom/android/internal/util/StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    .line 103
    .line 104
    .line 105
    return v2

    .line 106
    :cond_6
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$SearchFavoriteNetworkState;->stopScan()V

    .line 107
    .line 108
    .line 109
    iget-object p1, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$SearchFavoriteNetworkState;->this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    .line 110
    .line 111
    invoke-static {p1}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->-$$Nest$fgetmLastScreenState(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)Z

    .line 112
    .line 113
    .line 114
    move-result p1

    .line 115
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$SearchFavoriteNetworkState;->startScan(Z)V

    .line 116
    .line 117
    .line 118
    return v2

    .line 119
    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
