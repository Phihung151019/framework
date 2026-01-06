.class public Lcom/samsung/android/server/wifi/diagnostics/PatternWipsDisconnection;
.super Lcom/samsung/android/server/wifi/diagnostics/WifiIssuePattern;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# static fields
.field private static final PDC2_CATEGORY_ID_WIPS_DISCONNECT:I = 0xa

.field private static final VERSION:Ljava/lang/String; = "Rev02"


# instance fields
.field private mLastReportData:Lcom/samsung/android/server/wifi/diagnostics/ReportData;


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
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    const/16 p0, 0xc8

    .line 2
    .line 3
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-static {p0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method public getBigDataParams()Landroid/os/Bundle;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/diagnostics/PatternWipsDisconnection;->mLastReportData:Lcom/samsung/android/server/wifi/diagnostics/ReportData;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return-object v1

    .line 7
    :cond_0
    new-instance v0, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc2Builder;

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/diagnostics/PatternWipsDisconnection;->getPatternId()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    const/16 v3, 0xa

    .line 14
    .line 15
    invoke-direct {v0, v2, v3}, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc2Builder;-><init>(Ljava/lang/String;I)V

    .line 16
    .line 17
    .line 18
    const-string v2, "Rev02"

    .line 19
    .line 20
    invoke-virtual {v0, v2}, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc2Builder;->setVersion(Ljava/lang/String;)Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc2Builder;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    new-instance v2, Lcom/samsung/android/server/wifi/diagnostics/DisconnectInfo;

    .line 25
    .line 26
    const/16 v3, 0xb

    .line 27
    .line 28
    invoke-virtual {p0, v3}, Lcom/samsung/android/server/wifi/diagnostics/WifiIssuePattern;->getLastIndexOfData(I)Lcom/samsung/android/server/wifi/diagnostics/ReportData;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    iget-object p0, p0, Lcom/samsung/android/server/wifi/diagnostics/PatternWipsDisconnection;->mLastReportData:Lcom/samsung/android/server/wifi/diagnostics/ReportData;

    .line 33
    .line 34
    invoke-direct {v2, v3, v1, p0}, Lcom/samsung/android/server/wifi/diagnostics/DisconnectInfo;-><init>(Lcom/samsung/android/server/wifi/diagnostics/ReportData;Lcom/samsung/android/server/wifi/diagnostics/ReportData;Lcom/samsung/android/server/wifi/diagnostics/ReportData;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0, v2}, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc2Builder;->setDisconnectInfo(Lcom/samsung/android/server/wifi/diagnostics/DisconnectInfo;)Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc2Builder;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc2Builder;->build()Landroid/os/Bundle;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    return-object p0
.end method

.method public getPatternId()Ljava/lang/String;
    .locals 0

    .line 1
    const-string p0, "wips"

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
    const/16 v1, 0xc8

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-eq v0, v1, :cond_0

    .line 7
    .line 8
    return v2

    .line 9
    :cond_0
    const/4 v0, -0x1

    .line 10
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    const-string v1, "disconnectReason"

    .line 15
    .line 16
    invoke-static {p1, v1, v0}, Lcom/samsung/android/server/wifi/diagnostics/WifiIssuePattern;->getValue(Lcom/samsung/android/server/wifi/diagnostics/ReportData;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    check-cast v0, Ljava/lang/Integer;

    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    const/16 v1, 0x4d

    .line 27
    .line 28
    if-ne v0, v1, :cond_1

    .line 29
    .line 30
    iput-object p1, p0, Lcom/samsung/android/server/wifi/diagnostics/PatternWipsDisconnection;->mLastReportData:Lcom/samsung/android/server/wifi/diagnostics/ReportData;

    .line 31
    .line 32
    const/4 p0, 0x1

    .line 33
    return p0

    .line 34
    :cond_1
    const/4 p1, 0x0

    .line 35
    iput-object p1, p0, Lcom/samsung/android/server/wifi/diagnostics/PatternWipsDisconnection;->mLastReportData:Lcom/samsung/android/server/wifi/diagnostics/ReportData;

    .line 36
    .line 37
    return v2
.end method

.method public matches()Z
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/samsung/android/server/wifi/diagnostics/PatternWipsDisconnection;->mLastReportData:Lcom/samsung/android/server/wifi/diagnostics/ReportData;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

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
