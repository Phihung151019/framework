.class Lcom/samsung/android/server/wifi/diagnostics/PatternAbnormalDisconnect;
.super Lcom/samsung/android/server/wifi/diagnostics/WifiIssuePattern;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# static fields
.field static final PDC1_CATEGORY_LCD_OFF_STATE:I = 0x2

.field static final PDC1_CATEGORY_STRONG_SIGNAL:I = 0x0

.field private static final TAG:Ljava/lang/String; = "PatternAbnormalDisc"

.field private static final VERSION:Ljava/lang/String; = "Rev07"


# instance fields
.field private mCategoryId:I

.field private mDisconnectInfo:Lcom/samsung/android/server/wifi/diagnostics/DisconnectInfo;

.field private mDisconnectReport:Lcom/samsung/android/server/wifi/diagnostics/ReportData;


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

.method private getCallingUid(Lcom/samsung/android/server/wifi/diagnostics/ReportData;)Ljava/lang/String;
    .locals 1

    .line 1
    const-string p0, "callUid"

    .line 2
    .line 3
    const-string v0, "android.uid.system"

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

.method private isEnabled(Lcom/samsung/android/server/wifi/diagnostics/ReportData;)Z
    .locals 2

    .line 1
    const/4 p0, 0x0

    .line 2
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    const-string v1, "state"

    .line 7
    .line 8
    invoke-static {p1, v1, v0}, Lcom/samsung/android/server/wifi/diagnostics/WifiIssuePattern;->getValue(Lcom/samsung/android/server/wifi/diagnostics/ReportData;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    check-cast p1, Ljava/lang/Integer;

    .line 13
    .line 14
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    const/4 v0, 0x1

    .line 19
    if-ne p1, v0, :cond_0

    .line 20
    .line 21
    return v0

    .line 22
    :cond_0
    return p0
.end method

.method private isWifiDisabled(Lcom/samsung/android/server/wifi/diagnostics/ReportData;)Z
    .locals 2

    .line 1
    const/4 p0, 0x0

    .line 2
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    const-string v1, "wifiState"

    .line 7
    .line 8
    invoke-static {p1, v1, v0}, Lcom/samsung/android/server/wifi/diagnostics/WifiIssuePattern;->getValue(Lcom/samsung/android/server/wifi/diagnostics/ReportData;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    check-cast p1, Ljava/lang/Integer;

    .line 13
    .line 14
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    if-nez p1, :cond_0

    .line 19
    .line 20
    const/4 p0, 0x1

    .line 21
    :cond_0
    return p0
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
    const/4 p0, 0x1

    .line 2
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 3
    .line 4
    .line 5
    move-result-object p0

    .line 6
    invoke-static {p0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method

.method public getBigDataParams()Landroid/os/Bundle;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/diagnostics/PatternAbnormalDisconnect;->mDisconnectInfo:Lcom/samsung/android/server/wifi/diagnostics/DisconnectInfo;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget v0, p0, Lcom/samsung/android/server/wifi/diagnostics/PatternAbnormalDisconnect;->mCategoryId:I

    .line 6
    .line 7
    const/4 v1, -0x1

    .line 8
    if-eq v0, v1, :cond_0

    .line 9
    .line 10
    new-instance v0, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc1Builder;

    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/diagnostics/PatternAbnormalDisconnect;->getPatternId()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    iget v2, p0, Lcom/samsung/android/server/wifi/diagnostics/PatternAbnormalDisconnect;->mCategoryId:I

    .line 17
    .line 18
    invoke-direct {v0, v1, v2}, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc1Builder;-><init>(Ljava/lang/String;I)V

    .line 19
    .line 20
    .line 21
    const-string v1, "Rev07"

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc1Builder;->setVersion(Ljava/lang/String;)Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc1Builder;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    iget-object p0, p0, Lcom/samsung/android/server/wifi/diagnostics/PatternAbnormalDisconnect;->mDisconnectInfo:Lcom/samsung/android/server/wifi/diagnostics/DisconnectInfo;

    .line 28
    .line 29
    invoke-virtual {v0, p0}, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc1Builder;->setDisconnectInfo(Lcom/samsung/android/server/wifi/diagnostics/DisconnectInfo;)Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc1Builder;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc1Builder;->build()Landroid/os/Bundle;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    return-object p0

    .line 38
    :cond_0
    const/4 p0, 0x0

    .line 39
    return-object p0
.end method

.method public getPatternId()Ljava/lang/String;
    .locals 0

    .line 1
    const-string p0, "disconnect"

    .line 2
    .line 3
    return-object p0
.end method

.method public isAssociated(Lcom/samsung/android/server/wifi/diagnostics/ReportData;)Z
    .locals 2

    .line 1
    iget v0, p1, Lcom/samsung/android/server/wifi/diagnostics/ReportData;->mReportId:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    iput-object p1, p0, Lcom/samsung/android/server/wifi/diagnostics/PatternAbnormalDisconnect;->mDisconnectReport:Lcom/samsung/android/server/wifi/diagnostics/ReportData;

    .line 7
    .line 8
    return v1

    .line 9
    :cond_0
    const/4 p0, 0x0

    .line 10
    return p0
.end method

.method public matches()Z
    .locals 6

    .line 1
    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/samsung/android/server/wifi/diagnostics/PatternAbnormalDisconnect;->mCategoryId:I

    .line 3
    .line 4
    iget-object v0, p0, Lcom/samsung/android/server/wifi/diagnostics/PatternAbnormalDisconnect;->mDisconnectReport:Lcom/samsung/android/server/wifi/diagnostics/ReportData;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    return v1

    .line 10
    :cond_0
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/diagnostics/PatternAbnormalDisconnect;->isWifiDisabled(Lcom/samsung/android/server/wifi/diagnostics/ReportData;)Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    const-string v2, "PatternAbnormalDisc"

    .line 15
    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    const-string p0, "switch Wi-Fi off"

    .line 19
    .line 20
    invoke-static {v2, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    .line 22
    .line 23
    return v1

    .line 24
    :cond_1
    new-instance v0, Lcom/samsung/android/server/wifi/diagnostics/DisconnectInfo;

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
    iget-object v4, p0, Lcom/samsung/android/server/wifi/diagnostics/PatternAbnormalDisconnect;->mDisconnectReport:Lcom/samsung/android/server/wifi/diagnostics/ReportData;

    .line 33
    .line 34
    const/16 v5, 0xc8

    .line 35
    .line 36
    invoke-virtual {p0, v5}, Lcom/samsung/android/server/wifi/diagnostics/WifiIssuePattern;->getLastIndexOfData(I)Lcom/samsung/android/server/wifi/diagnostics/ReportData;

    .line 37
    .line 38
    .line 39
    move-result-object v5

    .line 40
    invoke-direct {v0, v3, v4, v5}, Lcom/samsung/android/server/wifi/diagnostics/DisconnectInfo;-><init>(Lcom/samsung/android/server/wifi/diagnostics/ReportData;Lcom/samsung/android/server/wifi/diagnostics/ReportData;Lcom/samsung/android/server/wifi/diagnostics/ReportData;)V

    .line 41
    .line 42
    .line 43
    iput-object v0, p0, Lcom/samsung/android/server/wifi/diagnostics/PatternAbnormalDisconnect;->mDisconnectInfo:Lcom/samsung/android/server/wifi/diagnostics/DisconnectInfo;

    .line 44
    .line 45
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/diagnostics/DisconnectInfo;->getRssi()I

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    const/16 v3, -0x41

    .line 50
    .line 51
    if-ge v0, v3, :cond_2

    .line 52
    .line 53
    return v1

    .line 54
    :cond_2
    const/4 v0, 0x2

    .line 55
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/diagnostics/WifiIssuePattern;->getLastIndexOfData(I)Lcom/samsung/android/server/wifi/diagnostics/ReportData;

    .line 56
    .line 57
    .line 58
    move-result-object v3

    .line 59
    if-nez v3, :cond_3

    .line 60
    .line 61
    const-string p0, "not connected"

    .line 62
    .line 63
    invoke-static {v2, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    .line 65
    .line 66
    return v1

    .line 67
    :cond_3
    const/16 v3, 0x8

    .line 68
    .line 69
    invoke-virtual {p0, v3}, Lcom/samsung/android/server/wifi/diagnostics/WifiIssuePattern;->getLastIndexOfData(I)Lcom/samsung/android/server/wifi/diagnostics/ReportData;

    .line 70
    .line 71
    .line 72
    move-result-object v3

    .line 73
    if-eqz v3, :cond_4

    .line 74
    .line 75
    invoke-direct {p0, v3}, Lcom/samsung/android/server/wifi/diagnostics/PatternAbnormalDisconnect;->isEnabled(Lcom/samsung/android/server/wifi/diagnostics/ReportData;)Z

    .line 76
    .line 77
    .line 78
    move-result v3

    .line 79
    if-eqz v3, :cond_4

    .line 80
    .line 81
    return v1

    .line 82
    :cond_4
    const/16 v3, 0x67

    .line 83
    .line 84
    invoke-virtual {p0, v3}, Lcom/samsung/android/server/wifi/diagnostics/WifiIssuePattern;->getLastIndexOfData(I)Lcom/samsung/android/server/wifi/diagnostics/ReportData;

    .line 85
    .line 86
    .line 87
    move-result-object v3

    .line 88
    if-eqz v3, :cond_5

    .line 89
    .line 90
    invoke-direct {p0, v3}, Lcom/samsung/android/server/wifi/diagnostics/PatternAbnormalDisconnect;->getCallingUid(Lcom/samsung/android/server/wifi/diagnostics/ReportData;)Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v3

    .line 94
    invoke-virtual {p0, v3}, Lcom/samsung/android/server/wifi/diagnostics/WifiIssuePattern;->isApiCalledByNonSystemUid(Ljava/lang/String;)Z

    .line 95
    .line 96
    .line 97
    move-result v3

    .line 98
    if-nez v3, :cond_5

    .line 99
    .line 100
    const-string p0, "user or system want to connect another network"

    .line 101
    .line 102
    invoke-static {v2, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    .line 104
    .line 105
    return v1

    .line 106
    :cond_5
    const/16 v3, 0x66

    .line 107
    .line 108
    invoke-virtual {p0, v3}, Lcom/samsung/android/server/wifi/diagnostics/WifiIssuePattern;->getLastIndexOfData(I)Lcom/samsung/android/server/wifi/diagnostics/ReportData;

    .line 109
    .line 110
    .line 111
    move-result-object v3

    .line 112
    if-eqz v3, :cond_6

    .line 113
    .line 114
    invoke-direct {p0, v3}, Lcom/samsung/android/server/wifi/diagnostics/PatternAbnormalDisconnect;->getCallingUid(Lcom/samsung/android/server/wifi/diagnostics/ReportData;)Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v3

    .line 118
    invoke-virtual {p0, v3}, Lcom/samsung/android/server/wifi/diagnostics/WifiIssuePattern;->isApiCalledByNonSystemUid(Ljava/lang/String;)Z

    .line 119
    .line 120
    .line 121
    move-result v3

    .line 122
    if-nez v3, :cond_6

    .line 123
    .line 124
    const-string p0, "user or system want to remove current network"

    .line 125
    .line 126
    invoke-static {v2, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    .line 128
    .line 129
    return v1

    .line 130
    :cond_6
    const/16 v3, 0x12e

    .line 131
    .line 132
    invoke-virtual {p0, v3}, Lcom/samsung/android/server/wifi/diagnostics/WifiIssuePattern;->getLastIndexOfData(I)Lcom/samsung/android/server/wifi/diagnostics/ReportData;

    .line 133
    .line 134
    .line 135
    move-result-object v3

    .line 136
    if-eqz v3, :cond_7

    .line 137
    .line 138
    const-string p0, "no internet, user want to switch"

    .line 139
    .line 140
    invoke-static {v2, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    .line 142
    .line 143
    return v1

    .line 144
    :cond_7
    const/16 v3, 0x6b

    .line 145
    .line 146
    invoke-virtual {p0, v3}, Lcom/samsung/android/server/wifi/diagnostics/WifiIssuePattern;->getLastIndexOfData(I)Lcom/samsung/android/server/wifi/diagnostics/ReportData;

    .line 147
    .line 148
    .line 149
    move-result-object v3

    .line 150
    if-eqz v3, :cond_8

    .line 151
    .line 152
    invoke-direct {p0, v3}, Lcom/samsung/android/server/wifi/diagnostics/PatternAbnormalDisconnect;->isEnabled(Lcom/samsung/android/server/wifi/diagnostics/ReportData;)Z

    .line 153
    .line 154
    .line 155
    move-result v3

    .line 156
    if-eqz v3, :cond_8

    .line 157
    .line 158
    const-string p0, "silent roaming activated"

    .line 159
    .line 160
    invoke-static {v2, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    .line 162
    .line 163
    return v1

    .line 164
    :cond_8
    iget-object v3, p0, Lcom/samsung/android/server/wifi/diagnostics/PatternAbnormalDisconnect;->mDisconnectInfo:Lcom/samsung/android/server/wifi/diagnostics/DisconnectInfo;

    .line 165
    .line 166
    iget v4, v3, Lcom/samsung/android/server/wifi/diagnostics/DisconnectInfo;->screenState:I

    .line 167
    .line 168
    if-nez v4, :cond_9

    .line 169
    .line 170
    move v1, v0

    .line 171
    :cond_9
    iput v1, p0, Lcom/samsung/android/server/wifi/diagnostics/PatternAbnormalDisconnect;->mCategoryId:I

    .line 172
    .line 173
    const/16 v1, 0x12c

    .line 174
    .line 175
    invoke-virtual {p0, v1}, Lcom/samsung/android/server/wifi/diagnostics/WifiIssuePattern;->getLastIndexOfData(I)Lcom/samsung/android/server/wifi/diagnostics/ReportData;

    .line 176
    .line 177
    .line 178
    move-result-object v1

    .line 179
    invoke-virtual {v3, v1}, Lcom/samsung/android/server/wifi/diagnostics/DisconnectInfo;->updateIpReport(Lcom/samsung/android/server/wifi/diagnostics/ReportData;)V

    .line 180
    .line 181
    .line 182
    iget-object v1, p0, Lcom/samsung/android/server/wifi/diagnostics/PatternAbnormalDisconnect;->mDisconnectInfo:Lcom/samsung/android/server/wifi/diagnostics/DisconnectInfo;

    .line 183
    .line 184
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/diagnostics/WifiIssuePattern;->getLastIndexOfData(I)Lcom/samsung/android/server/wifi/diagnostics/ReportData;

    .line 185
    .line 186
    .line 187
    move-result-object v0

    .line 188
    invoke-virtual {v1, v0}, Lcom/samsung/android/server/wifi/diagnostics/DisconnectInfo;->updateIpReport(Lcom/samsung/android/server/wifi/diagnostics/ReportData;)V

    .line 189
    .line 190
    .line 191
    new-instance v0, Ljava/lang/StringBuilder;

    .line 192
    .line 193
    const-string v1, "matched abnormal disconnect issue cid: "

    .line 194
    .line 195
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 196
    .line 197
    .line 198
    iget p0, p0, Lcom/samsung/android/server/wifi/diagnostics/PatternAbnormalDisconnect;->mCategoryId:I

    .line 199
    .line 200
    invoke-static {v2, p0, v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/StringBuilder;)V

    .line 201
    .line 202
    .line 203
    const/4 p0, 0x1

    .line 204
    return p0
.end method
