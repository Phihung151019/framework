.class Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$InvalidState;
.super Lcom/android/internal/util/State;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "InvalidState"
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
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$InvalidState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

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
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$InvalidState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 28
    .line 29
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$mprocessInvalidStateEnter(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)V

    .line 30
    .line 31
    .line 32
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$InvalidState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 33
    .line 34
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmIccManager(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/wcm/IccManager;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/wcm/IccManager;->labelInvalidWifi()V

    .line 39
    .line 40
    .line 41
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$InvalidState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 42
    .line 43
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmWifiLinkQualityMonitor(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    if-eqz v0, :cond_0

    .line 48
    .line 49
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$InvalidState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 50
    .line 51
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmWifiLinkQualityMonitor(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    const/4 v1, 0x0

    .line 56
    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->changeWifiValidState(Z)V

    .line 57
    .line 58
    .line 59
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$InvalidState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 60
    .line 61
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmIntelligentConnectionManager(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    if-eqz v0, :cond_1

    .line 66
    .line 67
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$InvalidState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 68
    .line 69
    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmIntelligentConnectionManager(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    .line 70
    .line 71
    .line 72
    move-result-object p0

    .line 73
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->validationFail()V

    .line 74
    .line 75
    .line 76
    :cond_1
    return-void
.end method

.method public exit()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$InvalidState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 2
    .line 3
    const v0, 0x21139

    .line 4
    .line 5
    .line 6
    invoke-static {p0, v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->access$1800(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;I)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 8

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    .line 2
    .line 3
    const/16 v1, 0x600

    .line 4
    .line 5
    const v2, 0x2102c

    .line 6
    .line 7
    .line 8
    const/4 v3, 0x2

    .line 9
    const-string v4, "WifiConnectivityMonitor"

    .line 10
    .line 11
    const/4 v5, 0x0

    .line 12
    const/4 v6, 0x1

    .line 13
    sparse-switch v0, :sswitch_data_0

    .line 14
    .line 15
    .line 16
    return v5

    .line 17
    :sswitch_0
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$sfgetDBG()Z

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    if-eqz p1, :cond_0

    .line 22
    .line 23
    const-string p1, "INVALIDATED_DETECTED"

    .line 24
    .line 25
    invoke-static {v4, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    .line 27
    .line 28
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$InvalidState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 29
    .line 30
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fputmGoodTargetCount(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)V

    .line 31
    .line 32
    .line 33
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$sfgetmInitialResultSentToSystemUi()Z

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    if-nez p1, :cond_1

    .line 38
    .line 39
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$InvalidState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 40
    .line 41
    invoke-static {p1, v1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fputmAnalyticsDisconnectReason(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;S)V

    .line 42
    .line 43
    .line 44
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$InvalidState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 45
    .line 46
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmInvalidationFailHistory(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/wcm/QcFailHistory;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    const/16 v0, 0x11

    .line 51
    .line 52
    iput v0, p1, Lcom/samsung/android/server/wifi/wcm/QcFailHistory;->error:I

    .line 53
    .line 54
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$InvalidState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 55
    .line 56
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmInvalidationFailHistory(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/wcm/QcFailHistory;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    aget-object v0, v0, v3

    .line 69
    .line 70
    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getLineNumber()I

    .line 71
    .line 72
    .line 73
    move-result v0

    .line 74
    iput v0, p1, Lcom/samsung/android/server/wifi/wcm/QcFailHistory;->line:I

    .line 75
    .line 76
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$InvalidState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 77
    .line 78
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmInvalidationFailHistory(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/wcm/QcFailHistory;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    invoke-static {p1, v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$msetQcFailHistory(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;Lcom/samsung/android/server/wifi/wcm/QcFailHistory;)V

    .line 83
    .line 84
    .line 85
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$InvalidState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 86
    .line 87
    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fputbSetQcResult(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)V

    .line 88
    .line 89
    .line 90
    return v6

    .line 91
    :sswitch_1
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$sfgetDBG()Z

    .line 92
    .line 93
    .line 94
    move-result p1

    .line 95
    if-eqz p1, :cond_2

    .line 96
    .line 97
    const-string p1, "VALIDATED_DETECTED"

    .line 98
    .line 99
    invoke-static {v4, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    .line 101
    .line 102
    :cond_2
    invoke-static {v6}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$sfputmUserSelectionConfirmed(Z)V

    .line 103
    .line 104
    .line 105
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$InvalidState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 106
    .line 107
    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmValidState(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ValidState;

    .line 108
    .line 109
    .line 110
    move-result-object p1

    .line 111
    invoke-virtual {p0, p1}, Lcom/android/internal/util/StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    .line 112
    .line 113
    .line 114
    return v6

    .line 115
    :sswitch_2
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$InvalidState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 116
    .line 117
    const/16 p1, 0xe

    .line 118
    .line 119
    invoke-static {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$mrequestInternetCheck(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;I)V

    .line 120
    .line 121
    .line 122
    return v6

    .line 123
    :sswitch_3
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 124
    .line 125
    if-ne v0, v6, :cond_3

    .line 126
    .line 127
    move v0, v6

    .line 128
    goto :goto_0

    .line 129
    :cond_3
    move v0, v5

    .line 130
    :goto_0
    iget p1, p1, Landroid/os/Message;->arg2:I

    .line 131
    .line 132
    if-ne p1, v6, :cond_4

    .line 133
    .line 134
    move p1, v6

    .line 135
    goto :goto_1

    .line 136
    :cond_4
    move p1, v5

    .line 137
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    .line 138
    .line 139
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 140
    .line 141
    .line 142
    invoke-virtual {p0}, Lcom/android/internal/util/State;->getName()Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object v2

    .line 146
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    .line 148
    .line 149
    const-string v2, " EVENT_USER_SELECTION : "

    .line 150
    .line 151
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    .line 153
    .line 154
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 155
    .line 156
    .line 157
    const-string v2, "/"

    .line 158
    .line 159
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    .line 161
    .line 162
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 163
    .line 164
    .line 165
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object v1

    .line 169
    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    .line 171
    .line 172
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$InvalidState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 173
    .line 174
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Landroid/content/Context;

    .line 175
    .line 176
    .line 177
    move-result-object v1

    .line 178
    invoke-static {v1}, Lcom/samsung/android/server/wifi/wcm/WcmUtil;->getInstance(Landroid/content/Context;)Lcom/samsung/android/server/wifi/wcm/WcmUtil;

    .line 179
    .line 180
    .line 181
    move-result-object v1

    .line 182
    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/wcm/WcmUtil;->getCurrentWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    .line 183
    .line 184
    .line 185
    move-result-object v1

    .line 186
    if-nez v1, :cond_5

    .line 187
    .line 188
    invoke-static {v6}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$sfputmUserSelectionConfirmed(Z)V

    .line 189
    .line 190
    .line 191
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$InvalidState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 192
    .line 193
    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$mdetermineMode(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)V

    .line 194
    .line 195
    .line 196
    return v6

    .line 197
    :cond_5
    if-eqz v0, :cond_6

    .line 198
    .line 199
    if-eqz p1, :cond_6

    .line 200
    .line 201
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$InvalidState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 202
    .line 203
    iget v3, v1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    .line 204
    .line 205
    const/16 v4, 0x8

    .line 206
    .line 207
    invoke-static {v2, v3, v4}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$mclearDisabledReason(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;II)V

    .line 208
    .line 209
    .line 210
    :cond_6
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$InvalidState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 211
    .line 212
    iget v3, v1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    .line 213
    .line 214
    invoke-static {v2, v3, v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$msetNoInternetAccessExpected(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;IZ)V

    .line 215
    .line 216
    .line 217
    const/4 v2, 0x7

    .line 218
    if-eqz v0, :cond_8

    .line 219
    .line 220
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$InvalidState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 221
    .line 222
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmNeedInheritForAcceptUnvalidatedPolicy(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 223
    .line 224
    .line 225
    move-result-object v0

    .line 226
    invoke-virtual {v0, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 227
    .line 228
    .line 229
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$InvalidState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 230
    .line 231
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmWifiManagerProxy(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 232
    .line 233
    .line 234
    move-result-object v0

    .line 235
    iget v3, v1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    .line 236
    .line 237
    invoke-virtual {v0, v3, v6}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->enableNetwork(IZ)Z

    .line 238
    .line 239
    .line 240
    if-nez p1, :cond_7

    .line 241
    .line 242
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$InvalidState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 243
    .line 244
    iget v0, v1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    .line 245
    .line 246
    invoke-static {p1, v0, v2, v5}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$mdisableNetworkWithReason(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;IIZ)Z

    .line 247
    .line 248
    .line 249
    :cond_7
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$InvalidState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 250
    .line 251
    invoke-static {p1, v6, v5, v5, v6}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$msetWifiScoreAndIcon(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;ZZZZ)V

    .line 252
    .line 253
    .line 254
    goto :goto_2

    .line 255
    :cond_8
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$InvalidState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 256
    .line 257
    iget v1, v1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    .line 258
    .line 259
    invoke-static {v0, v1, v2, p1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$mdisableNetworkWithReason(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;IIZ)Z

    .line 260
    .line 261
    .line 262
    :goto_2
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$InvalidState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 263
    .line 264
    invoke-static {p1, v5}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$menableNoInternetDialog(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;Z)V

    .line 265
    .line 266
    .line 267
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$InvalidState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 268
    .line 269
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$msendConfigurationChanged(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)V

    .line 270
    .line 271
    .line 272
    invoke-static {v6}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$sfputmUserSelectionConfirmed(Z)V

    .line 273
    .line 274
    .line 275
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$InvalidState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 276
    .line 277
    const p1, 0x21006

    .line 278
    .line 279
    .line 280
    invoke-virtual {p0, p1}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    .line 281
    .line 282
    .line 283
    return v6

    .line 284
    :sswitch_4
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 285
    .line 286
    if-ne v0, v6, :cond_9

    .line 287
    .line 288
    move v5, v6

    .line 289
    :cond_9
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 290
    .line 291
    check-cast p1, Ljava/lang/String;

    .line 292
    .line 293
    if-nez v5, :cond_1a

    .line 294
    .line 295
    if-eqz p1, :cond_1a

    .line 296
    .line 297
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$InvalidState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 298
    .line 299
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmBssidCache(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Landroid/util/LruCache;

    .line 300
    .line 301
    .line 302
    move-result-object v0

    .line 303
    invoke-virtual {v0, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 304
    .line 305
    .line 306
    move-result-object v0

    .line 307
    if-eqz v0, :cond_a

    .line 308
    .line 309
    new-instance v0, Ljava/lang/StringBuilder;

    .line 310
    .line 311
    const-string v1, "BssidStatistics parameters cleared - "

    .line 312
    .line 313
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 314
    .line 315
    .line 316
    const/16 v1, 0x9

    .line 317
    .line 318
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 319
    .line 320
    .line 321
    move-result-object v1

    .line 322
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 323
    .line 324
    .line 325
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 326
    .line 327
    .line 328
    move-result-object v0

    .line 329
    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    .line 331
    .line 332
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$InvalidState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 333
    .line 334
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmBssidCache(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Landroid/util/LruCache;

    .line 335
    .line 336
    .line 337
    move-result-object v0

    .line 338
    invoke-virtual {v0, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 339
    .line 340
    .line 341
    move-result-object p1

    .line 342
    check-cast p1, Lcom/samsung/android/server/wifi/wcm/BssidStatistics;

    .line 343
    .line 344
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/wcm/BssidStatistics;->clearParameters()V

    .line 345
    .line 346
    .line 347
    :cond_a
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$InvalidState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 348
    .line 349
    const/4 v0, 0x0

    .line 350
    const/4 v1, -0x1

    .line 351
    invoke-static {p1, v0, v1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$mupdateCurrentBssid(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;Ljava/lang/String;I)V

    .line 352
    .line 353
    .line 354
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$InvalidState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 355
    .line 356
    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmNotConnectedState(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$NotConnectedState;

    .line 357
    .line 358
    .line 359
    move-result-object p1

    .line 360
    invoke-virtual {p0, p1}, Lcom/android/internal/util/StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    .line 361
    .line 362
    .line 363
    return v6

    .line 364
    :sswitch_5
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$sfgetmInitialResultSentToSystemUi()Z

    .line 365
    .line 366
    .line 367
    move-result p1

    .line 368
    if-eqz p1, :cond_1a

    .line 369
    .line 370
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$sfgetmUserSelectionConfirmed()Z

    .line 371
    .line 372
    .line 373
    move-result p1

    .line 374
    if-eqz p1, :cond_1a

    .line 375
    .line 376
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$InvalidState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 377
    .line 378
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$msyncGetCurrentWifiInfo(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Landroid/net/wifi/WifiInfo;

    .line 379
    .line 380
    .line 381
    move-result-object v0

    .line 382
    invoke-static {p1, v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fputmWifiInfo(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;Landroid/net/wifi/WifiInfo;)V

    .line 383
    .line 384
    .line 385
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$InvalidState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 386
    .line 387
    invoke-static {p0, v5}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$mchangeWifiIcon(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;Z)V

    .line 388
    .line 389
    .line 390
    return v6

    .line 391
    :sswitch_6
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$sfgetDBG()Z

    .line 392
    .line 393
    .line 394
    move-result p1

    .line 395
    if-eqz p1, :cond_b

    .line 396
    .line 397
    const-string p1, "VALIDATION_CHECK_FORCE"

    .line 398
    .line 399
    invoke-static {v4, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    .line 401
    .line 402
    :cond_b
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$InvalidState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 403
    .line 404
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 405
    .line 406
    .line 407
    move-result-wide v0

    .line 408
    invoke-static {p1, v0, v1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fputmValidationCheckEnabledTime(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;J)V

    .line 409
    .line 410
    .line 411
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$InvalidState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 412
    .line 413
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmValidationCheckTime(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)I

    .line 414
    .line 415
    .line 416
    move-result v0

    .line 417
    div-int/2addr v0, v3

    .line 418
    invoke-static {p1, v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fputmValidationCheckTime(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;I)V

    .line 419
    .line 420
    .line 421
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$InvalidState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 422
    .line 423
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmValidationCheckCount(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)I

    .line 424
    .line 425
    .line 426
    move-result v0

    .line 427
    add-int/2addr v0, v6

    .line 428
    invoke-static {p1, v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fputmValidationCheckCount(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;I)V

    .line 429
    .line 430
    .line 431
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$sfgetDBG()Z

    .line 432
    .line 433
    .line 434
    move-result p1

    .line 435
    if-eqz p1, :cond_c

    .line 436
    .line 437
    new-instance p1, Ljava/lang/StringBuilder;

    .line 438
    .line 439
    const-string v0, "mValidationCheckCount : "

    .line 440
    .line 441
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 442
    .line 443
    .line 444
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$InvalidState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 445
    .line 446
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmValidationCheckCount(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)I

    .line 447
    .line 448
    .line 449
    move-result v0

    .line 450
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 451
    .line 452
    .line 453
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 454
    .line 455
    .line 456
    move-result-object p1

    .line 457
    invoke-static {v4, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    .line 459
    .line 460
    :cond_c
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$InvalidState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 461
    .line 462
    const/4 v0, 0x4

    .line 463
    const/16 v1, 0x12

    .line 464
    .line 465
    invoke-virtual {p1, v6, v0, v1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->reportNetworkConnectivityToNM(ZII)Z

    .line 466
    .line 467
    .line 468
    move-result p1

    .line 469
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$InvalidState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 470
    .line 471
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmValidationCheckCount(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)I

    .line 472
    .line 473
    .line 474
    move-result v1

    .line 475
    if-le v1, v0, :cond_e

    .line 476
    .line 477
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$InvalidState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 478
    .line 479
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fputmValidationCheckMode(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)V

    .line 480
    .line 481
    .line 482
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$InvalidState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 483
    .line 484
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$msetValidationBlock(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)V

    .line 485
    .line 486
    .line 487
    const-string v0, "mValidationCheckCount expired"

    .line 488
    .line 489
    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 490
    .line 491
    .line 492
    if-eqz p1, :cond_d

    .line 493
    .line 494
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$InvalidState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 495
    .line 496
    invoke-static {p0, v5}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fputmValidationCheckCount(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;I)V

    .line 497
    .line 498
    .line 499
    return v6

    .line 500
    :cond_d
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$InvalidState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 501
    .line 502
    const-wide/16 v0, 0x2710

    .line 503
    .line 504
    invoke-virtual {p0, v2, v0, v1}, Lcom/android/internal/util/StateMachine;->sendMessageDelayed(IJ)V

    .line 505
    .line 506
    .line 507
    return v6

    .line 508
    :cond_e
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$InvalidState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 509
    .line 510
    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmValidationCheckTime(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)I

    .line 511
    .line 512
    .line 513
    move-result p1

    .line 514
    mul-int/lit16 p1, p1, 0x3e8

    .line 515
    .line 516
    int-to-long v0, p1

    .line 517
    invoke-virtual {p0, v2, v0, v1}, Lcom/android/internal/util/StateMachine;->sendMessageDelayed(IJ)V

    .line 518
    .line 519
    .line 520
    return v6

    .line 521
    :sswitch_7
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 522
    .line 523
    if-ne p1, v6, :cond_f

    .line 524
    .line 525
    move p1, v6

    .line 526
    goto :goto_3

    .line 527
    :cond_f
    move p1, v5

    .line 528
    :goto_3
    const-string v0, "CONNECTIVITY_VALIDATION_RESULT : "

    .line 529
    .line 530
    invoke-static {v0, p1}, Lcom/samsung/android/server/wifi/SemApeController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Z)Ljava/lang/String;

    .line 531
    .line 532
    .line 533
    move-result-object v0

    .line 534
    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 535
    .line 536
    .line 537
    if-nez p1, :cond_1a

    .line 538
    .line 539
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$InvalidState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 540
    .line 541
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fputmValidationCheckMode(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)V

    .line 542
    .line 543
    .line 544
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$InvalidState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 545
    .line 546
    invoke-static {p1, v5}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fputmValidationCheckCount(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;I)V

    .line 547
    .line 548
    .line 549
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$InvalidState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 550
    .line 551
    invoke-static {p0, v2}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->access$1900(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;I)V

    .line 552
    .line 553
    .line 554
    return v6

    .line 555
    :sswitch_8
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$sfgetDBG()Z

    .line 556
    .line 557
    .line 558
    move-result p1

    .line 559
    if-eqz p1, :cond_10

    .line 560
    .line 561
    const-string p1, "QC_RESET_204_CHECK_INTERVAL"

    .line 562
    .line 563
    invoke-static {v4, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 564
    .line 565
    .line 566
    :cond_10
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$InvalidState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 567
    .line 568
    invoke-static {p0, v5}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fputmIs204CheckInterval(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;Z)V

    .line 569
    .line 570
    .line 571
    return v6

    .line 572
    :sswitch_9
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$InvalidState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 573
    .line 574
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 575
    .line 576
    iget p1, p1, Landroid/os/Message;->arg2:I

    .line 577
    .line 578
    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->reportNetworkConnectivityToNM(II)Z

    .line 579
    .line 580
    .line 581
    return v6

    .line 582
    :sswitch_a
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$InvalidState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 583
    .line 584
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$mupdateWcmSettings(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)V

    .line 585
    .line 586
    .line 587
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$InvalidState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 588
    .line 589
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmCurrentMode(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)I

    .line 590
    .line 591
    .line 592
    move-result p1

    .line 593
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$InvalidState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 594
    .line 595
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$mdetermineMode(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)V

    .line 596
    .line 597
    .line 598
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$InvalidState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 599
    .line 600
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmCurrentMode(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)I

    .line 601
    .line 602
    .line 603
    move-result v0

    .line 604
    if-eq p1, v0, :cond_1a

    .line 605
    .line 606
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$InvalidState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 607
    .line 608
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$misMultiNetwork(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Z

    .line 609
    .line 610
    .line 611
    move-result v0

    .line 612
    if-eqz v0, :cond_11

    .line 613
    .line 614
    goto/16 :goto_9

    .line 615
    .line 616
    :cond_11
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$InvalidState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 617
    .line 618
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmAirPlaneMode(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Z

    .line 619
    .line 620
    .line 621
    move-result v0

    .line 622
    if-nez v0, :cond_13

    .line 623
    .line 624
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$InvalidState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 625
    .line 626
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$misSkipInternetCheck(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Z

    .line 627
    .line 628
    .line 629
    move-result v0

    .line 630
    if-nez v0, :cond_13

    .line 631
    .line 632
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$InvalidState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 633
    .line 634
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmCurrentMode(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)I

    .line 635
    .line 636
    .line 637
    move-result v0

    .line 638
    if-ne v0, v6, :cond_12

    .line 639
    .line 640
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$InvalidState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 641
    .line 642
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmIsManualSelection(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Z

    .line 643
    .line 644
    .line 645
    move-result v0

    .line 646
    if-nez v0, :cond_13

    .line 647
    .line 648
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$InvalidState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 649
    .line 650
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$misCarrierWifi(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Z

    .line 651
    .line 652
    .line 653
    move-result v0

    .line 654
    if-nez v0, :cond_13

    .line 655
    .line 656
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$InvalidState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 657
    .line 658
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$misVzwNetwork(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Z

    .line 659
    .line 660
    .line 661
    move-result v0

    .line 662
    if-eqz v0, :cond_12

    .line 663
    .line 664
    goto :goto_4

    .line 665
    :cond_12
    move v0, v5

    .line 666
    goto :goto_5

    .line 667
    :cond_13
    :goto_4
    move v0, v6

    .line 668
    :goto_5
    if-nez v0, :cond_15

    .line 669
    .line 670
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$InvalidState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 671
    .line 672
    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmIsMobileActiveNetwork(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Z

    .line 673
    .line 674
    .line 675
    move-result v2

    .line 676
    if-nez v2, :cond_14

    .line 677
    .line 678
    goto :goto_6

    .line 679
    :cond_14
    move v2, v5

    .line 680
    goto :goto_7

    .line 681
    :cond_15
    :goto_6
    move v2, v6

    .line 682
    :goto_7
    iget-object v7, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$InvalidState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 683
    .line 684
    invoke-static {v7, v0, v5, v5, v2}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$msetWifiScoreAndIcon(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;ZZZZ)V

    .line 685
    .line 686
    .line 687
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$InvalidState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 688
    .line 689
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmCurrentMode(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)I

    .line 690
    .line 691
    .line 692
    move-result v0

    .line 693
    if-ne v0, v6, :cond_16

    .line 694
    .line 695
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$InvalidState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 696
    .line 697
    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$msetValidationBlock(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)V

    .line 698
    .line 699
    .line 700
    return v6

    .line 701
    :cond_16
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$InvalidState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 702
    .line 703
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmCurrentMode(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)I

    .line 704
    .line 705
    .line 706
    move-result v0

    .line 707
    const/4 v2, 0x3

    .line 708
    if-eq v0, v3, :cond_18

    .line 709
    .line 710
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$InvalidState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 711
    .line 712
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmCurrentMode(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)I

    .line 713
    .line 714
    .line 715
    move-result v0

    .line 716
    if-ne v0, v2, :cond_17

    .line 717
    .line 718
    goto :goto_8

    .line 719
    :cond_17
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$InvalidState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 720
    .line 721
    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmValidState(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ValidState;

    .line 722
    .line 723
    .line 724
    move-result-object p1

    .line 725
    invoke-virtual {p0, p1}, Lcom/android/internal/util/StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    .line 726
    .line 727
    .line 728
    return v6

    .line 729
    :cond_18
    :goto_8
    if-ne p1, v6, :cond_19

    .line 730
    .line 731
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$sfgetmInitialResultSentToSystemUi()Z

    .line 732
    .line 733
    .line 734
    move-result p1

    .line 735
    if-eqz p1, :cond_19

    .line 736
    .line 737
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$InvalidState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 738
    .line 739
    invoke-static {p1, v1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fputmAnalyticsDisconnectReason(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;S)V

    .line 740
    .line 741
    .line 742
    const-string p1, "POOR_LINK_DETECT_sent"

    .line 743
    .line 744
    invoke-static {v4, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 745
    .line 746
    .line 747
    :cond_19
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$InvalidState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 748
    .line 749
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmCurrentMode(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)I

    .line 750
    .line 751
    .line 752
    move-result p1

    .line 753
    if-ne p1, v2, :cond_1a

    .line 754
    .line 755
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$InvalidState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 756
    .line 757
    const p1, 0x21014

    .line 758
    .line 759
    .line 760
    invoke-virtual {p0, p1}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    .line 761
    .line 762
    .line 763
    :cond_1a
    :goto_9
    return v6

    .line 764
    nop

    .line 765
    :sswitch_data_0
    .sparse-switch
        0x21006 -> :sswitch_a
        0x21024 -> :sswitch_9
        0x21025 -> :sswitch_8
        0x2102b -> :sswitch_7
        0x2102c -> :sswitch_6
        0x21040 -> :sswitch_5
        0x2104a -> :sswitch_4
        0x21060 -> :sswitch_3
        0x210dc -> :sswitch_2
        0x21133 -> :sswitch_1
        0x21134 -> :sswitch_0
    .end sparse-switch
.end method
