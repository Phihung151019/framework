.class Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService$NetdCommandHandler$1;
.super Ljava/lang/Thread;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService$NetdCommandHandler;->runNetdShellCommand(Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService$NetdCommandHandler;

.field final synthetic val$command:Ljava/lang/String;

.field final synthetic val$isRetry:Z


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService$NetdCommandHandler;Ljava/lang/String;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService$NetdCommandHandler$1;->this$1:Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService$NetdCommandHandler;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService$NetdCommandHandler$1;->val$command:Ljava/lang/String;

    .line 4
    .line 5
    iput-boolean p3, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService$NetdCommandHandler$1;->val$isRetry:Z

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1
    invoke-static {}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->-$$Nest$sfgetDBG()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const-string v1, "SemWifiSwitchForIndividualAppsService"

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    const-string v2, "rNC:"

    .line 12
    .line 13
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    iget-object v2, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService$NetdCommandHandler$1;->val$command:Ljava/lang/String;

    .line 17
    .line 18
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    .line 27
    .line 28
    :cond_0
    :try_start_0
    new-instance v0, Ljava/lang/StringBuffer;

    .line 29
    .line 30
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 31
    .line 32
    .line 33
    const/4 v2, 0x0

    .line 34
    :goto_0
    iget-object v3, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService$NetdCommandHandler$1;->val$command:Ljava/lang/String;

    .line 35
    .line 36
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 37
    .line 38
    .line 39
    move-result v3

    .line 40
    if-ge v2, v3, :cond_1

    .line 41
    .line 42
    iget-object v3, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService$NetdCommandHandler$1;->val$command:Ljava/lang/String;

    .line 43
    .line 44
    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    .line 45
    .line 46
    .line 47
    move-result v3

    .line 48
    const-string v4, "TCPMONITOR"

    .line 49
    .line 50
    rem-int/lit8 v5, v2, 0xa

    .line 51
    .line 52
    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    .line 53
    .line 54
    .line 55
    move-result v4

    .line 56
    xor-int/2addr v3, v4

    .line 57
    int-to-char v3, v3

    .line 58
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 59
    .line 60
    .line 61
    add-int/lit8 v2, v2, 0x1

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :catch_0
    move-exception p0

    .line 65
    goto/16 :goto_1

    .line 66
    .line 67
    :catch_1
    move-exception p0

    .line 68
    goto/16 :goto_2

    .line 69
    .line 70
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    invoke-static {}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->-$$Nest$sfgetDBG()Z

    .line 75
    .line 76
    .line 77
    move-result v2

    .line 78
    if-eqz v2, :cond_2

    .line 79
    .line 80
    new-instance v2, Ljava/lang/StringBuilder;

    .line 81
    .line 82
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 83
    .line 84
    .line 85
    const-string v3, "rNC(encode):"

    .line 86
    .line 87
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v2

    .line 97
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    .line 99
    .line 100
    :cond_2
    iget-object v2, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService$NetdCommandHandler$1;->this$1:Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService$NetdCommandHandler;

    .line 101
    .line 102
    invoke-static {v2}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService$NetdCommandHandler;->-$$Nest$fgetmOemNetd(Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService$NetdCommandHandler;)Lcom/android/internal/net/IOemNetd;

    .line 103
    .line 104
    .line 105
    move-result-object v2

    .line 106
    iget-object v3, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService$NetdCommandHandler$1;->val$command:Ljava/lang/String;

    .line 107
    .line 108
    invoke-interface {v2, v3, v0}, Lcom/android/internal/net/IOemNetd;->runTcpMonitorShellCommand(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v2

    .line 112
    invoke-static {}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->-$$Nest$sfgetDBG()Z

    .line 113
    .line 114
    .line 115
    move-result v3

    .line 116
    if-eqz v3, :cond_3

    .line 117
    .line 118
    new-instance v3, Ljava/lang/StringBuilder;

    .line 119
    .line 120
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 121
    .line 122
    .line 123
    const-string v4, "rNC(result):"

    .line 124
    .line 125
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v3

    .line 135
    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    .line 137
    .line 138
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    .line 139
    .line 140
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 141
    .line 142
    .line 143
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    .line 145
    .line 146
    const-string v0, " - "

    .line 147
    .line 148
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    .line 150
    .line 151
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object v0

    .line 155
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 156
    .line 157
    .line 158
    move-result v0

    .line 159
    if-eqz v0, :cond_4

    .line 160
    .line 161
    iget-object p0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService$NetdCommandHandler$1;->this$1:Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService$NetdCommandHandler;

    .line 162
    .line 163
    iget-object p0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService$NetdCommandHandler;->this$0:Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;

    .line 164
    .line 165
    const-string v0, "SUCCESS"

    .line 166
    .line 167
    invoke-static {p0, v0}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->-$$Nest$mrunShellCommandResult(Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;Ljava/lang/String;)V

    .line 168
    .line 169
    .line 170
    return-void

    .line 171
    :cond_4
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService$NetdCommandHandler$1;->val$isRetry:Z

    .line 172
    .line 173
    if-nez v0, :cond_5

    .line 174
    .line 175
    iget-object v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService$NetdCommandHandler$1;->this$1:Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService$NetdCommandHandler;

    .line 176
    .line 177
    iget-object v0, v0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService$NetdCommandHandler;->this$0:Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;

    .line 178
    .line 179
    iget-object v3, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService$NetdCommandHandler$1;->val$command:Ljava/lang/String;

    .line 180
    .line 181
    invoke-static {v0, v3}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->-$$Nest$mrunDelayedNetdShellCommandAgain(Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;Ljava/lang/String;)V

    .line 182
    .line 183
    .line 184
    :cond_5
    iget-object p0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService$NetdCommandHandler$1;->this$1:Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService$NetdCommandHandler;

    .line 185
    .line 186
    iget-object p0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService$NetdCommandHandler;->this$0:Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;

    .line 187
    .line 188
    invoke-static {p0, v2}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->-$$Nest$mrunShellCommandResult(Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 189
    .line 190
    .line 191
    return-void

    .line 192
    :goto_1
    const-string v0, "rNC - "

    .line 193
    .line 194
    invoke-static {v0, p0}, Lcom/samsung/android/server/wifi/SemL4sController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/Exception;)Ljava/lang/String;

    .line 195
    .line 196
    .line 197
    move-result-object v0

    .line 198
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    .line 200
    .line 201
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 202
    .line 203
    .line 204
    goto :goto_3

    .line 205
    :goto_2
    const-string v0, "rNC - RemoteException"

    .line 206
    .line 207
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    .line 209
    .line 210
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 211
    .line 212
    .line 213
    :goto_3
    return-void
.end method
