.class Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$ConnectedState;
.super Lcom/android/internal/util/State;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ConnectedState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;)V
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
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public enter()V
    .locals 9

    .line 1
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->-$$Nest$sfgetDBG()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const-string v0, "SemWifiUsageMonitor"

    .line 8
    .line 9
    const-string v1, "ConnectedState.enter()"

    .line 10
    .line 11
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    .line 13
    .line 14
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;

    .line 15
    .line 16
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 17
    .line 18
    .line 19
    move-result-wide v1

    .line 20
    invoke-static {v0, v1, v2}, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->-$$Nest$fputmConnectedStateEnterTime(Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;J)V

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;

    .line 24
    .line 25
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->-$$Nest$fgetmWifiManagerProxy(Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;)Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-static {v0, v1}, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->-$$Nest$fputmWifiInfo(Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;Landroid/net/wifi/WifiInfo;)V

    .line 34
    .line 35
    .line 36
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;

    .line 37
    .line 38
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->-$$Nest$fgetmWifiInfo(Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;)Landroid/net/wifi/WifiInfo;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    if-nez v0, :cond_1

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;

    .line 46
    .line 47
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->-$$Nest$fgetmWifiManagerProxy(Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;)Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->getCurrentNetwork()Landroid/net/Network;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    invoke-static {v0, v1}, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->-$$Nest$fputmNetwork(Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;Landroid/net/Network;)V

    .line 56
    .line 57
    .line 58
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;

    .line 59
    .line 60
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->-$$Nest$fgetmWifiInjector(Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;)Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInterfaceNameProvider()Lcom/samsung/android/server/wifi/ISemInterfaceNameProvider;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    invoke-interface {v1}, Lcom/samsung/android/server/wifi/ISemInterfaceNameProvider;->getPrimaryInterfaceName()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    invoke-static {v0, v1}, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->-$$Nest$fputmIfaceName(Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;

    .line 76
    .line 77
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->-$$Nest$fgetmWifiConfigManager(Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;)Lcom/samsung/android/server/wifi/SemWifiConfigManager;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;

    .line 82
    .line 83
    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->-$$Nest$fgetmWifiInfo(Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;)Landroid/net/wifi/WifiInfo;

    .line 84
    .line 85
    .line 86
    move-result-object v2

    .line 87
    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    .line 88
    .line 89
    .line 90
    move-result v2

    .line 91
    invoke-virtual {v1, v2}, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->getSavedNetwork(I)Landroid/net/wifi/WifiConfiguration;

    .line 92
    .line 93
    .line 94
    move-result-object v1

    .line 95
    invoke-static {v0, v1}, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->-$$Nest$fputmConfig(Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;Landroid/net/wifi/WifiConfiguration;)V

    .line 96
    .line 97
    .line 98
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;

    .line 99
    .line 100
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->-$$Nest$fgetmConfig(Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;)Landroid/net/wifi/WifiConfiguration;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    if-nez v0, :cond_2

    .line 105
    .line 106
    :goto_0
    return-void

    .line 107
    :cond_2
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->-$$Nest$sfgetmMapLock()Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    move-result-object v1

    .line 111
    monitor-enter v1

    .line 112
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;

    .line 113
    .line 114
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->-$$Nest$fgetmLastUsageSnapshot(Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;)Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$UsageSnapshot;

    .line 115
    .line 116
    .line 117
    move-result-object v2

    .line 118
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;

    .line 119
    .line 120
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->-$$Nest$fgetmIfaceName(Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;)Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v3

    .line 124
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;

    .line 125
    .line 126
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->-$$Nest$fgetmConfig(Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;)Landroid/net/wifi/WifiConfiguration;

    .line 127
    .line 128
    .line 129
    move-result-object v0

    .line 130
    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->getKey()Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object v4

    .line 134
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;

    .line 135
    .line 136
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->-$$Nest$fgetmWifiInfo(Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;)Landroid/net/wifi/WifiInfo;

    .line 137
    .line 138
    .line 139
    move-result-object v5

    .line 140
    invoke-static {v0, v5}, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->-$$Nest$mgetBandIndex(Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;Landroid/net/wifi/WifiInfo;)I

    .line 141
    .line 142
    .line 143
    move-result v5

    .line 144
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;

    .line 145
    .line 146
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->-$$Nest$fgetmWifiInfo(Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;)Landroid/net/wifi/WifiInfo;

    .line 147
    .line 148
    .line 149
    move-result-object v0

    .line 150
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getWifiStandard()I

    .line 151
    .line 152
    .line 153
    move-result v6

    .line 154
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;

    .line 155
    .line 156
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 157
    .line 158
    .line 159
    move-result-wide v7

    .line 160
    invoke-static {v0, v7, v8}, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->-$$Nest$mconvertTimeToSimpleDateFormat(Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;J)Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object v7

    .line 164
    invoke-virtual/range {v2 .. v7}, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$UsageSnapshot;->initialize(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V

    .line 165
    .line 166
    .line 167
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 168
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;

    .line 169
    .line 170
    const/4 v0, 0x1

    .line 171
    invoke-static {p0, v0}, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->-$$Nest$mupdateWifiUsage(Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;Z)V

    .line 172
    .line 173
    .line 174
    return-void

    .line 175
    :catchall_0
    move-exception v0

    .line 176
    move-object p0, v0

    .line 177
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 178
    throw p0
.end method

.method public exit()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-static {v0, v1}, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->-$$Nest$mupdateWifiUsage(Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;Z)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    invoke-static {v0, v1}, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->-$$Nest$fputmNetwork(Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;Landroid/net/Network;)V

    .line 11
    .line 12
    .line 13
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;

    .line 14
    .line 15
    invoke-static {p0, v1}, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->-$$Nest$fputmIfaceName(Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->-$$Nest$sfgetDBG()Z

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    if-eqz p0, :cond_0

    .line 23
    .line 24
    const-string p0, "SemWifiUsageMonitor"

    .line 25
    .line 26
    const-string v0, "ConnectedState.exit()"

    .line 27
    .line 28
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    .line 30
    .line 31
    :cond_0
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 6

    .line 1
    const-string v0, "Wifi Standard changedafter roam. From "

    .line 2
    .line 3
    const-string v1, "Band changed after roam. From "

    .line 4
    .line 5
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;

    .line 6
    .line 7
    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->-$$Nest$fgetmVerboseLoggingEnabled(Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;)Z

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    if-eqz v2, :cond_0

    .line 12
    .line 13
    const-string v2, "SemWifiUsageMonitor"

    .line 14
    .line 15
    iget-object v3, p0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;

    .line 16
    .line 17
    iget v4, p1, Landroid/os/Message;->what:I

    .line 18
    .line 19
    invoke-virtual {v3, v4}, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->smToString(I)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    .line 25
    .line 26
    :cond_0
    iget v2, p1, Landroid/os/Message;->what:I

    .line 27
    .line 28
    const/4 v3, 0x1

    .line 29
    const/4 v4, 0x0

    .line 30
    const/4 v5, 0x3

    .line 31
    if-eq v2, v5, :cond_5

    .line 32
    .line 33
    const/4 p1, 0x5

    .line 34
    if-eq v2, p1, :cond_1

    .line 35
    .line 36
    return v4

    .line 37
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;

    .line 38
    .line 39
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->-$$Nest$fgetmWifiManagerProxy(Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;)Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    invoke-static {p1, v2}, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->-$$Nest$fputmWifiInfo(Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;Landroid/net/wifi/WifiInfo;)V

    .line 48
    .line 49
    .line 50
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;

    .line 51
    .line 52
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->-$$Nest$fgetmWifiInfo(Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;)Landroid/net/wifi/WifiInfo;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    if-nez p1, :cond_2

    .line 57
    .line 58
    return v3

    .line 59
    :cond_2
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->-$$Nest$sfgetmMapLock()Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v2

    .line 63
    monitor-enter v2

    .line 64
    :try_start_0
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;

    .line 65
    .line 66
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->-$$Nest$fgetmWifiInfo(Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;)Landroid/net/wifi/WifiInfo;

    .line 67
    .line 68
    .line 69
    move-result-object v4

    .line 70
    invoke-static {p1, v4}, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->-$$Nest$mgetBandIndex(Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;Landroid/net/wifi/WifiInfo;)I

    .line 71
    .line 72
    .line 73
    move-result p1

    .line 74
    iget-object v4, p0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;

    .line 75
    .line 76
    invoke-static {v4}, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->-$$Nest$fgetmLastUsageSnapshot(Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;)Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$UsageSnapshot;

    .line 77
    .line 78
    .line 79
    move-result-object v4

    .line 80
    iget v4, v4, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$UsageSnapshot;->mBand:I

    .line 81
    .line 82
    if-eq p1, v4, :cond_3

    .line 83
    .line 84
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;

    .line 85
    .line 86
    new-instance v0, Ljava/lang/StringBuilder;

    .line 87
    .line 88
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;

    .line 92
    .line 93
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->-$$Nest$fgetmLastUsageSnapshot(Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;)Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$UsageSnapshot;

    .line 94
    .line 95
    .line 96
    move-result-object v4

    .line 97
    iget v4, v4, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$UsageSnapshot;->mBand:I

    .line 98
    .line 99
    invoke-static {v1, v4}, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->-$$Nest$mbandIndexToString(Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;I)Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v1

    .line 103
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    const-string v1, " to "

    .line 107
    .line 108
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;

    .line 112
    .line 113
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->-$$Nest$fgetmWifiInfo(Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;)Landroid/net/wifi/WifiInfo;

    .line 114
    .line 115
    .line 116
    move-result-object v4

    .line 117
    invoke-static {v1, v4}, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->-$$Nest$mgetBandIndex(Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;Landroid/net/wifi/WifiInfo;)I

    .line 118
    .line 119
    .line 120
    move-result v4

    .line 121
    invoke-static {v1, v4}, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->-$$Nest$mbandIndexToString(Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;I)Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v1

    .line 125
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v0

    .line 132
    invoke-virtual {p1, v0}, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->localLog(Ljava/lang/String;)V

    .line 133
    .line 134
    .line 135
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;

    .line 136
    .line 137
    invoke-virtual {p0, v5}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    .line 138
    .line 139
    .line 140
    goto :goto_0

    .line 141
    :catchall_0
    move-exception p0

    .line 142
    goto :goto_1

    .line 143
    :cond_3
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;

    .line 144
    .line 145
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->-$$Nest$fgetmWifiInfo(Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;)Landroid/net/wifi/WifiInfo;

    .line 146
    .line 147
    .line 148
    move-result-object p1

    .line 149
    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getWifiStandard()I

    .line 150
    .line 151
    .line 152
    move-result p1

    .line 153
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;

    .line 154
    .line 155
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->-$$Nest$fgetmLastUsageSnapshot(Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;)Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$UsageSnapshot;

    .line 156
    .line 157
    .line 158
    move-result-object v1

    .line 159
    iget v1, v1, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$UsageSnapshot;->mWifiStandard:I

    .line 160
    .line 161
    if-eq p1, v1, :cond_4

    .line 162
    .line 163
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;

    .line 164
    .line 165
    new-instance v1, Ljava/lang/StringBuilder;

    .line 166
    .line 167
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 168
    .line 169
    .line 170
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;

    .line 171
    .line 172
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->-$$Nest$fgetmLastUsageSnapshot(Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;)Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$UsageSnapshot;

    .line 173
    .line 174
    .line 175
    move-result-object v0

    .line 176
    iget v0, v0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$UsageSnapshot;->mWifiStandard:I

    .line 177
    .line 178
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->-$$Nest$smwifiStandardToString(I)Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object v0

    .line 182
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    .line 184
    .line 185
    const-string v0, " to "

    .line 186
    .line 187
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    .line 189
    .line 190
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;

    .line 191
    .line 192
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->-$$Nest$fgetmWifiInfo(Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;)Landroid/net/wifi/WifiInfo;

    .line 193
    .line 194
    .line 195
    move-result-object v0

    .line 196
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getWifiStandard()I

    .line 197
    .line 198
    .line 199
    move-result v0

    .line 200
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->-$$Nest$smwifiStandardToString(I)Ljava/lang/String;

    .line 201
    .line 202
    .line 203
    move-result-object v0

    .line 204
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    .line 206
    .line 207
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 208
    .line 209
    .line 210
    move-result-object v0

    .line 211
    invoke-virtual {p1, v0}, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->localLog(Ljava/lang/String;)V

    .line 212
    .line 213
    .line 214
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;

    .line 215
    .line 216
    invoke-virtual {p0, v5}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    .line 217
    .line 218
    .line 219
    :cond_4
    :goto_0
    monitor-exit v2

    .line 220
    return v3

    .line 221
    :goto_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 222
    throw p0

    .line 223
    :cond_5
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->-$$Nest$sfgetDBG()Z

    .line 224
    .line 225
    .line 226
    move-result v0

    .line 227
    if-eqz v0, :cond_6

    .line 228
    .line 229
    const-string v0, "SemWifiUsageMonitor"

    .line 230
    .line 231
    const-string v1, "CMD_UPDATE_WIFI_USAGE - Update"

    .line 232
    .line 233
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    .line 235
    .line 236
    :cond_6
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;

    .line 237
    .line 238
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 239
    .line 240
    if-ne p1, v3, :cond_7

    .line 241
    .line 242
    move v4, v3

    .line 243
    :cond_7
    invoke-static {p0, v4}, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->-$$Nest$mupdateWifiUsage$1(Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;Z)V

    .line 244
    .line 245
    .line 246
    return v3
.end method
