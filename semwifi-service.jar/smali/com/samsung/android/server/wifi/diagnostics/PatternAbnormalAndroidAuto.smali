.class Lcom/samsung/android/server/wifi/diagnostics/PatternAbnormalAndroidAuto;
.super Lcom/samsung/android/server/wifi/diagnostics/WifiIssuePattern;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# static fields
.field public static final ANDROID_AUTO_PACKAGE_NAME:Ljava/lang/String; = "com.google.android.projection.gearhead"

.field static final PDC4_CATEGORY_ASSOC_REJECT:I = 0x1

.field static final PDC4_CATEGORY_AUTH_FAIL:I = 0x2

.field static final PDC4_CATEGORY_DISCONNECT:I = 0x0

.field private static final TAG:Ljava/lang/String; = "PatternAbnormalAndroidAuto"

.field private static final VERSION:Ljava/lang/String; = "Rev01"


# instance fields
.field private mCategoryId:I

.field private mDisconnectInfo:Lcom/samsung/android/server/wifi/diagnostics/DisconnectInfo;

.field private mLastIssuedReport:Lcom/samsung/android/server/wifi/diagnostics/ReportData;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/diagnostics/WifiIssuePattern;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private getCreatorName(Lcom/samsung/android/server/wifi/diagnostics/ReportData;)Ljava/lang/String;
    .locals 1

    .line 1
    const-string p0, "creatorName"

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

