.class abstract Lcom/samsung/android/server/wifi/diagnostics/WifiIssuePattern;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# static fields
.field static final ANDROID:Ljava/lang/String; = "android"

.field static final AOSP_WIFI_PKG_PREFIX:Ljava/lang/String; = "android_"

.field static final BASE_START_REPORT_ID:I = 0xb

.field protected static final DBG:Z

.field static final EMPTY:Ljava/lang/String; = "empty"

.field static final INVALID_DATA:I = -0x1

.field static final SHELL:Ljava/lang/String; = "com.android.shell"

.field static final SYSTEM:Ljava/lang/String; = "system"

.field static final SYSTEM_UID:Ljava/lang/String; = "android.uid.system"

.field static final UNKNOWN:Ljava/lang/String; = "unknown"


# instance fields
.field private mLastSeenData:Lcom/samsung/android/server/wifi/diagnostics/ReportData;

.field private mLogs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/server/wifi/diagnostics/ReportData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
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
    sput-boolean v0, Lcom/samsung/android/server/wifi/diagnostics/WifiIssuePattern;->DBG:Z

    .line 10
    .line 11
    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private getLastData()Lcom/samsung/android/server/wifi/diagnostics/ReportData;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/diagnostics/WifiIssuePattern;->mLogs:Ljava/util/List;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    iget-object p0, p0, Lcom/samsung/android/server/wifi/diagnostics/WifiIssuePattern;->mLogs:Ljava/util/List;

    .line 12
    .line 13
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    add-int/lit8 v0, v0, -0x1

    .line 18
    .line 19
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    check-cast p0, Lcom/samsung/android/server/wifi/diagnostics/ReportData;

    .line 24
    .line 25
    return-object p0

    .line 26
    :cond_0
    const/4 p0, 0x0

    .line 27
    return-object p0
.end method

