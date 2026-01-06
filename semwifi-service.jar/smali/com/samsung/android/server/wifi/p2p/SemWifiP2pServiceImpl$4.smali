.class Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$4;
.super Landroid/content/BroadcastReceiver;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;->registerReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;)V
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
    iput-object p1, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$4;->this$0:Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;

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
    .locals 5

    .line 1
    const-string p1, "networkInfo"

    .line 2
    .line 3
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Landroid/net/NetworkInfo;

    .line 8
    .line 9
    const-string v0, "p2pGroupInfo"

    .line 10
    .line 11
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Landroid/net/wifi/p2p/WifiP2pGroup;

    .line 16
    .line 17
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    .line 22
    .line 23
    if-ne v1, v2, :cond_0

    .line 24
    .line 25
    return-void

    .line 26
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$4;->this$0:Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;

    .line 27
    .line 28
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    .line 33
    .line 34
    const/4 v3, 0x0

    .line 35
    const/4 v4, 0x1

    .line 36
    if-ne p1, v2, :cond_1

    .line 37
    .line 38
    move p1, v4

    .line 39
    goto :goto_0

    .line 40
    :cond_1
    move p1, v3

    .line 41
    :goto_0
    invoke-static {v1, p1}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;->-$$Nest$fputmIsP2pConnected(Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;Z)V

    .line 42
    .line 43
    .line 44
    iget-object p1, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$4;->this$0:Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;

    .line 45
    .line 46
    invoke-static {p1}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;->-$$Nest$fgetmVerboseLoggingEnabled(Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;)Z

    .line 47
    .line 48
    .line 49
    move-result p1

    .line 50
    if-eqz p1, :cond_2

    .line 51
    .line 52
    new-instance p1, Ljava/lang/StringBuilder;

    .line 53
    .line 54
    const-string v1, "isConnected: "

    .line 55
    .line 56
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    iget-object v1, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$4;->this$0:Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;

    .line 60
    .line 61
    invoke-static {v1}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;->-$$Nest$fgetmIsP2pConnected(Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;)Z

    .line 62
    .line 63
    .line 64
    move-result v1

    .line 65
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    const-string v1, "SemWifiP2pService"

    .line 73
    .line 74
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    .line 76
    .line 77
    :cond_2
    iget-object p1, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$4;->this$0:Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;

    .line 78
    .line 79
    invoke-static {p1}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;->-$$Nest$fgetmIsP2pConnected(Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;)Z

    .line 80
    .line 81
    .line 82
    move-result p1

    .line 83
    if-eqz p1, :cond_3

    .line 84
    .line 85
    if-eqz v0, :cond_3

    .line 86
    .line 87
    iget-object p1, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$4;->this$0:Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;

    .line 88
    .line 89
    invoke-static {p1}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;->-$$Nest$fgetmP2pStateMachine(Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;)Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    const v1, 0x23003

    .line 94
    .line 95
    .line 96
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    .line 97
    .line 98
    .line 99
    :cond_3
    iget-object p1, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$4;->this$0:Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;

    .line 100
    .line 101
    invoke-static {p1}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;->-$$Nest$fgetmSetWifiScanAutoBlock(Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;)Z

    .line 102
    .line 103
    .line 104
    move-result p1

    .line 105
    if-eqz p1, :cond_8

    .line 106
    .line 107
    iget-object p1, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$4;->this$0:Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;

    .line 108
    .line 109
    invoke-static {p1}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;->-$$Nest$fgetmIsP2pConnected(Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;)Z

    .line 110
    .line 111
    .line 112
    move-result p1

    .line 113
    if-eqz p1, :cond_6

    .line 114
    .line 115
    if-eqz v0, :cond_6

    .line 116
    .line 117
    invoke-virtual {v0}, Landroid/net/wifi/p2p/WifiP2pGroup;->isGroupOwner()Z

    .line 118
    .line 119
    .line 120
    move-result p1

    .line 121
    if-eqz p1, :cond_4

    .line 122
    .line 123
    invoke-virtual {v0}, Landroid/net/wifi/p2p/WifiP2pGroup;->isClientListEmpty()Z

    .line 124
    .line 125
    .line 126
    move-result p1

    .line 127
    if-eqz p1, :cond_5

    .line 128
    .line 129
    :cond_4
    invoke-virtual {v0}, Landroid/net/wifi/p2p/WifiP2pGroup;->isGroupOwner()Z

    .line 130
    .line 131
    .line 132
    move-result p1

    .line 133
    if-nez p1, :cond_6

    .line 134
    .line 135
    :cond_5
    iget-object p1, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$4;->this$0:Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;

    .line 136
    .line 137
    invoke-static {p1, v3}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;->-$$Nest$msetLegacyScanningEnable(Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;Z)V

    .line 138
    .line 139
    .line 140
    goto :goto_1

    .line 141
    :cond_6
    iget-object p1, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$4;->this$0:Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;

    .line 142
    .line 143
    invoke-static {p1}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;->-$$Nest$fgetmIsP2pConnected(Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;)Z

    .line 144
    .line 145
    .line 146
    move-result p1

    .line 147
    if-eqz p1, :cond_7

    .line 148
    .line 149
    iget-object p1, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$4;->this$0:Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;

    .line 150
    .line 151
    invoke-static {p1}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;->-$$Nest$fgetmIsP2pConnected(Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;)Z

    .line 152
    .line 153
    .line 154
    move-result p1

    .line 155
    if-eqz p1, :cond_8

    .line 156
    .line 157
    if-eqz v0, :cond_8

    .line 158
    .line 159
    invoke-virtual {v0}, Landroid/net/wifi/p2p/WifiP2pGroup;->isGroupOwner()Z

    .line 160
    .line 161
    .line 162
    move-result p1

    .line 163
    if-eqz p1, :cond_8

    .line 164
    .line 165
    invoke-virtual {v0}, Landroid/net/wifi/p2p/WifiP2pGroup;->isClientListEmpty()Z

    .line 166
    .line 167
    .line 168
    move-result p1

    .line 169
    if-eqz p1, :cond_8

    .line 170
    .line 171
    :cond_7
    iget-object p1, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$4;->this$0:Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;

    .line 172
    .line 173
    invoke-static {p1, v4}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;->-$$Nest$msetLegacyScanningEnable(Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;Z)V

    .line 174
    .line 175
    .line 176
    :cond_8
    :goto_1
    const-string p1, "com.samsung.android.aware.service"

    .line 177
    .line 178
    invoke-virtual {p2, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 179
    .line 180
    .line 181
    const p1, 0x10000020

    .line 182
    .line 183
    .line 184
    invoke-virtual {p2, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 185
    .line 186
    .line 187
    iget-object p0, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$4;->this$0:Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;

    .line 188
    .line 189
    invoke-static {p0}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;->-$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;)Landroid/content/Context;

    .line 190
    .line 191
    .line 192
    move-result-object p0

    .line 193
    sget-object p1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 194
    .line 195
    invoke-virtual {p0, p2, p1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 196
    .line 197
    .line 198
    return-void
.end method
