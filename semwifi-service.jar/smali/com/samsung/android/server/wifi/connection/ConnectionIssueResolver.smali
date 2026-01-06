.class public Lcom/samsung/android/server/wifi/connection/ConnectionIssueResolver;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# static fields
.field private static final BTM_ISSUE_DURATION_DAYS:I = 0x2

.field private static final BTM_ISSUE_DURATION_MS:I = 0xa4cb800

.field private static final BTM_ISSUE_RESOLVE_COUNT_THRESHOLD:I = 0x3

.field private static final TAG:Ljava/lang/String; = "Conn.IssueResolver"


# instance fields
.field private final mConfigManager:Lcom/samsung/android/server/wifi/connection/ConnectionConfigManager;

.field private final mConnectionBigdataManager:Lcom/samsung/android/server/wifi/connection/ConnectionBigdataManager;

.field private final mIssueHistoryManager:Lcom/samsung/android/server/wifi/connection/ConnectionIssueHistoryManager;


# direct methods
.method public constructor <init>(Lcom/samsung/android/server/wifi/connection/ConnectionConfigManager;Lcom/samsung/android/server/wifi/connection/ConnectionIssueHistoryManager;Lcom/samsung/android/server/wifi/connection/ConnectionBigdataManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/samsung/android/server/wifi/connection/ConnectionIssueResolver;->mConfigManager:Lcom/samsung/android/server/wifi/connection/ConnectionConfigManager;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/samsung/android/server/wifi/connection/ConnectionIssueResolver;->mIssueHistoryManager:Lcom/samsung/android/server/wifi/connection/ConnectionIssueHistoryManager;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/samsung/android/server/wifi/connection/ConnectionIssueResolver;->mConnectionBigdataManager:Lcom/samsung/android/server/wifi/connection/ConnectionBigdataManager;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method isResolutionNeeded(Ljava/lang/String;I)Z
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/connection/ConnectionIssueResolver;->mIssueHistoryManager:Lcom/samsung/android/server/wifi/connection/ConnectionIssueHistoryManager;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/server/wifi/connection/ConnectionIssueHistoryManager;->getIssueHistory(Ljava/lang/String;I)Ljava/util/LinkedList;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    check-cast v1, Lcom/samsung/android/server/wifi/connection/Issue;

    .line 12
    .line 13
    iget-object v1, v1, Lcom/samsung/android/server/wifi/connection/Issue;->detectedDate:Ljava/util/Date;

    .line 14
    .line 15
    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    .line 16
    .line 17
    .line 18
    move-result-wide v1

    .line 19
    const-string v3, ", issueCount: "

    .line 20
    .line 21
    const-string v4, "Conn.IssueResolver"

    .line 22
    .line 23
    const/4 v5, 0x0

    .line 24
    const/4 v6, 0x1

    .line 25
    if-ne p2, v6, :cond_2

    .line 26
    .line 27
    iget-object v7, p0, Lcom/samsung/android/server/wifi/connection/ConnectionIssueResolver;->mConfigManager:Lcom/samsung/android/server/wifi/connection/ConnectionConfigManager;

    .line 28
    .line 29
    invoke-virtual {v7, p1}, Lcom/samsung/android/server/wifi/connection/ConnectionConfigManager;->isBtmOptionDefault(Ljava/lang/String;)Z

    .line 30
    .line 31
    .line 32
    move-result v7

    .line 33
    if-eqz v7, :cond_2

    .line 34
    .line 35
    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    move v7, v5

    .line 40
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 41
    .line 42
    .line 43
    move-result v8

    .line 44
    if-eqz v8, :cond_3

    .line 45
    .line 46
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v8

    .line 50
    check-cast v8, Lcom/samsung/android/server/wifi/connection/Issue;

    .line 51
    .line 52
    iget-object v8, v8, Lcom/samsung/android/server/wifi/connection/Issue;->detectedDate:Ljava/util/Date;

    .line 53
    .line 54
    invoke-virtual {v8}, Ljava/util/Date;->getTime()J

    .line 55
    .line 56
    .line 57
    move-result-wide v8

    .line 58
    const-wide/32 v10, 0xa4cb800

    .line 59
    .line 60
    .line 61
    add-long/2addr v8, v10

    .line 62
    cmp-long v8, v8, v1

    .line 63
    .line 64
    if-ltz v8, :cond_1

    .line 65
    .line 66
    add-int/lit8 v7, v7, 0x1

    .line 67
    .line 68
    :cond_1
    const/4 v8, 0x3

    .line 69
    if-ne v7, v8, :cond_0

    .line 70
    .line 71
    new-instance p0, Ljava/lang/StringBuilder;

    .line 72
    .line 73
    const-string p1, "Resolution is needed for issueId: "

    .line 74
    .line 75
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object p0

    .line 91
    invoke-static {v4, p0}, Lcom/samsung/android/server/wifi/connection/Clog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    return v6

    .line 95
    :cond_2
    move v7, v5

    .line 96
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    .line 97
    .line 98
    const-string v1, "Resolution is not needed for configKey: "

    .line 99
    .line 100
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    const-string v1, ", issueId: "

    .line 107
    .line 108
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    const-string p2, ", isBtmOptionDefault: "

    .line 115
    .line 116
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    iget-object p0, p0, Lcom/samsung/android/server/wifi/connection/ConnectionIssueResolver;->mConfigManager:Lcom/samsung/android/server/wifi/connection/ConnectionConfigManager;

    .line 120
    .line 121
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/connection/ConnectionConfigManager;->isBtmOptionDefault(Ljava/lang/String;)Z

    .line 122
    .line 123
    .line 124
    move-result p0

    .line 125
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object p0

    .line 138
    invoke-static {v4, p0}, Lcom/samsung/android/server/wifi/connection/Clog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    .line 140
    .line 141
    return v5
.end method

.method resolveIssue(Ljava/lang/String;I)V
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    const-string v1, ", issueId: "

    .line 3
    .line 4
    const-string v2, "Conn.IssueResolver"

    .line 5
    .line 6
    if-ne p2, v0, :cond_0

    .line 7
    .line 8
    iget-object p0, p0, Lcom/samsung/android/server/wifi/connection/ConnectionIssueResolver;->mConfigManager:Lcom/samsung/android/server/wifi/connection/ConnectionConfigManager;

    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/server/wifi/connection/ConnectionConfigManager;->setBtmOptionEnabled(Ljava/lang/String;Z)V

    .line 12
    .line 13
    .line 14
    new-instance p0, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    const-string v0, "Do resolution, configKey: "

    .line 17
    .line 18
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    invoke-static {v2, p0}, Lcom/samsung/android/server/wifi/connection/Clog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    return-void

    .line 38
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    .line 39
    .line 40
    const-string v0, "No resolution, configKey: "

    .line 41
    .line 42
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object p0

    .line 58
    invoke-static {v2, p0}, Lcom/samsung/android/server/wifi/connection/Clog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    return-void
.end method

.method resolveIssueForDetectedBigdata(Ljava/lang/String;I)V
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    const-string v1, ", issueId: "

    .line 3
    .line 4
    const-string v2, "Conn.IssueResolver"

    .line 5
    .line 6
    if-ne p2, v0, :cond_0

    .line 7
    .line 8
    iget-object p0, p0, Lcom/samsung/android/server/wifi/connection/ConnectionIssueResolver;->mConfigManager:Lcom/samsung/android/server/wifi/connection/ConnectionConfigManager;

    .line 9
    .line 10
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/connection/ConnectionConfigManager;->setBtmOptionDetectedBigdata(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    new-instance p0, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    const-string v0, "Do resolution for detected bigdata, configKey: "

    .line 16
    .line 17
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    invoke-static {v2, p0}, Lcom/samsung/android/server/wifi/connection/Clog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    return-void

    .line 37
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    .line 38
    .line 39
    const-string v0, "No resolution for detected big data, configKey: "

    .line 40
    .line 41
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p0

    .line 57
    invoke-static {v2, p0}, Lcom/samsung/android/server/wifi/connection/Clog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    return-void
.end method

.method resolveIssueForEnabledBigdata(Ljava/lang/String;I)V
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    const-string v1, ", issueId: "

    .line 3
    .line 4
    const-string v2, "Conn.IssueResolver"

    .line 5
    .line 6
    if-ne p2, v0, :cond_0

    .line 7
    .line 8
    iget-object p0, p0, Lcom/samsung/android/server/wifi/connection/ConnectionIssueResolver;->mConfigManager:Lcom/samsung/android/server/wifi/connection/ConnectionConfigManager;

    .line 9
    .line 10
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/connection/ConnectionConfigManager;->setBtmOptionEnabledBigdata(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    new-instance p0, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    const-string v0, "Do resolution for enabled big data, configKey: "

    .line 16
    .line 17
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    invoke-static {v2, p0}, Lcom/samsung/android/server/wifi/connection/Clog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    return-void

    .line 37
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    .line 38
    .line 39
    const-string v0, "No resolution for enabled big data, configKey: "

    .line 40
    .line 41
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p0

    .line 57
    invoke-static {v2, p0}, Lcom/samsung/android/server/wifi/connection/Clog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    return-void
.end method

.method resolveIssueForUnmetCondition(Ljava/lang/String;I)V
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    const-string v1, ", issueId: "

    .line 3
    .line 4
    const-string v2, "Conn.IssueResolver"

    .line 5
    .line 6
    if-ne p2, v0, :cond_0

    .line 7
    .line 8
    iget-object v0, p0, Lcom/samsung/android/server/wifi/connection/ConnectionIssueResolver;->mConfigManager:Lcom/samsung/android/server/wifi/connection/ConnectionConfigManager;

    .line 9
    .line 10
    const/4 v3, 0x0

    .line 11
    invoke-virtual {v0, p1, v3}, Lcom/samsung/android/server/wifi/connection/ConnectionConfigManager;->setBtmOptionEnabled(Ljava/lang/String;Z)V

    .line 12
    .line 13
    .line 14
    iget-object p0, p0, Lcom/samsung/android/server/wifi/connection/ConnectionIssueResolver;->mConfigManager:Lcom/samsung/android/server/wifi/connection/ConnectionConfigManager;

    .line 15
    .line 16
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/connection/ConnectionConfigManager;->setBtmOptionUserDisabled(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    new-instance p0, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    const-string v0, "Do resolution for unmet condition, configKey: "

    .line 22
    .line 23
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    invoke-static {v2, p0}, Lcom/samsung/android/server/wifi/connection/Clog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    return-void

    .line 43
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    .line 44
    .line 45
    const-string v0, "No resolution for unmet condition, configKey: "

    .line 46
    .line 47
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object p0

    .line 63
    invoke-static {v2, p0}, Lcom/samsung/android/server/wifi/connection/Clog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    return-void
.end method

.method public runIssueResolver(Ljava/lang/String;I)V
    .locals 1

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/server/wifi/connection/ConnectionIssueResolver;->isResolutionNeeded(Ljava/lang/String;I)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/server/wifi/connection/ConnectionIssueResolver;->resolveIssueForDetectedBigdata(Ljava/lang/String;I)V

    .line 8
    .line 9
    .line 10
    iget-object p0, p0, Lcom/samsung/android/server/wifi/connection/ConnectionIssueResolver;->mConnectionBigdataManager:Lcom/samsung/android/server/wifi/connection/ConnectionBigdataManager;

    .line 11
    .line 12
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/server/wifi/connection/ConnectionBigdataManager;->collectBigdata(Ljava/lang/String;I)V

    .line 13
    .line 14
    .line 15
    :cond_0
    return-void
.end method
