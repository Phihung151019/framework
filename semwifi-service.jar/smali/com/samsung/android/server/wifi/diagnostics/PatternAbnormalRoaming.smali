.class Lcom/samsung/android/server/wifi/diagnostics/PatternAbnormalRoaming;
.super Lcom/samsung/android/server/wifi/diagnostics/WifiIssuePattern;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# static fields
.field static final MAX_DURATION:J = 0x927c0L

.field static final MAX_TRIGGER_COUNT:I = 0x6

.field static final PDC3_CATEGORY_FREQ_ROAMING_TRIGGERED:I = 0x1

.field static final ROAMING_TYPE:Ljava/lang/String; = "dongle"

.field private static final TAG:Ljava/lang/String; = "PatternRoaming"

.field private static final VERSION:Ljava/lang/String; = "Rev01"


# instance fields
.field private lastReportData:Lcom/samsung/android/server/wifi/diagnostics/ReportData;

.field private mCategoryId:I

.field private mCount:I

.field private final roamingHistory:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$YNB3kXy3ZXlR8VbqjvP7HiC3_a8(Ljava/util/Set;Landroid/util/Pair;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/samsung/android/server/wifi/diagnostics/PatternAbnormalRoaming;->lambda$matches$1(Ljava/util/Set;Landroid/util/Pair;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic $r8$lambda$pbR2oS6vfIGvJaGDT5YXP9N3550(JLandroid/util/Pair;)Z
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/samsung/android/server/wifi/diagnostics/PatternAbnormalRoaming;->lambda$removeOldHistory$0(JLandroid/util/Pair;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/diagnostics/WifiIssuePattern;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/samsung/android/server/wifi/diagnostics/PatternAbnormalRoaming;->roamingHistory:Ljava/util/List;

    .line 10
    .line 11
    return-void
.end method

.method private static synthetic lambda$matches$1(Ljava/util/Set;Landroid/util/Pair;)V
    .locals 0

    .line 1
    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p1, Ljava/lang/String;

    .line 4
    .line 5
    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method private static synthetic lambda$removeOldHistory$0(JLandroid/util/Pair;)Z
    .locals 2

    .line 1
    iget-object p2, p2, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p2, Ljava/lang/Long;

    .line 4
    .line 5
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    cmp-long p0, v0, p0

    .line 10
    .line 11
    if-gez p0, :cond_0

    .line 12
    .line 13
    const/4 p0, 0x1

    .line 14
    return p0

    .line 15
    :cond_0
    const/4 p0, 0x0

    .line 16
    return p0
.end method

.method private removeOldHistory()V
    .locals 4

    .line 1
    new-instance v0, Lcom/samsung/android/server/wifi/util/SemClock;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/samsung/android/server/wifi/util/SemClock;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/util/SemClock;->getWallClockMillis()J

    .line 7
    .line 8
    .line 9
    move-result-wide v0

    .line 10
    const-wide/32 v2, 0x927c0

    .line 11
    .line 12
    .line 13
    sub-long/2addr v0, v2

    .line 14
    iget-object p0, p0, Lcom/samsung/android/server/wifi/diagnostics/PatternAbnormalRoaming;->roamingHistory:Ljava/util/List;

    .line 15
    .line 16
    new-instance v2, Lcom/samsung/android/server/wifi/diagnostics/PatternAbnormalRoaming$$ExternalSyntheticLambda1;

    .line 17
    .line 18
    invoke-direct {v2, v0, v1}, Lcom/samsung/android/server/wifi/diagnostics/PatternAbnormalRoaming$$ExternalSyntheticLambda1;-><init>(J)V

    .line 19
    .line 20
    .line 21
    invoke-interface {p0, v2}, Ljava/util/List;->removeIf(Ljava/util/function/Predicate;)Z

    .line 22
    .line 23
    .line 24
    return-void
.end method


# virtual methods
.method public getAssociatedReportIds()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    const/4 p0, 0x3

    .line 2
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 3
    .line 4
    .line 5
    move-result-object p0

    .line 6
    const/16 v0, 0xb

    .line 7
    .line 8
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    filled-new-array {p0, v0}, [Ljava/lang/Integer;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    return-object p0
.end method

.method public getBigDataParams()Landroid/os/Bundle;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/diagnostics/PatternAbnormalRoaming;->lastReportData:Lcom/samsung/android/server/wifi/diagnostics/ReportData;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget v0, p0, Lcom/samsung/android/server/wifi/diagnostics/PatternAbnormalRoaming;->mCategoryId:I

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    new-instance v0, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc3Builder;

    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/diagnostics/PatternAbnormalRoaming;->getPatternId()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    iget v2, p0, Lcom/samsung/android/server/wifi/diagnostics/PatternAbnormalRoaming;->mCategoryId:I

    .line 17
    .line 18
    invoke-direct {v0, v1, v2}, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc3Builder;-><init>(Ljava/lang/String;I)V

    .line 19
    .line 20
    .line 21
    const-string v1, "dongle"

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc3Builder;->setRoamingType(Ljava/lang/String;)Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc3Builder;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    iget v1, p0, Lcom/samsung/android/server/wifi/diagnostics/PatternAbnormalRoaming;->mCount:I

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc3Builder;->setRoamingTriggerCount(I)Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc3Builder;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    const-string v1, "Rev01"

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc3Builder;->setVersion(Ljava/lang/String;)Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc3Builder;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    iget-object v1, p0, Lcom/samsung/android/server/wifi/diagnostics/PatternAbnormalRoaming;->lastReportData:Lcom/samsung/android/server/wifi/diagnostics/ReportData;

    .line 40
    .line 41
    const/16 v2, -0xc8

    .line 42
    .line 43
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    const-string v3, "rssi"

    .line 48
    .line 49
    invoke-static {v1, v3, v2}, Lcom/samsung/android/server/wifi/diagnostics/WifiIssuePattern;->getValue(Lcom/samsung/android/server/wifi/diagnostics/ReportData;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    check-cast v1, Ljava/lang/Integer;

    .line 54
    .line 55
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 56
    .line 57
    .line 58
    move-result v1

    .line 59
    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc3Builder;->setRoamingRssi(I)Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc3Builder;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    iget-object v1, p0, Lcom/samsung/android/server/wifi/diagnostics/PatternAbnormalRoaming;->lastReportData:Lcom/samsung/android/server/wifi/diagnostics/ReportData;

    .line 64
    .line 65
    const-string v2, "bssid"

    .line 66
    .line 67
    const-string v3, "unknown"

    .line 68
    .line 69
    invoke-static {v1, v2, v3}, Lcom/samsung/android/server/wifi/diagnostics/WifiIssuePattern;->getValue(Lcom/samsung/android/server/wifi/diagnostics/ReportData;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    check-cast v1, Ljava/lang/String;

    .line 74
    .line 75
    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc3Builder;->setBssid(Ljava/lang/String;)Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc3Builder;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    iget-object p0, p0, Lcom/samsung/android/server/wifi/diagnostics/PatternAbnormalRoaming;->lastReportData:Lcom/samsung/android/server/wifi/diagnostics/ReportData;

    .line 80
    .line 81
    const-string v1, "ssid"

    .line 82
    .line 83
    invoke-static {p0, v1, v3}, Lcom/samsung/android/server/wifi/diagnostics/WifiIssuePattern;->getValue(Lcom/samsung/android/server/wifi/diagnostics/ReportData;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object p0

    .line 87
    check-cast p0, Ljava/lang/String;

    .line 88
    .line 89
    invoke-virtual {v0, p0}, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc3Builder;->setSsid(Ljava/lang/String;)Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc3Builder;

    .line 90
    .line 91
    .line 92
    move-result-object p0

    .line 93
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc3Builder;->build()Landroid/os/Bundle;

    .line 94
    .line 95
    .line 96
    move-result-object p0

    .line 97
    return-object p0

    .line 98
    :cond_1
    :goto_0
    const/4 p0, 0x0

    .line 99
    return-object p0
.end method

.method public getPatternId()Ljava/lang/String;
    .locals 0

    .line 1
    const-string p0, "roaming"

    .line 2
    .line 3
    return-object p0
.end method

.method public isAssociated(Lcom/samsung/android/server/wifi/diagnostics/ReportData;)Z
    .locals 5

    .line 1
    iget v0, p1, Lcom/samsung/android/server/wifi/diagnostics/ReportData;->mReportId:I

    .line 2
    .line 3
    const/16 v1, 0xb

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    .line 8
    iget-object p0, p0, Lcom/samsung/android/server/wifi/diagnostics/PatternAbnormalRoaming;->roamingHistory:Ljava/util/List;

    .line 9
    .line 10
    invoke-interface {p0}, Ljava/util/List;->clear()V

    .line 11
    .line 12
    .line 13
    return v2

    .line 14
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/diagnostics/PatternAbnormalRoaming;->removeOldHistory()V

    .line 15
    .line 16
    .line 17
    const-string v0, "roaming_type"

    .line 18
    .line 19
    const-string v1, ""

    .line 20
    .line 21
    invoke-static {p1, v0, v1}, Lcom/samsung/android/server/wifi/diagnostics/WifiIssuePattern;->getValue(Lcom/samsung/android/server/wifi/diagnostics/ReportData;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    check-cast v0, Ljava/lang/String;

    .line 26
    .line 27
    const-string v3, "dongle"

    .line 28
    .line 29
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-nez v0, :cond_1

    .line 34
    .line 35
    return v2

    .line 36
    :cond_1
    const-string v0, "bssid"

    .line 37
    .line 38
    invoke-static {p1, v0, v1}, Lcom/samsung/android/server/wifi/diagnostics/WifiIssuePattern;->getValue(Lcom/samsung/android/server/wifi/diagnostics/ReportData;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    check-cast v0, Ljava/lang/String;

    .line 43
    .line 44
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    if-eqz v1, :cond_2

    .line 49
    .line 50
    return v2

    .line 51
    :cond_2
    iput-object p1, p0, Lcom/samsung/android/server/wifi/diagnostics/PatternAbnormalRoaming;->lastReportData:Lcom/samsung/android/server/wifi/diagnostics/ReportData;

    .line 52
    .line 53
    iget-object v1, p0, Lcom/samsung/android/server/wifi/diagnostics/PatternAbnormalRoaming;->roamingHistory:Ljava/util/List;

    .line 54
    .line 55
    iget-wide v3, p1, Lcom/samsung/android/server/wifi/diagnostics/ReportData;->mTime:J

    .line 56
    .line 57
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    invoke-static {p1, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    iget-object p0, p0, Lcom/samsung/android/server/wifi/diagnostics/PatternAbnormalRoaming;->roamingHistory:Ljava/util/List;

    .line 69
    .line 70
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 71
    .line 72
    .line 73
    move-result p0

    .line 74
    const/4 p1, 0x6

    .line 75
    if-lt p0, p1, :cond_3

    .line 76
    .line 77
    const/4 p0, 0x1

    .line 78
    return p0

    .line 79
    :cond_3
    return v2
.end method

.method public matches()Z
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/samsung/android/server/wifi/diagnostics/PatternAbnormalRoaming;->mCategoryId:I

    .line 3
    .line 4
    new-instance v1, Ljava/util/HashSet;

    .line 5
    .line 6
    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 7
    .line 8
    .line 9
    iget-object v2, p0, Lcom/samsung/android/server/wifi/diagnostics/PatternAbnormalRoaming;->roamingHistory:Ljava/util/List;

    .line 10
    .line 11
    new-instance v3, Lcom/samsung/android/server/wifi/diagnostics/PatternAbnormalRoaming$$ExternalSyntheticLambda0;

    .line 12
    .line 13
    invoke-direct {v3, v1}, Lcom/samsung/android/server/wifi/diagnostics/PatternAbnormalRoaming$$ExternalSyntheticLambda0;-><init>(Ljava/util/Set;)V

    .line 14
    .line 15
    .line 16
    invoke-interface {v2, v3}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1}, Ljava/util/HashSet;->size()I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    const/4 v2, 0x2

    .line 24
    if-ne v1, v2, :cond_0

    .line 25
    .line 26
    const/4 v0, 0x1

    .line 27
    iput v0, p0, Lcom/samsung/android/server/wifi/diagnostics/PatternAbnormalRoaming;->mCategoryId:I

    .line 28
    .line 29
    iget-object v1, p0, Lcom/samsung/android/server/wifi/diagnostics/PatternAbnormalRoaming;->roamingHistory:Ljava/util/List;

    .line 30
    .line 31
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    iput v1, p0, Lcom/samsung/android/server/wifi/diagnostics/PatternAbnormalRoaming;->mCount:I

    .line 36
    .line 37
    iget-object v1, p0, Lcom/samsung/android/server/wifi/diagnostics/PatternAbnormalRoaming;->roamingHistory:Ljava/util/List;

    .line 38
    .line 39
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 40
    .line 41
    .line 42
    new-instance v1, Ljava/lang/StringBuilder;

    .line 43
    .line 44
    const-string v2, "matched abnormal roaming issue cid: "

    .line 45
    .line 46
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    iget p0, p0, Lcom/samsung/android/server/wifi/diagnostics/PatternAbnormalRoaming;->mCategoryId:I

    .line 50
    .line 51
    const-string v2, "PatternRoaming"

    .line 52
    .line 53
    invoke-static {v2, p0, v1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/StringBuilder;)V

    .line 54
    .line 55
    .line 56
    :cond_0
    return v0
.end method
