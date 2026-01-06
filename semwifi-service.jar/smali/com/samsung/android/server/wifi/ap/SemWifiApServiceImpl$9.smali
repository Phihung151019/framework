.class Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl$9;
.super Landroid/telephony/PhoneStateListener;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;)V
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
    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl$9;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onDataConnectionStateChanged(II)V
    .locals 3

    .line 1
    const-string v0, "onDataConnectionStateChanged: state -"

    .line 2
    .line 3
    const-string v1, ", networkType - "

    .line 4
    .line 5
    invoke-static {v0, p1, v1}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-static {p2}, Landroid/telephony/TelephonyManager;->getNetworkTypeName(I)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    const-string v0, "SemWifiApServiceImpl"

    .line 21
    .line 22
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    .line 24
    .line 25
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl$9;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    .line 26
    .line 27
    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->-$$Nest$fgetmFacade(Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;)Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->isSupportChameleon()Z

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    if-eqz p1, :cond_3

    .line 36
    .line 37
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl$9;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    .line 38
    .line 39
    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->-$$Nest$fgetmWifiManagerProxy(Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;)Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->getWifiApState()I

    .line 44
    .line 45
    .line 46
    move-result p1

    .line 47
    const/16 v1, 0xc

    .line 48
    .line 49
    if-eq p1, v1, :cond_0

    .line 50
    .line 51
    const/16 v1, 0xd

    .line 52
    .line 53
    if-ne p1, v1, :cond_3

    .line 54
    .line 55
    :cond_0
    const/4 p1, 0x1

    .line 56
    if-eq p1, p2, :cond_2

    .line 57
    .line 58
    const/4 p1, 0x2

    .line 59
    if-eq p1, p2, :cond_2

    .line 60
    .line 61
    const/16 p1, 0x10

    .line 62
    .line 63
    if-eq p1, p2, :cond_2

    .line 64
    .line 65
    if-nez p2, :cond_1

    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl$9;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    .line 69
    .line 70
    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->-$$Nest$fgetmFacade(Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;)Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    iget-object p2, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl$9;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    .line 75
    .line 76
    invoke-static {p2}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->-$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;)Landroid/content/Context;

    .line 77
    .line 78
    .line 79
    move-result-object p2

    .line 80
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl$9;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    .line 81
    .line 82
    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->getWifiApMaxClient()I

    .line 83
    .line 84
    .line 85
    move-result v1

    .line 86
    const-string v2, "chameleon_maxuser"

    .line 87
    .line 88
    invoke-virtual {p1, p2, v2, v1}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->getSystemIntegerSetting(Landroid/content/Context;Ljava/lang/String;I)I

    .line 89
    .line 90
    .line 91
    move-result p1

    .line 92
    goto :goto_1

    .line 93
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl$9;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    .line 94
    .line 95
    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->-$$Nest$fgetmFacade(Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;)Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    iget-object p2, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl$9;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    .line 100
    .line 101
    invoke-static {p2}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->-$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;)Landroid/content/Context;

    .line 102
    .line 103
    .line 104
    move-result-object p2

    .line 105
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl$9;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    .line 106
    .line 107
    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->getWifiApMaxClient()I

    .line 108
    .line 109
    .line 110
    move-result v1

    .line 111
    const-string v2, "chameleon_gsmmaxuser"

    .line 112
    .line 113
    invoke-virtual {p1, p2, v2, v1}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->getSystemIntegerSetting(Landroid/content/Context;Ljava/lang/String;I)I

    .line 114
    .line 115
    .line 116
    move-result p1

    .line 117
    :goto_1
    iget-object p2, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl$9;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    .line 118
    .line 119
    invoke-static {p2}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->-$$Nest$fgetmSemWifiInjector(Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;)Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 120
    .line 121
    .line 122
    move-result-object p2

    .line 123
    invoke-virtual {p2}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getSemSoftApConfiguration()Lcom/samsung/android/server/wifi/ap/SemSoftApConfiguration;

    .line 124
    .line 125
    .line 126
    move-result-object p2

    .line 127
    invoke-virtual {p2}, Lcom/samsung/android/server/wifi/ap/SemSoftApConfiguration;->getWifiApMaxClientFromFramework()I

    .line 128
    .line 129
    .line 130
    move-result p2

    .line 131
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    .line 132
    .line 133
    .line 134
    move-result p1

    .line 135
    const-string p2, "maxClientNum = "

    .line 136
    .line 137
    invoke-static {p2, p1, v0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)V

    .line 138
    .line 139
    .line 140
    iget-object p2, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl$9;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    .line 141
    .line 142
    invoke-static {p2}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->-$$Nest$fgetmSoftApManager(Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;)Lcom/samsung/android/server/wifi/ap/SemSoftApManager;

    .line 143
    .line 144
    .line 145
    move-result-object p2

    .line 146
    if-eqz p2, :cond_3

    .line 147
    .line 148
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl$9;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    .line 149
    .line 150
    invoke-static {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->-$$Nest$fgetmSoftApManager(Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;)Lcom/samsung/android/server/wifi/ap/SemSoftApManager;

    .line 151
    .line 152
    .line 153
    move-result-object p0

    .line 154
    new-instance p2, Ljava/lang/StringBuilder;

    .line 155
    .line 156
    const-string v0, "SET_MAXCLIENT "

    .line 157
    .line 158
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 159
    .line 160
    .line 161
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 162
    .line 163
    .line 164
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    move-result-object p1

    .line 168
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->sendHostapdCommand(Ljava/lang/String;)Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    :cond_3
    return-void
.end method

.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 4

    .line 1
    invoke-super {p0, p1}, Landroid/telephony/PhoneStateListener;->onServiceStateChanged(Landroid/telephony/ServiceState;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl$9;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    .line 5
    .line 6
    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->-$$Nest$fgetisUsingNonTerrestrialNetwork(Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl$9;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    .line 11
    .line 12
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->isUsingNonTerrestrialNetwork()Z

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    invoke-static {v1, v2}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->-$$Nest$fputisUsingNonTerrestrialNetwork(Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;Z)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getDataNetworkType()I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    new-instance v2, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    const-string v3, "onServiceStateChanged : "

    .line 26
    .line 27
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    .line 31
    .line 32
    .line 33
    move-result v3

    .line 34
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    const-string v3, "dataNetworkType : "

    .line 38
    .line 39
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    const-string v1, ",isUsingNonTerrestrialNetwork:"

    .line 46
    .line 47
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl$9;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    .line 51
    .line 52
    invoke-static {v1}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->-$$Nest$fgetisUsingNonTerrestrialNetwork(Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;)Z

    .line 53
    .line 54
    .line 55
    move-result v1

    .line 56
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    const-string v2, "SemWifiApServiceImpl"

    .line 64
    .line 65
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    .line 67
    .line 68
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl$9;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    .line 69
    .line 70
    invoke-static {v1}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->-$$Nest$fgetisUsingNonTerrestrialNetwork(Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;)Z

    .line 71
    .line 72
    .line 73
    move-result v1

    .line 74
    if-eq v0, v1, :cond_0

    .line 75
    .line 76
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl$9;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    .line 77
    .line 78
    new-instance v1, Ljava/lang/StringBuilder;

    .line 79
    .line 80
    const-string v2, "onServiceStateChanged:isUsingNonTerrestrialNetwork:"

    .line 81
    .line 82
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl$9;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    .line 86
    .line 87
    invoke-static {v2}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->-$$Nest$fgetisUsingNonTerrestrialNetwork(Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;)Z

    .line 88
    .line 89
    .line 90
    move-result v2

    .line 91
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v1

    .line 98
    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->reportHotspotDumpLogs(Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl$9;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    .line 102
    .line 103
    invoke-static {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->-$$Nest$mcheckAndSarBackoffSoftApModeFor5GmmWave(Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;Landroid/telephony/ServiceState;)V

    .line 104
    .line 105
    .line 106
    return-void
.end method