.method private isAndroidAuto(Lcom/samsung/android/server/wifi/diagnostics/ReportData;)Z
    .locals 4

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/diagnostics/PatternAbnormalAndroidAuto;->getCreatorName(Lcom/samsung/android/server/wifi/diagnostics/ReportData;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, p1, Lcom/samsung/android/server/wifi/diagnostics/ReportData;->mReportId:I

    .line 6
    .line 7
    const/16 v2, 0xc8

    .line 8
    .line 9
    const/4 v3, 0x0

    .line 10
    if-ne v1, v2, :cond_0

    .line 11
    .line 12
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/diagnostics/PatternAbnormalAndroidAuto;->getNetworkType(Lcom/samsung/android/server/wifi/diagnostics/ReportData;)I

    .line 13
    .line 14
    .line 15
    move-result p0

    .line 16
    sget-object p1, Lcom/samsung/android/server/wifi/diagnostics/NetworkType;->EPHEMERAL:Lcom/samsung/android/server/wifi/diagnostics/NetworkType;

    .line 17
    .line 18
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    if-eq p0, p1, :cond_1

    .line 23
    .line 24
    return v3

    .line 25
    :cond_0
    const-string p0, "com.google.android.projection.gearhead"

    .line 26
    .line 27
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result p0

    .line 31
    if-nez p0, :cond_1

    .line 32
    .line 33
    const-string p0, "PatternAbnormalAndroidAuto"

    .line 34
    .line 35
    const-string p1, "pattern not matches"

    .line 36
    .line 37
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    .line 39
    .line 40
    return v3

    .line 41
    :cond_1
    const/4 p0, 0x1

    .line 42
    return p0
.end method


# virtual methods
.method public getAssociatedReportIds()Ljava/util/Collection;
    .locals 2
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
    const/16 v1, 0xc8

    .line 14
    .line 15
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    filled-new-array {p0, v0, v1}, [Ljava/lang/Integer;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    return-object p0
.end method

.method public getBigDataParams()Landroid/os/Bundle;
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/diagnostics/PatternAbnormalAndroidAuto;->mLastIssuedReport:Lcom/samsung/android/server/wifi/diagnostics/ReportData;

    .line 2
    .line 3
    const-string v1, "PatternAbnormalAndroidAuto"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    const-string p0, "[getBigDataParams] : mLastIssuedReport == null"

    .line 9
    .line 10
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    .line 12
    .line 13
    return-object v2

    .line 14
    :cond_0
    iget-object v3, p0, Lcom/samsung/android/server/wifi/diagnostics/PatternAbnormalAndroidAuto;->mDisconnectInfo:Lcom/samsung/android/server/wifi/diagnostics/DisconnectInfo;

    .line 15
    .line 16
    if-nez v3, :cond_1

    .line 17
    .line 18
    const-string p0, "[getBigDataParams] : mDisconnectInfo == null"

    .line 19
    .line 20
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    .line 22
    .line 23
    return-object v2

    .line 24
    :cond_1
    iget v3, p0, Lcom/samsung/android/server/wifi/diagnostics/PatternAbnormalAndroidAuto;->mCategoryId:I

    .line 25
    .line 26
    const/4 v4, -0x1

    .line 27
    if-eq v3, v4, :cond_3

    .line 28
    .line 29
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    const-string v5, "netid"

    .line 34
    .line 35
    invoke-static {v0, v5, v3}, Lcom/samsung/android/server/wifi/diagnostics/WifiIssuePattern;->getValue(Lcom/samsung/android/server/wifi/diagnostics/ReportData;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    check-cast v0, Ljava/lang/Integer;

    .line 40
    .line 41
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    if-ne v0, v4, :cond_2

    .line 46
    .line 47
    const-string p0, "skip, invalid network id"

    .line 48
    .line 49
    invoke-static {v1, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    .line 51
    .line 52
    return-object v2

    .line 53
    :cond_2
    new-instance v0, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc4Builder;

    .line 54
    .line 55
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/diagnostics/PatternAbnormalAndroidAuto;->getPatternId()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    iget v2, p0, Lcom/samsung/android/server/wifi/diagnostics/PatternAbnormalAndroidAuto;->mCategoryId:I

    .line 60
    .line 61
    invoke-direct {v0, v1, v2}, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc4Builder;-><init>(Ljava/lang/String;I)V

    .line 62
    .line 63
    .line 64
    const-string v1, "Rev01"

    .line 65
    .line 66
    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc1Builder;->setVersion(Ljava/lang/String;)Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc1Builder;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    iget-object p0, p0, Lcom/samsung/android/server/wifi/diagnostics/PatternAbnormalAndroidAuto;->mDisconnectInfo:Lcom/samsung/android/server/wifi/diagnostics/DisconnectInfo;

    .line 71
    .line 72
    invoke-virtual {v0, p0}, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc1Builder;->setDisconnectInfo(Lcom/samsung/android/server/wifi/diagnostics/DisconnectInfo;)Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc1Builder;

    .line 73
    .line 74
    .line 75
    move-result-object p0

    .line 76
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc1Builder;->build()Landroid/os/Bundle;

    .line 77
    .line 78
    .line 79
    move-result-object p0

    .line 80
    return-object p0

    .line 81
    :cond_3
    return-object v2
.end method

.method protected getBssid(Lcom/samsung/android/server/wifi/diagnostics/ReportData;)Ljava/lang/String;
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

.method public getPatternId()Ljava/lang/String;
    .locals 0

    .line 1
    const-string p0, "android_auto"

    .line 2
    .line 3
    return-object p0
.end method

.method protected getReason(Lcom/samsung/android/server/wifi/diagnostics/ReportData;)I
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
    const-string v0, "assocReason"

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

.method public isAssociated(Lcom/samsung/android/server/wifi/diagnostics/ReportData;)Z
    .locals 4

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/diagnostics/PatternAbnormalAndroidAuto;->isAndroidAuto(Lcom/samsung/android/server/wifi/diagnostics/ReportData;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return v1

    .line 9
    :cond_0
    iget v0, p1, Lcom/samsung/android/server/wifi/diagnostics/ReportData;->mReportId:I

    .line 10
    .line 11
    const/16 v2, 0xe

    .line 12
    .line 13
    const/4 v3, 0x1

    .line 14
    if-eq v0, v2, :cond_2

    .line 15
    .line 16
    const/16 v2, 0xf

    .line 17
    .line 18
    if-eq v0, v2, :cond_2

    .line 19
    .line 20
    const/16 v2, 0xc8

    .line 21
    .line 22
    if-eq v0, v2, :cond_1

    .line 23
    .line 24
    return v1

    .line 25
    :cond_1
    iput-object p1, p0, Lcom/samsung/android/server/wifi/diagnostics/PatternAbnormalAndroidAuto;->mLastIssuedReport:Lcom/samsung/android/server/wifi/diagnostics/ReportData;

    .line 26
    .line 27
    iput v1, p0, Lcom/samsung/android/server/wifi/diagnostics/PatternAbnormalAndroidAuto;->mCategoryId:I

    .line 28
    .line 29
    return v3

    .line 30
    :cond_2
    iput-object p1, p0, Lcom/samsung/android/server/wifi/diagnostics/PatternAbnormalAndroidAuto;->mLastIssuedReport:Lcom/samsung/android/server/wifi/diagnostics/ReportData;

    .line 31
    .line 32
    iput v3, p0, Lcom/samsung/android/server/wifi/diagnostics/PatternAbnormalAndroidAuto;->mCategoryId:I

    .line 33
    .line 34
    return v3
.end method

.method public matches()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/diagnostics/PatternAbnormalAndroidAuto;->pdc1Matches()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const/4 p0, 0x1

    .line 8
    return p0

    .line 9
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/diagnostics/PatternAbnormalAndroidAuto;->pdc2Matches()Z

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    return p0
.end method

.method public pdc1Matches()Z
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/diagnostics/PatternAbnormalAndroidAuto;->mLastIssuedReport:Lcom/samsung/android/server/wifi/diagnostics/ReportData;

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
    const/16 v0, 0xc

    .line 8
    .line 9
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/diagnostics/WifiIssuePattern;->getLastIndexOfData(I)Lcom/samsung/android/server/wifi/diagnostics/ReportData;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    if-eqz v0, :cond_3

    .line 14
    .line 15
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/diagnostics/PatternAbnormalAndroidAuto;->getCreatorName(Lcom/samsung/android/server/wifi/diagnostics/ReportData;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    const-string v3, "com.google.android.projection.gearhead"

    .line 20
    .line 21
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    if-nez v2, :cond_1

    .line 26
    .line 27
    return v1

    .line 28
    :cond_1
    new-instance v2, Lcom/samsung/android/server/wifi/diagnostics/DisconnectInfo;

    .line 29
    .line 30
    iget-object v3, p0, Lcom/samsung/android/server/wifi/diagnostics/PatternAbnormalAndroidAuto;->mLastIssuedReport:Lcom/samsung/android/server/wifi/diagnostics/ReportData;

    .line 31
    .line 32
    const/16 v4, 0xc8

    .line 33
    .line 34
    invoke-virtual {p0, v4}, Lcom/samsung/android/server/wifi/diagnostics/WifiIssuePattern;->getLastIndexOfData(I)Lcom/samsung/android/server/wifi/diagnostics/ReportData;

    .line 35
    .line 36
    .line 37
    move-result-object v4

    .line 38
    invoke-direct {v2, v0, v3, v4}, Lcom/samsung/android/server/wifi/diagnostics/DisconnectInfo;-><init>(Lcom/samsung/android/server/wifi/diagnostics/ReportData;Lcom/samsung/android/server/wifi/diagnostics/ReportData;Lcom/samsung/android/server/wifi/diagnostics/ReportData;)V

    .line 39
    .line 40
    .line 41
    iput-object v2, p0, Lcom/samsung/android/server/wifi/diagnostics/PatternAbnormalAndroidAuto;->mDisconnectInfo:Lcom/samsung/android/server/wifi/diagnostics/DisconnectInfo;

    .line 42
    .line 43
    const/4 v0, 0x2

    .line 44
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/diagnostics/WifiIssuePattern;->getLastIndexOfData(I)Lcom/samsung/android/server/wifi/diagnostics/ReportData;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    const-string v3, "PatternAbnormalAndroidAuto"

    .line 49
    .line 50
    if-nez v2, :cond_2

    .line 51
    .line 52
    const-string p0, "not connected"

    .line 53
    .line 54
    invoke-static {v3, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    .line 56
    .line 57
    return v1

    .line 58
    :cond_2
    iput v1, p0, Lcom/samsung/android/server/wifi/diagnostics/PatternAbnormalAndroidAuto;->mCategoryId:I

    .line 59
    .line 60
    iget-object v1, p0, Lcom/samsung/android/server/wifi/diagnostics/PatternAbnormalAndroidAuto;->mDisconnectInfo:Lcom/samsung/android/server/wifi/diagnostics/DisconnectInfo;

    .line 61
    .line 62
    const/16 v2, 0x12c

    .line 63
    .line 64
    invoke-virtual {p0, v2}, Lcom/samsung/android/server/wifi/diagnostics/WifiIssuePattern;->getLastIndexOfData(I)Lcom/samsung/android/server/wifi/diagnostics/ReportData;

    .line 65
    .line 66
    .line 67
    move-result-object v2

    .line 68
    invoke-virtual {v1, v2}, Lcom/samsung/android/server/wifi/diagnostics/DisconnectInfo;->updateIpReport(Lcom/samsung/android/server/wifi/diagnostics/ReportData;)V

    .line 69
    .line 70
    .line 71
    iget-object v1, p0, Lcom/samsung/android/server/wifi/diagnostics/PatternAbnormalAndroidAuto;->mDisconnectInfo:Lcom/samsung/android/server/wifi/diagnostics/DisconnectInfo;

    .line 72
    .line 73
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/diagnostics/WifiIssuePattern;->getLastIndexOfData(I)Lcom/samsung/android/server/wifi/diagnostics/ReportData;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    invoke-virtual {v1, v0}, Lcom/samsung/android/server/wifi/diagnostics/DisconnectInfo;->updateIpReport(Lcom/samsung/android/server/wifi/diagnostics/ReportData;)V

    .line 78
    .line 79
    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    .line 81
    .line 82
    const-string v1, "[pdc1Matches] matched android auto disconnect issue cid: "

    .line 83
    .line 84
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    iget p0, p0, Lcom/samsung/android/server/wifi/diagnostics/PatternAbnormalAndroidAuto;->mCategoryId:I

    .line 88
    .line 89
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object p0

    .line 96
    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    .line 98
    .line 99
    const/4 p0, 0x1

    .line 100
    return p0

    .line 101
    :cond_3
    return v1
.end method

.method public pdc2Matches()Z
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/diagnostics/PatternAbnormalAndroidAuto;->mLastIssuedReport:Lcom/samsung/android/server/wifi/diagnostics/ReportData;

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
    const-string v2, "PatternAbnormalAndroidAuto"

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
    iget-object v0, p0, Lcom/samsung/android/server/wifi/diagnostics/PatternAbnormalAndroidAuto;->mLastIssuedReport:Lcom/samsung/android/server/wifi/diagnostics/ReportData;

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
    iput-object v3, p0, Lcom/samsung/android/server/wifi/diagnostics/PatternAbnormalAndroidAuto;->mLastIssuedReport:Lcom/samsung/android/server/wifi/diagnostics/ReportData;

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
    iget-object v0, p0, Lcom/samsung/android/server/wifi/diagnostics/PatternAbnormalAndroidAuto;->mLastIssuedReport:Lcom/samsung/android/server/wifi/diagnostics/ReportData;

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
    iput-object v3, p0, Lcom/samsung/android/server/wifi/diagnostics/PatternAbnormalAndroidAuto;->mLastIssuedReport:Lcom/samsung/android/server/wifi/diagnostics/ReportData;

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
    iget-object v1, p0, Lcom/samsung/android/server/wifi/diagnostics/PatternAbnormalAndroidAuto;->mLastIssuedReport:Lcom/samsung/android/server/wifi/diagnostics/ReportData;

    .line 89
    .line 90
    invoke-virtual {p0, v1}, Lcom/samsung/android/server/wifi/diagnostics/PatternAbnormalAndroidAuto;->getReason(Lcom/samsung/android/server/wifi/diagnostics/ReportData;)I

    .line 91
    .line 92
    .line 93
    move-result v1

    .line 94
    new-instance v3, Ljava/lang/StringBuilder;

    .line 95
    .line 96
    const-string v4, "android auto pattern matches bssid: "

    .line 97
    .line 98
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    iget-object v4, p0, Lcom/samsung/android/server/wifi/diagnostics/PatternAbnormalAndroidAuto;->mLastIssuedReport:Lcom/samsung/android/server/wifi/diagnostics/ReportData;

    .line 102
    .line 103
    invoke-virtual {p0, v4}, Lcom/samsung/android/server/wifi/diagnostics/PatternAbnormalAndroidAuto;->getBssid(Lcom/samsung/android/server/wifi/diagnostics/ReportData;)Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v4

    .line 107
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    iget v4, p0, Lcom/samsung/android/server/wifi/diagnostics/PatternAbnormalAndroidAuto;->mCategoryId:I

    .line 111
    .line 112
    const/4 v5, 0x1

    .line 113
    if-ne v4, v5, :cond_7

    .line 114
    .line 115
    const-string v4, " association rejected"

    .line 116
    .line 117
    goto :goto_0

    .line 118
    :cond_7
    const-string v4, " authentication failed"

    .line 119
    .line 120
    :goto_0
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    const-string v4, " assocRejectStatusCode: "

    .line 124
    .line 125
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v3

    .line 135
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    .line 137
    .line 138
    new-instance v2, Lcom/samsung/android/server/wifi/diagnostics/DisconnectInfo;

    .line 139
    .line 140
    const/16 v3, 0xb

    .line 141
    .line 142
    invoke-virtual {p0, v3}, Lcom/samsung/android/server/wifi/diagnostics/WifiIssuePattern;->getLastIndexOfData(I)Lcom/samsung/android/server/wifi/diagnostics/ReportData;

    .line 143
    .line 144
    .line 145
    move-result-object v3

    .line 146
    const/4 v4, 0x0

    .line 147
    invoke-direct {v2, v3, v4, v0}, Lcom/samsung/android/server/wifi/diagnostics/DisconnectInfo;-><init>(Lcom/samsung/android/server/wifi/diagnostics/ReportData;Lcom/samsung/android/server/wifi/diagnostics/ReportData;Lcom/samsung/android/server/wifi/diagnostics/ReportData;)V

    .line 148
    .line 149
    .line 150
    iput-object v2, p0, Lcom/samsung/android/server/wifi/diagnostics/PatternAbnormalAndroidAuto;->mDisconnectInfo:Lcom/samsung/android/server/wifi/diagnostics/DisconnectInfo;

    .line 151
    .line 152
    iput v1, v2, Lcom/samsung/android/server/wifi/diagnostics/DisconnectInfo;->assocRejectStatusCode:I

    .line 153
    .line 154
    return v5
.end method