.method public static getValue(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/os/Bundle;",
            "Ljava/lang/String;",
            "TV;)TV;"
        }
    .end annotation

    if-eqz p0, :cond_6

    if-eqz p1, :cond_6

    .line 2
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 3
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    instance-of p1, p0, Ljava/lang/String;

    if-eqz p1, :cond_5

    .line 5
    check-cast p0, Ljava/lang/String;

    if-eqz p2, :cond_4

    .line 6
    :try_start_0
    instance-of p1, p2, Ljava/lang/Boolean;

    if-eqz p1, :cond_1

    .line 7
    invoke-static {p0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    .line 8
    :cond_1
    instance-of p1, p2, Ljava/lang/Integer;

    if-eqz p1, :cond_2

    .line 9
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    .line 10
    :cond_2
    instance-of p1, p2, Ljava/lang/Long;

    if-eqz p1, :cond_3

    .line 11
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    .line 12
    :cond_3
    instance-of p1, p2, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_4

    return-object p0

    :catch_0
    return-object p2

    :cond_4
    const/4 p0, 0x0

    :cond_5
    return-object p0

    :cond_6
    :goto_0
    return-object p2
.end method

.method public static getValue(Lcom/samsung/android/server/wifi/diagnostics/ReportData;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/samsung/android/server/wifi/diagnostics/ReportData;",
            "Ljava/lang/String;",
            "TV;)TV;"
        }
    .end annotation

    if-nez p0, :cond_0

    return-object p2

    .line 1
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/diagnostics/ReportData;->mData:Landroid/os/Bundle;

    invoke-static {p0, p1, p2}, Lcom/samsung/android/server/wifi/diagnostics/WifiIssuePattern;->getValue(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public abstract getAssociatedReportIds()Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getBigDataParams()Landroid/os/Bundle;
.end method

.method protected getLastIndexOfData(I)Lcom/samsung/android/server/wifi/diagnostics/ReportData;
    .locals 2

    const/16 v0, 0xb

    const/4 v1, 0x1

    .line 1
    invoke-virtual {p0, p1, v0, v1}, Lcom/samsung/android/server/wifi/diagnostics/WifiIssuePattern;->getLastIndexOfData(III)Lcom/samsung/android/server/wifi/diagnostics/ReportData;

    move-result-object p0

    return-object p0
.end method

.method protected getLastIndexOfData(III)Lcom/samsung/android/server/wifi/diagnostics/ReportData;
    .locals 4

    .line 2
    iget-object v0, p0, Lcom/samsung/android/server/wifi/diagnostics/WifiIssuePattern;->mLogs:Ljava/util/List;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 3
    iget-object v0, p0, Lcom/samsung/android/server/wifi/diagnostics/WifiIssuePattern;->mLogs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    :goto_0
    if-ltz v0, :cond_3

    .line 4
    iget-object v2, p0, Lcom/samsung/android/server/wifi/diagnostics/WifiIssuePattern;->mLogs:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/server/wifi/diagnostics/ReportData;

    .line 5
    iget-object v3, p0, Lcom/samsung/android/server/wifi/diagnostics/WifiIssuePattern;->mLastSeenData:Lcom/samsung/android/server/wifi/diagnostics/ReportData;

    if-ne v2, v3, :cond_0

    goto :goto_1

    .line 6
    :cond_0
    iget v3, v2, Lcom/samsung/android/server/wifi/diagnostics/ReportData;->mReportId:I

    if-ne v3, p1, :cond_1

    add-int/lit8 v1, v1, 0x1

    if-ne p3, v1, :cond_1

    return-object v2

    :cond_1
    if-ne v3, p2, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_3
    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method

.method protected getLastIndexOfData(IJI)Lcom/samsung/android/server/wifi/diagnostics/ReportData;
    .locals 5

    .line 7
    iget-object v0, p0, Lcom/samsung/android/server/wifi/diagnostics/WifiIssuePattern;->mLogs:Ljava/util/List;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 8
    iget-object v0, p0, Lcom/samsung/android/server/wifi/diagnostics/WifiIssuePattern;->mLogs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/server/wifi/diagnostics/ReportData;

    iget-wide v0, v0, Lcom/samsung/android/server/wifi/diagnostics/ReportData;->mTime:J

    sub-long/2addr v0, p2

    .line 9
    iget-object p2, p0, Lcom/samsung/android/server/wifi/diagnostics/WifiIssuePattern;->mLogs:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    const/4 p3, 0x0

    :goto_0
    if-ltz p2, :cond_2

    .line 10
    iget-object v2, p0, Lcom/samsung/android/server/wifi/diagnostics/WifiIssuePattern;->mLogs:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/server/wifi/diagnostics/ReportData;

    .line 11
    iget-wide v3, v2, Lcom/samsung/android/server/wifi/diagnostics/ReportData;->mTime:J

    cmp-long v3, v3, v0

    if-gez v3, :cond_0

    goto :goto_1

    .line 12
    :cond_0
    iget v3, v2, Lcom/samsung/android/server/wifi/diagnostics/ReportData;->mReportId:I

    if-ne v3, p1, :cond_1

    add-int/lit8 p3, p3, 0x1

    if-ne p4, p3, :cond_1

    return-object v2

    :cond_1
    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    :cond_2
    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public abstract getPatternId()Ljava/lang/String;
.end method

.method protected isApiCalledByNonSystemApk(Ljava/lang/String;)Z
    .locals 0

    .line 1
    const-string p0, "com.android.settings"

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    if-nez p0, :cond_1

    .line 8
    .line 9
    const-string p0, "com.android.systemui"

    .line 10
    .line 11
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    if-nez p0, :cond_1

    .line 16
    .line 17
    const-string p0, "com.sec.android.dexsystemui"

    .line 18
    .line 19
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result p0

    .line 23
    if-nez p0, :cond_1

    .line 24
    .line 25
    const-string p0, "com.samsung.android.sidegesturepad"

    .line 26
    .line 27
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result p0

    .line 31
    if-nez p0, :cond_1

    .line 32
    .line 33
    const-string p0, "com.android.shell"

    .line 34
    .line 35
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result p0

    .line 39
    if-nez p0, :cond_1

    .line 40
    .line 41
    const-string p0, "android"

    .line 42
    .line 43
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-result p0

    .line 47
    if-nez p0, :cond_1

    .line 48
    .line 49
    if-eqz p1, :cond_0

    .line 50
    .line 51
    const-string p0, "system"

    .line 52
    .line 53
    invoke-virtual {p1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 54
    .line 55
    .line 56
    move-result p0

    .line 57
    if-nez p0, :cond_1

    .line 58
    .line 59
    const-string p0, "android_"

    .line 60
    .line 61
    invoke-virtual {p1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 62
    .line 63
    .line 64
    move-result p0

    .line 65
    if-nez p0, :cond_1

    .line 66
    .line 67
    const-string p0, "samsung.wifi."

    .line 68
    .line 69
    invoke-virtual {p1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 70
    .line 71
    .line 72
    move-result p0

    .line 73
    if-nez p0, :cond_1

    .line 74
    .line 75
    :cond_0
    const/4 p0, 0x1

    .line 76
    return p0

    .line 77
    :cond_1
    const/4 p0, 0x0

    .line 78
    return p0
.end method

.method protected isApiCalledByNonSystemUid(Ljava/lang/String;)Z
    .locals 0

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    const-string p0, "android.uid.system"

    .line 4
    .line 5
    invoke-virtual {p1, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    if-nez p0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 p0, 0x0

    .line 13
    return p0

    .line 14
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 15
    return p0
.end method

.method public abstract isAssociated(Lcom/samsung/android/server/wifi/diagnostics/ReportData;)Z
.end method

.method public abstract matches()Z
.end method

.method public matches(Ljava/util/List;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/server/wifi/diagnostics/ReportData;",
            ">;)Z"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/samsung/android/server/wifi/diagnostics/WifiIssuePattern;->mLogs:Ljava/util/List;

    .line 2
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/diagnostics/WifiIssuePattern;->matches()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/diagnostics/WifiIssuePattern;->getLastData()Lcom/samsung/android/server/wifi/diagnostics/ReportData;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/server/wifi/diagnostics/WifiIssuePattern;->mLastSeenData:Lcom/samsung/android/server/wifi/diagnostics/ReportData;

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method protected removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const-string p0, "unknown.ssid"

    .line 4
    .line 5
    return-object p0

    .line 6
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    const/4 v0, 0x1

    .line 11
    if-le p0, v0, :cond_1

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    const/16 v2, 0x22

    .line 19
    .line 20
    if-ne v1, v2, :cond_1

    .line 21
    .line 22
    sub-int/2addr p0, v0

    .line 23
    invoke-virtual {p1, p0}, Ljava/lang/String;->charAt(I)C

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    if-ne v1, v2, :cond_1

    .line 28
    .line 29
    invoke-virtual {p1, v0, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    return-object p0

    .line 34
    :cond_1
    return-object p1
.end method
