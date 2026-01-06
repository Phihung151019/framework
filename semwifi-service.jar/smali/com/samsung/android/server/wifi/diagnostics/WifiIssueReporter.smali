.class public Lcom/samsung/android/server/wifi/diagnostics/WifiIssueReporter;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"

# interfaces
.implements Lcom/samsung/android/server/wifi/diagnostics/WifiIssueDetector$PatternMatchedListener;


# static fields
.field private static final DEFAULT_ACTION:Ljava/lang/String; = "com.sec.android.ISSUE_TRACKER_ACTION"

.field static final DEFAULT_NETWORK_ISSUE_COUNT:I = 0x3

.field static final DEFAULT_NETWORK_ISSUE_DURATION_MINUTES:I = 0xb4

.field private static final DEFAULT_PACKAGE_NAME:Ljava/lang/String; = "com.salab.issuetracker"

.field static final DEFAULT_SAME_ISSUE_IGNORING_DURATION_HOURS:I = 0xc

.field static final HOURS_MS:J = 0x36ee80L

.field private static final INVALID_DATA:I = -0x1

.field static final KEY_ACTION:Ljava/lang/String; = "action"

.field static final KEY_FILTERED_ASSOC_REJECT_STATUS_CODES:Ljava/lang/String; = "filteredAssociationRejectedStatusCodes"

.field static final KEY_FILTERED_DISCONNECT_REASON:Ljava/lang/String; = "filteredDisconnectReasons"

.field static final KEY_FILTERED_SSID_LIST:Ljava/lang/String; = "filteredSsids"

.field static final KEY_GATHERING_PATTERN_IDS:Ljava/lang/String; = "gatheringPatterns"

.field static final KEY_NETWORK_ISSUE_COUNT:Ljava/lang/String; = "countForIgnoringSameNetworkIssue"

.field static final KEY_NETWORK_ISSUE_DURATION_MINUTES:Ljava/lang/String; = "durationMinsForIgnoringSameNetworkIssue"

.field static final KEY_PACKAGE_NAME:Ljava/lang/String; = "packageName"

.field static final KEY_SAME_ISSUE_DURATION_HOURS:Ljava/lang/String; = "durationHoursForIgnoringSameIssue"

.field static final MINUTES_MS:J = 0xea60L

.field private static final TAG:Ljava/lang/String; = "SemWifi.IssueReporter"


# instance fields
.field private actionName:Ljava/lang/String;

.field private final clock:Lcom/samsung/android/server/wifi/util/SemClock;

.field private final context:Landroid/content/Context;

.field private countOfNetworkIssues:I

.field private durationOfIgnoringSameIssueMs:J

.field private durationOfNetworkIssueMs:J

.field private final filteredAssocRejectedStatusCodes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final filteredDisconnectReasons:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final filteredSsids:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final gatheringPatterns:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private isStarted:Z

.field private final issueDetector:Lcom/samsung/android/server/wifi/diagnostics/WifiIssueDetector;

.field private final lastNetworkIssueHistory:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/Long;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private final lastReportedHistory:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;

.field private final networkIssuePatternIds:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private targetPackageName:Ljava/lang/String;


