.class public Lcom/samsung/android/server/wifi/diagnostics/PatternApProblem;
.super Lcom/samsung/android/server/wifi/diagnostics/WifiIssuePattern;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# static fields
.field static final PDC1_CATEGORY_AP_MAYBE_INVALID_STATE:I = 0x4

.field static final PDC1_CATEGORY_AP_SENT_ABNORMAL_REASON:I = 0x3

.field private static final TAG:Ljava/lang/String; = "PatternAPProblem"

.field private static final VERSION:Ljava/lang/String; = "Rev02"


# instance fields
.field private mCategoryId:I

.field private mCurrentReport:Lcom/samsung/android/server/wifi/diagnostics/ReportData;

.field private mDisconnectInfo:Lcom/samsung/android/server/wifi/diagnostics/DisconnectInfo;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/diagnostics/WifiIssuePattern;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
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

.method private isInvalidDisconnectReason(I)Z
    .locals 0

    .line 1
    const/4 p0, 0x4

    .line 2
    if-eq p1, p0, :cond_1

    .line 3
    .line 4
    const/4 p0, 0x5

    .line 5
    if-eq p1, p0, :cond_1

    .line 6
    .line 7
    const/16 p0, 0xa

    .line 8
    .line 9
    if-eq p1, p0, :cond_1

    .line 10
    .line 11
    const/16 p0, 0xb

    .line 12
    .line 13
    if-eq p1, p0, :cond_1

    .line 14
    .line 15
    const/16 p0, 0xd

    .line 16
    .line 17
    if-eq p1, p0, :cond_1

    .line 18
    .line 19
    const/16 p0, 0xe

    .line 20
    .line 21
    if-eq p1, p0, :cond_1

    .line 22
    .line 23
    const/16 p0, 0x11

    .line 24
    .line 25
    if-eq p1, p0, :cond_1

    .line 26
    .line 27
    const/16 p0, 0x12

    .line 28
    .line 29
    if-eq p1, p0, :cond_1

    .line 30
    .line 31
    const/16 p0, 0x13

    .line 32
    .line 33
    if-eq p1, p0, :cond_1

    .line 34
    .line 35
    const/16 p0, 0x14

    .line 36
    .line 37
    if-eq p1, p0, :cond_1

    .line 38
    .line 39
    const/16 p0, 0x15

    .line 40
    .line 41
    if-eq p1, p0, :cond_1

    .line 42
    .line 43
    const/16 p0, 0x16

    .line 44
    .line 45
    if-ne p1, p0, :cond_0

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_0
    const/4 p0, 0x0

    .line 49
    return p0

    .line 50
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 51
    return p0
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
    const/4 p0, 0x1

    .line 2
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 3
    .line 4
    .line 5
    move-result-object p0

    .line 6
    const/16 v0, 0xc8

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
    .locals 3

    .line 1
    iget v0, p0, Lcom/samsung/android/server/wifi/diagnostics/PatternApProblem;->mCategoryId:I

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    if-eq v0, v1, :cond_0

    .line 5
    .line 6
    const/4 v1, 0x4

    .line 7
    if-eq v0, v1, :cond_0

    .line 8
    .line 9
    const/4 p0, 0x0

    .line 10
    return-object p0

    .line 11
    :cond_0
    new-instance v0, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc1Builder;

    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/diagnostics/PatternApProblem;->getPatternId()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    iget v2, p0, Lcom/samsung/android/server/wifi/diagnostics/PatternApProblem;->mCategoryId:I

    .line 18
    .line 19
    invoke-direct {v0, v1, v2}, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc1Builder;-><init>(Ljava/lang/String;I)V

    .line 20
    .line 21
    .line 22
    const-string v1, "Rev02"

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc1Builder;->setVersion(Ljava/lang/String;)Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc1Builder;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    iget-object p0, p0, Lcom/samsung/android/server/wifi/diagnostics/PatternApProblem;->mDisconnectInfo:Lcom/samsung/android/server/wifi/diagnostics/DisconnectInfo;

    .line 29
    .line 30
    invoke-virtual {v0, p0}, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc1Builder;->setDisconnectInfo(Lcom/samsung/android/server/wifi/diagnostics/DisconnectInfo;)Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc1Builder;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc1Builder;->build()Landroid/os/Bundle;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    return-object p0
.end method

.method public getPatternId()Ljava/lang/String;
    .locals 0

    .line 1
    const-string p0, "ap"

    .line 2
    .line 3
    return-object p0
.end method

.method public isAssociated(Lcom/samsung/android/server/wifi/diagnostics/ReportData;)Z
    .locals 4

    .line 1
    iget v0, p1, Lcom/samsung/android/server/wifi/diagnostics/ReportData;->mReportId:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    if-eq v0, v2, :cond_0

    .line 6
    .line 7
    const/16 v3, 0xc8

    .line 8
    .line 9
    if-eq v0, v3, :cond_0

    .line 10
    .line 11
    return v1

    .line 12
    :cond_0
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/diagnostics/PatternApProblem;->getRssi(Lcom/samsung/android/server/wifi/diagnostics/ReportData;)I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    const/16 v3, -0x41

    .line 17
    .line 18
    if-lt v0, v3, :cond_1

    .line 19
    .line 20
    iput-object p1, p0, Lcom/samsung/android/server/wifi/diagnostics/PatternApProblem;->mCurrentReport:Lcom/samsung/android/server/wifi/diagnostics/ReportData;

    .line 21
    .line 22
    return v2

    .line 23
    :cond_1
    return v1
