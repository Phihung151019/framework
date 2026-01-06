.class Lcom/samsung/android/server/wifi/SemApeService$LiveSession;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/SemApeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LiveSession"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/server/wifi/SemApeService$LiveSession$StatsType;
    }
.end annotation


# instance fields
.field private bandwidthLimitedSecs:I

.field private bandwidthUnlimitedSecs:I

.field private final packageName:Ljava/lang/String;

.field private final stats:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "[I>;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$-yoDmrwUxKD0zwk_d-0heNAZ4Yg(Lcom/samsung/android/server/wifi/SemApeService$LiveSession$StatsType;I[I)I
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/samsung/android/server/wifi/SemApeService$LiveSession;->lambda$std$4(Lcom/samsung/android/server/wifi/SemApeService$LiveSession$StatsType;I[I)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static synthetic $r8$lambda$0oyPNX3rS_i2Wme7NfY6D4GUpDw(Lcom/samsung/android/server/wifi/SemApeService$LiveSession$StatsType;[I)I
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/samsung/android/server/wifi/SemApeService$LiveSession;->lambda$max$2(Lcom/samsung/android/server/wifi/SemApeService$LiveSession$StatsType;[I)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static synthetic $r8$lambda$CmNiDh8Y7zXD4Nsi2tiZPanOCn4(Lcom/samsung/android/server/wifi/SemApeService$LiveSession$StatsType;[I)I
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/samsung/android/server/wifi/SemApeService$LiveSession;->lambda$avg$3(Lcom/samsung/android/server/wifi/SemApeService$LiveSession$StatsType;[I)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static synthetic $r8$lambda$JEI-PIkPAomAZIIjB7DJlhI0HS0(Lcom/samsung/android/server/wifi/SemApeService$LiveSession$StatsType;[I)I
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/samsung/android/server/wifi/SemApeService$LiveSession;->lambda$min$1(Lcom/samsung/android/server/wifi/SemApeService$LiveSession$StatsType;[I)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static synthetic $r8$lambda$O_A5wXBr7nE7THc_zt53JumJSro([I)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemApeService$LiveSession;->lambda$printDebug$0([I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$fgetbandwidthLimitedSecs(Lcom/samsung/android/server/wifi/SemApeService$LiveSession;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/server/wifi/SemApeService$LiveSession;->bandwidthLimitedSecs:I

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fgetbandwidthUnlimitedSecs(Lcom/samsung/android/server/wifi/SemApeService$LiveSession;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/server/wifi/SemApeService$LiveSession;->bandwidthUnlimitedSecs:I

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fgetpackageName(Lcom/samsung/android/server/wifi/SemApeService$LiveSession;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemApeService$LiveSession;->packageName:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$mappRxStats(Lcom/samsung/android/server/wifi/SemApeService$LiveSession;)Lcom/samsung/android/server/wifi/SemApeService$Session$Stats;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemApeService$LiveSession;->appRxStats()Lcom/samsung/android/server/wifi/SemApeService$Session$Stats;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method static bridge synthetic -$$Nest$mappTxStats(Lcom/samsung/android/server/wifi/SemApeService$LiveSession;)Lcom/samsung/android/server/wifi/SemApeService$Session$Stats;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemApeService$LiveSession;->appTxStats()Lcom/samsung/android/server/wifi/SemApeService$Session$Stats;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method static bridge synthetic -$$Nest$mbackgroundRxStats(Lcom/samsung/android/server/wifi/SemApeService$LiveSession;)Lcom/samsung/android/server/wifi/SemApeService$Session$Stats;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemApeService$LiveSession;->backgroundRxStats()Lcom/samsung/android/server/wifi/SemApeService$Session$Stats;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method static bridge synthetic -$$Nest$mbackgroundTxStats(Lcom/samsung/android/server/wifi/SemApeService$LiveSession;)Lcom/samsung/android/server/wifi/SemApeService$Session$Stats;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemApeService$LiveSession;->backgroundTxStats()Lcom/samsung/android/server/wifi/SemApeService$Session$Stats;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method static bridge synthetic -$$Nest$mbandwidthLimitStats(Lcom/samsung/android/server/wifi/SemApeService$LiveSession;)Lcom/samsung/android/server/wifi/SemApeService$Session$Stats;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemApeService$LiveSession;->bandwidthLimitStats()Lcom/samsung/android/server/wifi/SemApeService$Session$Stats;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgoogleEstimatedBandwidthRxStats(Lcom/samsung/android/server/wifi/SemApeService$LiveSession;)Lcom/samsung/android/server/wifi/SemApeService$Session$Stats;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemApeService$LiveSession;->googleEstimatedBandwidthRxStats()Lcom/samsung/android/server/wifi/SemApeService$Session$Stats;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgoogleEstimatedBandwidthTxStats(Lcom/samsung/android/server/wifi/SemApeService$LiveSession;)Lcom/samsung/android/server/wifi/SemApeService$Session$Stats;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemApeService$LiveSession;->googleEstimatedBandwidthTxStats()Lcom/samsung/android/server/wifi/SemApeService$Session$Stats;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method static bridge synthetic -$$Nest$mlinkSpeedRxStats(Lcom/samsung/android/server/wifi/SemApeService$LiveSession;)Lcom/samsung/android/server/wifi/SemApeService$Session$Stats;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemApeService$LiveSession;->linkSpeedRxStats()Lcom/samsung/android/server/wifi/SemApeService$Session$Stats;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method static bridge synthetic -$$Nest$mlinkSpeedTxStats(Lcom/samsung/android/server/wifi/SemApeService$LiveSession;)Lcom/samsung/android/server/wifi/SemApeService$Session$Stats;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemApeService$LiveSession;->linkSpeedTxStats()Lcom/samsung/android/server/wifi/SemApeService$Session$Stats;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method static bridge synthetic -$$Nest$mstreamingRxStats(Lcom/samsung/android/server/wifi/SemApeService$LiveSession;)Lcom/samsung/android/server/wifi/SemApeService$Session$Stats;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemApeService$LiveSession;->streamingRxStats()Lcom/samsung/android/server/wifi/SemApeService$Session$Stats;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/LinkedList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemApeService$LiveSession;->stats:Ljava/util/List;

    .line 10
    .line 11
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemApeService$LiveSession;->packageName:Ljava/lang/String;

    .line 12
    .line 13
    return-void
.end method

.method private appRxStats()Lcom/samsung/android/server/wifi/SemApeService$Session$Stats;
    .locals 5

    .line 1
    new-instance v0, Lcom/samsung/android/server/wifi/SemApeService$Session$Stats;

    .line 2
    .line 3
    sget-object v1, Lcom/samsung/android/server/wifi/SemApeService$LiveSession$StatsType;->APP_RX:Lcom/samsung/android/server/wifi/SemApeService$LiveSession$StatsType;

    .line 4
    .line 5
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/SemApeService$LiveSession;->min(Lcom/samsung/android/server/wifi/SemApeService$LiveSession$StatsType;)I

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/SemApeService$LiveSession;->max(Lcom/samsung/android/server/wifi/SemApeService$LiveSession$StatsType;)I

    .line 10
    .line 11
    .line 12
    move-result v3

    .line 13
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/SemApeService$LiveSession;->avg(Lcom/samsung/android/server/wifi/SemApeService$LiveSession$StatsType;)I

    .line 14
    .line 15
    .line 16
    move-result v4

    .line 17
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/SemApeService$LiveSession;->std(Lcom/samsung/android/server/wifi/SemApeService$LiveSession$StatsType;)I

    .line 18
    .line 19
    .line 20
    move-result p0

    .line 21
    invoke-direct {v0, v2, v3, v4, p0}, Lcom/samsung/android/server/wifi/SemApeService$Session$Stats;-><init>(IIII)V

    .line 22
    .line 23
    .line 24
    return-object v0
.end method

.method private appTxStats()Lcom/samsung/android/server/wifi/SemApeService$Session$Stats;
    .locals 5

    .line 1
    new-instance v0, Lcom/samsung/android/server/wifi/SemApeService$Session$Stats;

    .line 2
    .line 3
    sget-object v1, Lcom/samsung/android/server/wifi/SemApeService$LiveSession$StatsType;->APP_TX:Lcom/samsung/android/server/wifi/SemApeService$LiveSession$StatsType;

    .line 4
    .line 5
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/SemApeService$LiveSession;->min(Lcom/samsung/android/server/wifi/SemApeService$LiveSession$StatsType;)I

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/SemApeService$LiveSession;->max(Lcom/samsung/android/server/wifi/SemApeService$LiveSession$StatsType;)I

    .line 10
    .line 11
    .line 12
    move-result v3

    .line 13
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/SemApeService$LiveSession;->avg(Lcom/samsung/android/server/wifi/SemApeService$LiveSession$StatsType;)I

    .line 14
    .line 15
    .line 16
    move-result v4

    .line 17
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/SemApeService$LiveSession;->std(Lcom/samsung/android/server/wifi/SemApeService$LiveSession$StatsType;)I

    .line 18
    .line 19
    .line 20
    move-result p0

    .line 21
    invoke-direct {v0, v2, v3, v4, p0}, Lcom/samsung/android/server/wifi/SemApeService$Session$Stats;-><init>(IIII)V

    .line 22
    .line 23
    .line 24
    return-object v0
.end method

.method private avg(Lcom/samsung/android/server/wifi/SemApeService$LiveSession$StatsType;)I
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemApeService$LiveSession;->stats:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    new-instance v0, Lcom/samsung/android/server/wifi/SemApeService$LiveSession$$ExternalSyntheticLambda0;

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    invoke-direct {v0, p1, v1}, Lcom/samsung/android/server/wifi/SemApeService$LiveSession$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/server/wifi/SemApeService$LiveSession$StatsType;I)V

    .line 11
    .line 12
    .line 13
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    invoke-interface {p0}, Ljava/util/stream/IntStream;->average()Ljava/util/OptionalDouble;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    const-wide/16 v0, 0x0

    .line 22
    .line 23
    invoke-virtual {p0, v0, v1}, Ljava/util/OptionalDouble;->orElse(D)D

    .line 24
    .line 25
    .line 26
    move-result-wide p0

    .line 27
    double-to-int p0, p0

    .line 28
    return p0
.end method

.method private backgroundRxStats()Lcom/samsung/android/server/wifi/SemApeService$Session$Stats;
    .locals 5

    .line 1
    new-instance v0, Lcom/samsung/android/server/wifi/SemApeService$Session$Stats;

    .line 2
    .line 3
    sget-object v1, Lcom/samsung/android/server/wifi/SemApeService$LiveSession$StatsType;->BACKGROUND_RX:Lcom/samsung/android/server/wifi/SemApeService$LiveSession$StatsType;

    .line 4
    .line 5
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/SemApeService$LiveSession;->min(Lcom/samsung/android/server/wifi/SemApeService$LiveSession$StatsType;)I

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/SemApeService$LiveSession;->max(Lcom/samsung/android/server/wifi/SemApeService$LiveSession$StatsType;)I

    .line 10
    .line 11
    .line 12
    move-result v3

    .line 13
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/SemApeService$LiveSession;->avg(Lcom/samsung/android/server/wifi/SemApeService$LiveSession$StatsType;)I

    .line 14
    .line 15
    .line 16
    move-result v4

    .line 17
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/SemApeService$LiveSession;->std(Lcom/samsung/android/server/wifi/SemApeService$LiveSession$StatsType;)I

    .line 18
    .line 19
    .line 20
    move-result p0

    .line 21
    invoke-direct {v0, v2, v3, v4, p0}, Lcom/samsung/android/server/wifi/SemApeService$Session$Stats;-><init>(IIII)V

    .line 22
    .line 23
    .line 24
    return-object v0
.end method

.method private backgroundTxStats()Lcom/samsung/android/server/wifi/SemApeService$Session$Stats;
    .locals 5

    .line 1
    new-instance v0, Lcom/samsung/android/server/wifi/SemApeService$Session$Stats;

    .line 2
    .line 3
    sget-object v1, Lcom/samsung/android/server/wifi/SemApeService$LiveSession$StatsType;->BACKGROUND_TX:Lcom/samsung/android/server/wifi/SemApeService$LiveSession$StatsType;

    .line 4
    .line 5
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/SemApeService$LiveSession;->min(Lcom/samsung/android/server/wifi/SemApeService$LiveSession$StatsType;)I

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/SemApeService$LiveSession;->max(Lcom/samsung/android/server/wifi/SemApeService$LiveSession$StatsType;)I

    .line 10
    .line 11
    .line 12
    move-result v3

    .line 13
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/SemApeService$LiveSession;->avg(Lcom/samsung/android/server/wifi/SemApeService$LiveSession$StatsType;)I

    .line 14
    .line 15
    .line 16
    move-result v4

    .line 17
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/SemApeService$LiveSession;->std(Lcom/samsung/android/server/wifi/SemApeService$LiveSession$StatsType;)I

    .line 18
    .line 19
    .line 20
    move-result p0

    .line 21
    invoke-direct {v0, v2, v3, v4, p0}, Lcom/samsung/android/server/wifi/SemApeService$Session$Stats;-><init>(IIII)V

    .line 22
    .line 23
    .line 24
    return-object v0
.end method

.method private bandwidthLimitStats()Lcom/samsung/android/server/wifi/SemApeService$Session$Stats;
    .locals 5

    .line 1
    new-instance v0, Lcom/samsung/android/server/wifi/SemApeService$Session$Stats;

    .line 2
    .line 3
    sget-object v1, Lcom/samsung/android/server/wifi/SemApeService$LiveSession$StatsType;->BANDWIDTH_LIMIT:Lcom/samsung/android/server/wifi/SemApeService$LiveSession$StatsType;

    .line 4
    .line 5
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/SemApeService$LiveSession;->min(Lcom/samsung/android/server/wifi/SemApeService$LiveSession$StatsType;)I

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/SemApeService$LiveSession;->max(Lcom/samsung/android/server/wifi/SemApeService$LiveSession$StatsType;)I

    .line 10
    .line 11
    .line 12
    move-result v3

    .line 13
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/SemApeService$LiveSession;->avg(Lcom/samsung/android/server/wifi/SemApeService$LiveSession$StatsType;)I

    .line 14
    .line 15
    .line 16
    move-result v4

    .line 17
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/SemApeService$LiveSession;->std(Lcom/samsung/android/server/wifi/SemApeService$LiveSession$StatsType;)I

    .line 18
    .line 19
    .line 20
    move-result p0

    .line 21
    invoke-direct {v0, v2, v3, v4, p0}, Lcom/samsung/android/server/wifi/SemApeService$Session$Stats;-><init>(IIII)V

    .line 22
    .line 23
    .line 24
    return-object v0
.end method

.method private googleEstimatedBandwidthRxStats()Lcom/samsung/android/server/wifi/SemApeService$Session$Stats;
    .locals 5

    .line 1
    new-instance v0, Lcom/samsung/android/server/wifi/SemApeService$Session$Stats;

    .line 2
    .line 3
    sget-object v1, Lcom/samsung/android/server/wifi/SemApeService$LiveSession$StatsType;->GOOGLE_ESTIMATED_BANDWIDTH_RX:Lcom/samsung/android/server/wifi/SemApeService$LiveSession$StatsType;

    .line 4
    .line 5
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/SemApeService$LiveSession;->min(Lcom/samsung/android/server/wifi/SemApeService$LiveSession$StatsType;)I

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/SemApeService$LiveSession;->max(Lcom/samsung/android/server/wifi/SemApeService$LiveSession$StatsType;)I

    .line 10
    .line 11
    .line 12
    move-result v3

    .line 13
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/SemApeService$LiveSession;->avg(Lcom/samsung/android/server/wifi/SemApeService$LiveSession$StatsType;)I

    .line 14
    .line 15
    .line 16
    move-result v4

    .line 17
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/SemApeService$LiveSession;->std(Lcom/samsung/android/server/wifi/SemApeService$LiveSession$StatsType;)I

    .line 18
    .line 19
    .line 20
    move-result p0

    .line 21
    invoke-direct {v0, v2, v3, v4, p0}, Lcom/samsung/android/server/wifi/SemApeService$Session$Stats;-><init>(IIII)V

    .line 22
    .line 23
    .line 24
    return-object v0
.end method

.method private googleEstimatedBandwidthTxStats()Lcom/samsung/android/server/wifi/SemApeService$Session$Stats;
    .locals 5

    .line 1
    new-instance v0, Lcom/samsung/android/server/wifi/SemApeService$Session$Stats;

    .line 2
    .line 3
    sget-object v1, Lcom/samsung/android/server/wifi/SemApeService$LiveSession$StatsType;->GOOGLE_ESTIMATED_BANDWIDTH_TX:Lcom/samsung/android/server/wifi/SemApeService$LiveSession$StatsType;

    .line 4
    .line 5
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/SemApeService$LiveSession;->min(Lcom/samsung/android/server/wifi/SemApeService$LiveSession$StatsType;)I

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/SemApeService$LiveSession;->max(Lcom/samsung/android/server/wifi/SemApeService$LiveSession$StatsType;)I

    .line 10
    .line 11
    .line 12
    move-result v3

    .line 13
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/SemApeService$LiveSession;->avg(Lcom/samsung/android/server/wifi/SemApeService$LiveSession$StatsType;)I

    .line 14
    .line 15
    .line 16
    move-result v4

    .line 17
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/SemApeService$LiveSession;->std(Lcom/samsung/android/server/wifi/SemApeService$LiveSession$StatsType;)I

    .line 18
    .line 19
    .line 20
    move-result p0

    .line 21
    invoke-direct {v0, v2, v3, v4, p0}, Lcom/samsung/android/server/wifi/SemApeService$Session$Stats;-><init>(IIII)V

    .line 22
    .line 23
    .line 24
    return-object v0
.end method

.method private static synthetic lambda$avg$3(Lcom/samsung/android/server/wifi/SemApeService$LiveSession$StatsType;[I)I
    .locals 0

    .line 1
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    aget p0, p1, p0

    .line 6
    .line 7
    return p0
.end method

.method private static synthetic lambda$max$2(Lcom/samsung/android/server/wifi/SemApeService$LiveSession$StatsType;[I)I
    .locals 0

    .line 1
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    aget p0, p1, p0

    .line 6
    .line 7
    return p0
.end method

.method private static synthetic lambda$min$1(Lcom/samsung/android/server/wifi/SemApeService$LiveSession$StatsType;[I)I
    .locals 0

    .line 1
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    aget p0, p1, p0

    .line 6
    .line 7
    return p0
.end method

.method private static synthetic lambda$printDebug$0([I)V
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    array-length v1, p0

    .line 7
    const/4 v2, 0x0

    .line 8
    :goto_0
    if-ge v2, v1, :cond_0

    .line 9
    .line 10
    aget v3, p0, v2

    .line 11
    .line 12
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    const-string v3, " "

    .line 16
    .line 17
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    add-int/lit8 v2, v2, 0x1

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemApeService;->logd(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method private static synthetic lambda$std$4(Lcom/samsung/android/server/wifi/SemApeService$LiveSession$StatsType;I[I)I
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    aget v0, p2, v0

    .line 6
    .line 7
    sub-int/2addr v0, p1

    .line 8
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    .line 9
    .line 10
    .line 11
    move-result p0

    .line 12
    aget p0, p2, p0

    .line 13
    .line 14
    sub-int/2addr p0, p1

    .line 15
    mul-int/2addr p0, v0

    .line 16
    return p0
.end method

.method private linkSpeedRxStats()Lcom/samsung/android/server/wifi/SemApeService$Session$Stats;
    .locals 5

    .line 1
    new-instance v0, Lcom/samsung/android/server/wifi/SemApeService$Session$Stats;

    .line 2
    .line 3
    sget-object v1, Lcom/samsung/android/server/wifi/SemApeService$LiveSession$StatsType;->LINKSPEED_RX:Lcom/samsung/android/server/wifi/SemApeService$LiveSession$StatsType;

    .line 4
    .line 5
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/SemApeService$LiveSession;->min(Lcom/samsung/android/server/wifi/SemApeService$LiveSession$StatsType;)I

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/SemApeService$LiveSession;->max(Lcom/samsung/android/server/wifi/SemApeService$LiveSession$StatsType;)I

    .line 10
    .line 11
    .line 12
    move-result v3

    .line 13
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/SemApeService$LiveSession;->avg(Lcom/samsung/android/server/wifi/SemApeService$LiveSession$StatsType;)I

    .line 14
    .line 15
    .line 16
    move-result v4

    .line 17
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/SemApeService$LiveSession;->std(Lcom/samsung/android/server/wifi/SemApeService$LiveSession$StatsType;)I

    .line 18
    .line 19
    .line 20
    move-result p0

    .line 21
    invoke-direct {v0, v2, v3, v4, p0}, Lcom/samsung/android/server/wifi/SemApeService$Session$Stats;-><init>(IIII)V

    .line 22
    .line 23
    .line 24
    return-object v0
.end method

.method private linkSpeedTxStats()Lcom/samsung/android/server/wifi/SemApeService$Session$Stats;
    .locals 5

    .line 1
    new-instance v0, Lcom/samsung/android/server/wifi/SemApeService$Session$Stats;

    .line 2
    .line 3
    sget-object v1, Lcom/samsung/android/server/wifi/SemApeService$LiveSession$StatsType;->LINKSPEED_TX:Lcom/samsung/android/server/wifi/SemApeService$LiveSession$StatsType;

    .line 4
    .line 5
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/SemApeService$LiveSession;->min(Lcom/samsung/android/server/wifi/SemApeService$LiveSession$StatsType;)I

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/SemApeService$LiveSession;->max(Lcom/samsung/android/server/wifi/SemApeService$LiveSession$StatsType;)I

    .line 10
    .line 11
    .line 12
    move-result v3

    .line 13
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/SemApeService$LiveSession;->avg(Lcom/samsung/android/server/wifi/SemApeService$LiveSession$StatsType;)I

    .line 14
    .line 15
    .line 16
    move-result v4

    .line 17
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/SemApeService$LiveSession;->std(Lcom/samsung/android/server/wifi/SemApeService$LiveSession$StatsType;)I

    .line 18
    .line 19
    .line 20
    move-result p0

    .line 21
    invoke-direct {v0, v2, v3, v4, p0}, Lcom/samsung/android/server/wifi/SemApeService$Session$Stats;-><init>(IIII)V

    .line 22
    .line 23
    .line 24
    return-object v0
.end method

.method private max(Lcom/samsung/android/server/wifi/SemApeService$LiveSession$StatsType;)I
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemApeService$LiveSession;->stats:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    new-instance v0, Lcom/samsung/android/server/wifi/SemApeService$LiveSession$$ExternalSyntheticLambda0;

    .line 8
    .line 9
    const/4 v1, 0x2

    .line 10
    invoke-direct {v0, p1, v1}, Lcom/samsung/android/server/wifi/SemApeService$LiveSession$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/server/wifi/SemApeService$LiveSession$StatsType;I)V

    .line 11
    .line 12
    .line 13
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    invoke-interface {p0}, Ljava/util/stream/IntStream;->max()Ljava/util/OptionalInt;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    const/4 p1, -0x1

    .line 22
    invoke-virtual {p0, p1}, Ljava/util/OptionalInt;->orElse(I)I

    .line 23
    .line 24
    .line 25
    move-result p0

    .line 26
    return p0
.end method

.method private min(Lcom/samsung/android/server/wifi/SemApeService$LiveSession$StatsType;)I
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemApeService$LiveSession;->stats:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    new-instance v0, Lcom/samsung/android/server/wifi/SemApeService$LiveSession$$ExternalSyntheticLambda0;

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    invoke-direct {v0, p1, v1}, Lcom/samsung/android/server/wifi/SemApeService$LiveSession$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/server/wifi/SemApeService$LiveSession$StatsType;I)V

    .line 11
    .line 12
    .line 13
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    invoke-interface {p0}, Ljava/util/stream/IntStream;->min()Ljava/util/OptionalInt;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    const/4 p1, -0x1

    .line 22
    invoke-virtual {p0, p1}, Ljava/util/OptionalInt;->orElse(I)I

    .line 23
    .line 24
    .line 25
    move-result p0

    .line 26
    return p0
.end method

.method private std(Lcom/samsung/android/server/wifi/SemApeService$LiveSession$StatsType;)I
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemApeService$LiveSession;->avg(Lcom/samsung/android/server/wifi/SemApeService$LiveSession$StatsType;)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemApeService$LiveSession;->stats:Ljava/util/List;

    .line 6
    .line 7
    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    new-instance v1, Lcom/samsung/android/server/wifi/SemApeService$LiveSession$$ExternalSyntheticLambda4;

    .line 12
    .line 13
    invoke-direct {v1, p1, v0}, Lcom/samsung/android/server/wifi/SemApeService$LiveSession$$ExternalSyntheticLambda4;-><init>(Lcom/samsung/android/server/wifi/SemApeService$LiveSession$StatsType;I)V

    .line 14
    .line 15
    .line 16
    invoke-interface {p0, v1}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    invoke-interface {p0}, Ljava/util/stream/IntStream;->average()Ljava/util/OptionalDouble;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    const-wide/16 v0, 0x0

    .line 25
    .line 26
    invoke-virtual {p0, v0, v1}, Ljava/util/OptionalDouble;->orElse(D)D

    .line 27
    .line 28
    .line 29
    move-result-wide p0

    .line 30
    invoke-static {p0, p1}, Ljava/lang/Math;->sqrt(D)D

    .line 31
    .line 32
    .line 33
    move-result-wide p0

    .line 34
    double-to-int p0, p0

    .line 35
    return p0
.end method

.method private streamingRxStats()Lcom/samsung/android/server/wifi/SemApeService$Session$Stats;
    .locals 5

    .line 1
    new-instance v0, Lcom/samsung/android/server/wifi/SemApeService$Session$Stats;

    .line 2
    .line 3
    sget-object v1, Lcom/samsung/android/server/wifi/SemApeService$LiveSession$StatsType;->STREAMING_RX:Lcom/samsung/android/server/wifi/SemApeService$LiveSession$StatsType;

    .line 4
    .line 5
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/SemApeService$LiveSession;->min(Lcom/samsung/android/server/wifi/SemApeService$LiveSession$StatsType;)I

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/SemApeService$LiveSession;->max(Lcom/samsung/android/server/wifi/SemApeService$LiveSession$StatsType;)I

    .line 10
    .line 11
    .line 12
    move-result v3

    .line 13
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/SemApeService$LiveSession;->avg(Lcom/samsung/android/server/wifi/SemApeService$LiveSession$StatsType;)I

    .line 14
    .line 15
    .line 16
    move-result v4

    .line 17
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/SemApeService$LiveSession;->std(Lcom/samsung/android/server/wifi/SemApeService$LiveSession$StatsType;)I

    .line 18
    .line 19
    .line 20
    move-result p0

    .line 21
    invoke-direct {v0, v2, v3, v4, p0}, Lcom/samsung/android/server/wifi/SemApeService$Session$Stats;-><init>(IIII)V

    .line 22
    .line 23
    .line 24
    return-object v0
.end method


# virtual methods
.method getTotalSeconds()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/samsung/android/server/wifi/SemApeService$LiveSession;->bandwidthLimitedSecs:I

    .line 2
    .line 3
    iget p0, p0, Lcom/samsung/android/server/wifi/SemApeService$LiveSession;->bandwidthUnlimitedSecs:I

    .line 4
    .line 5
    add-int/2addr v0, p0

    .line 6
    return v0
.end method

.method printDebug()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "Session Time: bandwidthLimitedSecs="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget v1, p0, Lcom/samsung/android/server/wifi/SemApeService$LiveSession;->bandwidthLimitedSecs:I

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, " bandwidthUnlimitedSecs="

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget v1, p0, Lcom/samsung/android/server/wifi/SemApeService$LiveSession;->bandwidthUnlimitedSecs:I

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemApeService;->logd(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    const-string v0, "appRxKbps appTxKbps backgroundRxKbps backgroundTxKbps linkSpeedRxKbps linkSpeedTxKbps googleEstimatedBandwidthRxKbps googleEstimatedBandwidthTxKbps bandwidthLimitKbps streamingRxKbps"

    .line 31
    .line 32
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemApeService;->logd(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemApeService$LiveSession;->stats:Ljava/util/List;

    .line 36
    .line 37
    new-instance v0, Lcom/samsung/android/server/wifi/SemApeService$LiveSession$$ExternalSyntheticLambda2;

    .line 38
    .line 39
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 40
    .line 41
    .line 42
    invoke-interface {p0, v0}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 43
    .line 44
    .line 45
    return-void
.end method

.method update(IIIIIIIIIII)V
    .locals 11

    .line 1
    iget-object v10, p0, Lcom/samsung/android/server/wifi/SemApeService$LiveSession;->stats:Ljava/util/List;

    move v0, p1

    move v1, p2

    move v2, p3

    move v3, p4

    move/from16 v4, p5

    move/from16 v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    move/from16 v8, p9

    move/from16 v9, p11

    filled-new-array/range {v0 .. v9}, [I

    move-result-object p1

    invoke-interface {v10, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-lez v8, :cond_0

    move/from16 p1, p10

    mul-int/lit16 p1, p1, 0x400

    if-ge v8, p1, :cond_0

    .line 2
    iget p1, p0, Lcom/samsung/android/server/wifi/SemApeService$LiveSession;->bandwidthLimitedSecs:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/samsung/android/server/wifi/SemApeService$LiveSession;->bandwidthLimitedSecs:I

    return-void

    .line 3
    :cond_0
    iget p1, p0, Lcom/samsung/android/server/wifi/SemApeService$LiveSession;->bandwidthUnlimitedSecs:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/samsung/android/server/wifi/SemApeService$LiveSession;->bandwidthUnlimitedSecs:I

    return-void
.end method
