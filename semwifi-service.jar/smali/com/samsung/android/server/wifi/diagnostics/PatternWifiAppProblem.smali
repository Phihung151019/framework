.class public Lcom/samsung/android/server/wifi/diagnostics/PatternWifiAppProblem;
.super Lcom/samsung/android/server/wifi/diagnostics/WifiIssuePattern;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# static fields
.field private static final MAX_TIME_OUT:J = 0xbb8L

.field private static final PDC1_DISCONNECT_BY_3RD_PARTY_APK:I = 0x1

.field private static final PDC2_COULD_NOT_CHANGED_WIFI_STATE:I = 0x2

.field private static final TAG:Ljava/lang/String; = "PatternAppProblem"

.field private static final VERSION:Ljava/lang/String; = "Rev02"


# instance fields
.field private mDetectedCategoryId:I

.field private mLastReportData:Lcom/samsung/android/server/wifi/diagnostics/ReportData;

.field private mNetworkType:I

.field private mPackageName:Ljava/lang/String;


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

.method private getNetworkType(Lcom/samsung/android/server/wifi/diagnostics/ReportData;)I
    .locals 1

    .line 1
    sget-object p0, Lcom/samsung/android/server/wifi/diagnostics/NetworkType;->UNKNOWN:Lcom/samsung/android/server/wifi/diagnostics/NetworkType;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    const-string v0, "apTypeInt"

    .line 12
    .line 13
    invoke-static {p1, v0, p0}, Lcom/samsung/android/server/wifi/diagnostics/WifiIssuePattern;->getValue(Lcom/samsung/android/server/wifi/diagnostics/ReportData;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    check-cast p0, Ljava/lang/Integer;

    .line 18
    .line 19
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 20
    .line 21
    .line 22
    move-result p0

    .line 23
    return p0
.end method

.method private getWifiState(Lcom/samsung/android/server/wifi/diagnostics/ReportData;)I
    .locals 1

    .line 1
    const/4 p0, 0x0

    .line 2
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 3
    .line 4
    .line 5
    move-result-object p0

    .line 6
    const-string v0, "wifiState"

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

.method private isAppEvent(Lcom/samsung/android/server/wifi/diagnostics/ReportData;)Landroid/util/Pair;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/server/wifi/diagnostics/ReportData;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/Boolean;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    const-string v0, "callBy"

    .line 2
    .line 3
    const-string v1, "com.android.systemui"

    .line 4
    .line 5
    invoke-static {p1, v0, v1}, Lcom/samsung/android/server/wifi/diagnostics/WifiIssuePattern;->getValue(Lcom/samsung/android/server/wifi/diagnostics/ReportData;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    check-cast p1, Ljava/lang/String;

    .line 10
    .line 11
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/diagnostics/WifiIssuePattern;->isApiCalledByNonSystemApk(Ljava/lang/String;)Z

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    invoke-static {p0, p1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    return-object p0
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
    const/16 p0, 0x64

    .line 2
    .line 3
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    const/16 v0, 0xc9

    .line 8
    .line 9
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    filled-new-array {p0, v0}, [Ljava/lang/Integer;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    return-object p0
.end method

.method public getBigDataParams()Landroid/os/Bundle;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/diagnostics/PatternWifiAppProblem;->mPackageName:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    iget v0, p0, Lcom/samsung/android/server/wifi/diagnostics/PatternWifiAppProblem;->mDetectedCategoryId:I

    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    const-string v2, "Rev02"

    .line 13
    .line 14
    if-ne v0, v1, :cond_0

    .line 15
    .line 16
    new-instance v0, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc1Builder;

    .line 17
    .line 18
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/diagnostics/PatternWifiAppProblem;->getPatternId()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    iget v3, p0, Lcom/samsung/android/server/wifi/diagnostics/PatternWifiAppProblem;->mDetectedCategoryId:I

    .line 23
    .line 24
    invoke-direct {v0, v1, v3}, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc1Builder;-><init>(Ljava/lang/String;I)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, v2}, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc1Builder;->setVersion(Ljava/lang/String;)Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc1Builder;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    iget-object v1, p0, Lcom/samsung/android/server/wifi/diagnostics/PatternWifiAppProblem;->mPackageName:Ljava/lang/String;

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc1Builder;->setPackageName(Ljava/lang/String;)Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc1Builder;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    iget p0, p0, Lcom/samsung/android/server/wifi/diagnostics/PatternWifiAppProblem;->mNetworkType:I

    .line 38
    .line 39
    invoke-virtual {v0, p0}, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc1Builder;->setNetworkType(I)Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc1Builder;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc1Builder;->build()Landroid/os/Bundle;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    return-object p0

    .line 48
    :cond_0
    const/4 v1, 0x2

    .line 49
    if-ne v0, v1, :cond_1

    .line 50
    .line 51
    new-instance v0, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc2Builder;

    .line 52
    .line 53
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/diagnostics/PatternWifiAppProblem;->getPatternId()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    iget v3, p0, Lcom/samsung/android/server/wifi/diagnostics/PatternWifiAppProblem;->mDetectedCategoryId:I

    .line 58
    .line 59
    invoke-direct {v0, v1, v3}, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc2Builder;-><init>(Ljava/lang/String;I)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0, v2}, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc2Builder;->setVersion(Ljava/lang/String;)Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc2Builder;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    iget-object p0, p0, Lcom/samsung/android/server/wifi/diagnostics/PatternWifiAppProblem;->mPackageName:Ljava/lang/String;

    .line 67
    .line 68
    invoke-virtual {v0, p0}, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc2Builder;->setPackageName(Ljava/lang/String;)Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc2Builder;

    .line 69
    .line 70
    .line 71
    move-result-object p0

    .line 72
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc2Builder;->build()Landroid/os/Bundle;

    .line 73
    .line 74
    .line 75
    move-result-object p0

    .line 76
    return-object p0

    .line 77
    :cond_1
    const/4 p0, 0x0

    .line 78
    return-object p0
.end method

.method public getPatternId()Ljava/lang/String;
    .locals 0

    .line 1
    const-string p0, "wifi_app"

    .line 2
    .line 3
    return-object p0
.end method

.method public isAssociated(Lcom/samsung/android/server/wifi/diagnostics/ReportData;)Z
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/samsung/android/server/wifi/diagnostics/PatternWifiAppProblem;->mLastReportData:Lcom/samsung/android/server/wifi/diagnostics/ReportData;

    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/diagnostics/PatternWifiAppProblem;->isAppEvent(Lcom/samsung/android/server/wifi/diagnostics/ReportData;)Landroid/util/Pair;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    iget-object v0, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v0, Ljava/lang/String;

    .line 10
    .line 11
    iput-object v0, p0, Lcom/samsung/android/server/wifi/diagnostics/PatternWifiAppProblem;->mPackageName:Ljava/lang/String;

    .line 12
    .line 13
    iget-object p0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 14
    .line 15
    check-cast p0, Ljava/lang/Boolean;

    .line 16
    .line 17
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 18
    .line 19
    .line 20
    move-result p0

    .line 21
    return p0
.end method

.method public matches()Z
    .locals 7

    .line 2
    iget-object v0, p0, Lcom/samsung/android/server/wifi/diagnostics/PatternWifiAppProblem;->mLastReportData:Lcom/samsung/android/server/wifi/diagnostics/ReportData;

    if-eqz v0, :cond_1

    .line 3
    iget v0, v0, Lcom/samsung/android/server/wifi/diagnostics/ReportData;->mReportId:I

    const-string v1, "PatternAppProblem"

    const/16 v2, 0xc9

    const/4 v3, 0x1

    const/4 v4, 0x2

    if-ne v0, v2, :cond_0

    const-wide/16 v5, 0xbb8

    .line 4
    invoke-virtual {p0, v2, v5, v6, v4}, Lcom/samsung/android/server/wifi/diagnostics/WifiIssuePattern;->getLastIndexOfData(IJI)Lcom/samsung/android/server/wifi/diagnostics/ReportData;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5
    iget-object v2, p0, Lcom/samsung/android/server/wifi/diagnostics/PatternWifiAppProblem;->mLastReportData:Lcom/samsung/android/server/wifi/diagnostics/ReportData;

    .line 6
    invoke-direct {p0, v2}, Lcom/samsung/android/server/wifi/diagnostics/PatternWifiAppProblem;->getWifiState(Lcom/samsung/android/server/wifi/diagnostics/ReportData;)I

    move-result v2

    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/diagnostics/PatternWifiAppProblem;->getWifiState(Lcom/samsung/android/server/wifi/diagnostics/ReportData;)I

    move-result v5

    if-eq v2, v5, :cond_0

    .line 7
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/diagnostics/PatternWifiAppProblem;->isAppEvent(Lcom/samsung/android/server/wifi/diagnostics/ReportData;)Landroid/util/Pair;

    move-result-object v0

    .line 8
    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_0

    .line 9
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "matches abnormal Wi-Fi control by "

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/samsung/android/server/wifi/diagnostics/PatternWifiAppProblem;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " previous: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    iput v4, p0, Lcom/samsung/android/server/wifi/diagnostics/PatternWifiAppProblem;->mDetectedCategoryId:I

    return v3

    .line 11
    :cond_0
    invoke-virtual {p0, v4}, Lcom/samsung/android/server/wifi/diagnostics/WifiIssuePattern;->getLastIndexOfData(I)Lcom/samsung/android/server/wifi/diagnostics/ReportData;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 12
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/diagnostics/PatternWifiAppProblem;->getNetworkType(Lcom/samsung/android/server/wifi/diagnostics/ReportData;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/server/wifi/diagnostics/PatternWifiAppProblem;->mNetworkType:I

    .line 13
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "matches abnormal disconnect by "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/server/wifi/diagnostics/PatternWifiAppProblem;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " networkType: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/server/wifi/diagnostics/PatternWifiAppProblem;->mNetworkType:I

    .line 14
    invoke-static {v1, v2, v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/StringBuilder;)V

    .line 15
    iput v3, p0, Lcom/samsung/android/server/wifi/diagnostics/PatternWifiAppProblem;->mDetectedCategoryId:I

    return v3

    :cond_1
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
