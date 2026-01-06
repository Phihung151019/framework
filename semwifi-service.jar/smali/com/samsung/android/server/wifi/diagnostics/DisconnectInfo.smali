.class Lcom/samsung/android/server/wifi/diagnostics/DisconnectInfo;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# instance fields
.field public adpsState:I

.field public assocRejectStatusCode:I

.field public connectionDurationMinutes:I

.field public disconnectReason:I

.field public dns1:Ljava/lang/String;

.field public dns2:Ljava/lang/String;

.field public frequency:I

.field public gateway:Ljava/lang/String;

.field public handleState:Ljava/lang/String;

.field public ip:Ljava/lang/String;

.field public ipSetting:I

.field public lastProcessMessage:I

.field public locallyGenerated:I

.field public netMask:I

.field public networkInternalType:I

.field public nl80211Mode:I

.field public oui:Ljava/lang/String;

.field public previousProcessMessage:I

.field public screenState:I

.field public wifiInfoBssid:Ljava/lang/String;

.field public wifiInfoSsid:Ljava/lang/String;

.field public wpaKeyMgmt:I

.field public wpaRssi:I

.field public wpaState:I


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/diagnostics/ReportData;Lcom/samsung/android/server/wifi/diagnostics/ReportData;Lcom/samsung/android/server/wifi/diagnostics/ReportData;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/diagnostics/DisconnectInfo;->setupTryingToAssocReport(Lcom/samsung/android/server/wifi/diagnostics/ReportData;)V

    .line 5
    .line 6
    .line 7
    invoke-direct {p0, p2}, Lcom/samsung/android/server/wifi/diagnostics/DisconnectInfo;->setupDisconnectReport(Lcom/samsung/android/server/wifi/diagnostics/ReportData;)V

    .line 8
    .line 9
    .line 10
    invoke-direct {p0, p2}, Lcom/samsung/android/server/wifi/diagnostics/DisconnectInfo;->setupIpReport(Lcom/samsung/android/server/wifi/diagnostics/ReportData;)V

    .line 11
    .line 12
    .line 13
    invoke-direct {p0, p3}, Lcom/samsung/android/server/wifi/diagnostics/DisconnectInfo;->setupBigDataDiscReport(Lcom/samsung/android/server/wifi/diagnostics/ReportData;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method private getUpdatedValue(II)I
    .locals 0

    .line 1
    const/4 p0, -0x1

    if-eq p2, p0, :cond_0

    return p2

    :cond_0
    return p1
.end method

.method private getUpdatedValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 2
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    const-string v0, "unknown"

    if-nez p0, :cond_0

    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

    return-object p2

    .line 3
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    return-object v0

    :cond_1
    return-object p1
.end method

.method private setupBigDataDiscReport(Lcom/samsung/android/server/wifi/diagnostics/ReportData;)V
    .locals 3

    .line 1
    const/4 v0, -0x1

    .line 2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    const-string v2, "wpaSecureType"

    .line 7
    .line 8
    invoke-static {p1, v2, v1}, Lcom/samsung/android/server/wifi/diagnostics/WifiIssuePattern;->getValue(Lcom/samsung/android/server/wifi/diagnostics/ReportData;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    check-cast v2, Ljava/lang/Integer;

    .line 13
    .line 14
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    iput v2, p0, Lcom/samsung/android/server/wifi/diagnostics/DisconnectInfo;->wpaKeyMgmt:I

    .line 19
    .line 20
    const-string v2, "wpaState"

    .line 21
    .line 22
    invoke-static {p1, v2, v1}, Lcom/samsung/android/server/wifi/diagnostics/WifiIssuePattern;->getValue(Lcom/samsung/android/server/wifi/diagnostics/ReportData;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    check-cast v2, Ljava/lang/Integer;

    .line 27
    .line 28
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    iput v2, p0, Lcom/samsung/android/server/wifi/diagnostics/DisconnectInfo;->wpaState:I

    .line 33
    .line 34
    const-string v2, "disconnectReason"

    .line 35
    .line 36
    invoke-static {p1, v2, v1}, Lcom/samsung/android/server/wifi/diagnostics/WifiIssuePattern;->getValue(Lcom/samsung/android/server/wifi/diagnostics/ReportData;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    check-cast v2, Ljava/lang/Integer;

    .line 41
    .line 42
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 43
    .line 44
    .line 45
    move-result v2

    .line 46
    iput v2, p0, Lcom/samsung/android/server/wifi/diagnostics/DisconnectInfo;->disconnectReason:I

    .line 47
    .line 48
    const-string v2, "assocReason"

    .line 49
    .line 50
    invoke-static {p1, v2, v1}, Lcom/samsung/android/server/wifi/diagnostics/WifiIssuePattern;->getValue(Lcom/samsung/android/server/wifi/diagnostics/ReportData;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    check-cast v2, Ljava/lang/Integer;

    .line 55
    .line 56
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 57
    .line 58
    .line 59
    move-result v2

    .line 60
    iput v2, p0, Lcom/samsung/android/server/wifi/diagnostics/DisconnectInfo;->assocRejectStatusCode:I

    .line 61
    .line 62
    const-string v2, "locallyGenerated"

    .line 63
    .line 64
    invoke-static {p1, v2, v1}, Lcom/samsung/android/server/wifi/diagnostics/WifiIssuePattern;->getValue(Lcom/samsung/android/server/wifi/diagnostics/ReportData;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object v2

    .line 68
    check-cast v2, Ljava/lang/Integer;

    .line 69
    .line 70
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 71
    .line 72
    .line 73
    move-result v2

    .line 74
    iput v2, p0, Lcom/samsung/android/server/wifi/diagnostics/DisconnectInfo;->locallyGenerated:I

    .line 75
    .line 76
    if-ne v2, v0, :cond_0

    .line 77
    .line 78
    iget v2, p0, Lcom/samsung/android/server/wifi/diagnostics/DisconnectInfo;->assocRejectStatusCode:I

    .line 79
    .line 80
    if-eq v2, v0, :cond_0

    .line 81
    .line 82
    const/4 v0, 0x0

    .line 83
    iput v0, p0, Lcom/samsung/android/server/wifi/diagnostics/DisconnectInfo;->locallyGenerated:I

    .line 84
    .line 85
    :cond_0
    const-string v0, "oui"

    .line 86
    .line 87
    const-string v2, "unknown"

    .line 88
    .line 89
    invoke-static {p1, v0, v2}, Lcom/samsung/android/server/wifi/diagnostics/WifiIssuePattern;->getValue(Lcom/samsung/android/server/wifi/diagnostics/ReportData;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    check-cast v0, Ljava/lang/String;

    .line 94
    .line 95
    iput-object v0, p0, Lcom/samsung/android/server/wifi/diagnostics/DisconnectInfo;->oui:Ljava/lang/String;

    .line 96
    .line 97
    const-string v0, "frequency"

    .line 98
    .line 99
    invoke-static {p1, v0, v1}, Lcom/samsung/android/server/wifi/diagnostics/WifiIssuePattern;->getValue(Lcom/samsung/android/server/wifi/diagnostics/ReportData;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    check-cast v0, Ljava/lang/Integer;

    .line 104
    .line 105
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 106
    .line 107
    .line 108
    move-result v0

    .line 109
    iput v0, p0, Lcom/samsung/android/server/wifi/diagnostics/DisconnectInfo;->frequency:I

    .line 110
    .line 111
    const/16 v0, -0x63

    .line 112
    .line 113
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    const-string v2, "rssi"

    .line 118
    .line 119
    invoke-static {p1, v2, v0}, Lcom/samsung/android/server/wifi/diagnostics/WifiIssuePattern;->getValue(Lcom/samsung/android/server/wifi/diagnostics/ReportData;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    .line 121
    .line 122
    move-result-object v0

    .line 123
    check-cast v0, Ljava/lang/Integer;

    .line 124
    .line 125
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 126
    .line 127
    .line 128
    move-result v0

    .line 129
    iput v0, p0, Lcom/samsung/android/server/wifi/diagnostics/DisconnectInfo;->wpaRssi:I

    .line 130
    .line 131
    const-string v0, "apTypeInt"

    .line 132
    .line 133
    invoke-static {p1, v0, v1}, Lcom/samsung/android/server/wifi/diagnostics/WifiIssuePattern;->getValue(Lcom/samsung/android/server/wifi/diagnostics/ReportData;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    .line 135
    .line 136
    move-result-object v0

    .line 137
    check-cast v0, Ljava/lang/Integer;

    .line 138
    .line 139
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 140
    .line 141
    .line 142
    move-result v0

    .line 143
    iput v0, p0, Lcom/samsung/android/server/wifi/diagnostics/DisconnectInfo;->networkInternalType:I

    .line 144
    .line 145
    const-string v0, "80211mode"

    .line 146
    .line 147
    invoke-static {p1, v0, v1}, Lcom/samsung/android/server/wifi/diagnostics/WifiIssuePattern;->getValue(Lcom/samsung/android/server/wifi/diagnostics/ReportData;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    .line 149
    .line 150
    move-result-object p1

    .line 151
    check-cast p1, Ljava/lang/Integer;

    .line 152
    .line 153
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 154
    .line 155
    .line 156
    move-result p1

    .line 157
    iput p1, p0, Lcom/samsung/android/server/wifi/diagnostics/DisconnectInfo;->nl80211Mode:I

    .line 158
    .line 159
    return-void
.end method

.method private setupDisconnectReport(Lcom/samsung/android/server/wifi/diagnostics/ReportData;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/diagnostics/DisconnectInfo;->wifiInfoSsid:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "ssid"

    .line 4
    .line 5
    const-string v2, "unknown"

    .line 6
    .line 7
    invoke-static {p1, v1, v2}, Lcom/samsung/android/server/wifi/diagnostics/WifiIssuePattern;->getValue(Lcom/samsung/android/server/wifi/diagnostics/ReportData;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    check-cast v1, Ljava/lang/String;

    .line 12
    .line 13
    invoke-direct {p0, v0, v1}, Lcom/samsung/android/server/wifi/diagnostics/DisconnectInfo;->getUpdatedValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iput-object v0, p0, Lcom/samsung/android/server/wifi/diagnostics/DisconnectInfo;->wifiInfoSsid:Ljava/lang/String;

    .line 18
    .line 19
    iget-object v0, p0, Lcom/samsung/android/server/wifi/diagnostics/DisconnectInfo;->wifiInfoBssid:Ljava/lang/String;

    .line 20
    .line 21
    const-string v1, "bssid"

    .line 22
    .line 23
    invoke-static {p1, v1, v2}, Lcom/samsung/android/server/wifi/diagnostics/WifiIssuePattern;->getValue(Lcom/samsung/android/server/wifi/diagnostics/ReportData;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    check-cast v1, Ljava/lang/String;

    .line 28
    .line 29
    invoke-direct {p0, v0, v1}, Lcom/samsung/android/server/wifi/diagnostics/DisconnectInfo;->getUpdatedValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    iput-object v0, p0, Lcom/samsung/android/server/wifi/diagnostics/DisconnectInfo;->wifiInfoBssid:Ljava/lang/String;

    .line 34
    .line 35
    iget v0, p0, Lcom/samsung/android/server/wifi/diagnostics/DisconnectInfo;->screenState:I

    .line 36
    .line 37
    const/4 v1, -0x1

    .line 38
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    const-string v3, "screen_on"

    .line 43
    .line 44
    invoke-static {p1, v3, v1}, Lcom/samsung/android/server/wifi/diagnostics/WifiIssuePattern;->getValue(Lcom/samsung/android/server/wifi/diagnostics/ReportData;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v3

    .line 48
    check-cast v3, Ljava/lang/Integer;

    .line 49
    .line 50
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 51
    .line 52
    .line 53
    move-result v3

    .line 54
    invoke-direct {p0, v0, v3}, Lcom/samsung/android/server/wifi/diagnostics/DisconnectInfo;->getUpdatedValue(II)I

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    iput v0, p0, Lcom/samsung/android/server/wifi/diagnostics/DisconnectInfo;->screenState:I

    .line 59
    .line 60
    iget v0, p0, Lcom/samsung/android/server/wifi/diagnostics/DisconnectInfo;->adpsState:I

    .line 61
    .line 62
    const-string v3, "adpsState"

    .line 63
    .line 64
    invoke-static {p1, v3, v1}, Lcom/samsung/android/server/wifi/diagnostics/WifiIssuePattern;->getValue(Lcom/samsung/android/server/wifi/diagnostics/ReportData;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object v3

    .line 68
    check-cast v3, Ljava/lang/Integer;

    .line 69
    .line 70
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 71
    .line 72
    .line 73
    move-result v3

    .line 74
    invoke-direct {p0, v0, v3}, Lcom/samsung/android/server/wifi/diagnostics/DisconnectInfo;->getUpdatedValue(II)I

    .line 75
    .line 76
    .line 77
    move-result v0

    .line 78
    iput v0, p0, Lcom/samsung/android/server/wifi/diagnostics/DisconnectInfo;->adpsState:I

    .line 79
    .line 80
    const-string v0, "pstate"

    .line 81
    .line 82
    invoke-static {p1, v0, v2}, Lcom/samsung/android/server/wifi/diagnostics/WifiIssuePattern;->getValue(Lcom/samsung/android/server/wifi/diagnostics/ReportData;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    check-cast v0, Ljava/lang/String;

    .line 87
    .line 88
    iput-object v0, p0, Lcom/samsung/android/server/wifi/diagnostics/DisconnectInfo;->handleState:Ljava/lang/String;

    .line 89
    .line 90
    const-string v0, "pmsg"

    .line 91
    .line 92
    invoke-static {p1, v0, v1}, Lcom/samsung/android/server/wifi/diagnostics/WifiIssuePattern;->getValue(Lcom/samsung/android/server/wifi/diagnostics/ReportData;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    check-cast v0, Ljava/lang/Integer;

    .line 97
    .line 98
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 99
    .line 100
    .line 101
    move-result v0

    .line 102
    iput v0, p0, Lcom/samsung/android/server/wifi/diagnostics/DisconnectInfo;->lastProcessMessage:I

    .line 103
    .line 104
    const-string v0, "ppmsg"

    .line 105
    .line 106
    invoke-static {p1, v0, v1}, Lcom/samsung/android/server/wifi/diagnostics/WifiIssuePattern;->getValue(Lcom/samsung/android/server/wifi/diagnostics/ReportData;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    check-cast v0, Ljava/lang/Integer;

    .line 111
    .line 112
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 113
    .line 114
    .line 115
    move-result v0

    .line 116
    iput v0, p0, Lcom/samsung/android/server/wifi/diagnostics/DisconnectInfo;->previousProcessMessage:I

    .line 117
    .line 118
    const-string v0, "conn_duration"

    .line 119
    .line 120
    invoke-static {p1, v0, v1}, Lcom/samsung/android/server/wifi/diagnostics/WifiIssuePattern;->getValue(Lcom/samsung/android/server/wifi/diagnostics/ReportData;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    .line 122
    .line 123
    move-result-object p1

    .line 124
    check-cast p1, Ljava/lang/Integer;

    .line 125
    .line 126
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 127
    .line 128
    .line 129
    move-result p1

    .line 130
    iput p1, p0, Lcom/samsung/android/server/wifi/diagnostics/DisconnectInfo;->connectionDurationMinutes:I

    .line 131
    .line 132
    return-void
.end method

.method private setupIpReport(Lcom/samsung/android/server/wifi/diagnostics/ReportData;)V
    .locals 3

    .line 1
    const/4 v0, -0x1

    .line 2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    const-string v1, "ipAssignment"

    .line 7
    .line 8
    invoke-static {p1, v1, v0}, Lcom/samsung/android/server/wifi/diagnostics/WifiIssuePattern;->getValue(Lcom/samsung/android/server/wifi/diagnostics/ReportData;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    check-cast v1, Ljava/lang/Integer;

    .line 13
    .line 14
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    iput v1, p0, Lcom/samsung/android/server/wifi/diagnostics/DisconnectInfo;->ipSetting:I

    .line 19
    .line 20
    const-string v1, "ip"

    .line 21
    .line 22
    const-string v2, "unknown"

    .line 23
    .line 24
    invoke-static {p1, v1, v2}, Lcom/samsung/android/server/wifi/diagnostics/WifiIssuePattern;->getValue(Lcom/samsung/android/server/wifi/diagnostics/ReportData;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    check-cast v1, Ljava/lang/String;

    .line 29
    .line 30
    iput-object v1, p0, Lcom/samsung/android/server/wifi/diagnostics/DisconnectInfo;->ip:Ljava/lang/String;

    .line 31
    .line 32
    const-string v1, "gw"

    .line 33
    .line 34
    invoke-static {p1, v1, v2}, Lcom/samsung/android/server/wifi/diagnostics/WifiIssuePattern;->getValue(Lcom/samsung/android/server/wifi/diagnostics/ReportData;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    check-cast v1, Ljava/lang/String;

    .line 39
    .line 40
    iput-object v1, p0, Lcom/samsung/android/server/wifi/diagnostics/DisconnectInfo;->gateway:Ljava/lang/String;

    .line 41
    .line 42
    const-string v1, "dns1"

    .line 43
    .line 44
    invoke-static {p1, v1, v2}, Lcom/samsung/android/server/wifi/diagnostics/WifiIssuePattern;->getValue(Lcom/samsung/android/server/wifi/diagnostics/ReportData;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    check-cast v1, Ljava/lang/String;

    .line 49
    .line 50
    iput-object v1, p0, Lcom/samsung/android/server/wifi/diagnostics/DisconnectInfo;->dns1:Ljava/lang/String;

    .line 51
    .line 52
    const-string v1, "dns2"

    .line 53
    .line 54
    invoke-static {p1, v1, v2}, Lcom/samsung/android/server/wifi/diagnostics/WifiIssuePattern;->getValue(Lcom/samsung/android/server/wifi/diagnostics/ReportData;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    check-cast v1, Ljava/lang/String;

    .line 59
    .line 60
    iput-object v1, p0, Lcom/samsung/android/server/wifi/diagnostics/DisconnectInfo;->dns2:Ljava/lang/String;

    .line 61
    .line 62
    const-string v1, "networkPrefix"

    .line 63
    .line 64
    invoke-static {p1, v1, v0}, Lcom/samsung/android/server/wifi/diagnostics/WifiIssuePattern;->getValue(Lcom/samsung/android/server/wifi/diagnostics/ReportData;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    check-cast p1, Ljava/lang/Integer;

    .line 69
    .line 70
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 71
    .line 72
    .line 73
    move-result p1

    .line 74
    iput p1, p0, Lcom/samsung/android/server/wifi/diagnostics/DisconnectInfo;->netMask:I

    .line 75
    .line 76
    return-void
.end method

.method private setupTryingToAssocReport(Lcom/samsung/android/server/wifi/diagnostics/ReportData;)V
    .locals 2

    .line 1
    const-string v0, "ssid"

    .line 2
    .line 3
    const-string v1, "unknown"

    .line 4
    .line 5
    invoke-static {p1, v0, v1}, Lcom/samsung/android/server/wifi/diagnostics/WifiIssuePattern;->getValue(Lcom/samsung/android/server/wifi/diagnostics/ReportData;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Ljava/lang/String;

    .line 10
    .line 11
    iput-object v0, p0, Lcom/samsung/android/server/wifi/diagnostics/DisconnectInfo;->wifiInfoSsid:Ljava/lang/String;

    .line 12
    .line 13
    const-string v0, "bssid"

    .line 14
    .line 15
    invoke-static {p1, v0, v1}, Lcom/samsung/android/server/wifi/diagnostics/WifiIssuePattern;->getValue(Lcom/samsung/android/server/wifi/diagnostics/ReportData;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Ljava/lang/String;

    .line 20
    .line 21
    iput-object v0, p0, Lcom/samsung/android/server/wifi/diagnostics/DisconnectInfo;->wifiInfoBssid:Ljava/lang/String;

    .line 22
    .line 23
    const/4 v0, -0x1

    .line 24
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    const-string v1, "screen_on"

    .line 29
    .line 30
    invoke-static {p1, v1, v0}, Lcom/samsung/android/server/wifi/diagnostics/WifiIssuePattern;->getValue(Lcom/samsung/android/server/wifi/diagnostics/ReportData;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    check-cast v1, Ljava/lang/Integer;

    .line 35
    .line 36
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    iput v1, p0, Lcom/samsung/android/server/wifi/diagnostics/DisconnectInfo;->screenState:I

    .line 41
    .line 42
    const-string v1, "adpsState"

    .line 43
    .line 44
    invoke-static {p1, v1, v0}, Lcom/samsung/android/server/wifi/diagnostics/WifiIssuePattern;->getValue(Lcom/samsung/android/server/wifi/diagnostics/ReportData;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    check-cast p1, Ljava/lang/Integer;

    .line 49
    .line 50
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 51
    .line 52
    .line 53
    move-result p1

    .line 54
    iput p1, p0, Lcom/samsung/android/server/wifi/diagnostics/DisconnectInfo;->adpsState:I

    .line 55
    .line 56
    return-void
.end method


# virtual methods
.method public getRssi()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/server/wifi/diagnostics/DisconnectInfo;->wpaRssi:I

    .line 2
    .line 3
    return p0
.end method

.method public updateIpReport(Lcom/samsung/android/server/wifi/diagnostics/ReportData;)V
    .locals 4

    .line 1
    iget v0, p0, Lcom/samsung/android/server/wifi/diagnostics/DisconnectInfo;->ipSetting:I

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    const-string v2, "ipAssignment"

    .line 9
    .line 10
    invoke-static {p1, v2, v1}, Lcom/samsung/android/server/wifi/diagnostics/WifiIssuePattern;->getValue(Lcom/samsung/android/server/wifi/diagnostics/ReportData;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    check-cast v2, Ljava/lang/Integer;

    .line 15
    .line 16
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    invoke-direct {p0, v0, v2}, Lcom/samsung/android/server/wifi/diagnostics/DisconnectInfo;->getUpdatedValue(II)I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    iput v0, p0, Lcom/samsung/android/server/wifi/diagnostics/DisconnectInfo;->ipSetting:I

    .line 25
    .line 26
    iget-object v0, p0, Lcom/samsung/android/server/wifi/diagnostics/DisconnectInfo;->ip:Ljava/lang/String;

    .line 27
    .line 28
    const-string v2, "ip"

    .line 29
    .line 30
    const-string v3, "unknown"

    .line 31
    .line 32
    invoke-static {p1, v2, v3}, Lcom/samsung/android/server/wifi/diagnostics/WifiIssuePattern;->getValue(Lcom/samsung/android/server/wifi/diagnostics/ReportData;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    check-cast v2, Ljava/lang/String;

    .line 37
    .line 38
    invoke-direct {p0, v0, v2}, Lcom/samsung/android/server/wifi/diagnostics/DisconnectInfo;->getUpdatedValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    iput-object v0, p0, Lcom/samsung/android/server/wifi/diagnostics/DisconnectInfo;->ip:Ljava/lang/String;

    .line 43
    .line 44
    iget-object v0, p0, Lcom/samsung/android/server/wifi/diagnostics/DisconnectInfo;->gateway:Ljava/lang/String;

    .line 45
    .line 46
    const-string v2, "gw"

    .line 47
    .line 48
    invoke-static {p1, v2, v3}, Lcom/samsung/android/server/wifi/diagnostics/WifiIssuePattern;->getValue(Lcom/samsung/android/server/wifi/diagnostics/ReportData;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    check-cast v2, Ljava/lang/String;

    .line 53
    .line 54
    invoke-direct {p0, v0, v2}, Lcom/samsung/android/server/wifi/diagnostics/DisconnectInfo;->getUpdatedValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    iput-object v0, p0, Lcom/samsung/android/server/wifi/diagnostics/DisconnectInfo;->gateway:Ljava/lang/String;

    .line 59
    .line 60
    iget-object v0, p0, Lcom/samsung/android/server/wifi/diagnostics/DisconnectInfo;->dns1:Ljava/lang/String;

    .line 61
    .line 62
    const-string v2, "dns1"

    .line 63
    .line 64
    invoke-static {p1, v2, v3}, Lcom/samsung/android/server/wifi/diagnostics/WifiIssuePattern;->getValue(Lcom/samsung/android/server/wifi/diagnostics/ReportData;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object v2

    .line 68
    check-cast v2, Ljava/lang/String;

    .line 69
    .line 70
    invoke-direct {p0, v0, v2}, Lcom/samsung/android/server/wifi/diagnostics/DisconnectInfo;->getUpdatedValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    iput-object v0, p0, Lcom/samsung/android/server/wifi/diagnostics/DisconnectInfo;->dns1:Ljava/lang/String;

    .line 75
    .line 76
    iget-object v0, p0, Lcom/samsung/android/server/wifi/diagnostics/DisconnectInfo;->dns2:Ljava/lang/String;

    .line 77
    .line 78
    const-string v2, "dns2"

    .line 79
    .line 80
    invoke-static {p1, v2, v3}, Lcom/samsung/android/server/wifi/diagnostics/WifiIssuePattern;->getValue(Lcom/samsung/android/server/wifi/diagnostics/ReportData;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object v2

    .line 84
    check-cast v2, Ljava/lang/String;

    .line 85
    .line 86
    invoke-direct {p0, v0, v2}, Lcom/samsung/android/server/wifi/diagnostics/DisconnectInfo;->getUpdatedValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    iput-object v0, p0, Lcom/samsung/android/server/wifi/diagnostics/DisconnectInfo;->dns2:Ljava/lang/String;

    .line 91
    .line 92
    iget v0, p0, Lcom/samsung/android/server/wifi/diagnostics/DisconnectInfo;->netMask:I

    .line 93
    .line 94
    const-string v2, "networkPrefix"

    .line 95
    .line 96
    invoke-static {p1, v2, v1}, Lcom/samsung/android/server/wifi/diagnostics/WifiIssuePattern;->getValue(Lcom/samsung/android/server/wifi/diagnostics/ReportData;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    move-result-object p1

    .line 100
    check-cast p1, Ljava/lang/Integer;

    .line 101
    .line 102
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 103
    .line 104
    .line 105
    move-result p1

    .line 106
    invoke-direct {p0, v0, p1}, Lcom/samsung/android/server/wifi/diagnostics/DisconnectInfo;->getUpdatedValue(II)I

    .line 107
    .line 108
    .line 109
    move-result p1

    .line 110
    iput p1, p0, Lcom/samsung/android/server/wifi/diagnostics/DisconnectInfo;->netMask:I

    .line 111
    .line 112
    return-void
.end method
