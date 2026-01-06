.class Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$DefaultState;
.super Lcom/android/internal/util/State;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DefaultState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)V
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
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$DefaultState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

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
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/android/internal/util/State;->getName()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, " enter"

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    const-string v1, "WifiConnectivityMonitor"

    .line 23
    .line 24
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    .line 26
    .line 27
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$DefaultState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 28
    .line 29
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$msetupNetworkReceiver(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)V

    .line 30
    .line 31
    .line 32
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$DefaultState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 33
    .line 34
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$mregisterForSettingsChanges(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)V

    .line 35
    .line 36
    .line 37
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$DefaultState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 38
    .line 39
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$mregisterForVPNChanges(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)V

    .line 40
    .line 41
    .line 42
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$DefaultState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 43
    .line 44
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$mregisterForWatchdogToggle(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)V

    .line 45
    .line 46
    .line 47
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$DefaultState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 48
    .line 49
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$mregisterForMptcpChange(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)V

    .line 50
    .line 51
    .line 52
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$DefaultState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 53
    .line 54
    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$mupdateWcmSettings(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)V

    .line 55
    .line 56
    .line 57
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$DefaultState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Lcom/android/internal/util/StateMachine;->setLogOnlyTransitions(Z)V

    .line 5
    .line 6
    .line 7
    iget v0, p1, Landroid/os/Message;->what:I

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    const-string v3, "Network"

    .line 11
    .line 12
    const/4 v4, -0x1

    .line 13
    const-string v5, "WifiConnectivityMonitor"

    .line 14
    .line 15
    const/4 v6, 0x1

    .line 16
    sparse-switch v0, :sswitch_data_0

    .line 17
    .line 18
    .line 19
    new-instance p0, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    const-string v0, "Unhandled message "

    .line 22
    .line 23
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    iget p1, p1, Landroid/os/Message;->what:I

    .line 27
    .line 28
    invoke-static {v5, p1, p0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/StringBuilder;)V

    .line 29
    .line 30
    .line 31
    return v6

    .line 32
    :sswitch_0
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 33
    .line 34
    iget v1, p1, Landroid/os/Message;->arg2:I

    .line 35
    .line 36
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 37
    .line 38
    check-cast p1, Ljava/lang/String;

    .line 39
    .line 40
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$DefaultState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 41
    .line 42
    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmRssiThresholdNetSelector(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    if-eqz v2, :cond_0

    .line 47
    .line 48
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$DefaultState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 49
    .line 50
    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmRssiThresholdNetSelector(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    iget-object v3, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$DefaultState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 55
    .line 56
    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Landroid/content/Context;

    .line 57
    .line 58
    .line 59
    move-result-object v3

    .line 60
    invoke-static {v3}, Lcom/samsung/android/server/wifi/wcm/WcmUtil;->getInstance(Landroid/content/Context;)Lcom/samsung/android/server/wifi/wcm/WcmUtil;

    .line 61
    .line 62
    .line 63
    move-result-object v3

    .line 64
    invoke-virtual {v3}, Lcom/samsung/android/server/wifi/wcm/WcmUtil;->getLastStoredValidRssi()I

    .line 65
    .line 66
    .line 67
    move-result v3

    .line 68
    invoke-virtual {v2, p1, v0, v1, v3}, Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector;->notifyNetworkDisconnected(Ljava/lang/String;III)V

    .line 69
    .line 70
    .line 71
    :cond_0
    const-string v2, "got SemWifiMonitor.NETWORK_DISCONNECTION_EVENT local="

    .line 72
    .line 73
    const-string v3, " reason="

    .line 74
    .line 75
    const-string v4, " bssid="

    .line 76
    .line 77
    invoke-static {v2, v3, v0, v1, v4}, Lcom/google/gson/stream/JsonReader$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$DefaultState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 82
    .line 83
    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmLogUtils(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/util/LogUtils;

    .line 84
    .line 85
    .line 86
    move-result-object p0

    .line 87
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/util/LogUtils;->getPrintableLog(Ljava/lang/String;)Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object p0

    .line 91
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object p0

    .line 98
    invoke-static {v5, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    .line 100
    .line 101
    return v6

    .line 102
    :sswitch_1
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$DefaultState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 103
    .line 104
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmAbTestValue(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)I

    .line 105
    .line 106
    .line 107
    move-result p1

    .line 108
    if-ne p1, v4, :cond_1

    .line 109
    .line 110
    const-string p0, "abtest value is -1"

    .line 111
    .line 112
    invoke-static {v5, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    .line 114
    .line 115
    return v6

    .line 116
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$DefaultState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 117
    .line 118
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmAbTestValue(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)I

    .line 119
    .line 120
    .line 121
    move-result p1

    .line 122
    if-eqz p1, :cond_2

    .line 123
    .line 124
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$DefaultState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 125
    .line 126
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmAbTestValue(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)I

    .line 127
    .line 128
    .line 129
    move-result p1

    .line 130
    if-ne p1, v6, :cond_22

    .line 131
    .line 132
    :cond_2
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$DefaultState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 133
    .line 134
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmRssiThresholdNetSelector(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector;

    .line 135
    .line 136
    .line 137
    move-result-object p1

    .line 138
    if-eqz p1, :cond_3

    .line 139
    .line 140
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$DefaultState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 141
    .line 142
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmRssiThresholdNetSelector(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector;

    .line 143
    .line 144
    .line 145
    move-result-object p1

    .line 146
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$DefaultState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 147
    .line 148
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmAbTestValue(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)I

    .line 149
    .line 150
    .line 151
    move-result v0

    .line 152
    invoke-virtual {p1, v0}, Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector;->notifyAbTestParamChanged(I)V

    .line 153
    .line 154
    .line 155
    :cond_3
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$DefaultState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 156
    .line 157
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmRssiThresholdNetSelector(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector;

    .line 158
    .line 159
    .line 160
    move-result-object p1

    .line 161
    if-nez p1, :cond_22

    .line 162
    .line 163
    const-string p1, "RssiThresControllerThread"

    .line 164
    .line 165
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemPreScanResultProcessor$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Landroid/os/HandlerThread;

    .line 166
    .line 167
    .line 168
    move-result-object p1

    .line 169
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$DefaultState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 170
    .line 171
    new-instance v2, Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector;

    .line 172
    .line 173
    iget-object v3, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$DefaultState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 174
    .line 175
    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Landroid/content/Context;

    .line 176
    .line 177
    .line 178
    move-result-object v3

    .line 179
    invoke-direct {v2, p1, v3}, Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector;-><init>(Landroid/os/HandlerThread;Landroid/content/Context;)V

    .line 180
    .line 181
    .line 182
    invoke-static {v0, v2}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fputmRssiThresholdNetSelector(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector;)V

    .line 183
    .line 184
    .line 185
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$DefaultState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 186
    .line 187
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmFrameworkFacade(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    .line 188
    .line 189
    .line 190
    move-result-object p1

    .line 191
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$DefaultState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 192
    .line 193
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmContentResolver(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Landroid/content/ContentResolver;

    .line 194
    .line 195
    .line 196
    move-result-object v0

    .line 197
    const-string v2, "wifi_watchdog_poor_network_test_enabled"

    .line 198
    .line 199
    invoke-virtual {p1, v0, v2, v4}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->getIntegerSetting(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 200
    .line 201
    .line 202
    move-result p1

    .line 203
    if-ne p1, v4, :cond_4

    .line 204
    .line 205
    goto :goto_0

    .line 206
    :cond_4
    move v1, p1

    .line 207
    :goto_0
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$DefaultState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 208
    .line 209
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmRssiThresholdNetSelector(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector;

    .line 210
    .line 211
    .line 212
    move-result-object p1

    .line 213
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$DefaultState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 214
    .line 215
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmAbTestValue(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)I

    .line 216
    .line 217
    .line 218
    move-result v0

    .line 219
    invoke-virtual {p1, v0}, Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector;->notifyAbTestParamChanged(I)V

    .line 220
    .line 221
    .line 222
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$DefaultState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 223
    .line 224
    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmRssiThresholdNetSelector(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector;

    .line 225
    .line 226
    .line 227
    move-result-object p0

    .line 228
    invoke-virtual {p0, v1}, Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector;->notifySnsSettingsChanged(I)V

    .line 229
    .line 230
    .line 231
    return v6

    .line 232
    :sswitch_2
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$DefaultState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 233
    .line 234
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->handleBootCompleted()V

    .line 235
    .line 236
    .line 237
    return v6

    .line 238
    :sswitch_3
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$DefaultState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 239
    .line 240
    iget v0, p1, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mPreviousCaptivePortalMode:I

    .line 241
    .line 242
    if-eq v0, v4, :cond_22

    .line 243
    .line 244
    invoke-virtual {p1, v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->setCaptivePortalMode(I)V

    .line 245
    .line 246
    .line 247
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$DefaultState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 248
    .line 249
    iput v4, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mPreviousCaptivePortalMode:I

    .line 250
    .line 251
    return v6

    .line 252
    :sswitch_4
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 253
    .line 254
    check-cast p1, Landroid/net/LinkProperties;

    .line 255
    .line 256
    if-eqz p1, :cond_5

    .line 257
    .line 258
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$DefaultState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 259
    .line 260
    invoke-static {v0, p1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$mupdateLinkProperties(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;Landroid/net/LinkProperties;)V

    .line 261
    .line 262
    .line 263
    :cond_5
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$DefaultState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 264
    .line 265
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmCurrentBssid(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/wcm/BssidStatistics;

    .line 266
    .line 267
    .line 268
    move-result-object p1

    .line 269
    if-eqz p1, :cond_22

    .line 270
    .line 271
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$DefaultState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 272
    .line 273
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmCurrentBssid(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/wcm/BssidStatistics;

    .line 274
    .line 275
    .line 276
    move-result-object v0

    .line 277
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$DefaultState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 278
    .line 279
    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmLinkProperties(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Landroid/net/LinkProperties;

    .line 280
    .line 281
    .line 282
    move-result-object p0

    .line 283
    invoke-virtual {p0}, Landroid/net/LinkProperties;->isPrivateDnsActive()Z

    .line 284
    .line 285
    .line 286
    move-result p0

    .line 287
    invoke-static {p1, v0, p0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$msetUsePrivateDns(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;Lcom/samsung/android/server/wifi/wcm/BssidStatistics;Z)V

    .line 288
    .line 289
    .line 290
    return v6

    .line 291
    :sswitch_5
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$sfgetDBG()Z

    .line 292
    .line 293
    .line 294
    move-result p0

    .line 295
    if-eqz p0, :cond_22

    .line 296
    .line 297
    const-string p0, "INVALIDATED_DETECTED"

    .line 298
    .line 299
    invoke-static {v5, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    .line 301
    .line 302
    return v6

    .line 303
    :sswitch_6
    const-string v0, "HANDLE_ON_LOST_DEFAULT_NETWORK"

    .line 304
    .line 305
    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    .line 307
    .line 308
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    .line 309
    .line 310
    .line 311
    move-result-object p1

    .line 312
    const-class v0, Landroid/net/Network;

    .line 313
    .line 314
    invoke-virtual {p1, v3, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 315
    .line 316
    .line 317
    move-result-object p1

    .line 318
    check-cast p1, Landroid/net/Network;

    .line 319
    .line 320
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$DefaultState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 321
    .line 322
    invoke-static {p0, p1, v2, v1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$maddDefaultNetworkChangeEventToString(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;Landroid/net/Network;Landroid/net/NetworkCapabilities;Z)V

    .line 323
    .line 324
    .line 325
    return v6

    .line 326
    :sswitch_7
    const-string v0, "HANDLE_ON_AVAILABLE_DEFAULT_NETWORK"

    .line 327
    .line 328
    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    .line 330
    .line 331
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    .line 332
    .line 333
    .line 334
    move-result-object p1

    .line 335
    const-class v0, Landroid/net/Network;

    .line 336
    .line 337
    invoke-virtual {p1, v3, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 338
    .line 339
    .line 340
    move-result-object p1

    .line 341
    check-cast p1, Landroid/net/Network;

    .line 342
    .line 343
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$DefaultState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 344
    .line 345
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$mgetCm(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Landroid/net/ConnectivityManager;

    .line 346
    .line 347
    .line 348
    move-result-object v0

    .line 349
    invoke-virtual {v0, p1}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    .line 350
    .line 351
    .line 352
    move-result-object v0

    .line 353
    if-eqz p1, :cond_e

    .line 354
    .line 355
    if-nez v0, :cond_6

    .line 356
    .line 357
    goto/16 :goto_2

    .line 358
    .line 359
    :cond_6
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$DefaultState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 360
    .line 361
    invoke-static {v2, p1, v0, v6}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$maddDefaultNetworkChangeEventToString(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;Landroid/net/Network;Landroid/net/NetworkCapabilities;Z)V

    .line 362
    .line 363
    .line 364
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$DefaultState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 365
    .line 366
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmWifiIconHideForEthernet(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Z

    .line 367
    .line 368
    .line 369
    move-result p1

    .line 370
    const/4 v2, 0x3

    .line 371
    if-eqz p1, :cond_7

    .line 372
    .line 373
    invoke-virtual {v0, v2}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    .line 374
    .line 375
    .line 376
    move-result p1

    .line 377
    if-nez p1, :cond_7

    .line 378
    .line 379
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$DefaultState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 380
    .line 381
    invoke-static {p1, v6}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$mchangeWifiIcon(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;Z)V

    .line 382
    .line 383
    .line 384
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$DefaultState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 385
    .line 386
    invoke-static {p1, v1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fputmWifiIconHideForEthernet(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;Z)V

    .line 387
    .line 388
    .line 389
    :cond_7
    invoke-virtual {v0, v2}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    .line 390
    .line 391
    .line 392
    move-result p1

    .line 393
    if-eqz p1, :cond_8

    .line 394
    .line 395
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$DefaultState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 396
    .line 397
    invoke-static {p1, v1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$mchangeWifiIcon$1(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;Z)V

    .line 398
    .line 399
    .line 400
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$DefaultState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 401
    .line 402
    invoke-static {p1, v6}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fputmWifiIconHideForEthernet(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;Z)V

    .line 403
    .line 404
    .line 405
    goto :goto_1

    .line 406
    :cond_8
    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    .line 407
    .line 408
    .line 409
    move-result p1

    .line 410
    if-eqz p1, :cond_a

    .line 411
    .line 412
    const-string p1, "MOBILE Network Connected."

    .line 413
    .line 414
    invoke-static {v5, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    .line 416
    .line 417
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$DefaultState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 418
    .line 419
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmIsMobileActiveNetwork(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Z

    .line 420
    .line 421
    .line 422
    move-result p1

    .line 423
    if-nez p1, :cond_9

    .line 424
    .line 425
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$DefaultState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 426
    .line 427
    invoke-static {p1, v6}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fputmIsMobileActiveNetwork(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;Z)V

    .line 428
    .line 429
    .line 430
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$DefaultState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 431
    .line 432
    const v0, 0x21040

    .line 433
    .line 434
    .line 435
    invoke-virtual {p1, v0}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    .line 436
    .line 437
    .line 438
    :cond_9
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$DefaultState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 439
    .line 440
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->startWifiGuider()V

    .line 441
    .line 442
    .line 443
    return v6

    .line 444
    :cond_a
    invoke-virtual {v0, v6}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    .line 445
    .line 446
    .line 447
    move-result p1

    .line 448
    if-eqz p1, :cond_d

    .line 449
    .line 450
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$sfgetmInitialResultSentToSystemUi()Z

    .line 451
    .line 452
    .line 453
    move-result p1

    .line 454
    if-eqz p1, :cond_d

    .line 455
    .line 456
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$DefaultState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 457
    .line 458
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmCurrentMode(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)I

    .line 459
    .line 460
    .line 461
    move-result p1

    .line 462
    const/4 v0, 0x2

    .line 463
    if-eq p1, v0, :cond_b

    .line 464
    .line 465
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$DefaultState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 466
    .line 467
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmCurrentMode(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)I

    .line 468
    .line 469
    .line 470
    move-result p1

    .line 471
    if-ne p1, v2, :cond_d

    .line 472
    .line 473
    :cond_b
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$DefaultState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 474
    .line 475
    invoke-virtual {p1}, Lcom/android/internal/util/StateMachine;->getCurrentState()Lcom/android/internal/util/IState;

    .line 476
    .line 477
    .line 478
    move-result-object p1

    .line 479
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$DefaultState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 480
    .line 481
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmLevel2State(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$Level2State;

    .line 482
    .line 483
    .line 484
    move-result-object v0

    .line 485
    if-eq p1, v0, :cond_c

    .line 486
    .line 487
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$DefaultState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 488
    .line 489
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$misInvalidState(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Z

    .line 490
    .line 491
    .line 492
    move-result p1

    .line 493
    if-eqz p1, :cond_d

    .line 494
    .line 495
    :cond_c
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$DefaultState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 496
    .line 497
    invoke-static {p1, v6}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$mchangeWifiIcon$1(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;Z)V

    .line 498
    .line 499
    .line 500
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$DefaultState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 501
    .line 502
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$msendBroadcastWCMTestResult(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)V

    .line 503
    .line 504
    .line 505
    :cond_d
    :goto_1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$DefaultState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 506
    .line 507
    invoke-static {p0, v1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fputmIsMobileActiveNetwork(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;Z)V

    .line 508
    .line 509
    .line 510
    return v6

    .line 511
    :cond_e
    :goto_2
    const-string p0, "Network or NetworkCapabilities is null"

    .line 512
    .line 513
    invoke-static {v5, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 514
    .line 515
    .line 516
    return v6

    .line 517
    :sswitch_8
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 518
    .line 519
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$DefaultState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 520
    .line 521
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$msyncGetCurrentWifiInfo(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Landroid/net/wifi/WifiInfo;

    .line 522
    .line 523
    .line 524
    move-result-object v2

    .line 525
    invoke-static {v0, v2}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fputmWifiInfo(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;Landroid/net/wifi/WifiInfo;)V

    .line 526
    .line 527
    .line 528
    const-string v0, "EVENT_REMOVE_EXCLUDED_NETWORK for "

    .line 529
    .line 530
    invoke-static {p1, v0}, Lcom/samsung/android/mcf/continuity/common/VersionUtil$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 531
    .line 532
    .line 533
    move-result-object v0

    .line 534
    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 535
    .line 536
    .line 537
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$DefaultState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 538
    .line 539
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmWifiInfo(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Landroid/net/wifi/WifiInfo;

    .line 540
    .line 541
    .line 542
    move-result-object v0

    .line 543
    if-eqz v0, :cond_f

    .line 544
    .line 545
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$DefaultState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 546
    .line 547
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmWifiInfo(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Landroid/net/wifi/WifiInfo;

    .line 548
    .line 549
    .line 550
    move-result-object v0

    .line 551
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    .line 552
    .line 553
    .line 554
    move-result v0

    .line 555
    if-ne v0, p1, :cond_f

    .line 556
    .line 557
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$DefaultState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 558
    .line 559
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$mgetCm(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Landroid/net/ConnectivityManager;

    .line 560
    .line 561
    .line 562
    move-result-object v0

    .line 563
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$DefaultState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 564
    .line 565
    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmNetwork(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Landroid/net/Network;

    .line 566
    .line 567
    .line 568
    move-result-object v2

    .line 569
    invoke-virtual {v0, v2, v1, v6}, Landroid/net/ConnectivityManager;->setAcceptUnvalidated(Landroid/net/Network;ZZ)V

    .line 570
    .line 571
    .line 572
    :cond_f
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$DefaultState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 573
    .line 574
    invoke-static {v0, p1, v1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$msetNoInternetAccessExpected(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;IZ)V

    .line 575
    .line 576
    .line 577
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$DefaultState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 578
    .line 579
    const/4 v1, 0x7

    .line 580
    invoke-static {v0, p1, v1, v6}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$mdisableNetworkWithReason(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;IIZ)Z

    .line 581
    .line 582
    .line 583
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$DefaultState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 584
    .line 585
    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$msendConfigurationChanged(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)V

    .line 586
    .line 587
    .line 588
    return v6

    .line 589
    :sswitch_9
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 590
    .line 591
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$DefaultState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 592
    .line 593
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$msyncGetCurrentWifiInfo(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Landroid/net/wifi/WifiInfo;

    .line 594
    .line 595
    .line 596
    move-result-object v2

    .line 597
    invoke-static {v0, v2}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fputmWifiInfo(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;Landroid/net/wifi/WifiInfo;)V

    .line 598
    .line 599
    .line 600
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$DefaultState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 601
    .line 602
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmWifiInfo(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Landroid/net/wifi/WifiInfo;

    .line 603
    .line 604
    .line 605
    move-result-object v0

    .line 606
    const-string v2, "WFMH"

    .line 607
    .line 608
    if-eqz v0, :cond_11

    .line 609
    .line 610
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$DefaultState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 611
    .line 612
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmWifiInfo(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Landroid/net/wifi/WifiInfo;

    .line 613
    .line 614
    .line 615
    move-result-object v0

    .line 616
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    .line 617
    .line 618
    .line 619
    move-result-object v0

    .line 620
    if-eqz v0, :cond_10

    .line 621
    .line 622
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 623
    .line 624
    .line 625
    move-result v3

    .line 626
    const/16 v4, 0x8

    .line 627
    .line 628
    if-le v3, v4, :cond_10

    .line 629
    .line 630
    invoke-virtual {v0, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 631
    .line 632
    .line 633
    move-result-object v0

    .line 634
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$DefaultState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 635
    .line 636
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmWcmBigDataManager(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/wcm/WcmBigDataManager;

    .line 637
    .line 638
    .line 639
    move-result-object v1

    .line 640
    const-string v3, "MHOP"

    .line 641
    .line 642
    invoke-virtual {v1, v2, v3, v0}, Lcom/samsung/android/server/wifi/wcm/WcmBigDataManager;->addOrUpdateFeatureValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 643
    .line 644
    .line 645
    :cond_10
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$DefaultState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 646
    .line 647
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$misCarrierWifi(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Z

    .line 648
    .line 649
    .line 650
    move-result v0

    .line 651
    if-eqz v0, :cond_11

    .line 652
    .line 653
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$DefaultState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 654
    .line 655
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Landroid/content/Context;

    .line 656
    .line 657
    .line 658
    move-result-object v0

    .line 659
    invoke-static {v0}, Lcom/samsung/android/server/wifi/wcm/WcmUtil;->getInstance(Landroid/content/Context;)Lcom/samsung/android/server/wifi/wcm/WcmUtil;

    .line 660
    .line 661
    .line 662
    move-result-object v0

    .line 663
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/wcm/WcmUtil;->getCurrentWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    .line 664
    .line 665
    .line 666
    move-result-object v0

    .line 667
    if-eqz v0, :cond_11

    .line 668
    .line 669
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$DefaultState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 670
    .line 671
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmWcmBigDataManager(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/wcm/WcmBigDataManager;

    .line 672
    .line 673
    .line 674
    move-result-object v1

    .line 675
    const-string v3, "MHST"

    .line 676
    .line 677
    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->carrierId:I

    .line 678
    .line 679
    invoke-virtual {v1, v2, v3, v0}, Lcom/samsung/android/server/wifi/wcm/WcmBigDataManager;->addOrUpdateFeatureValue(Ljava/lang/String;Ljava/lang/String;I)Z

    .line 680
    .line 681
    .line 682
    :cond_11
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$DefaultState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 683
    .line 684
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmWcmBigDataManager(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/wcm/WcmBigDataManager;

    .line 685
    .line 686
    .line 687
    move-result-object v0

    .line 688
    const-string v1, "MHCT"

    .line 689
    .line 690
    invoke-virtual {v0, v2, v1, p1}, Lcom/samsung/android/server/wifi/wcm/WcmBigDataManager;->addOrUpdateFeatureValue(Ljava/lang/String;Ljava/lang/String;I)Z

    .line 691
    .line 692
    .line 693
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$DefaultState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 694
    .line 695
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmWcmBigDataManager(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/wcm/WcmBigDataManager;

    .line 696
    .line 697
    .line 698
    move-result-object p1

    .line 699
    const-string v0, "MVER"

    .line 700
    .line 701
    const-string v1, "2021090800"

    .line 702
    .line 703
    invoke-virtual {p1, v2, v0, v1}, Lcom/samsung/android/server/wifi/wcm/WcmBigDataManager;->addOrUpdateFeatureValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 704
    .line 705
    .line 706
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$DefaultState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 707
    .line 708
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmWcmBigDataManager(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/wcm/WcmBigDataManager;

    .line 709
    .line 710
    .line 711
    move-result-object p1

    .line 712
    invoke-virtual {p1, v2}, Lcom/samsung/android/server/wifi/wcm/WcmBigDataManager;->insertLog(Ljava/lang/String;)V

    .line 713
    .line 714
    .line 715
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$DefaultState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 716
    .line 717
    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmWcmBigDataManager(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/wcm/WcmBigDataManager;

    .line 718
    .line 719
    .line 720
    move-result-object p0

    .line 721
    invoke-virtual {p0, v2}, Lcom/samsung/android/server/wifi/wcm/WcmBigDataManager;->clearFeature(Ljava/lang/String;)Z

    .line 722
    .line 723
    .line 724
    return v6

    .line 725
    :sswitch_a
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 726
    .line 727
    if-eq p1, v4, :cond_22

    .line 728
    .line 729
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$DefaultState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 730
    .line 731
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmBssidCache(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Landroid/util/LruCache;

    .line 732
    .line 733
    .line 734
    move-result-object v0

    .line 735
    invoke-virtual {v0}, Landroid/util/LruCache;->snapshot()Ljava/util/Map;

    .line 736
    .line 737
    .line 738
    move-result-object v0

    .line 739
    if-eqz v0, :cond_22

    .line 740
    .line 741
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 742
    .line 743
    .line 744
    move-result-object v0

    .line 745
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 746
    .line 747
    .line 748
    move-result-object v0

    .line 749
    :cond_12
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 750
    .line 751
    .line 752
    move-result v1

    .line 753
    if-eqz v1, :cond_22

    .line 754
    .line 755
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 756
    .line 757
    .line 758
    move-result-object v1

    .line 759
    check-cast v1, Lcom/samsung/android/server/wifi/wcm/BssidStatistics;

    .line 760
    .line 761
    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/wcm/BssidStatistics;->getNetId()I

    .line 762
    .line 763
    .line 764
    move-result v2

    .line 765
    if-ne v2, p1, :cond_12

    .line 766
    .line 767
    new-instance v2, Ljava/lang/StringBuilder;

    .line 768
    .line 769
    const-string v3, "BssidStatistics parameters cleared - "

    .line 770
    .line 771
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 772
    .line 773
    .line 774
    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/wcm/BssidStatistics;->getBssid()Ljava/lang/String;

    .line 775
    .line 776
    .line 777
    move-result-object v3

    .line 778
    const/16 v4, 0x9

    .line 779
    .line 780
    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 781
    .line 782
    .line 783
    move-result-object v3

    .line 784
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 785
    .line 786
    .line 787
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 788
    .line 789
    .line 790
    move-result-object v2

    .line 791
    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 792
    .line 793
    .line 794
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$DefaultState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 795
    .line 796
    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmBssidCache(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Landroid/util/LruCache;

    .line 797
    .line 798
    .line 799
    move-result-object v2

    .line 800
    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/wcm/BssidStatistics;->getBssid()Ljava/lang/String;

    .line 801
    .line 802
    .line 803
    move-result-object v1

    .line 804
    invoke-virtual {v2, v1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 805
    .line 806
    .line 807
    move-result-object v1

    .line 808
    check-cast v1, Lcom/samsung/android/server/wifi/wcm/BssidStatistics;

    .line 809
    .line 810
    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/wcm/BssidStatistics;->clearParameters()V

    .line 811
    .line 812
    .line 813
    goto :goto_3

    .line 814
    :sswitch_b
    const-string p1, "EVENT_ROAM_TIMEOUT"

    .line 815
    .line 816
    invoke-static {v5, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 817
    .line 818
    .line 819
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$DefaultState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 820
    .line 821
    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fputmIsInRoamSession(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)V

    .line 822
    .line 823
    .line 824
    return v6

    .line 825
    :sswitch_c
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$DefaultState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 826
    .line 827
    invoke-virtual {p1}, Lcom/android/internal/util/StateMachine;->getCurrentState()Lcom/android/internal/util/IState;

    .line 828
    .line 829
    .line 830
    move-result-object p1

    .line 831
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$DefaultState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 832
    .line 833
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmNotConnectedState(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$NotConnectedState;

    .line 834
    .line 835
    .line 836
    move-result-object v0

    .line 837
    if-ne p1, v0, :cond_13

    .line 838
    .line 839
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$DefaultState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 840
    .line 841
    invoke-virtual {p1, v6}, Lcom/android/internal/util/StateMachine;->setLogOnlyTransitions(Z)V

    .line 842
    .line 843
    .line 844
    :cond_13
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$sfgetDBG()Z

    .line 845
    .line 846
    .line 847
    move-result p1

    .line 848
    if-eqz p1, :cond_14

    .line 849
    .line 850
    const-string p1, "EVENT_SCAN_COMPLETE"

    .line 851
    .line 852
    invoke-static {v5, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 853
    .line 854
    .line 855
    :cond_14
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$DefaultState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 856
    .line 857
    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$mscanCompleted(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)V

    .line 858
    .line 859
    .line 860
    return v6

    .line 861
    :sswitch_d
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$DefaultState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 862
    .line 863
    invoke-virtual {p0, v6}, Lcom/android/internal/util/StateMachine;->setLogOnlyTransitions(Z)V

    .line 864
    .line 865
    .line 866
    return v6

    .line 867
    :sswitch_e
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$DefaultState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 868
    .line 869
    invoke-virtual {p1}, Lcom/android/internal/util/StateMachine;->getCurrentState()Lcom/android/internal/util/IState;

    .line 870
    .line 871
    .line 872
    move-result-object p1

    .line 873
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$DefaultState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 874
    .line 875
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmNotConnectedState(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$NotConnectedState;

    .line 876
    .line 877
    .line 878
    move-result-object v0

    .line 879
    if-ne p1, v0, :cond_15

    .line 880
    .line 881
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$DefaultState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 882
    .line 883
    invoke-virtual {p1, v6}, Lcom/android/internal/util/StateMachine;->setLogOnlyTransitions(Z)V

    .line 884
    .line 885
    .line 886
    :cond_15
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$DefaultState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 887
    .line 888
    invoke-static {p1, v1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fputmIsScreenOn(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;Z)V

    .line 889
    .line 890
    .line 891
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$DefaultState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 892
    .line 893
    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$meleScreenOffInitialize(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)V

    .line 894
    .line 895
    .line 896
    return v6

    .line 897
    :sswitch_f
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$DefaultState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 898
    .line 899
    invoke-virtual {p1}, Lcom/android/internal/util/StateMachine;->getCurrentState()Lcom/android/internal/util/IState;

    .line 900
    .line 901
    .line 902
    move-result-object p1

    .line 903
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$DefaultState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 904
    .line 905
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmNotConnectedState(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$NotConnectedState;

    .line 906
    .line 907
    .line 908
    move-result-object v0

    .line 909
    if-ne p1, v0, :cond_16

    .line 910
    .line 911
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$DefaultState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 912
    .line 913
    invoke-virtual {p1, v6}, Lcom/android/internal/util/StateMachine;->setLogOnlyTransitions(Z)V

    .line 914
    .line 915
    .line 916
    :cond_16
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$DefaultState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 917
    .line 918
    invoke-static {p0, v6}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fputmIsScreenOn(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;Z)V

    .line 919
    .line 920
    .line 921
    return v6

    .line 922
    :sswitch_10
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$DefaultState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 923
    .line 924
    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$mupdateWcmSettings(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)V

    .line 925
    .line 926
    .line 927
    return v6

    .line 928
    :sswitch_11
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$sfgetDBG()Z

    .line 929
    .line 930
    .line 931
    move-result v0

    .line 932
    if-eqz v0, :cond_17

    .line 933
    .line 934
    new-instance v0, Ljava/lang/StringBuilder;

    .line 935
    .line 936
    const-string v1, "Wi-Fi Radio state change : "

    .line 937
    .line 938
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 939
    .line 940
    .line 941
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 942
    .line 943
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 944
    .line 945
    .line 946
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 947
    .line 948
    .line 949
    move-result-object v0

    .line 950
    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 951
    .line 952
    .line 953
    :cond_17
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 954
    .line 955
    if-ne p1, v6, :cond_22

    .line 956
    .line 957
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$DefaultState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 958
    .line 959
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$misConnectedState(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Z

    .line 960
    .line 961
    .line 962
    move-result p1

    .line 963
    if-eqz p1, :cond_22

    .line 964
    .line 965
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$DefaultState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 966
    .line 967
    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmNotConnectedState(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$NotConnectedState;

    .line 968
    .line 969
    .line 970
    move-result-object p1

    .line 971
    invoke-virtual {p0, p1}, Lcom/android/internal/util/StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    .line 972
    .line 973
    .line 974
    return v6

    .line 975
    :sswitch_12
    const-string v0, "EVENT_NETWORK_STATE_CHANGE"

    .line 976
    .line 977
    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 978
    .line 979
    .line 980
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 981
    .line 982
    check-cast p1, Landroid/content/Intent;

    .line 983
    .line 984
    const-string v0, "networkInfo"

    .line 985
    .line 986
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 987
    .line 988
    .line 989
    move-result-object p1

    .line 990
    check-cast p1, Landroid/net/NetworkInfo;

    .line 991
    .line 992
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$sfgetDBG()Z

    .line 993
    .line 994
    .line 995
    move-result v0

    .line 996
    if-eqz v0, :cond_18

    .line 997
    .line 998
    new-instance v0, Ljava/lang/StringBuilder;

    .line 999
    .line 1000
    const-string v3, "Network state change "

    .line 1001
    .line 1002
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1003
    .line 1004
    .line 1005
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    .line 1006
    .line 1007
    .line 1008
    move-result-object v3

    .line 1009
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1010
    .line 1011
    .line 1012
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1013
    .line 1014
    .line 1015
    move-result-object v0

    .line 1016
    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1017
    .line 1018
    .line 1019
    :cond_18
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    .line 1020
    .line 1021
    .line 1022
    move-result-object v0

    .line 1023
    sget-object v3, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    .line 1024
    .line 1025
    invoke-virtual {v0, v3}, Landroid/net/NetworkInfo$DetailedState;->equals(Ljava/lang/Object;)Z

    .line 1026
    .line 1027
    .line 1028
    move-result v0

    .line 1029
    const v3, 0x2114d

    .line 1030
    .line 1031
    .line 1032
    if-eqz v0, :cond_20

    .line 1033
    .line 1034
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$DefaultState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 1035
    .line 1036
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$msyncGetCurrentWifiInfo(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Landroid/net/wifi/WifiInfo;

    .line 1037
    .line 1038
    .line 1039
    move-result-object v0

    .line 1040
    invoke-static {p1, v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fputmWifiInfo(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;Landroid/net/wifi/WifiInfo;)V

    .line 1041
    .line 1042
    .line 1043
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$DefaultState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 1044
    .line 1045
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$mgetBssid(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Ljava/lang/String;

    .line 1046
    .line 1047
    .line 1048
    move-result-object p1

    .line 1049
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$DefaultState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 1050
    .line 1051
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmCurrentBssid(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/wcm/BssidStatistics;

    .line 1052
    .line 1053
    .line 1054
    move-result-object v0

    .line 1055
    if-eqz v0, :cond_1b

    .line 1056
    .line 1057
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$DefaultState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 1058
    .line 1059
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmWifiInfo(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Landroid/net/wifi/WifiInfo;

    .line 1060
    .line 1061
    .line 1062
    move-result-object v0

    .line 1063
    if-eqz v0, :cond_1a

    .line 1064
    .line 1065
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$DefaultState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 1066
    .line 1067
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmCurrentBssid(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/wcm/BssidStatistics;

    .line 1068
    .line 1069
    .line 1070
    move-result-object v0

    .line 1071
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/wcm/BssidStatistics;->getBssid()Ljava/lang/String;

    .line 1072
    .line 1073
    .line 1074
    move-result-object v0

    .line 1075
    if-eqz v0, :cond_1a

    .line 1076
    .line 1077
    if-nez p1, :cond_19

    .line 1078
    .line 1079
    goto :goto_4

    .line 1080
    :cond_19
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$DefaultState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 1081
    .line 1082
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmCurrentBssid(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/wcm/BssidStatistics;

    .line 1083
    .line 1084
    .line 1085
    move-result-object v0

    .line 1086
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/wcm/BssidStatistics;->getBssid()Ljava/lang/String;

    .line 1087
    .line 1088
    .line 1089
    move-result-object v0

    .line 1090
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1091
    .line 1092
    .line 1093
    move-result v0

    .line 1094
    if-nez v0, :cond_1c

    .line 1095
    .line 1096
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$DefaultState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 1097
    .line 1098
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmWifiInfo(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Landroid/net/wifi/WifiInfo;

    .line 1099
    .line 1100
    .line 1101
    move-result-object v2

    .line 1102
    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    .line 1103
    .line 1104
    .line 1105
    move-result v2

    .line 1106
    invoke-static {v0, p1, v2}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$mupdateCurrentBssid(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;Ljava/lang/String;I)V

    .line 1107
    .line 1108
    .line 1109
    goto :goto_5

    .line 1110
    :cond_1a
    :goto_4
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$DefaultState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 1111
    .line 1112
    invoke-static {p1, v2, v4}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$mupdateCurrentBssid(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;Ljava/lang/String;I)V

    .line 1113
    .line 1114
    .line 1115
    goto :goto_5

    .line 1116
    :cond_1b
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$DefaultState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 1117
    .line 1118
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmWifiInfo(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Landroid/net/wifi/WifiInfo;

    .line 1119
    .line 1120
    .line 1121
    move-result-object v0

    .line 1122
    if-eqz v0, :cond_1c

    .line 1123
    .line 1124
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$DefaultState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 1125
    .line 1126
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmWifiInfo(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Landroid/net/wifi/WifiInfo;

    .line 1127
    .line 1128
    .line 1129
    move-result-object v2

    .line 1130
    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    .line 1131
    .line 1132
    .line 1133
    move-result v2

    .line 1134
    invoke-static {v0, p1, v2}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$mupdateCurrentBssid(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;Ljava/lang/String;I)V

    .line 1135
    .line 1136
    .line 1137
    :cond_1c
    :goto_5
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$DefaultState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 1138
    .line 1139
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$misMultiNetwork(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Z

    .line 1140
    .line 1141
    .line 1142
    move-result p1

    .line 1143
    if-eqz p1, :cond_1d

    .line 1144
    .line 1145
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$DefaultState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 1146
    .line 1147
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Landroid/content/Context;

    .line 1148
    .line 1149
    .line 1150
    move-result-object p1

    .line 1151
    invoke-static {p1}, Lcom/samsung/android/server/wifi/wcm/WcmUtil;->getInstance(Landroid/content/Context;)Lcom/samsung/android/server/wifi/wcm/WcmUtil;

    .line 1152
    .line 1153
    .line 1154
    move-result-object p1

    .line 1155
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/wcm/WcmUtil;->getCurrentWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    .line 1156
    .line 1157
    .line 1158
    move-result-object p1

    .line 1159
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$DefaultState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 1160
    .line 1161
    invoke-static {v0, p1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$maddMultiNetworkWifiConfigurationToString(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;Landroid/net/wifi/WifiConfiguration;)V

    .line 1162
    .line 1163
    .line 1164
    :cond_1d
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$DefaultState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 1165
    .line 1166
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmIccManager(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/wcm/IccManager;

    .line 1167
    .line 1168
    .line 1169
    move-result-object p1

    .line 1170
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$DefaultState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 1171
    .line 1172
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmWifiInfo(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Landroid/net/wifi/WifiInfo;

    .line 1173
    .line 1174
    .line 1175
    move-result-object v0

    .line 1176
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$DefaultState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 1177
    .line 1178
    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmScanPool(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/util/ScanPool;

    .line 1179
    .line 1180
    .line 1181
    move-result-object v2

    .line 1182
    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/util/ScanPool;->getLastScanResults()Ljava/util/List;

    .line 1183
    .line 1184
    .line 1185
    move-result-object v2

    .line 1186
    invoke-virtual {p1, v0, v2}, Lcom/samsung/android/server/wifi/wcm/IccManager;->onWifiConnected(Landroid/net/wifi/WifiInfo;Ljava/util/List;)V

    .line 1187
    .line 1188
    .line 1189
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$DefaultState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 1190
    .line 1191
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$misConnectedForAndroidAuto(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Z

    .line 1192
    .line 1193
    .line 1194
    move-result p1

    .line 1195
    if-eqz p1, :cond_1e

    .line 1196
    .line 1197
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$DefaultState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 1198
    .line 1199
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmWifiManagerProxy(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 1200
    .line 1201
    .line 1202
    move-result-object p1

    .line 1203
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->clearWifiConnectedNetworkScorer()V

    .line 1204
    .line 1205
    .line 1206
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$DefaultState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 1207
    .line 1208
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmWifiScoreMediator(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/wcm/WifiScoreMediator;

    .line 1209
    .line 1210
    .line 1211
    move-result-object p1

    .line 1212
    invoke-virtual {p1, v1}, Lcom/samsung/android/server/wifi/wcm/WifiScoreMediator;->setActivated(Z)V

    .line 1213
    .line 1214
    .line 1215
    goto :goto_6

    .line 1216
    :cond_1e
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$DefaultState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 1217
    .line 1218
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmWifiScoreMediator(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/wcm/WifiScoreMediator;

    .line 1219
    .line 1220
    .line 1221
    move-result-object p1

    .line 1222
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/wcm/WifiScoreMediator;->getActivated()Z

    .line 1223
    .line 1224
    .line 1225
    move-result p1

    .line 1226
    if-nez p1, :cond_1f

    .line 1227
    .line 1228
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$DefaultState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 1229
    .line 1230
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmWifiManagerProxy(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 1231
    .line 1232
    .line 1233
    move-result-object p1

    .line 1234
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    .line 1235
    .line 1236
    .line 1237
    move-result-object v0

    .line 1238
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$DefaultState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 1239
    .line 1240
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmWifiScoreMediator(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/wcm/WifiScoreMediator;

    .line 1241
    .line 1242
    .line 1243
    move-result-object v1

    .line 1244
    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->setWifiConnectedNetworkScorer(Ljava/util/concurrent/Executor;Landroid/net/wifi/WifiManager$WifiConnectedNetworkScorer;)Z

    .line 1245
    .line 1246
    .line 1247
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$DefaultState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 1248
    .line 1249
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmWifiScoreMediator(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/wcm/WifiScoreMediator;

    .line 1250
    .line 1251
    .line 1252
    move-result-object p1

    .line 1253
    invoke-virtual {p1, v6}, Lcom/samsung/android/server/wifi/wcm/WifiScoreMediator;->setActivated(Z)V

    .line 1254
    .line 1255
    .line 1256
    :cond_1f
    :goto_6
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$sfgetmInitialResultSentToSystemUi()Z

    .line 1257
    .line 1258
    .line 1259
    move-result p1

    .line 1260
    if-nez p1, :cond_22

    .line 1261
    .line 1262
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$DefaultState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 1263
    .line 1264
    const-wide/16 v0, 0x1b58

    .line 1265
    .line 1266
    invoke-virtual {p0, v3, v0, v1}, Lcom/android/internal/util/StateMachine;->sendMessageDelayed(IJ)V

    .line 1267
    .line 1268
    .line 1269
    return v6

    .line 1270
    :cond_20
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    .line 1271
    .line 1272
    .line 1273
    move-result-object v0

    .line 1274
    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    .line 1275
    .line 1276
    invoke-virtual {v0, v1}, Landroid/net/NetworkInfo$DetailedState;->equals(Ljava/lang/Object;)Z

    .line 1277
    .line 1278
    .line 1279
    move-result v0

    .line 1280
    if-eqz v0, :cond_21

    .line 1281
    .line 1282
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$DefaultState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 1283
    .line 1284
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmIccManager(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/wcm/IccManager;

    .line 1285
    .line 1286
    .line 1287
    move-result-object p1

    .line 1288
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/wcm/IccManager;->onWifiDisconnected()V

    .line 1289
    .line 1290
    .line 1291
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$DefaultState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 1292
    .line 1293
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$mstopPacketTracker(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)V

    .line 1294
    .line 1295
    .line 1296
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$DefaultState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 1297
    .line 1298
    invoke-static {p0, v3}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->access$000(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;I)V

    .line 1299
    .line 1300
    .line 1301
    return v6

    .line 1302
    :cond_21
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    .line 1303
    .line 1304
    .line 1305
    move-result-object v0

    .line 1306
    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->OBTAINING_IPADDR:Landroid/net/NetworkInfo$DetailedState;

    .line 1307
    .line 1308
    invoke-virtual {v0, v1}, Landroid/net/NetworkInfo$DetailedState;->equals(Ljava/lang/Object;)Z

    .line 1309
    .line 1310
    .line 1311
    move-result v0

    .line 1312
    if-eqz v0, :cond_22

    .line 1313
    .line 1314
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$DefaultState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 1315
    .line 1316
    invoke-static {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$mstartPacketTracker(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;Landroid/net/NetworkInfo;)V

    .line 1317
    .line 1318
    .line 1319
    :cond_22
    :sswitch_13
    return v6

    .line 1320
    nop

    .line 1321
    :sswitch_data_0
    .sparse-switch
        0x21002 -> :sswitch_12
        0x21005 -> :sswitch_11
        0x21006 -> :sswitch_10
        0x21008 -> :sswitch_f
        0x21009 -> :sswitch_e
        0x21014 -> :sswitch_d
        0x21019 -> :sswitch_d
        0x2101a -> :sswitch_d
        0x2103e -> :sswitch_c
        0x21040 -> :sswitch_13
        0x21049 -> :sswitch_b
        0x2104b -> :sswitch_a
        0x21061 -> :sswitch_9
        0x21062 -> :sswitch_8
        0x2112f -> :sswitch_7
        0x21130 -> :sswitch_6
        0x21134 -> :sswitch_5
        0x21136 -> :sswitch_4
        0x2113a -> :sswitch_3
        0x2114e -> :sswitch_2
        0x2114f -> :sswitch_1
        0x24004 -> :sswitch_0
    .end sparse-switch
.end method
