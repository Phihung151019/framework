.class public Lcom/samsung/android/server/wifi/diagnostics/WifiIssueDetector;
.super Landroid/os/Handler;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/server/wifi/diagnostics/WifiIssueDetector$DiagnosticReportListener;,
        Lcom/samsung/android/server/wifi/diagnostics/WifiIssueDetector$PatternMatchedListener;
    }
.end annotation


# static fields
.field private static final CMD_REPORT:I = 0x1

.field private static final CMD_WRITE_FILE:I = 0x2

.field private static final DBG:Z

.field private static final LOG_FILE_PATH:Ljava/lang/String; = "/data/misc/wifi/issue_detector.conf"

.field static final MAX_LIST_SIZE:I

.field public static final TAG:Ljava/lang/String; = "WifiIssueDetector"


# instance fields
.field private final historyReportIds:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mBigDataLogManager:Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;

.field private final mContext:Landroid/content/Context;

.field private final mListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/samsung/android/server/wifi/diagnostics/WifiIssueDetector$DiagnosticReportListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mLog:Lcom/samsung/android/server/wifi/util/LogUtils;

.field private final mLogLock:Ljava/lang/Object;

.field private final mLogs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/server/wifi/diagnostics/ReportData;",
            ">;"
        }
    .end annotation
.end field

