.class Lcom/samsung/android/server/wifi/diagnostics/PatternAbnormalConnectionFailed;
.super Lcom/samsung/android/server/wifi/diagnostics/WifiIssuePattern;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# static fields
.field static final PDC2_CATEGORY_ASSOC_REJECT:I = 0x5

.field static final PDC2_CATEGORY_AUTH_FAIL:I = 0x6

.field private static final TAG:Ljava/lang/String; = "PatternAbnormalConn"

.field private static final VERSION:Ljava/lang/String; = "Rev04"


# instance fields
.field private mCategoryId:I

.field private mDisconnectInfo:Lcom/samsung/android/server/wifi/diagnostics/DisconnectInfo;

.field private mLastIssuedReport:Lcom/samsung/android/server/wifi/diagnostics/ReportData;

.field private final mLog:Lcom/samsung/android/server/wifi/util/LogUtils;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/diagnostics/WifiIssuePattern;-><init>()V

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
    iput-object v0, p0, Lcom/samsung/android/server/wifi/diagnostics/PatternAbnormalConnectionFailed;->mLog:Lcom/samsung/android/server/wifi/util/LogUtils;

    .line 10
    .line 11
    return-void
.end method

.method private getBssid(Lcom/samsung/android/server/wifi/diagnostics/ReportData;)Ljava/lang/String;
    .locals 1

    .line 1
    const-string p0, "bssid"

    .line 2
    .line 3
    const-string v0, "unknown"

    .line 4
    .line 5
    invoke-static {p1, p0, v0}, Lcom/samsung/android/server/wifi/diagnostics/WifiIssuePattern;->getValue(Lcom/samsung/android/server/wifi/diagnostics/ReportData;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Ljava/lang/String;

    .line 10
    .line 11
    return-object p0
.end method

.method private getReason(Lcom/samsung/android/server/wifi/diagnostics/ReportData;)I
    .locals 1

    .line 1
    const/4 p0, -0x1

    .line 2
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 3
    .line 4
    .line 5
    move-result-object p0

    .line 6
    const-string v0, "reason"

    .line 7
    .line 8
    invoke-static {p1, v0, p0}, Lcom/samsung/android/server/wifi/diagnostics/WifiIssuePattern;->getValue(Lcom/samsung/android/server/wifi/diagnostics/ReportData;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    check-cast p0, Ljava/lang/Integer;

    .line 13
    .line 14
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 15
    .line 16
    .line 17
    move-result p0

    .line 18
    return p0
.end method

.method private getRssi(Lcom/samsung/android/server/wifi/diagnostics/ReportData;)I
    .locals 1

    .line 1
    const/16 p0, -0x63

    .line 2
    .line 3
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    const-string v0, "rssi"

    .line 8
    .line 9
    invoke-static {p1, v0, p0}, Lcom/samsung/android/server/wifi/diagnostics/WifiIssuePattern;->getValue(Lcom/samsung/android/server/wifi/diagnostics/ReportData;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    check-cast p0, Ljava/lang/Integer;

    .line 14
    .line 15
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    return p0
.end method


# virtual methods
.method public getAssociatedReportIds()Ljava/util/Collection;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    const/16 p0, 0xe

    .line 2
    .line 3
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    const/16 v0, 0xf

    .line 8
    .line 9
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    const/16 v1, 0xca

    .line 14
    .line 15
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    const/16 v2, 0xc8

    .line 20
    .line 21
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    filled-new-array {p0, v0, v1, v2}, [Ljava/lang/Integer;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    return-object p0
.end method

.method public getBigDataParams()Landroid/os/Bundle;
    .locals 5

    .line 1
    iget v0, p0, Lcom/samsung/android/server/wifi/diagnostics/PatternAbnormalConnectionFailed;->mCategoryId:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, -0x1

    .line 5
    if-eq v0, v2, :cond_1

    .line 6
    .line 7
    iget-object v0, p0, Lcom/samsung/android/server/wifi/diagnostics/PatternAbnormalConnectionFailed;->mLastIssuedReport:Lcom/samsung/android/server/wifi/diagnostics/ReportData;

    .line 8
    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    iget-object v3, p0, Lcom/samsung/android/server/wifi/diagnostics/PatternAbnormalConnectionFailed;->mDisconnectInfo:Lcom/samsung/android/server/wifi/diagnostics/DisconnectInfo;

    .line 12
    .line 13
    if-eqz v3, :cond_1

    .line 14
    .line 15
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    const-string v4, "netid"

    .line 20
    .line 21
    invoke-static {v0, v4, v3}, Lcom/samsung/android/server/wifi/diagnostics/WifiIssuePattern;->getValue(Lcom/samsung/android/server/wifi/diagnostics/ReportData;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    check-cast v0, Ljava/lang/Integer;

    .line 26
    .line 27
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-ne v0, v2, :cond_0

    .line 32
    .line 33
    const-string p0, "PatternAbnormalConn"

    .line 34
    .line 35
    const-string v0, "skip, invalid network id"

    .line 36
    .line 37
    invoke-static {p0, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    .line 39
    .line 40
    return-object v1

    .line 41
    :cond_0
    new-instance v0, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc2Builder;

    .line 42
    .line 43
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/diagnostics/PatternAbnormalConnectionFailed;->getPatternId()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    iget v2, p0, Lcom/samsung/android/server/wifi/diagnostics/PatternAbnormalConnectionFailed;->mCategoryId:I

    .line 48
    .line 49
    invoke-direct {v0, v1, v2}, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc2Builder;-><init>(Ljava/lang/String;I)V

    .line 50
    .line 51
    .line 52
    const-string v1, "Rev04"

    .line 53
    .line 54
    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc2Builder;->setVersion(Ljava/lang/String;)Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc2Builder;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    iget-object p0, p0, Lcom/samsung/android/server/wifi/diagnostics/PatternAbnormalConnectionFailed;->mDisconnectInfo:Lcom/samsung/android/server/wifi/diagnostics/DisconnectInfo;

    .line 59
    .line 60
    invoke-virtual {v0, p0}, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc2Builder;->setDisconnectInfo(Lcom/samsung/android/server/wifi/diagnostics/DisconnectInfo;)Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc2Builder;

    .line 61
    .line 62
    .line 63
    move-result-object p0

    .line 64
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc2Builder;->build()Landroid/os/Bundle;

    .line 65
    .line 66
    .line 67
    move-result-object p0

    .line 68
    return-object p0

    .line 69
    :cond_1
    return-object v1
.end method

.method public getPatternId()Ljava/lang/String;
    .locals 0

    .line 1
    const-string p0, "connection"

    .line 2
    .line 3
    return-object p0
.end method

.method public isAssociated(Lcom/samsung/android/server/wifi/diagnostics/ReportData;)Z
    .locals 3

    .line 1
    iget v0, p1, Lcom/samsung/android/server/wifi/diagnostics/ReportData;->mReportId:I

    .line 2
    .line 3
    const/16 v1, 0xe

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    if-eq v0, v1, :cond_1

    .line 7
    .line 8
    const/16 v1, 0xf

    .line 9
    .line 10
    if-eq v0, v1, :cond_0

    .line 11
    .line 12
    const/16 v1, 0xc8

    .line 13
    .line 14
    if-eq v0, v1, :cond_0

    .line 15
    .line 16
    const/16 v1, 0xca

    .line 17
    .line 18
    if-eq v0, v1, :cond_1

    .line 19
    .line 20
    const/4 p0, 0x0

    .line 21
    return p0

    .line 22
    :cond_0
    iput-object p1, p0, Lcom/samsung/android/server/wifi/diagnostics/PatternAbnormalConnectionFailed;->mLastIssuedReport:Lcom/samsung/android/server/wifi/diagnostics/ReportData;

    .line 23
    .line 24
    const/4 p1, 0x6

    .line 25
    iput p1, p0, Lcom/samsung/android/server/wifi/diagnostics/PatternAbnormalConnectionFailed;->mCategoryId:I

    .line 26
    .line 27
    return v2

    .line 28
    :cond_1
    iput-object p1, p0, Lcom/samsung/android/server/wifi/diagnostics/PatternAbnormalConnectionFailed;->mLastIssuedReport:Lcom/samsung/android/server/wifi/diagnostics/ReportData;

    .line 29
    .line 30
    const/4 p1, 0x5

    .line 31
    iput p1, p0, Lcom/samsung/android/server/wifi/diagnostics/PatternAbnormalConnectionFailed;->mCategoryId:I

    .line 32
    .line 33
    return v2
.end method

.method public matches()Z
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/diagnostics/PatternAbnormalConnectionFailed;->mLastIssuedReport:Lcom/samsung/android/server/wifi/diagnostics/ReportData;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    const/4 v0, 0x2

    .line 8
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/diagnostics/WifiIssuePattern;->getLastIndexOfData(I)Lcom/samsung/android/server/wifi/diagnostics/ReportData;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    const-string v2, "PatternAbnormalConn"

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    const-string p0, "not a connecting state"

    .line 17
    .line 18
    invoke-static {v2, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    .line 20
    .line 21
    return v1

    .line 22
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/diagnostics/PatternAbnormalConnectionFailed;->mLastIssuedReport:Lcom/samsung/android/server/wifi/diagnostics/ReportData;

    .line 23
    .line 24
    iget v3, v0, Lcom/samsung/android/server/wifi/diagnostics/ReportData;->mReportId:I

    .line 25
    .line 26
    const/16 v4, 0xc8

    .line 27
    .line 28
    if-ne v3, v4, :cond_2

    .line 29
    .line 30
    const/16 v3, 0xf

    .line 31
    .line 32
    invoke-virtual {p0, v3}, Lcom/samsung/android/server/wifi/diagnostics/WifiIssuePattern;->getLastIndexOfData(I)Lcom/samsung/android/server/wifi/diagnostics/ReportData;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    iput-object v3, p0, Lcom/samsung/android/server/wifi/diagnostics/PatternAbnormalConnectionFailed;->mLastIssuedReport:Lcom/samsung/android/server/wifi/diagnostics/ReportData;

    .line 37
    .line 38
    if-nez v3, :cond_3

    .line 39
    .line 40
    const-string p0, "could not find auth.fail report"

    .line 41
    .line 42
    invoke-static {v2, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    .line 44
    .line 45
    return v1

    .line 46
    :cond_2
    invoke-virtual {p0, v4}, Lcom/samsung/android/server/wifi/diagnostics/WifiIssuePattern;->getLastIndexOfData(I)Lcom/samsung/android/server/wifi/diagnostics/ReportData;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    :cond_3
    if-nez v0, :cond_5

    .line 51
    .line 52
    iget-object v0, p0, Lcom/samsung/android/server/wifi/diagnostics/PatternAbnormalConnectionFailed;->mLastIssuedReport:Lcom/samsung/android/server/wifi/diagnostics/ReportData;

    .line 53
    .line 54
    iget v3, v0, Lcom/samsung/android/server/wifi/diagnostics/ReportData;->mReportId:I

    .line 55
    .line 56
    const/16 v4, 0xca

    .line 57
    .line 58
    if-ne v3, v4, :cond_4

    .line 59
    .line 60
    const/16 v3, 0xe

    .line 61
    .line 62
    invoke-virtual {p0, v3}, Lcom/samsung/android/server/wifi/diagnostics/WifiIssuePattern;->getLastIndexOfData(I)Lcom/samsung/android/server/wifi/diagnostics/ReportData;

    .line 63
    .line 64
    .line 65
    move-result-object v3

    .line 66
    iput-object v3, p0, Lcom/samsung/android/server/wifi/diagnostics/PatternAbnormalConnectionFailed;->mLastIssuedReport:Lcom/samsung/android/server/wifi/diagnostics/ReportData;

    .line 67
    .line 68
    if-nez v3, :cond_5

    .line 69
    .line 70
    const-string p0, "could not find assoc reject report"

    .line 71
    .line 72
    invoke-static {v2, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    .line 74
    .line 75
    return v1

    .line 76
    :cond_4
    invoke-virtual {p0, v4}, Lcom/samsung/android/server/wifi/diagnostics/WifiIssuePattern;->getLastIndexOfData(I)Lcom/samsung/android/server/wifi/diagnostics/ReportData;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    :cond_5
    if-nez v0, :cond_6

    .line 81
    .line 82
    const-string p0, "could not find supplicant events"

    .line 83
    .line 84
    invoke-static {v2, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    .line 86
    .line 87
    return v1

    .line 88
    :cond_6
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/diagnostics/PatternAbnormalConnectionFailed;->getRssi(Lcom/samsung/android/server/wifi/diagnostics/ReportData;)I

    .line 89
    .line 90
    .line 91
    move-result v3

    .line 92
    const/16 v4, -0x41

    .line 93
    .line 94
    if-ge v3, v4, :cond_7

    .line 95
    .line 96
    const-string p0, "weak signal"

    .line 97
    .line 98
    invoke-static {v2, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    .line 100
    .line 101
    return v1

    .line 102
    :cond_7
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/diagnostics/PatternAbnormalConnectionFailed;->getReason(Lcom/samsung/android/server/wifi/diagnostics/ReportData;)I

    .line 103
    .line 104
    .line 105
    move-result v1

    .line 106
    iget-object v3, p0, Lcom/samsung/android/server/wifi/diagnostics/PatternAbnormalConnectionFailed;->mLog:Lcom/samsung/android/server/wifi/util/LogUtils;

    .line 107
    .line 108
    new-instance v4, Ljava/lang/StringBuilder;

    .line 109
    .line 110
    const-string v5, "pattern matches bssid: "

    .line 111
    .line 112
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    iget-object v5, p0, Lcom/samsung/android/server/wifi/diagnostics/PatternAbnormalConnectionFailed;->mLastIssuedReport:Lcom/samsung/android/server/wifi/diagnostics/ReportData;

    .line 116
    .line 117
    invoke-direct {p0, v5}, Lcom/samsung/android/server/wifi/diagnostics/PatternAbnormalConnectionFailed;->getBssid(Lcom/samsung/android/server/wifi/diagnostics/ReportData;)Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v5

    .line 121
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    iget v5, p0, Lcom/samsung/android/server/wifi/diagnostics/PatternAbnormalConnectionFailed;->mCategoryId:I

    .line 125
    .line 126
    const/4 v6, 0x5

    .line 127
    if-ne v5, v6, :cond_8

    .line 128
    .line 129
    const-string v5, " association rejected"

    .line 130
    .line 131
    goto :goto_0

    .line 132
    :cond_8
    const-string v5, " authentication failed"

    .line 133
    .line 134
    :goto_0
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    const-string v5, " reason: "

    .line 138
    .line 139
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    .line 141
    .line 142
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 143
    .line 144
    .line 145
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object v1

    .line 149
    invoke-virtual {v3, v2, v1}, Lcom/samsung/android/server/wifi/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    .line 151
    .line 152
    new-instance v1, Lcom/samsung/android/server/wifi/diagnostics/DisconnectInfo;

    .line 153
    .line 154
    const/16 v2, 0xb

    .line 155
    .line 156
    invoke-virtual {p0, v2}, Lcom/samsung/android/server/wifi/diagnostics/WifiIssuePattern;->getLastIndexOfData(I)Lcom/samsung/android/server/wifi/diagnostics/ReportData;

    .line 157
    .line 158
    .line 159
    move-result-object v2

    .line 160
    const/4 v3, 0x0

    .line 161
    invoke-direct {v1, v2, v3, v0}, Lcom/samsung/android/server/wifi/diagnostics/DisconnectInfo;-><init>(Lcom/samsung/android/server/wifi/diagnostics/ReportData;Lcom/samsung/android/server/wifi/diagnostics/ReportData;Lcom/samsung/android/server/wifi/diagnostics/ReportData;)V

    .line 162
    .line 163
    .line 164
    iput-object v1, p0, Lcom/samsung/android/server/wifi/diagnostics/PatternAbnormalConnectionFailed;->mDisconnectInfo:Lcom/samsung/android/server/wifi/diagnostics/DisconnectInfo;

    .line 165
    .line 166
    const/4 p0, 0x1

    .line 167
    return p0
.end method
