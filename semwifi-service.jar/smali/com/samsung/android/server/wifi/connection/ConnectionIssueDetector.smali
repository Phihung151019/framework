.class public Lcom/samsung/android/server/wifi/connection/ConnectionIssueDetector;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# static fields
.field private static final LOG_MARGIN_TIME_MILLIS:I = 0x3e8

.field private static final TAG:Ljava/lang/String; = "Conn.IssueDetector"


# instance fields
.field private final mAnalyzers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/server/wifi/connection/BaseAnalyzer;",
            ">;"
        }
    .end annotation
.end field

.field private final mDetailedAnalyzers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/samsung/android/server/wifi/connection/BaseAnalyzer;",
            ">;"
        }
    .end annotation
.end field

.field private mLastLogLine:Ljava/lang/String;

.field private final mLogManager:Lcom/samsung/android/server/wifi/connection/LogManager;

.field private final mLogger:Lcom/samsung/android/server/wifi/SemConnectivityLogger;


# direct methods
.method public constructor <init>(Lcom/samsung/android/server/wifi/SemConnectivityLogger;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/samsung/android/server/wifi/connection/LogManager;

    .line 5
    .line 6
    invoke-direct {v0}, Lcom/samsung/android/server/wifi/connection/LogManager;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/samsung/android/server/wifi/connection/ConnectionIssueDetector;->mLogManager:Lcom/samsung/android/server/wifi/connection/LogManager;

    .line 10
    .line 11
    new-instance v0, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/samsung/android/server/wifi/connection/ConnectionIssueDetector;->mAnalyzers:Ljava/util/ArrayList;

    .line 17
    .line 18
    new-instance v1, Ljava/util/HashMap;

    .line 19
    .line 20
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v1, p0, Lcom/samsung/android/server/wifi/connection/ConnectionIssueDetector;->mDetailedAnalyzers:Ljava/util/HashMap;

    .line 24
    .line 25
    const-string v2, ""

    .line 26
    .line 27
    iput-object v2, p0, Lcom/samsung/android/server/wifi/connection/ConnectionIssueDetector;->mLastLogLine:Ljava/lang/String;

    .line 28
    .line 29
    iput-object p1, p0, Lcom/samsung/android/server/wifi/connection/ConnectionIssueDetector;->mLogger:Lcom/samsung/android/server/wifi/SemConnectivityLogger;

    .line 30
    .line 31
    new-instance p0, Lcom/samsung/android/server/wifi/connection/BtmAnalyzer;

    .line 32
    .line 33
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/connection/BtmAnalyzer;-><init>()V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    new-instance p0, Lcom/samsung/android/server/wifi/connection/KeepAliveAnalyzer;

    .line 40
    .line 41
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/connection/KeepAliveAnalyzer;-><init>()V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    new-instance p0, Lcom/samsung/android/server/wifi/connection/GtkAnalyzer;

    .line 48
    .line 49
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/connection/GtkAnalyzer;-><init>()V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    new-instance p0, Lcom/samsung/android/server/wifi/connection/IeMismatchAnalyzer;

    .line 56
    .line 57
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/connection/IeMismatchAnalyzer;-><init>()V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 61
    .line 62
    .line 63
    new-instance p0, Lcom/samsung/android/server/wifi/connection/ConnectionFailureAnalyzer;

    .line 64
    .line 65
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/connection/ConnectionFailureAnalyzer;-><init>()V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 69
    .line 70
    .line 71
    const/4 p0, 0x2

    .line 72
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 73
    .line 74
    .line 75
    move-result-object p0

    .line 76
    new-instance p1, Lcom/samsung/android/server/wifi/connection/KeepAliveDetailedAnalyzer;

    .line 77
    .line 78
    invoke-direct {p1}, Lcom/samsung/android/server/wifi/connection/KeepAliveDetailedAnalyzer;-><init>()V

    .line 79
    .line 80
    .line 81
    invoke-virtual {v1, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    const/4 p0, 0x6

    .line 85
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 86
    .line 87
    .line 88
    move-result-object p0

    .line 89
    new-instance p1, Lcom/samsung/android/server/wifi/connection/ConnectionFailureDetailedAnalyzer;

    .line 90
    .line 91
    invoke-direct {p1}, Lcom/samsung/android/server/wifi/connection/ConnectionFailureDetailedAnalyzer;-><init>()V

    .line 92
    .line 93
    .line 94
    invoke-virtual {v1, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    return-void
.end method

.method private runAnalyzers()Lcom/samsung/android/server/wifi/connection/Issue;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/connection/ConnectionIssueDetector;->mAnalyzers:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x0

    .line 8
    :cond_0
    if-ge v2, v1, :cond_1

    .line 9
    .line 10
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v3

    .line 14
    add-int/lit8 v2, v2, 0x1

    .line 15
    .line 16
    check-cast v3, Lcom/samsung/android/server/wifi/connection/BaseAnalyzer;

    .line 17
    .line 18
    iget-object v4, p0, Lcom/samsung/android/server/wifi/connection/ConnectionIssueDetector;->mLogManager:Lcom/samsung/android/server/wifi/connection/LogManager;

    .line 19
    .line 20
    invoke-interface {v3, v4}, Lcom/samsung/android/server/wifi/connection/BaseAnalyzer;->analyze(Lcom/samsung/android/server/wifi/connection/LogManager;)Lcom/samsung/android/server/wifi/connection/Issue;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    invoke-virtual {v3}, Lcom/samsung/android/server/wifi/connection/Issue;->isNone()Z

    .line 25
    .line 26
    .line 27
    move-result v4

    .line 28
    if-nez v4, :cond_0

    .line 29
    .line 30
    iget-object p0, p0, Lcom/samsung/android/server/wifi/connection/ConnectionIssueDetector;->mLogManager:Lcom/samsung/android/server/wifi/connection/LogManager;

    .line 31
    .line 32
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/connection/LogManager;->requestRecent()Lcom/samsung/android/server/wifi/connection/LogSet;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/connection/LogSet;->getLastLogLine()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-static {v0}, Lcom/samsung/android/server/wifi/connection/Util;->parseDate(Ljava/lang/String;)Ljava/util/Date;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    iput-object v0, v3, Lcom/samsung/android/server/wifi/connection/Issue;->detectedDate:Ljava/util/Date;

    .line 45
    .line 46
    iput-object v3, p0, Lcom/samsung/android/server/wifi/connection/LogSet;->issue:Lcom/samsung/android/server/wifi/connection/Issue;

    .line 47
    .line 48
    return-object v3

    .line 49
    :cond_1
    sget-object p0, Lcom/samsung/android/server/wifi/connection/Issue;->NONE:Lcom/samsung/android/server/wifi/connection/Issue;

    .line 50
    .line 51
    return-object p0
.end method


# virtual methods
.method public detect()Lcom/samsung/android/server/wifi/connection/Issue;
    .locals 7

    .line 1
    sget-object v0, Lcom/samsung/android/server/wifi/connection/Issue;->NONE:Lcom/samsung/android/server/wifi/connection/Issue;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/samsung/android/server/wifi/connection/ConnectionIssueDetector;->mLogger:Lcom/samsung/android/server/wifi/SemConnectivityLogger;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/samsung/android/server/wifi/connection/ConnectionIssueDetector;->mLastLogLine:Ljava/lang/String;

    .line 6
    .line 7
    invoke-virtual {v1, v2}, Lcom/samsung/android/server/wifi/SemConnectivityLogger;->getLogAfter(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {p0, v1}, Lcom/samsung/android/server/wifi/connection/ConnectionIssueDetector;->updateLogSet(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    if-eqz v2, :cond_0

    .line 20
    .line 21
    return-object v0

    .line 22
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    const-string v3, "# of new LogSets: "

    .line 25
    .line 26
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 30
    .line 31
    .line 32
    move-result v3

    .line 33
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    const-string v3, "Conn.IssueDetector"

    .line 41
    .line 42
    invoke-static {v3, v2}, Lcom/samsung/android/server/wifi/connection/Clog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 46
    .line 47
    .line 48
    move-result v2

    .line 49
    add-int/lit8 v2, v2, -0x1

    .line 50
    .line 51
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    check-cast v2, Lcom/samsung/android/server/wifi/connection/LogSet;

    .line 56
    .line 57
    iget-object v2, v2, Lcom/samsung/android/server/wifi/connection/LogSet;->logs:Ljava/util/ArrayList;

    .line 58
    .line 59
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 60
    .line 61
    .line 62
    move-result v4

    .line 63
    add-int/lit8 v4, v4, -0x1

    .line 64
    .line 65
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object v2

    .line 69
    check-cast v2, Ljava/lang/String;

    .line 70
    .line 71
    iput-object v2, p0, Lcom/samsung/android/server/wifi/connection/ConnectionIssueDetector;->mLastLogLine:Ljava/lang/String;

    .line 72
    .line 73
    new-instance v2, Ljava/lang/StringBuilder;

    .line 74
    .line 75
    const-string v4, "New lastLine: "

    .line 76
    .line 77
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    iget-object v4, p0, Lcom/samsung/android/server/wifi/connection/ConnectionIssueDetector;->mLastLogLine:Ljava/lang/String;

    .line 81
    .line 82
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v2

    .line 89
    invoke-static {v3, v2}, Lcom/samsung/android/server/wifi/connection/Clog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 93
    .line 94
    .line 95
    move-result v2

    .line 96
    const/4 v4, 0x0

    .line 97
    :goto_0
    if-ge v4, v2, :cond_1

    .line 98
    .line 99
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    add-int/lit8 v4, v4, 0x1

    .line 104
    .line 105
    check-cast v0, Lcom/samsung/android/server/wifi/connection/LogSet;

    .line 106
    .line 107
    iget-object v5, p0, Lcom/samsung/android/server/wifi/connection/ConnectionIssueDetector;->mLogManager:Lcom/samsung/android/server/wifi/connection/LogManager;

    .line 108
    .line 109
    invoke-virtual {v5, v0}, Lcom/samsung/android/server/wifi/connection/LogManager;->add(Lcom/samsung/android/server/wifi/connection/LogSet;)V

    .line 110
    .line 111
    .line 112
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/connection/ConnectionIssueDetector;->runAnalyzers()Lcom/samsung/android/server/wifi/connection/Issue;

    .line 113
    .line 114
    .line 115
    move-result-object v0

    .line 116
    new-instance v5, Ljava/lang/StringBuilder;

    .line 117
    .line 118
    const-string v6, "detect: issueId="

    .line 119
    .line 120
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    iget v6, v0, Lcom/samsung/android/server/wifi/connection/Issue;->id:I

    .line 124
    .line 125
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v5

    .line 132
    invoke-static {v3, v5}, Lcom/samsung/android/server/wifi/connection/Clog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    .line 134
    .line 135
    goto :goto_0

    .line 136
    :cond_1
    return-object v0
.end method

.method public detectDetailed()Lcom/samsung/android/server/wifi/connection/Issue;
    .locals 3

    .line 1
    sget-object v0, Lcom/samsung/android/server/wifi/connection/Issue;->NONE:Lcom/samsung/android/server/wifi/connection/Issue;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/samsung/android/server/wifi/connection/ConnectionIssueDetector;->mLogManager:Lcom/samsung/android/server/wifi/connection/LogManager;

    .line 4
    .line 5
    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/connection/LogManager;->getNumOfConnections()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const/4 v2, 0x1

    .line 10
    if-le v1, v2, :cond_1

    .line 11
    .line 12
    iget-object v1, p0, Lcom/samsung/android/server/wifi/connection/ConnectionIssueDetector;->mLogManager:Lcom/samsung/android/server/wifi/connection/LogManager;

    .line 13
    .line 14
    invoke-virtual {v1, v2}, Lcom/samsung/android/server/wifi/connection/LogManager;->request(I)Lcom/samsung/android/server/wifi/connection/LogSet;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    iget-object v2, p0, Lcom/samsung/android/server/wifi/connection/ConnectionIssueDetector;->mDetailedAnalyzers:Ljava/util/HashMap;

    .line 19
    .line 20
    iget-object v1, v1, Lcom/samsung/android/server/wifi/connection/LogSet;->issue:Lcom/samsung/android/server/wifi/connection/Issue;

    .line 21
    .line 22
    iget v1, v1, Lcom/samsung/android/server/wifi/connection/Issue;->id:I

    .line 23
    .line 24
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    check-cast v1, Lcom/samsung/android/server/wifi/connection/BaseAnalyzer;

    .line 33
    .line 34
    if-eqz v1, :cond_1

    .line 35
    .line 36
    iget-object p0, p0, Lcom/samsung/android/server/wifi/connection/ConnectionIssueDetector;->mLogManager:Lcom/samsung/android/server/wifi/connection/LogManager;

    .line 37
    .line 38
    invoke-interface {v1, p0}, Lcom/samsung/android/server/wifi/connection/BaseAnalyzer;->analyze(Lcom/samsung/android/server/wifi/connection/LogManager;)Lcom/samsung/android/server/wifi/connection/Issue;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/connection/Issue;->isNone()Z

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    if-nez v0, :cond_0

    .line 47
    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    .line 49
    .line 50
    const-string v1, "detectDetailed: issueId="

    .line 51
    .line 52
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    iget v1, p0, Lcom/samsung/android/server/wifi/connection/Issue;->id:I

    .line 56
    .line 57
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    const-string v1, "Conn.IssueDetector"

    .line 65
    .line 66
    invoke-static {v1, v0}, Lcom/samsung/android/server/wifi/connection/Clog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    :cond_0
    return-object p0

    .line 70
    :cond_1
    return-object v0
.end method

.method getLastLogSet()Lcom/samsung/android/server/wifi/connection/LogSet;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/connection/ConnectionIssueDetector;->mLogManager:Lcom/samsung/android/server/wifi/connection/LogManager;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/connection/LogManager;->requestRecent()Lcom/samsung/android/server/wifi/connection/LogSet;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public getLogManager()Lcom/samsung/android/server/wifi/connection/LogManager;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/connection/ConnectionIssueDetector;->mLogManager:Lcom/samsung/android/server/wifi/connection/LogManager;

    .line 2
    .line 3
    return-object p0
.end method

.method public updateLogSet(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/server/wifi/connection/LogSet;",
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
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    goto/16 :goto_1

    .line 13
    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    const/4 v1, -0x1

    .line 16
    move v2, v0

    .line 17
    move v3, v1

    .line 18
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 19
    .line 20
    .line 21
    move-result v4

    .line 22
    if-ge v0, v4, :cond_3

    .line 23
    .line 24
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v4

    .line 28
    check-cast v4, Ljava/lang/String;

    .line 29
    .line 30
    const-string v5, "[CONN] CONNECTING ssid="

    .line 31
    .line 32
    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 33
    .line 34
    .line 35
    move-result v4

    .line 36
    if-eqz v4, :cond_2

    .line 37
    .line 38
    if-eq v3, v1, :cond_1

    .line 39
    .line 40
    sub-int v3, v0, v3

    .line 41
    .line 42
    const/4 v4, 0x1

    .line 43
    if-le v3, v4, :cond_1

    .line 44
    .line 45
    sub-int v3, v0, v2

    .line 46
    .line 47
    if-lez v3, :cond_1

    .line 48
    .line 49
    new-instance v3, Ljava/util/ArrayList;

    .line 50
    .line 51
    invoke-virtual {p1, v2, v0}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 56
    .line 57
    .line 58
    invoke-static {v3}, Lcom/samsung/android/server/wifi/connection/LogSet;->create(Ljava/util/ArrayList;)Lcom/samsung/android/server/wifi/connection/LogSet;

    .line 59
    .line 60
    .line 61
    move-result-object v2

    .line 62
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    move v2, v0

    .line 66
    :cond_1
    move v3, v0

    .line 67
    :cond_2
    add-int/lit8 v0, v0, 0x1

    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_3
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 71
    .line 72
    .line 73
    move-result v0

    .line 74
    if-ge v2, v0, :cond_4

    .line 75
    .line 76
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    check-cast v0, Ljava/lang/String;

    .line 81
    .line 82
    invoke-static {v0}, Lcom/samsung/android/server/wifi/connection/Util;->parseDate(Ljava/lang/String;)Ljava/util/Date;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    new-instance v1, Ljava/util/Date;

    .line 87
    .line 88
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 89
    .line 90
    .line 91
    move-result-wide v3

    .line 92
    invoke-direct {v1, v3, v4}, Ljava/util/Date;-><init>(J)V

    .line 93
    .line 94
    .line 95
    if-eqz v0, :cond_4

    .line 96
    .line 97
    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    .line 98
    .line 99
    .line 100
    move-result-wide v3

    .line 101
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    .line 102
    .line 103
    .line 104
    move-result-wide v0

    .line 105
    sub-long/2addr v3, v0

    .line 106
    invoke-static {v3, v4}, Ljava/lang/Math;->abs(J)J

    .line 107
    .line 108
    .line 109
    move-result-wide v0

    .line 110
    const-wide/16 v3, 0x3e8

    .line 111
    .line 112
    cmp-long v0, v0, v3

    .line 113
    .line 114
    if-ltz v0, :cond_4

    .line 115
    .line 116
    new-instance v0, Ljava/util/ArrayList;

    .line 117
    .line 118
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 119
    .line 120
    .line 121
    move-result v1

    .line 122
    invoke-virtual {p1, v2, v1}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    .line 123
    .line 124
    .line 125
    move-result-object p1

    .line 126
    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 127
    .line 128
    .line 129
    invoke-static {v0}, Lcom/samsung/android/server/wifi/connection/LogSet;->create(Ljava/util/ArrayList;)Lcom/samsung/android/server/wifi/connection/LogSet;

    .line 130
    .line 131
    .line 132
    move-result-object p1

    .line 133
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 134
    .line 135
    .line 136
    :cond_4
    :goto_1
    return-object p0
.end method