.field private final mPatternMatchedListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/samsung/android/server/wifi/diagnostics/WifiIssueDetector$PatternMatchedListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mPatternMatchesLogs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mPatterns:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Lcom/samsung/android/server/wifi/diagnostics/WifiIssuePattern;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$WLN81n1tmgz1ehF0DLqZi6feE_Q(Ljava/io/PrintWriter;Lcom/samsung/android/server/wifi/util/LogUtils;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/samsung/android/server/wifi/diagnostics/WifiIssueDetector;->lambda$dump$1(Ljava/io/PrintWriter;Lcom/samsung/android/server/wifi/util/LogUtils;Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic $r8$lambda$XHQnc0Vj7V4kvivUjbQI5bjra4I(Ljava/lang/StringBuilder;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/samsung/android/server/wifi/diagnostics/WifiIssueDetector;->lambda$saveHistory$2(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic $r8$lambda$wkDrRgh-QbD38k7AzGluOzb6hEU(Ljava/io/PrintWriter;Lcom/samsung/android/server/wifi/util/LogUtils;Lcom/samsung/android/server/wifi/diagnostics/ReportData;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/samsung/android/server/wifi/diagnostics/WifiIssueDetector;->lambda$dump$0(Ljava/io/PrintWriter;Lcom/samsung/android/server/wifi/util/LogUtils;Lcom/samsung/android/server/wifi/diagnostics/ReportData;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-string v0, "ro.product_ship"

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    xor-int/2addr v0, v1

    .line 9
    sput-boolean v0, Lcom/samsung/android/server/wifi/diagnostics/WifiIssueDetector;->DBG:Z

    .line 10
    .line 11
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    const/16 v0, 0x32

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/16 v0, 0xc8

    .line 21
    .line 22
    :goto_0
    sput v0, Lcom/samsung/android/server/wifi/diagnostics/WifiIssueDetector;->MAX_LIST_SIZE:I

    .line 23
    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;)V
    .locals 1

    .line 1
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 2
    .line 3
    .line 4
    new-instance p2, Ljava/lang/Object;

    .line 5
    .line 6
    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p2, p0, Lcom/samsung/android/server/wifi/diagnostics/WifiIssueDetector;->mLogLock:Ljava/lang/Object;

    .line 10
    .line 11
    new-instance p2, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object p2, p0, Lcom/samsung/android/server/wifi/diagnostics/WifiIssueDetector;->mLogs:Ljava/util/List;

    .line 17
    .line 18
    new-instance p2, Ljava/util/ArrayList;

    .line 19
    .line 20
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object p2, p0, Lcom/samsung/android/server/wifi/diagnostics/WifiIssueDetector;->mPatternMatchesLogs:Ljava/util/List;

    .line 24
    .line 25
    new-instance p2, Ljava/util/HashMap;

    .line 26
    .line 27
    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    .line 28
    .line 29
    .line 30
    iput-object p2, p0, Lcom/samsung/android/server/wifi/diagnostics/WifiIssueDetector;->mPatterns:Ljava/util/HashMap;

    .line 31
    .line 32
    new-instance p2, Ljava/util/HashSet;

    .line 33
    .line 34
    invoke-direct {p2}, Ljava/util/HashSet;-><init>()V

    .line 35
    .line 36
    .line 37
    iput-object p2, p0, Lcom/samsung/android/server/wifi/diagnostics/WifiIssueDetector;->historyReportIds:Ljava/util/Set;

    .line 38
    .line 39
    iput-object p1, p0, Lcom/samsung/android/server/wifi/diagnostics/WifiIssueDetector;->mContext:Landroid/content/Context;

    .line 40
    .line 41
    iput-object p3, p0, Lcom/samsung/android/server/wifi/diagnostics/WifiIssueDetector;->mBigDataLogManager:Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;

    .line 42
    .line 43
    new-instance p1, Lcom/samsung/android/server/wifi/util/LogUtils;

    .line 44
    .line 45
    invoke-direct {p1}, Lcom/samsung/android/server/wifi/util/LogUtils;-><init>()V

    .line 46
    .line 47
    .line 48
    iput-object p1, p0, Lcom/samsung/android/server/wifi/diagnostics/WifiIssueDetector;->mLog:Lcom/samsung/android/server/wifi/util/LogUtils;

    .line 49
    .line 50
    new-instance p1, Ljava/util/ArrayList;

    .line 51
    .line 52
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 53
    .line 54
    .line 55
    new-instance p3, Lcom/samsung/android/server/wifi/diagnostics/PatternWipsDisconnection;

    .line 56
    .line 57
    invoke-direct {p3}, Lcom/samsung/android/server/wifi/diagnostics/PatternWipsDisconnection;-><init>()V

    .line 58
    .line 59
    .line 60
    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 61
    .line 62
    .line 63
    new-instance p3, Lcom/samsung/android/server/wifi/diagnostics/PatternDhcpFailure;

    .line 64
    .line 65
    invoke-direct {p3}, Lcom/samsung/android/server/wifi/diagnostics/PatternDhcpFailure;-><init>()V

    .line 66
    .line 67
    .line 68
    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 69
    .line 70
    .line 71
    new-instance p3, Lcom/samsung/android/server/wifi/diagnostics/PatternWifiAppProblem;

    .line 72
    .line 73
    invoke-direct {p3}, Lcom/samsung/android/server/wifi/diagnostics/PatternWifiAppProblem;-><init>()V

    .line 74
    .line 75
    .line 76
    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 77
    .line 78
    .line 79
    new-instance p3, Lcom/samsung/android/server/wifi/diagnostics/PatternApProblem;

    .line 80
    .line 81
    invoke-direct {p3}, Lcom/samsung/android/server/wifi/diagnostics/PatternApProblem;-><init>()V

    .line 82
    .line 83
    .line 84
    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 85
    .line 86
    .line 87
    new-instance p3, Lcom/samsung/android/server/wifi/diagnostics/PatternAbnormalAndroidAuto;

    .line 88
    .line 89
    invoke-direct {p3}, Lcom/samsung/android/server/wifi/diagnostics/PatternAbnormalAndroidAuto;-><init>()V

    .line 90
    .line 91
    .line 92
    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 93
    .line 94
    .line 95
    new-instance p3, Lcom/samsung/android/server/wifi/diagnostics/PatternAbnormalDisconnect;

    .line 96
    .line 97
    invoke-direct {p3}, Lcom/samsung/android/server/wifi/diagnostics/PatternAbnormalDisconnect;-><init>()V

    .line 98
    .line 99
    .line 100
    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 101
    .line 102
    .line 103
    new-instance p3, Lcom/samsung/android/server/wifi/diagnostics/PatternAbnormalConnectionFailed;

    .line 104
    .line 105
    invoke-direct {p3}, Lcom/samsung/android/server/wifi/diagnostics/PatternAbnormalConnectionFailed;-><init>()V

    .line 106
    .line 107
    .line 108
    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 109
    .line 110
    .line 111
    new-instance p3, Lcom/samsung/android/server/wifi/diagnostics/PatternSystemProblem;

    .line 112
    .line 113
    invoke-direct {p3}, Lcom/samsung/android/server/wifi/diagnostics/PatternSystemProblem;-><init>()V

    .line 114
    .line 115
    .line 116
    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 117
    .line 118
    .line 119
    new-instance p3, Lcom/samsung/android/server/wifi/diagnostics/PatternScanProblem;

    .line 120
    .line 121
    invoke-direct {p3}, Lcom/samsung/android/server/wifi/diagnostics/PatternScanProblem;-><init>()V

    .line 122
    .line 123
    .line 124
    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 125
    .line 126
    .line 127
    new-instance p3, Lcom/samsung/android/server/wifi/diagnostics/PatternAbnormalRoaming;

    .line 128
    .line 129
    invoke-direct {p3}, Lcom/samsung/android/server/wifi/diagnostics/PatternAbnormalRoaming;-><init>()V

    .line 130
    .line 131
    .line 132
    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 133
    .line 134
    .line 135
    const/16 p3, 0x320

    .line 136
    .line 137
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 138
    .line 139
    .line 140
    move-result-object p3

    .line 141
    invoke-interface {p2, p3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 142
    .line 143
    .line 144
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 145
    .line 146
    .line 147
    move-result p2

    .line 148
    const/4 p3, 0x0

    .line 149
    :goto_0
    if-ge p3, p2, :cond_0

    .line 150
    .line 151
    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 152
    .line 153
    .line 154
    move-result-object v0

    .line 155
    add-int/lit8 p3, p3, 0x1

    .line 156
    .line 157
    check-cast v0, Lcom/samsung/android/server/wifi/diagnostics/WifiIssuePattern;

    .line 158
    .line 159
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/diagnostics/WifiIssueDetector;->registerIssuePattern(Lcom/samsung/android/server/wifi/diagnostics/WifiIssuePattern;)V

    .line 160
    .line 161
    .line 162
    goto :goto_0

    .line 163
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/server/wifi/diagnostics/WifiIssueDetector;->mPatternMatchesLogs:Ljava/util/List;

    .line 164
    .line 165
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/diagnostics/WifiIssueDetector;->loadHistory()Ljava/util/List;

    .line 166
    .line 167
    .line 168
    move-result-object p2

    .line 169
    invoke-interface {p1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 170
    .line 171
    .line 172
    new-instance p1, Ljava/util/HashSet;

    .line 173
    .line 174
    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    .line 175
    .line 176
    .line 177
    iput-object p1, p0, Lcom/samsung/android/server/wifi/diagnostics/WifiIssueDetector;->mListeners:Ljava/util/Set;

    .line 178
    .line 179
    new-instance p1, Ljava/util/HashSet;

    .line 180
    .line 181
    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    .line 182
    .line 183
    .line 184
    iput-object p1, p0, Lcom/samsung/android/server/wifi/diagnostics/WifiIssueDetector;->mPatternMatchedListeners:Ljava/util/Set;

    .line 185
    .line 186
    return-void
.end method

.method private addReport(Lcom/samsung/android/server/wifi/diagnostics/ReportData;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/diagnostics/WifiIssueDetector;->mLogLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/server/wifi/diagnostics/WifiIssueDetector;->mLogs:Ljava/util/List;

    .line 5
    .line 6
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    sget v2, Lcom/samsung/android/server/wifi/diagnostics/WifiIssueDetector;->MAX_LIST_SIZE:I

    .line 11
    .line 12
    if-lt v1, v2, :cond_0

    .line 13
    .line 14
    iget-object v1, p0, Lcom/samsung/android/server/wifi/diagnostics/WifiIssueDetector;->mLogs:Ljava/util/List;

    .line 15
    .line 16
    const/4 v2, 0x0

    .line 17
    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :catchall_0
    move-exception p0

    .line 22
    goto :goto_1

    .line 23
    :cond_0
    :goto_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/diagnostics/WifiIssueDetector;->mLogs:Ljava/util/List;

    .line 24
    .line 25
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    monitor-exit v0

    .line 29
    return-void

    .line 30
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    throw p0
.end method

.method private addToHistoryDump(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/diagnostics/WifiIssueDetector;->mLogLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/server/wifi/diagnostics/WifiIssueDetector;->mPatternMatchesLogs:Ljava/util/List;

    .line 5
    .line 6
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    sget v2, Lcom/samsung/android/server/wifi/diagnostics/WifiIssueDetector;->MAX_LIST_SIZE:I

    .line 11
    .line 12
    if-lt v1, v2, :cond_0

    .line 13
    .line 14
    iget-object v1, p0, Lcom/samsung/android/server/wifi/diagnostics/WifiIssueDetector;->mPatternMatchesLogs:Ljava/util/List;

    .line 15
    .line 16
    const/4 v2, 0x0

    .line 17
    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :catchall_0
    move-exception p0

    .line 22
    goto :goto_1

    .line 23
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/server/wifi/diagnostics/WifiIssueDetector;->mPatternMatchesLogs:Ljava/util/List;

    .line 24
    .line 25
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    const/4 p1, 0x2

    .line 30
    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 31
    .line 32
    .line 33
    const-wide/16 v0, 0xbb8

    .line 34
    .line 35
    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 36
    .line 37
    .line 38
    return-void

    .line 39
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 40
    throw p0
.end method

.method private attemptIssueDetection(Lcom/samsung/android/server/wifi/diagnostics/WifiIssuePattern;Lcom/samsung/android/server/wifi/diagnostics/ReportData;)Z
    .locals 4

    .line 1
    invoke-virtual {p1, p2}, Lcom/samsung/android/server/wifi/diagnostics/WifiIssuePattern;->isAssociated(Lcom/samsung/android/server/wifi/diagnostics/ReportData;)Z

    .line 2
    .line 3
    .line 4
    move-result p2

    .line 5
    const/4 v0, 0x0

    .line 6
    if-nez p2, :cond_0

    .line 7
    .line 8
    return v0

    .line 9
    :cond_0
    iget-object p2, p0, Lcom/samsung/android/server/wifi/diagnostics/WifiIssueDetector;->mLogLock:Ljava/lang/Object;

    .line 10
    .line 11
    monitor-enter p2

    .line 12
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/server/wifi/diagnostics/WifiIssueDetector;->mLogs:Ljava/util/List;

    .line 13
    .line 14
    invoke-virtual {p1, v1}, Lcom/samsung/android/server/wifi/diagnostics/WifiIssuePattern;->matches(Ljava/util/List;)Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-nez v1, :cond_1

    .line 19
    .line 20
    monitor-exit p2

    .line 21
    return v0

    .line 22
    :catchall_0
    move-exception p0

    .line 23
    goto/16 :goto_2

    .line 24
    .line 25
    :cond_1
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/diagnostics/WifiIssuePattern;->getPatternId()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p2

    .line 30
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/diagnostics/WifiIssuePattern;->getBigDataParams()Landroid/os/Bundle;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    if-eqz p1, :cond_3

    .line 35
    .line 36
    const-string v1, "patternId"

    .line 37
    .line 38
    invoke-virtual {p1, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    iget-object v1, p0, Lcom/samsung/android/server/wifi/diagnostics/WifiIssueDetector;->mBigDataLogManager:Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;

    .line 42
    .line 43
    invoke-virtual {v1, p1}, Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;->insertLog(Landroid/os/Bundle;)V

    .line 44
    .line 45
    .line 46
    const-string v1, "categoryId"

    .line 47
    .line 48
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    const-string v1, "feature"

    .line 53
    .line 54
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    invoke-direct {p0, v1, p2, v0}, Lcom/samsung/android/server/wifi/diagnostics/WifiIssueDetector;->sendBroadcastIssueDetected(Ljava/lang/String;Ljava/lang/String;I)V

    .line 59
    .line 60
    .line 61
    new-instance v0, Lcom/samsung/android/server/wifi/diagnostics/ReportData;

    .line 62
    .line 63
    invoke-virtual {p1}, Landroid/os/Bundle;->clone()Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    check-cast p1, Landroid/os/Bundle;

    .line 68
    .line 69
    const/16 v1, 0x3e7

    .line 70
    .line 71
    invoke-direct {v0, v1, p1}, Lcom/samsung/android/server/wifi/diagnostics/ReportData;-><init>(ILandroid/os/Bundle;)V

    .line 72
    .line 73
    .line 74
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/diagnostics/WifiIssueDetector;->addReport(Lcom/samsung/android/server/wifi/diagnostics/ReportData;)V

    .line 75
    .line 76
    .line 77
    iget-object p1, p0, Lcom/samsung/android/server/wifi/diagnostics/WifiIssueDetector;->mLog:Lcom/samsung/android/server/wifi/util/LogUtils;

    .line 78
    .line 79
    const-string v2, "WifiIssueDetector"

    .line 80
    .line 81
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/diagnostics/ReportData;->toString()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v3

    .line 85
    invoke-virtual {p1, v2, v3}, Lcom/samsung/android/server/wifi/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/diagnostics/ReportData;->toString()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/diagnostics/WifiIssueDetector;->addToHistoryDump(Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    iget-object p1, p0, Lcom/samsung/android/server/wifi/diagnostics/WifiIssueDetector;->mListeners:Ljava/util/Set;

    .line 96
    .line 97
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 98
    .line 99
    .line 100
    move-result-object p1

    .line 101
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 102
    .line 103
    .line 104
    move-result v2

    .line 105
    if-eqz v2, :cond_2

    .line 106
    .line 107
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    move-result-object v2

    .line 111
    check-cast v2, Lcom/samsung/android/server/wifi/diagnostics/WifiIssueDetector$DiagnosticReportListener;

    .line 112
    .line 113
    invoke-interface {v2, v1}, Lcom/samsung/android/server/wifi/diagnostics/WifiIssueDetector$DiagnosticReportListener;->onReportAdded(I)V

    .line 114
    .line 115
    .line 116
    goto :goto_0

    .line 117
    :cond_2
    iget-object p0, p0, Lcom/samsung/android/server/wifi/diagnostics/WifiIssueDetector;->mPatternMatchedListeners:Ljava/util/Set;

    .line 118
    .line 119
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 120
    .line 121
    .line 122
    move-result-object p0

    .line 123
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 124
    .line 125
    .line 126
    move-result p1

    .line 127
    if-eqz p1, :cond_3

    .line 128
    .line 129
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 130
    .line 131
    .line 132
    move-result-object p1

    .line 133
    check-cast p1, Lcom/samsung/android/server/wifi/diagnostics/WifiIssueDetector$PatternMatchedListener;

    .line 134
    .line 135
    invoke-interface {p1, v0}, Lcom/samsung/android/server/wifi/diagnostics/WifiIssueDetector$PatternMatchedListener;->onIssueDetected(Lcom/samsung/android/server/wifi/diagnostics/ReportData;)V

    .line 136
    .line 137
    .line 138
    goto :goto_1

    .line 139
    :cond_3
    const-string p0, "WifiIssueDetector"

    .line 140
    .line 141
    const-string p1, "pattern matched! pid="

    .line 142
    .line 143
    invoke-static {p1, p2, p0}, Lcom/samsung/android/server/wifi/SemClientModeManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    .line 145
    .line 146
    const/4 p0, 0x1

    .line 147
    return p0

    .line 148
    :goto_2
    :try_start_1
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 149
    throw p0
.end method

.method private attemptReport(ILandroid/os/Bundle;)V
    .locals 3

    .line 1
    if-gtz p1, :cond_0

    .line 2
    .line 3
    goto/16 :goto_2

    .line 4
    .line 5
    :cond_0
    const-string v0, "htime"

    .line 6
    .line 7
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_1

    .line 12
    .line 13
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    :cond_1
    const-string v0, "time"

    .line 17
    .line 18
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-eqz v1, :cond_2

    .line 23
    .line 24
    const-wide/16 v1, 0x0

    .line 25
    .line 26
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-static {p2, v0, v1}, Lcom/samsung/android/server/wifi/diagnostics/WifiIssuePattern;->getValue(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    check-cast v1, Ljava/lang/Long;

    .line 35
    .line 36
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 37
    .line 38
    .line 39
    move-result-wide v1

    .line 40
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    new-instance v0, Lcom/samsung/android/server/wifi/diagnostics/ReportData;

    .line 44
    .line 45
    invoke-direct {v0, p1, p2, v1, v2}, Lcom/samsung/android/server/wifi/diagnostics/ReportData;-><init>(ILandroid/os/Bundle;J)V

    .line 46
    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_2
    new-instance v0, Lcom/samsung/android/server/wifi/diagnostics/ReportData;

    .line 50
    .line 51
    invoke-direct {v0, p1, p2}, Lcom/samsung/android/server/wifi/diagnostics/ReportData;-><init>(ILandroid/os/Bundle;)V

    .line 52
    .line 53
    .line 54
    :goto_0
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/diagnostics/WifiIssueDetector;->addReport(Lcom/samsung/android/server/wifi/diagnostics/ReportData;)V

    .line 55
    .line 56
    .line 57
    iget-object p2, p0, Lcom/samsung/android/server/wifi/diagnostics/WifiIssueDetector;->mLog:Lcom/samsung/android/server/wifi/util/LogUtils;

    .line 58
    .line 59
    new-instance v1, Ljava/lang/StringBuilder;

    .line 60
    .line 61
    const-string v2, "report "

    .line 62
    .line 63
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    const-string v2, "WifiIssueDetector"

    .line 74
    .line 75
    invoke-virtual {p2, v2, v1}, Lcom/samsung/android/server/wifi/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    iget-object p2, p0, Lcom/samsung/android/server/wifi/diagnostics/WifiIssueDetector;->historyReportIds:Ljava/util/Set;

    .line 79
    .line 80
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 81
    .line 82
    .line 83
    move-result-object v1

    .line 84
    invoke-interface {p2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 85
    .line 86
    .line 87
    move-result p2

    .line 88
    if-eqz p2, :cond_3

    .line 89
    .line 90
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/diagnostics/ReportData;->toString()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object p2

    .line 94
    invoke-direct {p0, p2}, Lcom/samsung/android/server/wifi/diagnostics/WifiIssueDetector;->addToHistoryDump(Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    :cond_3
    iget-object p2, p0, Lcom/samsung/android/server/wifi/diagnostics/WifiIssueDetector;->mListeners:Ljava/util/Set;

    .line 98
    .line 99
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 100
    .line 101
    .line 102
    move-result-object p2

    .line 103
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 104
    .line 105
    .line 106
    move-result v1

    .line 107
    if-eqz v1, :cond_4

    .line 108
    .line 109
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    move-result-object v1

    .line 113
    check-cast v1, Lcom/samsung/android/server/wifi/diagnostics/WifiIssueDetector$DiagnosticReportListener;

    .line 114
    .line 115
    invoke-interface {v1, p1}, Lcom/samsung/android/server/wifi/diagnostics/WifiIssueDetector$DiagnosticReportListener;->onReportAdded(I)V

    .line 116
    .line 117
    .line 118
    goto :goto_1

    .line 119
    :cond_4
    iget-object p2, p0, Lcom/samsung/android/server/wifi/diagnostics/WifiIssueDetector;->mPatterns:Ljava/util/HashMap;

    .line 120
    .line 121
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 122
    .line 123
    .line 124
    move-result-object v1

    .line 125
    invoke-virtual {p2, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 126
    .line 127
    .line 128
    move-result p2

    .line 129
    if-eqz p2, :cond_6

    .line 130
    .line 131
    iget-object p2, p0, Lcom/samsung/android/server/wifi/diagnostics/WifiIssueDetector;->mPatterns:Ljava/util/HashMap;

    .line 132
    .line 133
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 134
    .line 135
    .line 136
    move-result-object p1

    .line 137
    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    .line 139
    .line 140
    move-result-object p1

    .line 141
    check-cast p1, Ljava/util/List;

    .line 142
    .line 143
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 144
    .line 145
    .line 146
    move-result-object p1

    .line 147
    :cond_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 148
    .line 149
    .line 150
    move-result p2

    .line 151
    if-eqz p2, :cond_6

    .line 152
    .line 153
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 154
    .line 155
    .line 156
    move-result-object p2

    .line 157
    check-cast p2, Lcom/samsung/android/server/wifi/diagnostics/WifiIssuePattern;

    .line 158
    .line 159
    invoke-direct {p0, p2, v0}, Lcom/samsung/android/server/wifi/diagnostics/WifiIssueDetector;->attemptIssueDetection(Lcom/samsung/android/server/wifi/diagnostics/WifiIssuePattern;Lcom/samsung/android/server/wifi/diagnostics/ReportData;)Z

    .line 160
    .line 161
    .line 162
    move-result p2

    .line 163
    if-eqz p2, :cond_5

    .line 164
    .line 165
    :cond_6
    :goto_2
    return-void
.end method

.method private static synthetic lambda$dump$0(Ljava/io/PrintWriter;Lcom/samsung/android/server/wifi/util/LogUtils;Lcom/samsung/android/server/wifi/diagnostics/ReportData;)V
    .locals 0

    .line 1
    invoke-virtual {p2}, Lcom/samsung/android/server/wifi/diagnostics/ReportData;->toString()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    invoke-virtual {p1, p2}, Lcom/samsung/android/server/wifi/util/LogUtils;->getPrintableLog(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method private static synthetic lambda$dump$1(Ljava/io/PrintWriter;Lcom/samsung/android/server/wifi/util/LogUtils;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p1, p2}, Lcom/samsung/android/server/wifi/util/LogUtils;->getPrintableLog(Ljava/lang/String;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method private static synthetic lambda$saveHistory$2(Ljava/lang/StringBuilder;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2
    .line 3
    .line 4
    const-string p1, "\n"

    .line 5
    .line 6
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method private loadHistory()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/io/File;

    .line 2
    .line 3
    const-string v1, "/data/misc/wifi/issue_detector.conf"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-nez v1, :cond_0

    .line 13
    .line 14
    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 15
    .line 16
    return-object p0

    .line 17
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->length()J

    .line 18
    .line 19
    .line 20
    move-result-wide v1

    .line 21
    const-wide/32 v3, 0x186a0

    .line 22
    .line 23
    .line 24
    cmp-long v1, v1, v3

    .line 25
    .line 26
    if-ltz v1, :cond_2

    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 29
    .line 30
    .line 31
    move-result p0

    .line 32
    if-nez p0, :cond_1

    .line 33
    .line 34
    const-string p0, "WifiIssueDetector"

    .line 35
    .line 36
    const-string v0, "failed to remove all history"

    .line 37
    .line 38
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    .line 40
    .line 41
    :cond_1
    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 42
    .line 43
    return-object p0

    .line 44
    :cond_2
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/diagnostics/WifiIssueDetector;->readFromFile()Ljava/util/List;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    return-object p0
.end method

.method private readFromFile()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance p0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    :try_start_0
    new-instance v0, Ljava/io/RandomAccessFile;

    .line 7
    .line 8
    const-string v1, "/data/misc/wifi/issue_detector.conf"

    .line 9
    .line 10
    const-string v2, "r"

    .line 11
    .line 12
    invoke-direct {v0, v1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    .line 14
    .line 15
    :cond_0
    :goto_0
    :try_start_1
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->readLine()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    if-eqz v1, :cond_2

    .line 20
    .line 21
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    sget v3, Lcom/samsung/android/server/wifi/diagnostics/WifiIssueDetector;->MAX_LIST_SIZE:I

    .line 26
    .line 27
    if-lt v2, v3, :cond_1

    .line 28
    .line 29
    const/4 v2, 0x0

    .line 30
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    goto :goto_1

    .line 34
    :catchall_0
    move-exception v1

    .line 35
    goto :goto_2

    .line 36
    :cond_1
    :goto_1
    const-string v2, "htime"

    .line 37
    .line 38
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    if-eqz v2, :cond_0

    .line 43
    .line 44
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_2
    :try_start_2
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 49
    .line 50
    .line 51
    return-object p0

    .line 52
    :catch_0
    move-exception v0

    .line 53
    goto :goto_4

    .line 54
    :goto_2
    :try_start_3
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 55
    .line 56
    .line 57
    goto :goto_3

    .line 58
    :catchall_1
    move-exception v0

    .line 59
    :try_start_4
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 60
    .line 61
    .line 62
    :goto_3
    throw v1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 63
    :goto_4
    sget-boolean v1, Lcom/samsung/android/server/wifi/diagnostics/WifiIssueDetector;->DBG:Z

    .line 64
    .line 65
    if-eqz v1, :cond_3

    .line 66
    .line 67
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 68
    .line 69
    .line 70
    :cond_3
    return-object p0
.end method

.method private saveHistory()V
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/samsung/android/server/wifi/diagnostics/WifiIssueDetector;->mLogLock:Ljava/lang/Object;

    .line 7
    .line 8
    monitor-enter v1

    .line 9
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/server/wifi/diagnostics/WifiIssueDetector;->mPatternMatchesLogs:Ljava/util/List;

    .line 10
    .line 11
    new-instance v3, Lcom/samsung/android/server/wifi/diagnostics/WifiIssueDetector$$ExternalSyntheticLambda0;

    .line 12
    .line 13
    invoke-direct {v3, v0}, Lcom/samsung/android/server/wifi/diagnostics/WifiIssueDetector$$ExternalSyntheticLambda0;-><init>(Ljava/lang/StringBuilder;)V

    .line 14
    .line 15
    .line 16
    invoke-interface {v2, v3}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 17
    .line 18
    .line 19
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/diagnostics/WifiIssueDetector;->writeLogToFile(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    return-void

    .line 28
    :catchall_0
    move-exception p0

    .line 29
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 30
    throw p0
.end method

.method private sendBroadcastIssueDetected(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 2
    .line 3
    const-string v1, "com.samsung.android.net.wifi.ISSUE_DETECTED"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const/high16 v1, 0x4000000

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 11
    .line 12
    .line 13
    const-string v1, "bigdataFeature"

    .line 14
    .line 15
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 16
    .line 17
    .line 18
    const-string p1, "patternId"

    .line 19
    .line 20
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 21
    .line 22
    .line 23
    const-string p1, "categoryId"

    .line 24
    .line 25
    invoke-virtual {v0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 26
    .line 27
    .line 28
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/diagnostics/WifiIssueDetector;->mContext:Landroid/content/Context;

    .line 29
    .line 30
    sget-object p1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 31
    .line 32
    const-string p2, "com.samsung.permission.WIFI_DIAGNOSTICS_PROVIDER"

    .line 33
    .line 34
    invoke-virtual {p0, v0, p1, p2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 35
    .line 36
    .line 37
    return-void

    .line 38
    :catch_0
    new-instance p0, Ljava/lang/StringBuilder;

    .line 39
    .line 40
    const-string p1, "Send broadcast before boot - action:"

    .line 41
    .line 42
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p0

    .line 56
    const-string p1, "WifiIssueDetector"

    .line 57
    .line 58
    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    .line 60
    .line 61
    return-void
.end method

.method private writeLogToFile(Ljava/lang/String;)V
    .locals 2

    .line 1
    const-string p0, "WifiIssueDetector"

    .line 2
    .line 3
    const-string v0, "write history to file"

    .line 4
    .line 5
    invoke-static {p0, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    :try_start_0
    new-instance p0, Ljava/io/RandomAccessFile;

    .line 9
    .line 10
    const-string v0, "/data/misc/wifi/issue_detector.conf"

    .line 11
    .line 12
    const-string v1, "rw"

    .line 13
    .line 14
    invoke-direct {p0, v0, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    .line 16
    .line 17
    const-wide/16 v0, 0x0

    .line 18
    .line 19
    :try_start_1
    invoke-virtual {p0, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0, p1}, Ljava/io/RandomAccessFile;->writeBytes(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    int-to-long v0, p1

    .line 30
    invoke-virtual {p0, v0, v1}, Ljava/io/RandomAccessFile;->setLength(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 31
    .line 32
    .line 33
    :try_start_2
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 34
    .line 35
    .line 36
    return-void

    .line 37
    :catchall_0
    move-exception p1

    .line 38
    :try_start_3
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :catchall_1
    move-exception p0

    .line 43
    :try_start_4
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 44
    .line 45
    .line 46
    :goto_0
    throw p1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 47
    :catch_0
    move-exception p0

    .line 48
    sget-boolean p1, Lcom/samsung/android/server/wifi/diagnostics/WifiIssueDetector;->DBG:Z

    .line 49
    .line 50
    if-eqz p1, :cond_0

    .line 51
    .line 52
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 53
    .line 54
    .line 55
    :cond_0
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .locals 5

    .line 1
    const-string v0, "SemWifiIssueDetector:"

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lcom/samsung/android/server/wifi/util/LogUtils;

    .line 7
    .line 8
    invoke-direct {v0}, Lcom/samsung/android/server/wifi/util/LogUtils;-><init>()V

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lcom/samsung/android/server/wifi/diagnostics/WifiIssueDetector;->mLogLock:Ljava/lang/Object;

    .line 12
    .line 13
    monitor-enter v1

    .line 14
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/server/wifi/diagnostics/WifiIssueDetector;->mLogs:Ljava/util/List;

    .line 15
    .line 16
    new-instance v3, Lcom/samsung/android/server/wifi/diagnostics/WifiIssueDetector$$ExternalSyntheticLambda1;

    .line 17
    .line 18
    const/4 v4, 0x0

    .line 19
    invoke-direct {v3, p1, v0, v4}, Lcom/samsung/android/server/wifi/diagnostics/WifiIssueDetector$$ExternalSyntheticLambda1;-><init>(Ljava/io/PrintWriter;Lcom/samsung/android/server/wifi/util/LogUtils;I)V

    .line 20
    .line 21
    .line 22
    invoke-interface {v2, v3}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 23
    .line 24
    .line 25
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 26
    const-string v1, "SemWifiIssueDetectorHistory:"

    .line 27
    .line 28
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    iget-object v2, p0, Lcom/samsung/android/server/wifi/diagnostics/WifiIssueDetector;->mLogLock:Ljava/lang/Object;

    .line 32
    .line 33
    monitor-enter v2

    .line 34
    :try_start_1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/diagnostics/WifiIssueDetector;->mPatternMatchesLogs:Ljava/util/List;

    .line 35
    .line 36
    new-instance v1, Lcom/samsung/android/server/wifi/diagnostics/WifiIssueDetector$$ExternalSyntheticLambda1;

    .line 37
    .line 38
    const/4 v3, 0x1

    .line 39
    invoke-direct {v1, p1, v0, v3}, Lcom/samsung/android/server/wifi/diagnostics/WifiIssueDetector$$ExternalSyntheticLambda1;-><init>(Ljava/io/PrintWriter;Lcom/samsung/android/server/wifi/util/LogUtils;I)V

    .line 40
    .line 41
    .line 42
    invoke-interface {p0, v1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 43
    .line 44
    .line 45
    monitor-exit v2

    .line 46
    return-void

    .line 47
    :catchall_0
    move-exception p0

    .line 48
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 49
    throw p0

    .line 50
    :catchall_1
    move-exception p0

    .line 51
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 52
    throw p0
.end method

.method public getRawData(I)Ljava/lang/String;
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/samsung/android/server/wifi/diagnostics/WifiIssueDetector;->mLogLock:Ljava/lang/Object;

    .line 7
    .line 8
    monitor-enter v1

    .line 9
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/server/wifi/diagnostics/WifiIssueDetector;->mLogs:Ljava/util/List;

    .line 10
    .line 11
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    add-int/lit8 v2, v2, -0x1

    .line 16
    .line 17
    const/4 v3, 0x0

    .line 18
    :goto_0
    if-ltz v2, :cond_1

    .line 19
    .line 20
    iget-object v4, p0, Lcom/samsung/android/server/wifi/diagnostics/WifiIssueDetector;->mLogs:Ljava/util/List;

    .line 21
    .line 22
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v4

    .line 26
    check-cast v4, Lcom/samsung/android/server/wifi/diagnostics/ReportData;

    .line 27
    .line 28
    invoke-virtual {v4}, Lcom/samsung/android/server/wifi/diagnostics/ReportData;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v4

    .line 32
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    const-string v4, "\n"

    .line 36
    .line 37
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    add-int/lit8 v3, v3, 0x1

    .line 41
    .line 42
    if-lt v3, p1, :cond_0

    .line 43
    .line 44
    goto :goto_1

    .line 45
    :cond_0
    add-int/lit8 v2, v2, -0x1

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :catchall_0
    move-exception p0

    .line 49
    goto :goto_2

    .line 50
    :cond_1
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object p0

    .line 59
    return-object p0

    .line 60
    :goto_2
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 61
    throw p0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eq v0, v1, :cond_1

    .line 5
    .line 6
    const/4 v1, 0x2

    .line 7
    if-eq v0, v1, :cond_0

    .line 8
    .line 9
    new-instance p0, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    const-string v0, "unhandled command "

    .line 12
    .line 13
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    iget p1, p1, Landroid/os/Message;->what:I

    .line 17
    .line 18
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    const-string p1, "WifiIssueDetector"

    .line 26
    .line 27
    invoke-static {p1, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    .line 29
    .line 30
    return-void

    .line 31
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/diagnostics/WifiIssueDetector;->saveHistory()V

    .line 32
    .line 33
    .line 34
    return-void

    .line 35
    :cond_1
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 36
    .line 37
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 38
    .line 39
    check-cast p1, Landroid/os/Bundle;

    .line 40
    .line 41
    if-eqz p1, :cond_2

    .line 42
    .line 43
    invoke-direct {p0, v0, p1}, Lcom/samsung/android/server/wifi/diagnostics/WifiIssueDetector;->attemptReport(ILandroid/os/Bundle;)V

    .line 44
    .line 45
    .line 46
    :cond_2
    return-void
.end method

.method public registerDiagnosticListener(Lcom/samsung/android/server/wifi/diagnostics/WifiIssueDetector$DiagnosticReportListener;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/diagnostics/WifiIssueDetector;->mListeners:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public registerDiagnosticListener(Lcom/samsung/android/server/wifi/diagnostics/WifiIssueDetector$PatternMatchedListener;)V
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/samsung/android/server/wifi/diagnostics/WifiIssueDetector;->mPatternMatchedListeners:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method registerIssuePattern(Lcom/samsung/android/server/wifi/diagnostics/WifiIssuePattern;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/diagnostics/WifiIssuePattern;->getAssociatedReportIds()Ljava/util/Collection;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    check-cast v1, Ljava/lang/Integer;

    .line 20
    .line 21
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 22
    .line 23
    .line 24
    iget-object v2, p0, Lcom/samsung/android/server/wifi/diagnostics/WifiIssueDetector;->mPatterns:Ljava/util/HashMap;

    .line 25
    .line 26
    new-instance v3, Ljava/util/ArrayList;

    .line 27
    .line 28
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v2, v1, v3}, Ljava/util/HashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    check-cast v2, Ljava/util/List;

    .line 36
    .line 37
    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    iget-object v3, p0, Lcom/samsung/android/server/wifi/diagnostics/WifiIssueDetector;->mPatterns:Ljava/util/HashMap;

    .line 41
    .line 42
    invoke-virtual {v3, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_0
    return-void
.end method

.method public report(ILandroid/os/Bundle;)V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    invoke-virtual {p0, v0, p1, v1, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public unregisterDiagnosticListener(Lcom/samsung/android/server/wifi/diagnostics/WifiIssueDetector$DiagnosticReportListener;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/diagnostics/WifiIssueDetector;->mListeners:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public unregisterDiagnosticListener(Lcom/samsung/android/server/wifi/diagnostics/WifiIssueDetector$PatternMatchedListener;)V
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/samsung/android/server/wifi/diagnostics/WifiIssueDetector;->mPatternMatchedListeners:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method