# direct methods
.method public static synthetic $r8$lambda$2T1edvPBE4m-mPZDrX6wcL3LRxg(Lcom/samsung/android/server/wifi/diagnostics/WifiIssueReporter;JLjava/lang/Long;)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/server/wifi/diagnostics/WifiIssueReporter;->lambda$checkNetworkHistory$1(JLjava/lang/Long;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static synthetic $r8$lambda$HjgquTuoE9Os7ie45FpZ3sVf_UM(Lcom/samsung/android/server/wifi/diagnostics/WifiIssueReporter;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/diagnostics/WifiIssueReporter;->lambda$updateSettings$0(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/server/wifi/diagnostics/WifiIssueDetector;Lcom/samsung/android/server/wifi/util/SemClock;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/Object;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/samsung/android/server/wifi/diagnostics/WifiIssueReporter;->mLock:Ljava/lang/Object;

    .line 10
    .line 11
    iput-object p1, p0, Lcom/samsung/android/server/wifi/diagnostics/WifiIssueReporter;->context:Landroid/content/Context;

    .line 12
    .line 13
    iput-object p2, p0, Lcom/samsung/android/server/wifi/diagnostics/WifiIssueReporter;->issueDetector:Lcom/samsung/android/server/wifi/diagnostics/WifiIssueDetector;

    .line 14
    .line 15
    iput-object p3, p0, Lcom/samsung/android/server/wifi/diagnostics/WifiIssueReporter;->clock:Lcom/samsung/android/server/wifi/util/SemClock;

    .line 16
    .line 17
    new-instance p1, Ljava/util/HashSet;

    .line 18
    .line 19
    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    .line 20
    .line 21
    .line 22
    iput-object p1, p0, Lcom/samsung/android/server/wifi/diagnostics/WifiIssueReporter;->gatheringPatterns:Ljava/util/Set;

    .line 23
    .line 24
    new-instance p1, Ljava/util/HashMap;

    .line 25
    .line 26
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 27
    .line 28
    .line 29
    iput-object p1, p0, Lcom/samsung/android/server/wifi/diagnostics/WifiIssueReporter;->lastReportedHistory:Ljava/util/Map;

    .line 30
    .line 31
    new-instance p1, Ljava/util/HashMap;

    .line 32
    .line 33
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 34
    .line 35
    .line 36
    iput-object p1, p0, Lcom/samsung/android/server/wifi/diagnostics/WifiIssueReporter;->lastNetworkIssueHistory:Ljava/util/Map;

    .line 37
    .line 38
    new-instance p1, Ljava/util/HashSet;

    .line 39
    .line 40
    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    .line 41
    .line 42
    .line 43
    iput-object p1, p0, Lcom/samsung/android/server/wifi/diagnostics/WifiIssueReporter;->filteredSsids:Ljava/util/Set;

    .line 44
    .line 45
    new-instance p1, Ljava/util/HashSet;

    .line 46
    .line 47
    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    .line 48
    .line 49
    .line 50
    iput-object p1, p0, Lcom/samsung/android/server/wifi/diagnostics/WifiIssueReporter;->filteredDisconnectReasons:Ljava/util/Set;

    .line 51
    .line 52
    new-instance p1, Ljava/util/HashSet;

    .line 53
    .line 54
    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    .line 55
    .line 56
    .line 57
    iput-object p1, p0, Lcom/samsung/android/server/wifi/diagnostics/WifiIssueReporter;->filteredAssocRejectedStatusCodes:Ljava/util/Set;

    .line 58
    .line 59
    const-wide/32 p1, 0x2932e00

    .line 60
    .line 61
    .line 62
    iput-wide p1, p0, Lcom/samsung/android/server/wifi/diagnostics/WifiIssueReporter;->durationOfIgnoringSameIssueMs:J

    .line 63
    .line 64
    new-instance p1, Ljava/util/HashSet;

    .line 65
    .line 66
    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    .line 67
    .line 68
    .line 69
    iput-object p1, p0, Lcom/samsung/android/server/wifi/diagnostics/WifiIssueReporter;->networkIssuePatternIds:Ljava/util/Set;

    .line 70
    .line 71
    const-string p2, "connection"

    .line 72
    .line 73
    const-string p3, "dhcp"

    .line 74
    .line 75
    const-string v0, "ap"

    .line 76
    .line 77
    const-string v1, "disconnect"

    .line 78
    .line 79
    filled-new-array {v0, v1, p2, p3}, [Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object p2

    .line 83
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 84
    .line 85
    .line 86
    move-result-object p2

    .line 87
    invoke-interface {p1, p2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 88
    .line 89
    .line 90
    const-wide/32 p1, 0xa4cb80

    .line 91
    .line 92
    .line 93
    iput-wide p1, p0, Lcom/samsung/android/server/wifi/diagnostics/WifiIssueReporter;->durationOfNetworkIssueMs:J

    .line 94
    .line 95
    const/4 p1, 0x3

    .line 96
    iput p1, p0, Lcom/samsung/android/server/wifi/diagnostics/WifiIssueReporter;->countOfNetworkIssues:I

    .line 97
    .line 98
    const-string p1, "com.sec.android.ISSUE_TRACKER_ACTION"

    .line 99
    .line 100
    iput-object p1, p0, Lcom/samsung/android/server/wifi/diagnostics/WifiIssueReporter;->actionName:Ljava/lang/String;

    .line 101
    .line 102
    const-string p1, "com.salab.issuetracker"

    .line 103
    .line 104
    iput-object p1, p0, Lcom/samsung/android/server/wifi/diagnostics/WifiIssueReporter;->targetPackageName:Ljava/lang/String;

    .line 105
    .line 106
    return-void
.end method

.method private addHistory(Ljava/lang/String;J)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/diagnostics/WifiIssueReporter;->lastReportedHistory:Ljava/util/Map;

    .line 2
    .line 3
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method private broadcastToIssueTracker(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/samsung/android/server/wifi/diagnostics/WifiIssueReporter;->actionName:Ljava/lang/String;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lcom/samsung/android/server/wifi/diagnostics/WifiIssueReporter;->targetPackageName:Ljava/lang/String;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 11
    .line 12
    .line 13
    const-string v1, "ERRCODE"

    .line 14
    .line 15
    const/16 v2, -0x72

    .line 16
    .line 17
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 18
    .line 19
    .line 20
    const-string v1, "ERRPKG"

    .line 21
    .line 22
    const-string v2, "WIFI"

    .line 23
    .line 24
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 25
    .line 26
    .line 27
    const-string v1, "ERRNAME"

    .line 28
    .line 29
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 30
    .line 31
    .line 32
    const-string p1, "ERRMSG"

    .line 33
    .line 34
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 35
    .line 36
    .line 37
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/diagnostics/WifiIssueReporter;->context:Landroid/content/Context;

    .line 38
    .line 39
    sget-object p1, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    .line 40
    .line 41
    invoke-virtual {p0, v0, p1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    .line 43
    .line 44
    return-void

    .line 45
    :catch_0
    move-exception p0

    .line 46
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 47
    .line 48
    .line 49
    return-void
.end method

.method private checkFilter(Ljava/lang/String;Lcom/samsung/android/server/wifi/diagnostics/ReportData;)Z
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/diagnostics/WifiIssueReporter;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/server/wifi/diagnostics/WifiIssueReporter;->gatheringPatterns:Ljava/util/Set;

    .line 5
    .line 6
    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    const/4 v1, 0x0

    .line 11
    if-nez p1, :cond_0

    .line 12
    .line 13
    monitor-exit v0

    .line 14
    return v1

    .line 15
    :catchall_0
    move-exception p0

    .line 16
    goto :goto_1

    .line 17
    :cond_0
    iget-object p1, p2, Lcom/samsung/android/server/wifi/diagnostics/ReportData;->mData:Landroid/os/Bundle;

    .line 18
    .line 19
    const-string v2, "ssid"

    .line 20
    .line 21
    const-string v3, ""

    .line 22
    .line 23
    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    iget-object v2, p0, Lcom/samsung/android/server/wifi/diagnostics/WifiIssueReporter;->filteredSsids:Ljava/util/Set;

    .line 28
    .line 29
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 34
    .line 35
    .line 36
    move-result v3

    .line 37
    if-eqz v3, :cond_2

    .line 38
    .line 39
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    check-cast v3, Ljava/lang/String;

    .line 44
    .line 45
    if-eqz p1, :cond_1

    .line 46
    .line 47
    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 48
    .line 49
    .line 50
    move-result v3

    .line 51
    if-eqz v3, :cond_1

    .line 52
    .line 53
    monitor-exit v0

    .line 54
    return v1

    .line 55
    :cond_2
    iget-object p1, p2, Lcom/samsung/android/server/wifi/diagnostics/ReportData;->mData:Landroid/os/Bundle;

    .line 56
    .line 57
    const-string v2, "locallyGenerated"

    .line 58
    .line 59
    const/4 v3, -0x1

    .line 60
    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 61
    .line 62
    .line 63
    move-result p1

    .line 64
    iget-object v2, p2, Lcom/samsung/android/server/wifi/diagnostics/ReportData;->mData:Landroid/os/Bundle;

    .line 65
    .line 66
    const-string v4, "disconnectReason"

    .line 67
    .line 68
    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 69
    .line 70
    .line 71
    move-result v2

    .line 72
    if-eq p1, v3, :cond_4

    .line 73
    .line 74
    if-eq v2, v3, :cond_4

    .line 75
    .line 76
    if-nez p1, :cond_3

    .line 77
    .line 78
    goto :goto_0

    .line 79
    :cond_3
    mul-int/lit8 v2, v2, -0x1

    .line 80
    .line 81
    :goto_0
    iget-object p1, p0, Lcom/samsung/android/server/wifi/diagnostics/WifiIssueReporter;->filteredDisconnectReasons:Ljava/util/Set;

    .line 82
    .line 83
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 84
    .line 85
    .line 86
    move-result-object v2

    .line 87
    invoke-interface {p1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 88
    .line 89
    .line 90
    move-result p1

    .line 91
    if-eqz p1, :cond_4

    .line 92
    .line 93
    monitor-exit v0

    .line 94
    return v1

    .line 95
    :cond_4
    iget-object p1, p2, Lcom/samsung/android/server/wifi/diagnostics/ReportData;->mData:Landroid/os/Bundle;

    .line 96
    .line 97
    const-string p2, "assocReason"

    .line 98
    .line 99
    invoke-virtual {p1, p2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 100
    .line 101
    .line 102
    move-result p1

    .line 103
    if-eq p1, v3, :cond_5

    .line 104
    .line 105
    iget-object p0, p0, Lcom/samsung/android/server/wifi/diagnostics/WifiIssueReporter;->filteredAssocRejectedStatusCodes:Ljava/util/Set;

    .line 106
    .line 107
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 108
    .line 109
    .line 110
    move-result-object p1

    .line 111
    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 112
    .line 113
    .line 114
    move-result p0

    .line 115
    if-eqz p0, :cond_5

    .line 116
    .line 117
    monitor-exit v0

    .line 118
    return v1

    .line 119
    :cond_5
    monitor-exit v0

    .line 120
    const/4 p0, 0x1

    .line 121
    return p0

    .line 122
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 123
    throw p0
.end method

.method private checkNetworkHistory(Ljava/lang/String;Ljava/lang/String;J)Z
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/diagnostics/WifiIssueReporter;->lastNetworkIssueHistory:Ljava/util/Map;

    .line 2
    .line 3
    new-instance v1, Ljava/util/HashMap;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-interface {v0, p1, v1}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Ljava/util/Map;

    .line 13
    .line 14
    new-instance v1, Ljava/util/HashSet;

    .line 15
    .line 16
    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 17
    .line 18
    .line 19
    invoke-interface {v0, p2, v1}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    check-cast v1, Ljava/util/Set;

    .line 24
    .line 25
    new-instance v2, Lcom/samsung/android/server/wifi/diagnostics/WifiIssueReporter$$ExternalSyntheticLambda0;

    .line 26
    .line 27
    invoke-direct {v2, p0, p3, p4}, Lcom/samsung/android/server/wifi/diagnostics/WifiIssueReporter$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/server/wifi/diagnostics/WifiIssueReporter;J)V

    .line 28
    .line 29
    .line 30
    invoke-interface {v1, v2}, Ljava/util/Set;->removeIf(Ljava/util/function/Predicate;)Z

    .line 31
    .line 32
    .line 33
    invoke-interface {v1}, Ljava/util/Set;->size()I

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/diagnostics/WifiIssueReporter;->getDisconnectionEventCount(Ljava/lang/String;)I

    .line 38
    .line 39
    .line 40
    move-result v3

    .line 41
    const/4 v4, 0x1

    .line 42
    sub-int/2addr v3, v4

    .line 43
    if-ge v2, v3, :cond_0

    .line 44
    .line 45
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 46
    .line 47
    .line 48
    move-result-object p3

    .line 49
    invoke-interface {v1, p3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    invoke-interface {v0, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    iget-object p0, p0, Lcom/samsung/android/server/wifi/diagnostics/WifiIssueReporter;->lastNetworkIssueHistory:Ljava/util/Map;

    .line 56
    .line 57
    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    new-instance p0, Ljava/lang/StringBuilder;

    .line 61
    .line 62
    const-string p3, "save network issue "

    .line 63
    .line 64
    invoke-direct {p0, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    const-string p1, " for "

    .line 71
    .line 72
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    const-string p1, " size: "

    .line 79
    .line 80
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-interface {v1}, Ljava/util/Set;->size()I

    .line 84
    .line 85
    .line 86
    move-result p1

    .line 87
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object p0

    .line 94
    const-string p1, "SemWifi.IssueReporter"

    .line 95
    .line 96
    invoke-static {p1, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    .line 98
    .line 99
    const/4 p0, 0x0

    .line 100
    return p0

    .line 101
    :cond_0
    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 102
    .line 103
    .line 104
    invoke-interface {v0, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    return v4
.end method

.method private checkReportHistory(JLjava/lang/String;)Z
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/diagnostics/WifiIssueReporter;->lastReportedHistory:Ljava/util/Map;

    .line 2
    .line 3
    const-wide/16 v1, 0x0

    .line 4
    .line 5
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 6
    .line 7
    .line 8
    move-result-object v3

    .line 9
    invoke-interface {v0, p3, v3}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Ljava/lang/Long;

    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 16
    .line 17
    .line 18
    move-result-wide v3

    .line 19
    cmp-long v0, v3, v1

    .line 20
    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    sub-long/2addr p1, v3

    .line 24
    iget-wide v0, p0, Lcom/samsung/android/server/wifi/diagnostics/WifiIssueReporter;->durationOfIgnoringSameIssueMs:J

    .line 25
    .line 26
    cmp-long p0, p1, v0

    .line 27
    .line 28
    if-gez p0, :cond_0

    .line 29
    .line 30
    const-string p0, "already reported "

    .line 31
    .line 32
    const-string v0, " "

    .line 33
    .line 34
    invoke-static {p0, p3, v0}, Lcom/samsung/android/server/wifi/SemClientModeImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    const-wide/32 v0, 0x36ee80

    .line 39
    .line 40
    .line 41
    div-long/2addr p1, v0

    .line 42
    const-string p3, " hours ago"

    .line 43
    .line 44
    invoke-static {p1, p2, p3, p0}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$1$$ExternalSyntheticOutline0;->m(JLjava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    const-string p1, "SemWifi.IssueReporter"

    .line 49
    .line 50
    invoke-static {p1, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    .line 52
    .line 53
    const/4 p0, 0x0

    .line 54
    return p0

    .line 55
    :cond_0
    const/4 p0, 0x1

    .line 56
    return p0
.end method

.method private generateAbnormalDisconnectDescription(Landroid/os/Bundle;)Ljava/lang/String;
    .locals 2

    .line 1
    new-instance p0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v0, "locallyGenerated"

    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-ne v0, v1, :cond_0

    .line 14
    .line 15
    const-string v0, "\ube44\uc815\uc0c1\uc801\uc73c\ub85c \uc5f0\uacb0\uc744 \ub04a\uc5b4\uc84c\uc2b5\ub2c8\ub2e4.\n"

    .line 16
    .line 17
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const-string v0, "AP\uc5d0 \uc758\ud574 \uc5f0\uacb0\uc774 \ub04a\uc5b4\uc84c\uc2b5\ub2c8\ub2e4.\n"

    .line 22
    .line 23
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    :goto_0
    const-string v0, "\uc5f0\uacb0 \ub04a\uae40 \ucf54\ub4dc: "

    .line 27
    .line 28
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    const-string v0, "disconnectReason"

    .line 32
    .line 33
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    const-string v0, "\n\ub124\ud2b8\uc6cc\ud06c \uc774\ub984: "

    .line 41
    .line 42
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    const-string v0, "ssid"

    .line 46
    .line 47
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    const-string v0, " ("

    .line 55
    .line 56
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    const-string v0, "bssid"

    .line 60
    .line 61
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    const-string p1, ")"

    .line 69
    .line 70
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object p0

    .line 77
    return-object p0
.end method

.method private generateConnectionFailedDescription(Landroid/os/Bundle;)Ljava/lang/String;
    .locals 1

    .line 1
    new-instance p0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v0, "\ub124\ud2b8\uc6cc\ud06c \uc5f0\uacb0 \uc911 \uc5f0\uc18d\uc801\uc73c\ub85c \uc5f0\uacb0 \uc2e4\ud328\uac00 \ubc1c\uc0dd \ub418\uc5c8\uc2b5\ub2c8\ub2e4.\n\ub124\ud2b8\uc6cc\ud06c \uc774\ub984: "

    .line 4
    .line 5
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const-string v0, "ssid"

    .line 9
    .line 10
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const-string v0, " ("

    .line 18
    .line 19
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    const-string v0, "bssid"

    .line 23
    .line 24
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    const-string p1, ")"

    .line 32
    .line 33
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    return-object p0
.end method

.method private generateDescription(Lcom/samsung/android/server/wifi/diagnostics/ReportData;)[Ljava/lang/String;
    .locals 9

    .line 1
    const/4 v0, 0x3

    .line 2
    const/4 v1, 0x2

    .line 3
    iget-object v2, p1, Lcom/samsung/android/server/wifi/diagnostics/ReportData;->mData:Landroid/os/Bundle;

    .line 4
    .line 5
    const-string v3, "patternId"

    .line 6
    .line 7
    const-string v4, ""

    .line 8
    .line 9
    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    iget-object v3, p1, Lcom/samsung/android/server/wifi/diagnostics/ReportData;->mData:Landroid/os/Bundle;

    .line 14
    .line 15
    const-string v4, "categoryId"

    .line 16
    .line 17
    const/4 v5, -0x1

    .line 18
    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 19
    .line 20
    .line 21
    move-result v3

    .line 22
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 23
    .line 24
    .line 25
    move-result v4

    .line 26
    const/4 v6, 0x0

    .line 27
    if-nez v4, :cond_f

    .line 28
    .line 29
    if-ne v3, v5, :cond_0

    .line 30
    .line 31
    goto/16 :goto_6

    .line 32
    .line 33
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    .line 34
    .line 35
    const-string v7, "["

    .line 36
    .line 37
    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string v7, ":"

    .line 44
    .line 45
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    const-string v7, "]"

    .line 52
    .line 53
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v4

    .line 60
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 61
    .line 62
    .line 63
    const/4 v7, 0x5

    .line 64
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 65
    .line 66
    .line 67
    move-result v8

    .line 68
    sparse-switch v8, :sswitch_data_0

    .line 69
    .line 70
    .line 71
    goto :goto_0

    .line 72
    :sswitch_0
    const-string v8, "roaming"

    .line 73
    .line 74
    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 75
    .line 76
    .line 77
    move-result v8

    .line 78
    if-nez v8, :cond_1

    .line 79
    .line 80
    goto :goto_0

    .line 81
    :cond_1
    const/4 v5, 0x4

    .line 82
    goto :goto_0

    .line 83
    :sswitch_1
    const-string v8, "disconnect"

    .line 84
    .line 85
    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 86
    .line 87
    .line 88
    move-result v8

    .line 89
    if-nez v8, :cond_2

    .line 90
    .line 91
    goto :goto_0

    .line 92
    :cond_2
    move v5, v0

    .line 93
    goto :goto_0

    .line 94
    :sswitch_2
    const-string v8, "dhcp"

    .line 95
    .line 96
    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 97
    .line 98
    .line 99
    move-result v8

    .line 100
    if-nez v8, :cond_3

    .line 101
    .line 102
    goto :goto_0

    .line 103
    :cond_3
    move v5, v1

    .line 104
    goto :goto_0

    .line 105
    :sswitch_3
    const-string v8, "ap"

    .line 106
    .line 107
    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 108
    .line 109
    .line 110
    move-result v8

    .line 111
    if-nez v8, :cond_4

    .line 112
    .line 113
    goto :goto_0

    .line 114
    :cond_4
    const/4 v5, 0x1

    .line 115
    goto :goto_0

    .line 116
    :sswitch_4
    const-string v8, "connection"

    .line 117
    .line 118
    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 119
    .line 120
    .line 121
    move-result v8

    .line 122
    if-nez v8, :cond_5

    .line 123
    .line 124
    goto :goto_0

    .line 125
    :cond_5
    const/4 v5, 0x0

    .line 126
    :goto_0
    packed-switch v5, :pswitch_data_0

    .line 127
    .line 128
    .line 129
    return-object v6

    .line 130
    :pswitch_0
    const-string v0, " Roaming Wi-Fi network frequently"

    .line 131
    .line 132
    invoke-static {v4, v0}, Lcom/samsung/android/server/wifi/SemClientModeImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v0

    .line 136
    iget-object p1, p1, Lcom/samsung/android/server/wifi/diagnostics/ReportData;->mData:Landroid/os/Bundle;

    .line 137
    .line 138
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/diagnostics/WifiIssueReporter;->generateRoamingDescription(Landroid/os/Bundle;)Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object p0

    .line 142
    goto :goto_4

    .line 143
    :pswitch_1
    if-nez v3, :cond_6

    .line 144
    .line 145
    const-string v0, " Abnormal Wi-Fi disconnection (LCD ON)"

    .line 146
    .line 147
    invoke-static {v4, v0}, Lcom/samsung/android/server/wifi/SemClientModeImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object v0

    .line 151
    goto :goto_1

    .line 152
    :cond_6
    if-ne v3, v1, :cond_7

    .line 153
    .line 154
    const-string v0, " Abnormal Wi-Fi disconnection (LCD OFF)"

    .line 155
    .line 156
    invoke-static {v4, v0}, Lcom/samsung/android/server/wifi/SemClientModeImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object v0

    .line 160
    goto :goto_1

    .line 161
    :cond_7
    move-object v0, v6

    .line 162
    :goto_1
    iget-object p1, p1, Lcom/samsung/android/server/wifi/diagnostics/ReportData;->mData:Landroid/os/Bundle;

    .line 163
    .line 164
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/diagnostics/WifiIssueReporter;->generateAbnormalDisconnectDescription(Landroid/os/Bundle;)Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    move-result-object p0

    .line 168
    goto :goto_4

    .line 169
    :pswitch_2
    if-ne v3, v7, :cond_9

    .line 170
    .line 171
    move-object p0, v6

    .line 172
    move-object v0, p0

    .line 173
    goto :goto_4

    .line 174
    :pswitch_3
    if-ne v3, v0, :cond_8

    .line 175
    .line 176
    const-string v0, " AP rejected Wi-Fi connection"

    .line 177
    .line 178
    invoke-static {v4, v0}, Lcom/samsung/android/server/wifi/SemClientModeImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object v0

    .line 182
    goto :goto_2

    .line 183
    :cond_8
    move-object v0, v6

    .line 184
    :goto_2
    iget-object p1, p1, Lcom/samsung/android/server/wifi/diagnostics/ReportData;->mData:Landroid/os/Bundle;

    .line 185
    .line 186
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/diagnostics/WifiIssueReporter;->generateAbnormalDisconnectDescription(Landroid/os/Bundle;)Ljava/lang/String;

    .line 187
    .line 188
    .line 189
    move-result-object p0

    .line 190
    goto :goto_4

    .line 191
    :cond_9
    :pswitch_4
    if-ne v3, v7, :cond_a

    .line 192
    .line 193
    const-string v0, " Connection failed (Association Rejected)"

    .line 194
    .line 195
    invoke-static {v4, v0}, Lcom/samsung/android/server/wifi/SemClientModeImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 196
    .line 197
    .line 198
    move-result-object v0

    .line 199
    goto :goto_3

    .line 200
    :cond_a
    const/4 v0, 0x6

    .line 201
    if-ne v3, v0, :cond_b

    .line 202
    .line 203
    const-string v0, " Connection failed (Wrong password)"

    .line 204
    .line 205
    invoke-static {v4, v0}, Lcom/samsung/android/server/wifi/SemClientModeImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 206
    .line 207
    .line 208
    move-result-object v0

    .line 209
    goto :goto_3

    .line 210
    :cond_b
    const/4 v0, 0x7

    .line 211
    if-ne v3, v0, :cond_c

    .line 212
    .line 213
    const-string v0, " Connection failed (Obtaining IP Address)"

    .line 214
    .line 215
    invoke-static {v4, v0}, Lcom/samsung/android/server/wifi/SemClientModeImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 216
    .line 217
    .line 218
    move-result-object v0

    .line 219
    goto :goto_3

    .line 220
    :cond_c
    move-object v0, v6

    .line 221
    :goto_3
    iget-object p1, p1, Lcom/samsung/android/server/wifi/diagnostics/ReportData;->mData:Landroid/os/Bundle;

    .line 222
    .line 223
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/diagnostics/WifiIssueReporter;->generateConnectionFailedDescription(Landroid/os/Bundle;)Ljava/lang/String;

    .line 224
    .line 225
    .line 226
    move-result-object p0

    .line 227
    :goto_4
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 228
    .line 229
    .line 230
    move-result p1

    .line 231
    if-nez p1, :cond_e

    .line 232
    .line 233
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 234
    .line 235
    .line 236
    move-result p1

    .line 237
    if-eqz p1, :cond_d

    .line 238
    .line 239
    goto :goto_5

    .line 240
    :cond_d
    filled-new-array {v0, p0}, [Ljava/lang/String;

    .line 241
    .line 242
    .line 243
    move-result-object p0

    .line 244
    return-object p0

    .line 245
    :cond_e
    :goto_5
    const-string p0, "unsupported pattern id: "

    .line 246
    .line 247
    const-string p1, " category: "

    .line 248
    .line 249
    invoke-static {v3, p0, v2, p1}, Lcom/samsung/android/server/wifi/SemSwitchBoardService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 250
    .line 251
    .line 252
    move-result-object p0

    .line 253
    const-string p1, "SemWifi.IssueReporter"

    .line 254
    .line 255
    invoke-static {p1, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    .line 257
    .line 258
    :cond_f
    :goto_6
    return-object v6

    .line 259
    :sswitch_data_0
    .sparse-switch
        -0x2e3b8122 -> :sswitch_4
        0xc2f -> :sswitch_3
        0x2f07f1 -> :sswitch_2
        0x1f9d589c -> :sswitch_1
        0x517a5c19 -> :sswitch_0
    .end sparse-switch

    .line 260
    .line 261
    .line 262
    .line 263
    .line 264
    .line 265
    .line 266
    .line 267
    .line 268
    .line 269
    .line 270
    .line 271
    .line 272
    .line 273
    .line 274
    .line 275
    .line 276
    .line 277
    .line 278
    .line 279
    .line 280
    .line 281
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private generateRoamingDescription(Landroid/os/Bundle;)Ljava/lang/String;
    .locals 1

    .line 1
    new-instance p0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v0, "\ub450 BSSID \uac04 \ub85c\ubc0d\uc774 \ube48\ubc88\ud558\uac8c \uc2e4\ud589 \ub418\uace0 \uc788\uc2b5\ub2c8\ub2e4.\n\ub124\ud2b8\uc6cc\ud06c \uc774\ub984: "

    .line 4
    .line 5
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const-string v0, "ssid"

    .line 9
    .line 10
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const-string v0, " ("

    .line 18
    .line 19
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    const-string v0, "bssid"

    .line 23
    .line 24
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    const-string p1, ")"

    .line 32
    .line 33
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    return-object p0
.end method

.method private getDisconnectionEventCount(Ljava/lang/String;)I
    .locals 1

    .line 1
    const-string v0, "dhcp:7"

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const/4 p0, 0x2

    .line 10
    return p0

    .line 11
    :cond_0
    const-string v0, "dhcp:5"

    .line 12
    .line 13
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    if-eqz p1, :cond_1

    .line 18
    .line 19
    const/4 p0, 0x1

    .line 20
    return p0

    .line 21
    :cond_1
    iget p0, p0, Lcom/samsung/android/server/wifi/diagnostics/WifiIssueReporter;->countOfNetworkIssues:I

    .line 22
    .line 23
    return p0
.end method

.method private static getKey(Lcom/samsung/android/server/wifi/diagnostics/ReportData;)Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/samsung/android/server/wifi/diagnostics/ReportData;->mData:Landroid/os/Bundle;

    .line 7
    .line 8
    const-string v2, "patternId"

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const-string v1, ":"

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    iget-object p0, p0, Lcom/samsung/android/server/wifi/diagnostics/ReportData;->mData:Landroid/os/Bundle;

    .line 23
    .line 24
    const-string v1, "categoryId"

    .line 25
    .line 26
    const/4 v2, 0x0

    .line 27
    invoke-virtual {p0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 28
    .line 29
    .line 30
    move-result p0

    .line 31
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    return-object p0
.end method

.method private synthetic lambda$checkNetworkHistory$1(JLjava/lang/Long;)Z
    .locals 4

    .line 1
    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    iget-wide v2, p0, Lcom/samsung/android/server/wifi/diagnostics/WifiIssueReporter;->durationOfNetworkIssueMs:J

    .line 6
    .line 7
    sub-long/2addr p1, v2

    .line 8
    cmp-long p0, v0, p1

    .line 9
    .line 10
    if-gtz p0, :cond_0

    .line 11
    .line 12
    const/4 p0, 0x1

    .line 13
    return p0

    .line 14
    :cond_0
    const/4 p0, 0x0

    .line 15
    return p0
.end method

.method private synthetic lambda$updateSettings$0(Ljava/lang/String;)V
    .locals 2

    .line 1
    const/16 v0, 0x20

    .line 2
    .line 3
    const/16 v1, 0x2e

    .line 4
    .line 5
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    const-string v0, "filtered ssid : "

    .line 10
    .line 11
    invoke-static {v0, p1}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const-string v1, "SemWifi.IssueReporter"

    .line 16
    .line 17
    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    .line 19
    .line 20
    iget-object p0, p0, Lcom/samsung/android/server/wifi/diagnostics/WifiIssueReporter;->filteredSsids:Ljava/util/Set;

    .line 21
    .line 22
    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method private updateSettings(Landroid/os/Bundle;)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/diagnostics/WifiIssueReporter;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/server/wifi/diagnostics/WifiIssueReporter;->gatheringPatterns:Ljava/util/Set;

    .line 5
    .line 6
    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 7
    .line 8
    .line 9
    const-string v1, "gatheringPatterns"

    .line 10
    .line 11
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    if-eqz v1, :cond_4

    .line 16
    .line 17
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    if-eqz v2, :cond_0

    .line 22
    .line 23
    goto/16 :goto_1

    .line 24
    .line 25
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/server/wifi/diagnostics/WifiIssueReporter;->gatheringPatterns:Ljava/util/Set;

    .line 26
    .line 27
    invoke-interface {v2, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 28
    .line 29
    .line 30
    iget-object v1, p0, Lcom/samsung/android/server/wifi/diagnostics/WifiIssueReporter;->filteredSsids:Ljava/util/Set;

    .line 31
    .line 32
    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 33
    .line 34
    .line 35
    const-string v1, "filteredSsids"

    .line 36
    .line 37
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    if-eqz v1, :cond_1

    .line 42
    .line 43
    new-instance v2, Lcom/samsung/android/server/wifi/diagnostics/WifiIssueReporter$$ExternalSyntheticLambda1;

    .line 44
    .line 45
    invoke-direct {v2, p0}, Lcom/samsung/android/server/wifi/diagnostics/WifiIssueReporter$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/server/wifi/diagnostics/WifiIssueReporter;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    .line 49
    .line 50
    .line 51
    goto :goto_0

    .line 52
    :catchall_0
    move-exception p0

    .line 53
    goto :goto_2

    .line 54
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/server/wifi/diagnostics/WifiIssueReporter;->filteredDisconnectReasons:Ljava/util/Set;

    .line 55
    .line 56
    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 57
    .line 58
    .line 59
    const-string v1, "filteredDisconnectReasons"

    .line 60
    .line 61
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getIntegerArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    if-eqz v1, :cond_2

    .line 66
    .line 67
    iget-object v2, p0, Lcom/samsung/android/server/wifi/diagnostics/WifiIssueReporter;->filteredDisconnectReasons:Ljava/util/Set;

    .line 68
    .line 69
    invoke-interface {v2, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 70
    .line 71
    .line 72
    :cond_2
    iget-object v1, p0, Lcom/samsung/android/server/wifi/diagnostics/WifiIssueReporter;->filteredAssocRejectedStatusCodes:Ljava/util/Set;

    .line 73
    .line 74
    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 75
    .line 76
    .line 77
    const-string v1, "filteredAssociationRejectedStatusCodes"

    .line 78
    .line 79
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getIntegerArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    if-eqz v1, :cond_3

    .line 84
    .line 85
    iget-object v2, p0, Lcom/samsung/android/server/wifi/diagnostics/WifiIssueReporter;->filteredAssocRejectedStatusCodes:Ljava/util/Set;

    .line 86
    .line 87
    invoke-interface {v2, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 88
    .line 89
    .line 90
    :cond_3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 91
    const-string v0, "durationHoursForIgnoringSameIssue"

    .line 92
    .line 93
    const/16 v1, 0xc

    .line 94
    .line 95
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 96
    .line 97
    .line 98
    move-result v0

    .line 99
    int-to-long v0, v0

    .line 100
    const-wide/32 v2, 0x36ee80

    .line 101
    .line 102
    .line 103
    mul-long/2addr v0, v2

    .line 104
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/diagnostics/WifiIssueReporter;->durationOfIgnoringSameIssueMs:J

    .line 105
    .line 106
    const-string v0, "durationMinsForIgnoringSameNetworkIssue"

    .line 107
    .line 108
    const/16 v1, 0xb4

    .line 109
    .line 110
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 111
    .line 112
    .line 113
    move-result v0

    .line 114
    int-to-long v0, v0

    .line 115
    const-wide/32 v2, 0xea60

    .line 116
    .line 117
    .line 118
    mul-long/2addr v0, v2

    .line 119
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/diagnostics/WifiIssueReporter;->durationOfNetworkIssueMs:J

    .line 120
    .line 121
    const-string v0, "countForIgnoringSameNetworkIssue"

    .line 122
    .line 123
    const/4 v1, 0x3

    .line 124
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 125
    .line 126
    .line 127
    move-result v0

    .line 128
    iput v0, p0, Lcom/samsung/android/server/wifi/diagnostics/WifiIssueReporter;->countOfNetworkIssues:I

    .line 129
    .line 130
    const-string v0, "action"

    .line 131
    .line 132
    const-string v1, "com.sec.android.ISSUE_TRACKER_ACTION"

    .line 133
    .line 134
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v0

    .line 138
    iput-object v0, p0, Lcom/samsung/android/server/wifi/diagnostics/WifiIssueReporter;->actionName:Ljava/lang/String;

    .line 139
    .line 140
    const-string v0, "packageName"

    .line 141
    .line 142
    const-string v1, "com.salab.issuetracker"

    .line 143
    .line 144
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object p1

    .line 148
    iput-object p1, p0, Lcom/samsung/android/server/wifi/diagnostics/WifiIssueReporter;->targetPackageName:Ljava/lang/String;

    .line 149
    .line 150
    const/4 p0, 0x1

    .line 151
    return p0

    .line 152
    :cond_4
    :goto_1
    :try_start_1
    const-string p0, "SemWifi.IssueReporter"

    .line 153
    .line 154
    const-string p1, "gatheringPatterns should not be empty"

    .line 155
    .line 156
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    .line 158
    .line 159
    const/4 p0, 0x0

    .line 160
    monitor-exit v0

    .line 161
    return p0

    .line 162
    :goto_2
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 163
    throw p0
.end method


# virtual methods
.method public onIssueDetected(Lcom/samsung/android/server/wifi/diagnostics/ReportData;)V
    .locals 7

    .line 1
    invoke-static {p1}, Lcom/samsung/android/server/wifi/diagnostics/WifiIssueReporter;->getKey(Lcom/samsung/android/server/wifi/diagnostics/ReportData;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-direct {p0, v0, p1}, Lcom/samsung/android/server/wifi/diagnostics/WifiIssueReporter;->checkFilter(Ljava/lang/String;Lcom/samsung/android/server/wifi/diagnostics/ReportData;)Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/server/wifi/diagnostics/WifiIssueReporter;->clock:Lcom/samsung/android/server/wifi/util/SemClock;

    .line 13
    .line 14
    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/util/SemClock;->getElapsedSinceBootMillis()J

    .line 15
    .line 16
    .line 17
    move-result-wide v1

    .line 18
    invoke-direct {p0, v1, v2, v0}, Lcom/samsung/android/server/wifi/diagnostics/WifiIssueReporter;->checkReportHistory(JLjava/lang/String;)Z

    .line 19
    .line 20
    .line 21
    move-result v3

    .line 22
    if-nez v3, :cond_1

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_1
    iget-object v3, p1, Lcom/samsung/android/server/wifi/diagnostics/ReportData;->mData:Landroid/os/Bundle;

    .line 26
    .line 27
    const-string v4, "patternId"

    .line 28
    .line 29
    const-string v5, "unknown"

    .line 30
    .line 31
    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    iget-object v4, p1, Lcom/samsung/android/server/wifi/diagnostics/ReportData;->mData:Landroid/os/Bundle;

    .line 36
    .line 37
    const-string v5, "ssid"

    .line 38
    .line 39
    const-string v6, ""

    .line 40
    .line 41
    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v4

    .line 45
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 46
    .line 47
    .line 48
    move-result v5

    .line 49
    if-nez v5, :cond_2

    .line 50
    .line 51
    iget-object v5, p0, Lcom/samsung/android/server/wifi/diagnostics/WifiIssueReporter;->networkIssuePatternIds:Ljava/util/Set;

    .line 52
    .line 53
    invoke-interface {v5, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    move-result v3

    .line 57
    if-eqz v3, :cond_2

    .line 58
    .line 59
    invoke-direct {p0, v0, v4, v1, v2}, Lcom/samsung/android/server/wifi/diagnostics/WifiIssueReporter;->checkNetworkHistory(Ljava/lang/String;Ljava/lang/String;J)Z

    .line 60
    .line 61
    .line 62
    move-result v3

    .line 63
    if-nez v3, :cond_2

    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_2
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/diagnostics/WifiIssueReporter;->generateDescription(Lcom/samsung/android/server/wifi/diagnostics/ReportData;)[Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    if-nez p1, :cond_3

    .line 71
    .line 72
    :goto_0
    return-void

    .line 73
    :cond_3
    const/4 v3, 0x0

    .line 74
    aget-object v3, p1, v3

    .line 75
    .line 76
    const/4 v4, 0x1

    .line 77
    aget-object p1, p1, v4

    .line 78
    .line 79
    invoke-direct {p0, v3, p1}, Lcom/samsung/android/server/wifi/diagnostics/WifiIssueReporter;->broadcastToIssueTracker(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    invoke-direct {p0, v0, v1, v2}, Lcom/samsung/android/server/wifi/diagnostics/WifiIssueReporter;->addHistory(Ljava/lang/String;J)V

    .line 83
    .line 84
    .line 85
    return-void
.end method

.method public startMonitoring(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/diagnostics/WifiIssueReporter;->updateSettings(Landroid/os/Bundle;)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/diagnostics/WifiIssueReporter;->stopMonitoring()V

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    iget-boolean p1, p0, Lcom/samsung/android/server/wifi/diagnostics/WifiIssueReporter;->isStarted:Z

    .line 12
    .line 13
    const-string v0, "SemWifi.IssueReporter"

    .line 14
    .line 15
    if-nez p1, :cond_1

    .line 16
    .line 17
    const-string p1, "start"

    .line 18
    .line 19
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    .line 21
    .line 22
    iget-object p1, p0, Lcom/samsung/android/server/wifi/diagnostics/WifiIssueReporter;->issueDetector:Lcom/samsung/android/server/wifi/diagnostics/WifiIssueDetector;

    .line 23
    .line 24
    invoke-virtual {p1, p0}, Lcom/samsung/android/server/wifi/diagnostics/WifiIssueDetector;->registerDiagnosticListener(Lcom/samsung/android/server/wifi/diagnostics/WifiIssueDetector$PatternMatchedListener;)V

    .line 25
    .line 26
    .line 27
    const/4 p1, 0x1

    .line 28
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/diagnostics/WifiIssueReporter;->isStarted:Z

    .line 29
    .line 30
    return-void

    .line 31
    :cond_1
    const-string p0, "already started"

    .line 32
    .line 33
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method public stopMonitoring()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/diagnostics/WifiIssueReporter;->isStarted:Z

    .line 2
    .line 3
    const-string v1, "SemWifi.IssueReporter"

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const-string v0, "stop"

    .line 8
    .line 9
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/samsung/android/server/wifi/diagnostics/WifiIssueReporter;->issueDetector:Lcom/samsung/android/server/wifi/diagnostics/WifiIssueDetector;

    .line 13
    .line 14
    invoke-virtual {v0, p0}, Lcom/samsung/android/server/wifi/diagnostics/WifiIssueDetector;->unregisterDiagnosticListener(Lcom/samsung/android/server/wifi/diagnostics/WifiIssueDetector$PatternMatchedListener;)V

    .line 15
    .line 16
    .line 17
    const/4 v0, 0x0

    .line 18
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/diagnostics/WifiIssueReporter;->isStarted:Z

    .line 19
    .line 20
    return-void

    .line 21
    :cond_0
    const-string p0, "already stopped"

    .line 22
    .line 23
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    .line 25
    .line 26
    return-void
.end method
