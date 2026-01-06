.class Lcom/samsung/android/server/wifi/SemClientModeImpl$ObtainingIpState;
.super Lcom/android/internal/util/State;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/SemClientModeImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ObtainingIpState"
.end annotation


# instance fields
.field private connectivityManager:Landroid/net/ConnectivityManager;

.field final synthetic this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/SemClientModeImpl;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ObtainingIpState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private checkAndGetConnectivityManager()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ObtainingIpState;->connectivityManager:Landroid/net/ConnectivityManager;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ObtainingIpState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 6
    .line 7
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Landroid/content/Context;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const-string v1, "connectivity"

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Landroid/net/ConnectivityManager;

    .line 18
    .line 19
    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ObtainingIpState;->connectivityManager:Landroid/net/ConnectivityManager;

    .line 20
    .line 21
    :cond_0
    return-void
.end method

.method private isL3ConnectedForEphemeralNetwork()Z
    .locals 7

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemClientModeImpl$ObtainingIpState;->checkAndGetConnectivityManager()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ObtainingIpState;->connectivityManager:Landroid/net/ConnectivityManager;

    .line 5
    .line 6
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getAllNetworks()[Landroid/net/Network;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    array-length v1, v0

    .line 11
    const/4 v2, 0x0

    .line 12
    move v3, v2

    .line 13
    :goto_0
    if-ge v3, v1, :cond_1

    .line 14
    .line 15
    aget-object v4, v0, v3

    .line 16
    .line 17
    iget-object v5, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ObtainingIpState;->connectivityManager:Landroid/net/ConnectivityManager;

    .line 18
    .line 19
    invoke-virtual {v5, v4}, Landroid/net/ConnectivityManager;->getLinkProperties(Landroid/net/Network;)Landroid/net/LinkProperties;

    .line 20
    .line 21
    .line 22
    move-result-object v4

    .line 23
    if-eqz v4, :cond_0

    .line 24
    .line 25
    iget-object v5, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ObtainingIpState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 26
    .line 27
    invoke-static {v5}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmInterfaceName(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v5

    .line 31
    invoke-virtual {v4}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v6

    .line 35
    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 36
    .line 37
    .line 38
    move-result v5

    .line 39
    if-eqz v5, :cond_0

    .line 40
    .line 41
    invoke-virtual {v4}, Landroid/net/LinkProperties;->isProvisioned()Z

    .line 42
    .line 43
    .line 44
    move-result p0

    .line 45
    return p0

    .line 46
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_1
    return v2
.end method


# virtual methods
.method public enter()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ObtainingIpState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 2
    .line 3
    const-string v1, "entering ObtainingIpState"

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->logd(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ObtainingIpState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 9
    .line 10
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmTargetWifiConfiguration(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Landroid/net/wifi/WifiConfiguration;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ObtainingIpState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 17
    .line 18
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmTargetWifiConfiguration(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Landroid/net/wifi/WifiConfiguration;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->isEphemeral()Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-eqz v0, :cond_0

    .line 27
    .line 28
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ObtainingIpState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 29
    .line 30
    const v0, 0x2008c

    .line 31
    .line 32
    .line 33
    const-wide/16 v1, 0x3e8

    .line 34
    .line 35
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/util/StateMachine;->sendMessageDelayed(IJ)V

    .line 36
    .line 37
    .line 38
    :cond_0
    return-void
.end method

.method public exit()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ObtainingIpState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 2
    .line 3
    const-string v0, "Leaving ObtainingIp state"

    .line 4
    .line 5
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->logd(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 8

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    .line 2
    .line 3
    const v1, 0x2008c

    .line 4
    .line 5
    .line 6
    const/4 v2, 0x1

    .line 7
    if-eq v0, v1, :cond_2

    .line 8
    .line 9
    const v1, 0x24004

    .line 10
    .line 11
    .line 12
    const/4 v3, 0x0

    .line 13
    if-eq v0, v1, :cond_0

    .line 14
    .line 15
    goto/16 :goto_1

    .line 16
    .line 17
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ObtainingIpState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/android/internal/util/StateMachine;->getCurrentState()Lcom/android/internal/util/IState;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ObtainingIpState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 24
    .line 25
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmObtainingIpState(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/android/internal/util/State;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    if-ne v0, v1, :cond_1

    .line 30
    .line 31
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ObtainingIpState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 32
    .line 33
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmTargetWifiConfiguration(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Landroid/net/wifi/WifiConfiguration;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    if-eqz v0, :cond_1

    .line 38
    .line 39
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ObtainingIpState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 40
    .line 41
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmTargetWifiConfiguration(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Landroid/net/wifi/WifiConfiguration;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->isEnterprise()Z

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    if-nez v0, :cond_1

    .line 50
    .line 51
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ObtainingIpState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 52
    .line 53
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmTargetWifiConfiguration(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Landroid/net/wifi/WifiConfiguration;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->isPasspoint()Z

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    if-nez v0, :cond_1

    .line 62
    .line 63
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ObtainingIpState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 64
    .line 65
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmWifiConfigManager(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/SemWifiConfigManager;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ObtainingIpState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 70
    .line 71
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmTargetWifiConfiguration(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Landroid/net/wifi/WifiConfiguration;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    invoke-virtual {v1}, Landroid/net/wifi/WifiConfiguration;->getKey()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    const/4 v4, 0x4

    .line 80
    invoke-virtual {v0, v1, v4}, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->setDisableReason(Ljava/lang/String;I)V

    .line 81
    .line 82
    .line 83
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ObtainingIpState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 84
    .line 85
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmTargetBssid(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v1

    .line 89
    iget-object v4, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ObtainingIpState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 90
    .line 91
    iget v4, v4, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mTargetNetworkId:I

    .line 92
    .line 93
    const/16 v5, 0x4e20

    .line 94
    .line 95
    invoke-static {v5, v4, v0, v1}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$msendNetworkConnectionFailEventToSettings(IILcom/samsung/android/server/wifi/SemClientModeImpl;Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ObtainingIpState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 99
    .line 100
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmInterfaceName(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v1

    .line 104
    iget-object v4, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ObtainingIpState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 105
    .line 106
    iget v5, v4, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mTargetNetworkId:I

    .line 107
    .line 108
    invoke-static {v4}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmTargetBssid(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v4

    .line 112
    iget-object v6, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ObtainingIpState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 113
    .line 114
    invoke-static {v6}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmScanPool(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/util/ScanPool;

    .line 115
    .line 116
    .line 117
    move-result-object v6

    .line 118
    iget-object v7, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ObtainingIpState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 119
    .line 120
    invoke-static {v7}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmTargetBssid(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v7

    .line 124
    invoke-virtual {v6, v7}, Lcom/samsung/android/server/wifi/util/ScanPool;->getFrequency(Ljava/lang/String;)I

    .line 125
    .line 126
    .line 127
    move-result v6

    .line 128
    iget-object v7, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ObtainingIpState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 129
    .line 130
    invoke-static {v7}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmTargetWifiConfiguration(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Landroid/net/wifi/WifiConfiguration;

    .line 131
    .line 132
    .line 133
    move-result-object v7

    .line 134
    invoke-static {v1, v5, v4, v6, v7}, Lcom/samsung/android/server/wifi/diagnostics/ReportUtil;->getReportDataForDhcpFailure(Ljava/lang/String;ILjava/lang/String;ILandroid/net/wifi/WifiConfiguration;)Landroid/os/Bundle;

    .line 135
    .line 136
    .line 137
    move-result-object v1

    .line 138
    const/16 v4, 0x12c

    .line 139
    .line 140
    invoke-static {v0, v4, v1}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$mreport(Lcom/samsung/android/server/wifi/SemClientModeImpl;ILandroid/os/Bundle;)V

    .line 141
    .line 142
    .line 143
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ObtainingIpState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 144
    .line 145
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$mretryConnectionForB2bNetwork(Lcom/samsung/android/server/wifi/SemClientModeImpl;)V

    .line 146
    .line 147
    .line 148
    goto :goto_1

    .line 149
    :cond_2
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemClientModeImpl$ObtainingIpState;->isL3ConnectedForEphemeralNetwork()Z

    .line 150
    .line 151
    .line 152
    move-result v0

    .line 153
    if-eqz v0, :cond_3

    .line 154
    .line 155
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ObtainingIpState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 156
    .line 157
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmConnectedState(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/android/internal/util/State;

    .line 158
    .line 159
    .line 160
    move-result-object v1

    .line 161
    invoke-virtual {v0, v1}, Lcom/android/internal/util/StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    .line 162
    .line 163
    .line 164
    goto :goto_0

    .line 165
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ObtainingIpState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 166
    .line 167
    const-wide/16 v3, 0x3e8

    .line 168
    .line 169
    invoke-virtual {v0, v1, v3, v4}, Lcom/android/internal/util/StateMachine;->sendMessageDelayed(IJ)V

    .line 170
    .line 171
    .line 172
    :goto_0
    move v3, v2

    .line 173
    :goto_1
    if-ne v3, v2, :cond_4

    .line 174
    .line 175
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ObtainingIpState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 176
    .line 177
    invoke-static {v0, p1, p0}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$mlogStateAndMessage(Lcom/samsung/android/server/wifi/SemClientModeImpl;Landroid/os/Message;Lcom/android/internal/util/State;)V

    .line 178
    .line 179
    .line 180
    :cond_4
    return v3
.end method
