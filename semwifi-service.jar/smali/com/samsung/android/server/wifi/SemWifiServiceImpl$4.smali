.class Lcom/samsung/android/server/wifi/SemWifiServiceImpl$4;
.super Landroid/content/BroadcastReceiver;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->registerForBroadcasts()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/SemWifiServiceImpl;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/SemWifiServiceImpl;)V
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
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl$4;->this$0:Lcom/samsung/android/server/wifi/SemWifiServiceImpl;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const-string v0, "onReceive: action="

    .line 6
    .line 7
    invoke-static {v0, p1}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const-string v1, "SemWifiService"

    .line 12
    .line 13
    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    .line 15
    .line 16
    const-string v0, "android.intent.action.SIM_STATE_CHANGED"

    .line 17
    .line 18
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_2

    .line 23
    .line 24
    const-string p1, "rebroadcastOnUnlock"

    .line 25
    .line 26
    const/4 v0, 0x0

    .line 27
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    if-eqz p1, :cond_0

    .line 32
    .line 33
    goto/16 :goto_0

    .line 34
    .line 35
    :cond_0
    const-string p1, "ss"

    .line 36
    .line 37
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    const-string p2, "ABSENT"

    .line 42
    .line 43
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-result p2

    .line 47
    const/4 v2, 0x1

    .line 48
    if-eqz p2, :cond_1

    .line 49
    .line 50
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl$4;->this$0:Lcom/samsung/android/server/wifi/SemWifiServiceImpl;

    .line 51
    .line 52
    invoke-static {p1, v2}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->-$$Nest$fputmIsNoSimState(Lcom/samsung/android/server/wifi/SemWifiServiceImpl;Z)V

    .line 53
    .line 54
    .line 55
    const-string p1, "resetting networks because SIM was removed"

    .line 56
    .line 57
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    .line 59
    .line 60
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl$4;->this$0:Lcom/samsung/android/server/wifi/SemWifiServiceImpl;

    .line 61
    .line 62
    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->-$$Nest$fgetmClientModeManager(Lcom/samsung/android/server/wifi/SemWifiServiceImpl;)Lcom/samsung/android/server/wifi/SemClientModeManager;

    .line 63
    .line 64
    .line 65
    move-result-object p0

    .line 66
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/SemClientModeManager;->setSimState(Z)V

    .line 67
    .line 68
    .line 69
    return-void

    .line 70
    :cond_1
    const-string p2, "LOADED"

    .line 71
    .line 72
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    move-result p1

    .line 76
    if-eqz p1, :cond_4

    .line 77
    .line 78
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl$4;->this$0:Lcom/samsung/android/server/wifi/SemWifiServiceImpl;

    .line 79
    .line 80
    invoke-static {p1, v0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->-$$Nest$fputmIsNoSimState(Lcom/samsung/android/server/wifi/SemWifiServiceImpl;Z)V

    .line 81
    .line 82
    .line 83
    const-string p1, "resetting networks because SIM was loaded"

    .line 84
    .line 85
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    .line 87
    .line 88
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl$4;->this$0:Lcom/samsung/android/server/wifi/SemWifiServiceImpl;

    .line 89
    .line 90
    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->-$$Nest$fgetmClientModeManager(Lcom/samsung/android/server/wifi/SemWifiServiceImpl;)Lcom/samsung/android/server/wifi/SemClientModeManager;

    .line 91
    .line 92
    .line 93
    move-result-object p0

    .line 94
    invoke-virtual {p0, v2}, Lcom/samsung/android/server/wifi/SemClientModeManager;->setSimState(Z)V

    .line 95
    .line 96
    .line 97
    return-void

    .line 98
    :cond_2
    const-string v0, "android.intent.action.AIRPLANE_MODE"

    .line 99
    .line 100
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 101
    .line 102
    .line 103
    move-result v0

    .line 104
    if-eqz v0, :cond_3

    .line 105
    .line 106
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl$4;->this$0:Lcom/samsung/android/server/wifi/SemWifiServiceImpl;

    .line 107
    .line 108
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->-$$Nest$misAirplaneModeEnabled(Lcom/samsung/android/server/wifi/SemWifiServiceImpl;)Z

    .line 109
    .line 110
    .line 111
    move-result p1

    .line 112
    iget-object p2, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl$4;->this$0:Lcom/samsung/android/server/wifi/SemWifiServiceImpl;

    .line 113
    .line 114
    invoke-static {p2}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->-$$Nest$fgetmClientModeManager(Lcom/samsung/android/server/wifi/SemWifiServiceImpl;)Lcom/samsung/android/server/wifi/SemClientModeManager;

    .line 115
    .line 116
    .line 117
    move-result-object p2

    .line 118
    invoke-virtual {p2, p1}, Lcom/samsung/android/server/wifi/SemClientModeManager;->setAirplaneMode(Z)V

    .line 119
    .line 120
    .line 121
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl$4;->this$0:Lcom/samsung/android/server/wifi/SemWifiServiceImpl;

    .line 122
    .line 123
    const/16 p2, 0x8

    .line 124
    .line 125
    invoke-static {p1}, Lcom/samsung/android/server/wifi/diagnostics/ReportUtil;->getReportDataForChangeState(Z)Landroid/os/Bundle;

    .line 126
    .line 127
    .line 128
    move-result-object p1

    .line 129
    invoke-static {p0, p2, p1}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->-$$Nest$mreport(Lcom/samsung/android/server/wifi/SemWifiServiceImpl;ILandroid/os/Bundle;)V

    .line 130
    .line 131
    .line 132
    return-void

    .line 133
    :cond_3
    const-string v0, "android.telephony.action.NETWORK_COUNTRY_CHANGED"

    .line 134
    .line 135
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 136
    .line 137
    .line 138
    move-result p1

    .line 139
    if-eqz p1, :cond_4

    .line 140
    .line 141
    const-string p1, "android.telephony.extra.NETWORK_COUNTRY"

    .line 142
    .line 143
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object p1

    .line 147
    const-string p2, "Country code changed to :"

    .line 148
    .line 149
    invoke-static {p2, p1}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object p2

    .line 153
    invoke-static {v1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    .line 155
    .line 156
    iget-object p2, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl$4;->this$0:Lcom/samsung/android/server/wifi/SemWifiServiceImpl;

    .line 157
    .line 158
    invoke-static {p2}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->-$$Nest$fgetmClientModeManager(Lcom/samsung/android/server/wifi/SemWifiServiceImpl;)Lcom/samsung/android/server/wifi/SemClientModeManager;

    .line 159
    .line 160
    .line 161
    move-result-object p2

    .line 162
    invoke-virtual {p2, p1}, Lcom/samsung/android/server/wifi/SemClientModeManager;->setNetworkCountryCode(Ljava/lang/String;)V

    .line 163
    .line 164
    .line 165
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl$4;->this$0:Lcom/samsung/android/server/wifi/SemWifiServiceImpl;

    .line 166
    .line 167
    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->-$$Nest$fgetmWifiInjector(Lcom/samsung/android/server/wifi/SemWifiServiceImpl;)Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 168
    .line 169
    .line 170
    move-result-object p0

    .line 171
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getSoftApManager()Lcom/samsung/android/server/wifi/ap/SemSoftApManager;

    .line 172
    .line 173
    .line 174
    move-result-object p0

    .line 175
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->setNetworkCountryCode(Ljava/lang/String;)V

    .line 176
    .line 177
    .line 178
    :cond_4
    :goto_0
    return-void
.end method