.end method

.method public matches()Z
    .locals 9

    .line 2
    iget-object v0, p0, Lcom/samsung/android/server/wifi/diagnostics/PatternApProblem;->mCurrentReport:Lcom/samsung/android/server/wifi/diagnostics/ReportData;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v2, -0x1

    .line 3
    iput v2, p0, Lcom/samsung/android/server/wifi/diagnostics/PatternApProblem;->mCategoryId:I

    .line 4
    iget v0, v0, Lcom/samsung/android/server/wifi/diagnostics/ReportData;->mReportId:I

    const-string v3, "PatternAPProblem"

    const/4 v4, 0x3

    const/16 v5, 0xb

    const/16 v6, 0xc8

    const/4 v7, 0x1

    if-eq v0, v7, :cond_2

    if-eq v0, v6, :cond_1

    goto :goto_0

    .line 5
    :cond_1
    new-instance v0, Lcom/samsung/android/server/wifi/diagnostics/DisconnectInfo;

    .line 6
    invoke-virtual {p0, v5}, Lcom/samsung/android/server/wifi/diagnostics/WifiIssuePattern;->getLastIndexOfData(I)Lcom/samsung/android/server/wifi/diagnostics/ReportData;

    move-result-object v5

    const/4 v6, 0x0

    iget-object v8, p0, Lcom/samsung/android/server/wifi/diagnostics/PatternApProblem;->mCurrentReport:Lcom/samsung/android/server/wifi/diagnostics/ReportData;

    invoke-direct {v0, v5, v6, v8}, Lcom/samsung/android/server/wifi/diagnostics/DisconnectInfo;-><init>(Lcom/samsung/android/server/wifi/diagnostics/ReportData;Lcom/samsung/android/server/wifi/diagnostics/ReportData;Lcom/samsung/android/server/wifi/diagnostics/ReportData;)V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/diagnostics/PatternApProblem;->mDisconnectInfo:Lcom/samsung/android/server/wifi/diagnostics/DisconnectInfo;

    .line 7
    iget v5, v0, Lcom/samsung/android/server/wifi/diagnostics/DisconnectInfo;->disconnectReason:I

    if-ne v5, v4, :cond_3

    iget v0, v0, Lcom/samsung/android/server/wifi/diagnostics/DisconnectInfo;->locallyGenerated:I

    if-nez v0, :cond_3

    .line 8
    const-string v0, "pattern matched, maybe invalid ap state"

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x4

    .line 9
    iput v0, p0, Lcom/samsung/android/server/wifi/diagnostics/PatternApProblem;->mCategoryId:I

    goto :goto_0

    .line 10
    :cond_2
    new-instance v0, Lcom/samsung/android/server/wifi/diagnostics/DisconnectInfo;

    .line 11
    invoke-virtual {p0, v5}, Lcom/samsung/android/server/wifi/diagnostics/WifiIssuePattern;->getLastIndexOfData(I)Lcom/samsung/android/server/wifi/diagnostics/ReportData;

    move-result-object v5

    iget-object v8, p0, Lcom/samsung/android/server/wifi/diagnostics/PatternApProblem;->mCurrentReport:Lcom/samsung/android/server/wifi/diagnostics/ReportData;

    .line 12
    invoke-virtual {p0, v6}, Lcom/samsung/android/server/wifi/diagnostics/WifiIssuePattern;->getLastIndexOfData(I)Lcom/samsung/android/server/wifi/diagnostics/ReportData;

    move-result-object v6

    invoke-direct {v0, v5, v8, v6}, Lcom/samsung/android/server/wifi/diagnostics/DisconnectInfo;-><init>(Lcom/samsung/android/server/wifi/diagnostics/ReportData;Lcom/samsung/android/server/wifi/diagnostics/ReportData;Lcom/samsung/android/server/wifi/diagnostics/ReportData;)V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/diagnostics/PatternApProblem;->mDisconnectInfo:Lcom/samsung/android/server/wifi/diagnostics/DisconnectInfo;

    .line 13
    iget v0, v0, Lcom/samsung/android/server/wifi/diagnostics/DisconnectInfo;->disconnectReason:I

    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/diagnostics/PatternApProblem;->isInvalidDisconnectReason(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 14
    const-string v0, "pattern matched, abnormal disconnect reason"

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    iput v4, p0, Lcom/samsung/android/server/wifi/diagnostics/PatternApProblem;->mCategoryId:I

    .line 16
    :cond_3
    :goto_0
    iget p0, p0, Lcom/samsung/android/server/wifi/diagnostics/PatternApProblem;->mCategoryId:I

    if-eq p0, v2, :cond_4

    return v7

    :cond_4
    return v1
.end method

.method public bridge synthetic matches(Ljava/util/List;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lcom/samsung/android/server/wifi/diagnostics/WifiIssuePattern;->matches(Ljava/util/List;)Z

    move-result p0

    return p0
.end method
