.class public Lcom/samsung/android/server/wifi/diagnostics/PatternSystemProblem;
.super Lcom/samsung/android/server/wifi/diagnostics/WifiIssuePattern;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# static fields
.field private static final PDC2_CATEGORY_ID_HIDL_PROBLEM:I = 0x9

.field private static final PDC2_CATEGORY_ID_SYSTEM_PROBLEM:I = 0x1

.field private static final VERSION:Ljava/lang/String; = "Rev01"


# instance fields
.field private mCategoryId:I

.field private mHangReason:Ljava/lang/String;

.field private mLastProceedMessage:I

.field private mLastProceedState:Ljava/lang/String;

.field private mLastReportData:Lcom/samsung/android/server/wifi/diagnostics/ReportData;

.field private mReason:I


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
    new-instance p0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x7

    .line 7
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    const/16 v0, 0x11

    .line 15
    .line 16
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    return-object p0
.end method

.method public getBigDataParams()Landroid/os/Bundle;
    .locals 3

    .line 1
    new-instance v0, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc2Builder;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/diagnostics/PatternSystemProblem;->getPatternId()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    iget v2, p0, Lcom/samsung/android/server/wifi/diagnostics/PatternSystemProblem;->mCategoryId:I

    .line 8
    .line 9
    invoke-direct {v0, v1, v2}, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc2Builder;-><init>(Ljava/lang/String;I)V

    .line 10
    .line 11
    .line 12
    const-string v1, "Rev01"

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc2Builder;->setVersion(Ljava/lang/String;)Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc2Builder;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    iget-object v1, p0, Lcom/samsung/android/server/wifi/diagnostics/PatternSystemProblem;->mLastProceedState:Ljava/lang/String;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc2Builder;->setHandleState(Ljava/lang/String;)Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc2Builder;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    iget v1, p0, Lcom/samsung/android/server/wifi/diagnostics/PatternSystemProblem;->mLastProceedMessage:I

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc2Builder;->setLastProcessMessageId(I)Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc2Builder;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    iget-object v1, p0, Lcom/samsung/android/server/wifi/diagnostics/PatternSystemProblem;->mHangReason:Ljava/lang/String;

    .line 31
    .line 32
    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc2Builder;->setHangReason(Ljava/lang/String;)Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc2Builder;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    iget p0, p0, Lcom/samsung/android/server/wifi/diagnostics/PatternSystemProblem;->mReason:I

    .line 37
    .line 38
    invoke-virtual {v0, p0}, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc2Builder;->setReason(I)Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc2Builder;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc2Builder;->build()Landroid/os/Bundle;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    return-object p0
.end method

.method public getPatternId()Ljava/lang/String;
    .locals 0

    .line 1
    const-string p0, "system"

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
    const/4 v1, 0x7

    .line 4
    const/4 v2, 0x1

    .line 5
    if-eq v0, v1, :cond_2

    .line 6
    .line 7
    const/16 v1, 0x11

    .line 8
    .line 9
    const/4 v3, 0x0

    .line 10
    if-eq v0, v1, :cond_0

    .line 11
    .line 12
    const/4 p1, 0x0

    .line 13
    iput-object p1, p0, Lcom/samsung/android/server/wifi/diagnostics/PatternSystemProblem;->mLastReportData:Lcom/samsung/android/server/wifi/diagnostics/ReportData;

    .line 14
    .line 15
    return v3

    .line 16
    :cond_0
    const/16 v0, 0x9

    .line 17
    .line 18
    iput v0, p0, Lcom/samsung/android/server/wifi/diagnostics/PatternSystemProblem;->mCategoryId:I

    .line 19
    .line 20
    iput-object p1, p0, Lcom/samsung/android/server/wifi/diagnostics/PatternSystemProblem;->mLastReportData:Lcom/samsung/android/server/wifi/diagnostics/ReportData;

    .line 21
    .line 22
    const/4 p0, -0x1

    .line 23
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    const-string v1, "reason"

    .line 28
    .line 29
    invoke-static {p1, v1, v0}, Lcom/samsung/android/server/wifi/diagnostics/WifiIssuePattern;->getValue(Lcom/samsung/android/server/wifi/diagnostics/ReportData;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    check-cast p1, Ljava/lang/Integer;

    .line 34
    .line 35
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 36
    .line 37
    .line 38
    move-result p1

    .line 39
    if-eq p1, p0, :cond_1

    .line 40
    .line 41
    return v2

    .line 42
    :cond_1
    return v3

    .line 43
    :cond_2
    iput v2, p0, Lcom/samsung/android/server/wifi/diagnostics/PatternSystemProblem;->mCategoryId:I

    .line 44
    .line 45
    iput-object p1, p0, Lcom/samsung/android/server/wifi/diagnostics/PatternSystemProblem;->mLastReportData:Lcom/samsung/android/server/wifi/diagnostics/ReportData;

    .line 46
    .line 47
    return v2
.end method

.method public matches()Z
    .locals 5

    .line 2
    iget-object v0, p0, Lcom/samsung/android/server/wifi/diagnostics/PatternSystemProblem;->mLastReportData:Lcom/samsung/android/server/wifi/diagnostics/ReportData;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 3
    :cond_0
    const-string v1, "pstate"

    const-string v2, "unknown"

    invoke-static {v0, v1, v2}, Lcom/samsung/android/server/wifi/diagnostics/WifiIssuePattern;->getValue(Lcom/samsung/android/server/wifi/diagnostics/ReportData;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/server/wifi/diagnostics/PatternSystemProblem;->mLastProceedState:Ljava/lang/String;

    .line 4
    iget-object v0, p0, Lcom/samsung/android/server/wifi/diagnostics/PatternSystemProblem;->mLastReportData:Lcom/samsung/android/server/wifi/diagnostics/ReportData;

    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "pmsg"

    invoke-static {v0, v4, v3}, Lcom/samsung/android/server/wifi/diagnostics/WifiIssuePattern;->getValue(Lcom/samsung/android/server/wifi/diagnostics/ReportData;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/server/wifi/diagnostics/PatternSystemProblem;->mLastProceedMessage:I

    .line 5
    iget-object v0, p0, Lcom/samsung/android/server/wifi/diagnostics/PatternSystemProblem;->mLastReportData:Lcom/samsung/android/server/wifi/diagnostics/ReportData;

    const-string v3, "hangString"

    invoke-static {v0, v3, v2}, Lcom/samsung/android/server/wifi/diagnostics/WifiIssuePattern;->getValue(Lcom/samsung/android/server/wifi/diagnostics/ReportData;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/server/wifi/diagnostics/PatternSystemProblem;->mHangReason:Ljava/lang/String;

    .line 6
    iget-object v0, p0, Lcom/samsung/android/server/wifi/diagnostics/PatternSystemProblem;->mLastReportData:Lcom/samsung/android/server/wifi/diagnostics/ReportData;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "reason"

    invoke-static {v0, v2, v1}, Lcom/samsung/android/server/wifi/diagnostics/WifiIssuePattern;->getValue(Lcom/samsung/android/server/wifi/diagnostics/ReportData;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/server/wifi/diagnostics/PatternSystemProblem;->mReason:I

    const/4 p0, 0x1

    return p0
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
